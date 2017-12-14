unit MoneyController;

interface

uses DBDM, Settings, MoneyCopier, Vipusk, MoneyZatr, MoneyTypes, ZatrUtils,
  SysUtils, kbmMemTable, RxIBQuery, Variants;

type
  TMoneyController = class
  private
    m_sets : TSettings;
    db : TdDM;
    moneyCop : TMoneyCopier;
    vip : TVipusk;
    vipuskList : TkbmMemTable;
    moneySetter : TMoneyZatr;

    m_ksmId : integer;

    procedure setMoney(ksmId, month, year : integer; value : double; moneyT : TMoneyTypes);

  public
    Constructor Create(var db : TdDM; var sets : TSettings);
    Destructor Destroy; override;

    procedure copyFullCurrentCex;
    procedure selectAllPreps(select : boolean);

    function getKsmIdDvig() : TRxIBQuery;
    procedure findKsmIdDvig(strukId, month, year, ksmId : integer);
    procedure findCurrentKsmId;
    procedure setZagrMoney(ksmId, month, year : integer; value : double);
    procedure setOstBegMoney(ksmId, month, year : integer; value : double);
    procedure setOstEndMoney(ksmId, month, year : integer; value : double);

    property ksmIdDvigList : TRxIBQuery read getKsmIdDvig;
  end;

implementation

{ TMoneyController }

procedure TMoneyController.copyFullCurrentCex;
begin
  if (moneyCop = nil) then
    moneyCop := TMoneyCopier.Create(db, m_sets);
  moneyCop.copyCex(m_sets.stkod, m_sets.strukId, m_sets.month, m_sets.year, vip.vipuskList);
end;

constructor TMoneyController.Create(var db: TdDM; var sets: TSettings);
begin
  inherited Create;
  self.db := db;
  self.m_sets := sets;
  m_sets.onChanged := findCurrentKsmId;

  vip := TVipusk.Create(db, m_sets);
  vip.openVipusk(m_sets.strukId, m_sets.dateBeginMonth, m_sets.dateEnd);
end;

destructor TMoneyController.Destroy;
begin
  FreeAndNil(moneyCop);
  inherited;
end;

procedure TMoneyController.findCurrentKsmId;
begin
  findKsmIdDvig(m_sets.strukId, m_sets.month, m_sets.year, m_ksmId);
end;

procedure TMoneyController.findKsmIdDvig(strukId, month, year, ksmId: integer);
begin
  m_ksmId := ksmId;
  if (moneySetter = nil) then
    moneySetter := TMoneyZatr.Create(db);
  moneySetter.findKsmIdDvig(strukId, month, year, ksmId);
end;

function TMoneyController.getKsmIdDvig() : TRxIBQuery;
begin
  result := moneySetter.ksmDvigList;
end;

procedure TMoneyController.selectAllPreps(select: boolean);
begin
  ksmIdDvigList.DisableControls;
  ksmIdDvigList.First;
  while (not ksmIdDvigList.Eof) do
  begin
    ksmIdDvigList.Edit;
    if (select) then
      ksmIdDvigList.FieldByName('VIB').AsInteger := 1
    else
      ksmIdDvigList.FieldByName('VIB').AsInteger := 0;
    ksmIdDvigList.Post;
    ksmIdDvigList.Next;
  end;
  ksmIdDvigList.First;
  ksmIdDvigList.EnableControls;
end;

procedure TMoneyController.setMoney(ksmId, month, year: integer; value: double;
                                    moneyT: TMoneyTypes);
var
  ksmIdPrep : integer;
begin
  ksmIdDvigList.DisableControls;
  ksmIdDvigList.First;
  while (not ksmIdDvigList.Eof) do
  begin
    if (ksmIdDvigList.FieldByName('VIB').AsInteger = 1) then
    begin
      ksmIdPrep := ksmIdDvigList.FieldByName('KSM_IDPR').AsInteger;
      if (moneySetter.findMoney(m_sets.strukId, month, year, ksmIdPrep)) then
      begin
        if (moneySetter.moneyList.Locate('ksm_id;ksm_idpr;razdel_id',
                                         VarArrayOf([ksmId,
                                                     ksmIdPrep,
                                                     ksmIdDvigList.FieldByName('RAZDEL_ID').AsInteger]),
                                         [])) then
        begin
          moneySetter.editMoney(m_sets.strukId, ksmIdPrep, ksmId,
                                ksmIdDvigList.FieldByName('KEI_ID').AsInteger,
                                ksmIdDvigList.FieldByName('RAZDEL_ID').AsInteger,
                                month, year, moneyT, value,
                                ksmIdDvigList.FieldByName('ACCOUNT').AsString);
          moneySetter.saveMoney;
        end;
      end;
    end;
    ksmIdDvigList.Next;
  end;
  db.commitWriteTrans(true);
  ksmIdDvigList.EnableControls;
end;

procedure TMoneyController.setZagrMoney(ksmId, month, year: integer; value: double);
begin
  setMoney(ksmId, month, year, value, TMoneyTypes.zagr);
end;

procedure TMoneyController.setOstBegMoney(ksmId, month, year: integer; value: double);
begin
  setMoney(ksmId, month, year, value, TMoneyTypes.ostBegNz);
end;

procedure TMoneyController.setOstEndMoney(ksmId, month, year: integer; value: double);
begin
  setMoney(ksmId, month, year, value, TMoneyTypes.ostEndNz);
end;

end.
