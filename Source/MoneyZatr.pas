unit MoneyZatr;

interface

uses DBDM, MoneyTypes, MoneyZatrDM,
  RxIBQuery, Forms, Data.DB;

type
  TMoneyZatr = class
  private
    db : TdDM;
    dm : TFMoneyZatrDM;

    procedure setMoney(strukId, ksmIdPrep, ksmId, keiId, razdelId, month, year: integer;
                       moneyType: TMoneyTypes; value: double; account : string);

  public
    Constructor Create(var db : TdDM);
    Destructor Destroy; override;

    function findMoney(strukId, month, year, ksmIdPrep : integer) : boolean; overload; // ksmIdPrep=-1 ищет по всему списку цен, включая цены на препаратах
//    function findMoney(strukId, ksmIdPrep, curMonth, curYear: integer) : boolean; overload;
    function findMoney(strukId, ksmIdPrep, ksmId, curMonth, curYear : integer;
                                moneyType : TMoneyTypes) : boolean; overload;
    function findLastMoney(strukId, ksmIdPrep: integer; moneyType: TMoneyTypes;
                           dateOp : TDate) : boolean;
    procedure deleteMoney(strukId, month, year : integer); overload;
    procedure deleteMoney(strukId, ksmIdPrep, ksmId, curMonth, curYear : integer;
                                moneyType : TMoneyTypes); overload;
    procedure saveMoney;

    procedure addMoney(strukId, ksmIdPrep, ksmId, keiId, razdelId, month, year : integer;
                       moneyType : TMoneyTypes; value : double; account : string);
    procedure editMoney(strukId, ksmIdPrep, ksmId, keiId, razdelId, month, year : integer;
                        moneyType : TMoneyTypes; value : double; account : string);

    function getMoneyList() : TRxIBQuery;

    procedure findKsmIdDvig(strukId, month, year, ksmId : integer);
    function getKsmIdDvig() : TRxIBQuery;

    property moneyList : TRxIBQuery read getMoneyList;
    property ksmDvigList : TRxIBQuery read getKsmIdDvig;
  end;

implementation

{ TMoneyZatr }

procedure TMoneyZatr.addMoney(strukId, ksmIdPrep, ksmId, keiId, razdelId, month, year : integer;
                              moneyType: TMoneyTypes; value: double; account : string);
begin
  if (dm.q_money.Active) then
  begin
    dm.q_money.Append;
    setMoney(strukId, ksmIdPrep, ksmId, keiId, razdelId, month, year, moneyType, value, account);
    dm.q_money.Post;
  end;
end;


constructor TMoneyZatr.Create(var db: TdDM);
begin
  inherited Create;

  self.db := db;
  dm := TFMoneyZatrDM.Create(application);

  dm.q_money.Database := db.db;
  dm.q_money.Transaction := db.trans_read;

  dm.upd_money.UpdateTransaction := db.trans_write;

  dm.proc_addMoneyId.Database := db.db;
  dm.proc_addMoneyId.Transaction := db.trans_read;

  dm.q_ksmDvig.Database := db.db;
  dm.q_ksmDvig.Transaction := db.trans_read;

  dm.upd_ksmDvig.UpdateTransaction := db.trans_write;
end;

procedure TMoneyZatr.deleteMoney(strukId, ksmIdPrep, ksmId, curMonth,
  curYear: integer; moneyType: TMoneyTypes);
begin
  if (findMoney(strukId, ksmIdPrep, ksmId, curMonth, curYear, moneyType)) then
  begin

  end;

end;

procedure TMoneyZatr.deleteMoney(strukId, month, year: integer);
begin
  if (findMoney(strukId, month, year, -1)) then
  begin
    dm.q_money.First;
    while (not dm.q_money.Eof) do
      dm.q_money.Delete;
  end;
end;

destructor TMoneyZatr.Destroy;
begin

  inherited;
end;

procedure TMoneyZatr.setMoney(strukId, ksmIdPrep, ksmId, keiId, razdelId, month,
                              year: integer; moneyType: TMoneyTypes; value: double;
                              account : string);
begin
  if (dm.newMoneyId <> 0) then
    dm.q_moneyMONEY_ID.AsInteger := dm.newMoneyId;
  dm.q_moneySTRUK_ID.AsInteger := strukId;
  dm.q_moneyKSM_ID.AsInteger := ksmId;
  dm.q_moneyKSM_IDPR.AsInteger := ksmIdPrep;
  dm.q_moneyKEI_ID.AsInteger := keiId;
  dm.q_moneyRAZDEL_ID.AsInteger := razdelId;
  dm.q_moneyMES.AsInteger := month;
  dm.q_moneyGOD.AsInteger := year;
  if (account <> '') then
    dm.q_moneyACCOUNT.AsString := account;
  if (moneyType = TMoneyTypes.zagr) then
    dm.q_moneyZAGR_MONEY.AsFloat := value;
  if (moneyType = TMoneyTypes.ostBegNz) then
    dm.q_moneyOST_BEG_MONEY.AsFloat := value;
  if (moneyType = TMoneyTypes.ostEndNz) then
    dm.q_moneyOST_END_MONEY.AsFloat := value;
  if (moneyType = TMoneyTypes.bux) then
    dm.q_moneyNOMEN_MONEY.AsFloat := value;
  if (moneyType = TMoneyTypes.rash) then
    dm.q_moneyRASH_MONEY.AsFloat := value;
end;

procedure TMoneyZatr.editMoney(strukId, ksmIdPrep, ksmId, keiId, razdelId, month,
                               year: integer; moneyType: TMoneyTypes; value: double;
                               account : string);
begin
  if (dm.q_money.Active) then
  begin
    dm.q_money.Edit;
    setMoney(strukId, ksmIdPrep, ksmId, keiId, razdelId, month, year, moneyType, value, account);
    dm.q_money.Post;
  end;
end;

function TMoneyZatr.findMoney(strukId, month, year, ksmIdPrep: integer) : boolean;  // ksmIdPrep=-1 ищет по всему списку цен, включая цены на препаратах
begin
  result := false;
  dm.openMoney(strukId, month, year, ksmIdPrep);
  if (dm.q_money.RecordCount > 0) then
    result := true;
end;

procedure TMoneyZatr.findKsmIdDvig(strukId, month, year, ksmId: integer);
begin
  dm.openKsmDvig(strukId, month, year, ksmId);
end;

function TMoneyZatr.findLastMoney(strukId, ksmIdPrep: integer; moneyType: TMoneyTypes; dateOp : TDate): boolean;
begin
  dm.findPrevDoc(strukId, ksmIdPrep, dateOp);
  findMoney(strukId, dm.prevMonth, dm.prevYear, ksmIdPrep);
end;
//
//function TMoneyZatr.findMoney(strukId, ksmIdPrep, curMonth, curYear: integer) : boolean;
//begin
//
//end;

function TMoneyZatr.findMoney(strukId, ksmIdPrep, ksmId, curMonth, curYear: integer;
                              moneyType: TMoneyTypes) : boolean;
begin

end;

function TMoneyZatr.getKsmIdDvig() : TRxIBQuery;
begin
  result := dm.q_ksmDvig;
end;

function TMoneyZatr.getMoneyList: TRxIBQuery;
begin
  result := dm.q_money;
end;

procedure TMoneyZatr.saveMoney;
begin
  if (dm.q_money.Modified) or (dm.q_money.State = dsEdit) or (dm.q_money.State = dsInsert) then
    dm.q_money.Post;
  if (dm.q_money.UpdatesPending) then
    dm.q_money.ApplyUpdates;
end;

end.
