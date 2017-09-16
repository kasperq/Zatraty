unit ZatrReportDM;

interface

uses DBDM,
  System.SysUtils, System.Classes, IBX.IBCustomDataSet, IBX.IBUpdateSQL,
  IBUpdSQLW, Data.DB, IBX.IBQuery, RxIBQuery, IBX.IBStoredProc;

type
  TFZatrReportDM = class(TDataModule)
    q_zatrReport: TRxIBQuery;
    upd_zatrReport: TIBUpdateSQLW;
    proc_addOtchetId: TIBStoredProc;
    q_zatrReportOTCHET_ID: TIntegerField;
    q_zatrReportDOC_ID: TIntegerField;
    q_zatrReportKSM_ID: TIntegerField;
    q_zatrReportRAZDEL_ID: TIntegerField;
    q_zatrReportKEI_ID: TIntegerField;
    q_zatrReportPARENT: TIntegerField;
    q_zatrReportACCOUNT: TIBStringField;
    q_zatrReportACTIVE_DOPR: TIntegerField;
    q_zatrReportOST_BEG_S: TFMTBCDField;
    q_zatrReportOST_BEG_NZ: TFMTBCDField;
    q_zatrReportPRIHOD: TFMTBCDField;
    q_zatrReportZAGRUZ: TFMTBCDField;
    q_zatrReportRASHOD: TFMTBCDField;
    q_zatrReportPER_S: TFMTBCDField;
    q_zatrReportPER_NZ: TFMTBCDField;
    q_zatrReportOST_END_S: TFMTBCDField;
    q_zatrReportOST_END_NZ: TFMTBCDField;
    q_zatrReportPERERAS_M: TFMTBCDField;
    q_zatrReportPERERAS_G: TFMTBCDField;
    q_zatrReportDATE_TIME_UPDATE: TDateTimeField;
    q_zatrReportUSER_NAME: TIBStringField;
    q_zatrReportRASHOD_YEAR: TFMTBCDField;
    q_zatrReportRASHOD_QUAT: TFMTBCDField;
    procedure q_zatrReportBeforeInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    newOtchetId : integer;
    curDocId : integer;

    procedure openZatrReport(docId : integer);

  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TFZatrReportDM }

procedure TFZatrReportDM.openZatrReport(docId: integer);
begin
  q_zatrReport.Close;
  q_zatrReport.ParamByName('DOC_ID').AsInteger := docId;
  q_zatrReport.Open;
  curDocId := docId;
end;

procedure TFZatrReportDM.q_zatrReportBeforeInsert(DataSet: TDataSet);
begin
  proc_addOtchetId.StoredProcName := 'ADD_ZATR_OTCHET';
  proc_addOtchetId.ExecProc;
  newOtchetId := proc_addOtchetId.Params.Items[0].AsInteger;
end;

end.
