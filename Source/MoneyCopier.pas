unit MoneyCopier;

interface

uses MoneyZatr, DBDM, ZatrReport, MoneyCopierDM, MoneyTypes, ZatrUtils, Settings,

  RxIBQuery, Forms, Variants, SysUtils;

type
  TMoneyCopier = class
  private
    db : TdDM;
    moneyZ, moneyPrep, moneyPrevPrep : TMoneyZatr;
    zatrRep : TZatrReport;
    dm : TFMoneyCopierDM;
    m_sets : TSettings;

    procedure assignMoneyToPreps(stkod: string; strukId, month, year: integer;
                                var vipuskList: TRxIBQuery);
    procedure assignMoneyToPrep(stkod: string; strukId, month, year: integer;
                                var vipuskList: TRxIBQuery);

  public
    Constructor Create(var db : TdDM; var sets : TSettings);
    Destructor Destroy; override;
    procedure copyCex(stkod : string; strukId, month, year : integer; vipuskList : TRxIBQuery);

  end;

implementation

{ TMoneyCopier }

procedure TMoneyCopier.assignMoneyToPrep(stkod: string; strukId, month,
                                         year: integer; var vipuskList: TRxIBQuery);
var
  value : double;
  account : string;
begin
  zatrRep.report.First;
  while (not zatrRep.report.Eof) do
  begin
    if (moneyPrep.moneyList.Locate('ksm_id;ksm_idpr',
                                   VarArrayOf([zatrRep.report.FieldByName('KSM_ID').AsInteger,
                                               0]),
                                   [])) then
    begin
      value := moneyPrep.moneyList.FieldByName('NOMEN_MONEY').AsFloat;
      account := moneyPrep.moneyList.FieldByName('ACCOUNT').AsString;
      value := value * koefPerevoda(db,
                                    zatrRep.report.FieldByName('KEI_ID').AsInteger,
                                    moneyPrep.moneyList.FieldByName('KEI_ID').AsInteger,
                                    zatrRep.report.FieldByName('KSM_ID').AsInteger);
    end
    else
    begin
      value := 0;
      account := '';
    end;

    if (trim(account) = '') then
      account := zatrRep.report.FieldByName('ACCOUNT').AsString;

    if (moneyZ.moneyList.Locate('ksm_id;ksm_idpr;razdel_id',
                                VarArrayOf([zatrRep.report.FieldByName('KSM_ID').AsInteger,
                                            vipuskList.FieldByName('KSM_ID').AsInteger,
                                            zatrRep.report.FieldByName('RAZDEL_ID').AsInteger]),
                                [])) then
    begin
      moneyZ.editMoney(strukId, vipuskList.FieldByName('KSM_ID').AsInteger,
                       zatrRep.report.FieldByName('KSM_ID').AsInteger,
                       zatrRep.report.FieldByName('KEI_ID').AsInteger,
                       zatrRep.report.FieldByName('RAZDEL_ID').AsInteger, month, year,
                       TMoneyTypes.bux, value, account);
    end
    else
    begin
      moneyZ.addMoney(strukId, vipuskList.FieldByName('KSM_ID').AsInteger,
                      zatrRep.report.FieldByName('KSM_ID').AsInteger,
                      zatrRep.report.FieldByName('KEI_ID').AsInteger,
                      zatrRep.report.FieldByName('RAZDEL_ID').AsInteger, month, year,
                      TMoneyTypes.bux, value, account);
    end;

    moneyPrevPrep.moneyList.Locate('ksm_id;razdel_id',
                                   VarArrayOf([zatrRep.report.FieldByName('KSM_ID').AsInteger,
                                   zatrRep.report.FieldByName('RAZDEL_ID').AsInteger]), []);
    moneyZ.editMoney(strukId, vipuskList.FieldByName('KSM_ID').AsInteger,
                     zatrRep.report.FieldByName('KSM_ID').AsInteger,
                     zatrRep.report.FieldByName('KEI_ID').AsInteger,
                     zatrRep.report.FieldByName('RAZDEL_ID').AsInteger, month, year,
                     TMoneyTypes.ostBegNz, moneyPrevPrep.moneyList.FieldByName('OST_END_MONEY').AsFloat,
                     account);
    zatrRep.report.Next;
  end;
end;

procedure TMoneyCopier.assignMoneyToPreps(stkod: string; strukId, month, year: integer;
                               var vipuskList: TRxIBQuery);
begin
  if (zatrRep = nil) then
    zatrRep := TZatrReport.Create(db, TTipDok.report);
  if (moneyPrep = nil) then
    moneyPrep := TMoneyZatr.Create(db);
//  moneyPrep.findMoney(strukId, month, year);  //  тут будем искать цены по препоратам

  if (moneyPrevPrep = nil) then
    moneyPrevPrep := TMoneyZatr.Create(db);   //  тут будем искать цены остатков на предыдущих препаратах

  vipuskList.First;
  while (not vipuskList.Eof) do
  begin
    if (zatrRep.findReport(strukId, vipuskList.FieldByName('KSM_ID').AsInteger,
                           m_sets.dateBeginMonth, m_sets.dateEnd)) then
    begin
      zatrRep.openReport({strukId, vipuskList.FieldByName('KSM_ID').AsInteger,
                         m_sets.dateBeginMonth, m_sets.dateEnd});
      moneyPrep.findMoney(strukId, month, year, 0);
      moneyPrevPrep.findLastMoney(strukId, vipuskList.FieldByName('KSM_ID').AsInteger,
                                  TMoneyTypes.ostEndNz, m_sets.dateBeginMonth);
      assignMoneyToPrep(stkod, strukId, month, year, vipuskList);
    end;
    vipuskList.Next;
  end;
  moneyZ.saveMoney;
  db.commitWriteTrans(true);
end;

procedure TMoneyCopier.copyCex(stkod: string; strukId, month, year: integer;
                               vipuskList: TRxIBQuery);
begin
  dm.openBmMoney(stkod);
  if (moneyZ = nil) then
    moneyZ := TMoneyZatr.Create(db);
  moneyZ.deleteMoney(strukId, month, year);
  moneyZ.saveMoney;

//  ƒобавл€ем общий список цен по цеху
  dm.q_nomenDbf.First;
  while (not dm.q_nomenDbf.Eof) do
  begin
    moneyZ.addMoney(strukId, 0, getKsmId(dm.q_nomenDbf.FieldByName('numkcu').AsString),
                    getKsmId(dm.q_nomenDbf.FieldByName('kei').AsString), 0, month, year,
                    TMoneyTypes.bux, dm.q_nomenDbf.FieldByName('money').AsFloat,
                    dm.q_nomenDbf.FieldByName('bals').AsString);
    dm.q_nomenDbf.Next;
  end;
  moneyZ.saveMoney;
  db.commitWriteTrans(true);
//  –азносим цены по препаратам
  assignMoneyToPreps(stkod, strukId, month, year, vipuskList);
end;

constructor TMoneyCopier.Create(var db: TdDM; var sets : TSettings);
begin
  inherited Create;
  dm := TFMoneyCopierDM.Create(application);
  m_sets := sets;
  self.db := db;
  self.m_sets := sets;
  dm.q_bmPath.Database := db.db;
  dm.q_bmPath.Transaction := db.trans_read;
end;

destructor TMoneyCopier.Destroy;
begin

  inherited;
end;

end.
