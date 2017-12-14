unit MoneyZatrDM;

interface

uses DBDM,
  System.SysUtils, System.Classes, Data.DB, IBX.IBCustomDataSet, IBX.IBQuery,
  RxIBQuery, IBX.IBStoredProc, IBX.IBUpdateSQL, IBUpdSQLW;

type
  TFMoneyZatrDM = class(TDataModule)
    upd_money: TIBUpdateSQLW;
    proc_addMoneyId: TIBStoredProc;
    q_prevZatrDoc: TRxIBQuery;
    q_money: TRxIBQuery;
    q_prevZatrDocGOD: TIntegerField;
    q_prevZatrDocMES: TIntegerField;
    q_prevZatrDocSTRUK_ID: TSmallintField;
    q_prevZatrDocKLIENT_ID: TIntegerField;
    q_moneyMONEY_ID: TIntegerField;
    q_moneySTRUK_ID: TIntegerField;
    q_moneyKSM_ID: TIntegerField;
    q_moneyKEI_ID: TIntegerField;
    q_moneyKSM_IDPR: TIntegerField;
    q_moneyMES: TIntegerField;
    q_moneyGOD: TIntegerField;
    q_moneyPF: TIntegerField;
    q_moneyRAZDEL_ID: TIntegerField;
    q_moneyACCOUNT: TIBStringField;
    q_moneyZAGR_MONEY: TFloatField;
    q_moneyOST_BEG_MONEY: TFloatField;
    q_moneyOST_END_MONEY: TFloatField;
    q_ksmDvig: TRxIBQuery;
    q_ksmDvigKSM_ID: TIntegerField;
    q_ksmDvigACCOUNT: TIBStringField;
    q_ksmDvigZAGR_MONEY: TFMTBCDField;
    q_ksmDvigOST_BEG_MONEY: TFMTBCDField;
    q_ksmDvigOST_END_MONEY: TFMTBCDField;
    q_ksmDvigKOD_PROD: TIBStringField;
    q_ksmDvigNMAT: TIBStringField;
    q_ksmDvigNEIS: TIBStringField;
    q_ksmDvigKRAZ: TSmallintField;
    q_ksmDvigVIB: TIntegerField;
    upd_ksmDvig: TIBUpdateSQLW;
    q_ksmDvigKSM_IDPR: TIntegerField;
    q_ksmDvigKEI_ID: TIntegerField;
    q_ksmDvigRAZDEL_ID: TIntegerField;
    q_moneyNOMEN_MONEY: TFloatField;
    q_moneyRASH_MONEY: TFloatField;
    procedure q_moneyBeforeInsert(DataSet: TDataSet);
  private
    //
  public
    newMoneyId : integer;
    prevMonth, prevYear : integer;

    procedure openMoney(strukId, month, year, ksmIdPrep: integer);
    procedure findPrevDoc(strukId, ksmIdPrep : integer; dateOp : TDate);
    procedure openKsmDvig(strukId, month, year, ksmId: integer);
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TFMoneyZatrDM.findPrevDoc(strukId, ksmIdPrep: integer; dateOp: TDate);
begin
  q_prevZatrDoc.Close;
  q_prevZatrDoc.ParamByName('ksm_idpr').AsInteger := ksmIdPrep;
  q_prevZatrDoc.ParamByName('struk_id').AsInteger := strukid;
  q_prevZatrDoc.ParamByName('date_op').AsDate := dateOp;
  q_prevZatrDoc.Open;
  q_prevZatrDoc.First;
  prevMonth := q_prevZatrDocMES.AsInteger;
  prevYear := q_prevZatrDocGOD.AsInteger;
end;

procedure TFMoneyZatrDM.openKsmDvig(strukId, month, year, ksmId: integer);
begin
  q_ksmDvig.Close;
  q_ksmDvig.ParamByName('struk_id').AsInteger := strukId;
  q_ksmDvig.ParamByName('month').AsInteger := month;
  q_ksmDvig.ParamByName('year').AsInteger := year;
  q_ksmDvig.ParamByName('ksm_id').AsInteger := ksmId;
  q_ksmDvig.Open;
end;

procedure TFMoneyZatrDM.openMoney(strukId, month, year, ksmIdPrep: integer);
begin
  q_money.Close;
  q_money.ParamByName('struk_id').AsInteger := strukId;
  q_money.ParamByName('month').AsInteger := month;
  q_money.ParamByName('year').AsInteger := year;
  if (ksmIdPrep <> -1) then
    q_money.MacroByName('ksmIdPrep').AsString := 'zatr_money.ksm_idpr = ' + IntToStr(ksmIdPrep)
  else
    q_money.MacroByName('ksmIdPrep').AsString := '0=0';
  q_money.Open;
  q_money.First;
end;

procedure TFMoneyZatrDM.q_moneyBeforeInsert(DataSet: TDataSet);
begin
  proc_addMoneyId.StoredProcName := 'ADD_ZATR_MONEY';
  proc_addMoneyId.ExecProc;
  newMoneyId := proc_addMoneyId.Params.Items[0].AsInteger;
end;

end.
