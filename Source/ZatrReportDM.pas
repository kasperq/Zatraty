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
    q_prevZatrDoc: TRxIBQuery;
    q_prevZatrDocGOD: TIntegerField;
    q_prevZatrDocMES: TIntegerField;
    q_prevZatrDocSTRUK_ID: TSmallintField;
    q_prevZatrDocKLIENT_ID: TIntegerField;
    q_zatrReportPeriod: TRxIBQuery;
    q_zatrReportPeriodKSM_ID: TIntegerField;
    q_zatrReportPeriodKEI_ID: TIntegerField;
    q_zatrReportPeriodRAZDEL_ID: TIntegerField;
    q_zatrReportPeriodOST_BEG_S: TFMTBCDField;
    q_zatrReportPeriodOST_BEG_NZ: TFMTBCDField;
    q_zatrReportPeriodPRIHOD: TFMTBCDField;
    q_zatrReportPeriodZAGRUZ: TFMTBCDField;
    q_zatrReportPeriodRASHOD: TFMTBCDField;
    q_zatrReportPeriodOST_END_S: TFMTBCDField;
    q_zatrReportPeriodOST_END_NZ: TFMTBCDField;
    q_prevZatrDocDOC_ID: TIntegerField;
    q_zatrReportACCOUNT: TIBStringField;
    procedure q_zatrReportBeforeInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    newOtchetId : integer;
    curDocId : integer;
    prevMonth, prevYear : integer;

    procedure openZatrReport(docId : integer);
    procedure findPrevDoc(strukId, ksmIdPrep, tipDokId: integer; dateOp: TDate);
    procedure openReportPeriod(strukId, ksmIdPrep, tipDokId: integer; dateBegin, dateEnd: TDate);

  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TFZatrReportDM }

procedure TFZatrReportDM.openReportPeriod(strukId, ksmIdPrep, tipDokId: integer;
                                          dateBegin, dateEnd: TDate);
begin
  q_zatrReportPeriod.Close;
  q_zatrReportPeriod.ParamByName('ksm_idpr').AsInteger := ksmIdPrep;
  q_zatrReportPeriod.ParamByName('struk_id').AsInteger := strukId;
  q_zatrReportPeriod.ParamByName('tip_dok_id').AsInteger := tipDokId;
  q_zatrReportPeriod.ParamByName('date_begin').AsDate := dateBegin;
  q_zatrReportPeriod.ParamByName('date_end').AsDate := dateEnd;
  q_zatrReportPeriod.Open;
end;

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

procedure TFZatrReportDM.findPrevDoc(strukId, ksmIdPrep, tipDokId: integer; dateOp: TDate);
begin
  q_prevZatrDoc.Close;
  q_prevZatrDoc.ParamByName('ksm_idpr').AsInteger := ksmIdPrep;
  q_prevZatrDoc.ParamByName('struk_id').AsInteger := strukid;
  q_prevZatrDoc.ParamByName('date_op').AsDate := dateOp;
  q_prevZatrDoc.ParamByName('tip_dok_id').AsInteger := tipDokId;

  q_prevZatrDoc.Open;
  q_prevZatrDoc.First;
  prevMonth := q_prevZatrDocMES.AsInteger;
  prevYear := q_prevZatrDocGOD.AsInteger;
  curDocId := q_prevZatrDocDOC_ID.AsInteger;
end;

end.
