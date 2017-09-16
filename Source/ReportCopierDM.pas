unit ReportCopierDM;

interface

uses DBDM,
  System.SysUtils, System.Classes, Data.DB, IBX.IBCustomDataSet, IBX.IBQuery,
  RxIBQuery, Variants;

type
  TFReportCopierDM = class(TDataModule)
    q_otchet: TRxIBQuery;
    q_otchetKSM_ID: TIntegerField;
    q_otchetOSTATOK_END_S: TFMTBCDField;
    q_otchetOSTATOK_END_NZ: TFMTBCDField;
    q_otchetOSTATOK_BEGIN_NZ: TFMTBCDField;
    q_otchetOSTATOK_BEGIN_S: TFMTBCDField;
    q_otchetNMAT: TIBStringField;
    q_otchetZAG_PERIOD: TFMTBCDField;
    q_otchetRASH_VIRAB_PERIOD: TFMTBCDField;
    q_otchetPRIX_PERIOD: TFMTBCDField;
    q_otchetRASX_PERIOD: TFMTBCDField;
    q_otchetPERS: TFMTBCDField;
    q_otchetPERNZ: TFMTBCDField;
    q_otchetKRAZ: TSmallintField;
    q_otchetKEI_ID: TSmallintField;
    q_otchetRAZDEL_ID: TSmallintField;
    q_otchetKART_ID: TIntegerField;
    q_otchetACCOUNT: TIBStringField;
    q_rashKv: TRxIBQuery;
    q_rashKvKART_ID: TIntegerField;
    q_rashKvKEI_ID: TSmallintField;
    q_rashKvRASH_KV: TFMTBCDField;
    q_otchetRASH_GOD: TFloatField;
    q_otchetRASH_KV: TFloatField;
    procedure q_otchetCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    procedure openOtchet(dateBegin, dateEnd, dateKvBegin : TDate; ksmIdPrep : integer);
    procedure openRashKv(dateKvBegin, dateEnd : TDate; ksmIdPrep : integer);

  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TFReportCopierDM }

procedure TFReportCopierDM.openOtchet(dateBegin, dateEnd, dateKvBegin: TDate; ksmIdPrep : integer);
begin
  q_otchet.Close;
  q_otchet.ParamByName('dat_beg_mes').AsDate := dateBegin;
  q_otchet.ParamByName('dat_end_mes').AsDate := dateEnd;
  q_otchet.ParamByName('kodp').AsInteger := ksmIdPrep;
  q_otchet.Open;
  openRashKv(dateKvBegin, dateEnd, ksmIdPrep);
end;

procedure TFReportCopierDM.openRashKv(dateKvBegin, dateEnd: TDate; ksmIdPrep: integer);
begin
  q_rashKv.Close;
  q_rashKv.ParamByName('dat_beg_kv').AsDate := dateKvBegin;
  q_rashKv.ParamByName('dat_end_mes').AsDate := dateEnd;
  q_rashKv.ParamByName('kodp').AsInteger := ksmIdPrep;
  q_rashKv.Open;
end;

procedure TFReportCopierDM.q_otchetCalcFields(DataSet: TDataSet);
begin
  if (q_rashKv.Active) then
  begin
    if (q_rashKv.Locate('kart_id', VarArrayOf([q_otchetKART_ID.AsInteger]), [])) then
      q_otchetRASH_KV.AsFloat := q_rashKvRASH_KV.AsFloat
    else
      q_otchetRASH_KV.AsFloat := q_otchetRASH_VIRAB_PERIOD.AsFloat;
  end;
end;

end.
