unit DocumentDM;

interface

uses DBDM,
  System.SysUtils, System.Classes, IBX.IBCustomDataSet, IBX.IBUpdateSQL,
  IBUpdSQLW, Data.DB, IBX.IBQuery, RxIBQuery, IBX.IBStoredProc;

type
  TFDocumentDM = class(TDataModule)
    q_document: TRxIBQuery;
    upd_document: TIBUpdateSQLW;
    proc_addDoc: TIBStoredProc;
    q_documentNDOK: TIBStringField;
    q_documentDOC_ID: TIntegerField;
    q_documentPRIZ_ID: TSmallintField;
    q_documentTIP_OP_ID: TSmallintField;
    q_documentTIP_DOK_ID: TSmallintField;
    q_documentDATE_DOK: TDateField;
    q_documentDOK_OSN_ID: TIntegerField;
    q_documentSTRUK_ID: TSmallintField;
    q_documentVP_ID: TSmallintField;
    q_documentKPV: TFMTBCDField;
    q_documentKLIENT_ID: TIntegerField;
    q_documentSUM_BRB: TIBBCDField;
    q_documentSUM_ISP1: TIBBCDField;
    q_documentSUM_ISP2: TIBBCDField;
    q_documentSUM_VP: TIBBCDField;
    q_documentSUM_ISP1_VP: TIBBCDField;
    q_documentSUM_ISP2_VP: TIBBCDField;
    q_documentNDS: TIBBCDField;
    q_documentSUM_NDS: TIBBCDField;
    q_documentSUM_NDS_VP: TIBBCDField;
    q_documentDATE_OP: TDateField;
    q_documentDATE_VVOD: TDateTimeField;
    q_documentZADACHA_ID: TIBStringField;
    q_documentUSER_NAME: TIBStringField;
    q_documentDOV: TIntegerField;
    q_documentDATE_TIME_UPDATE: TDateTimeField;
    q_documentJORN_ID: TSmallintField;
    q_documentRCHET_ID: TIntegerField;
    q_documentTAG: TIntegerField;
    q_documentKPV_OLD: TFMTBCDField;
    q_documentTTN: TIBStringField;
    procedure q_documentBeforeInsert(DataSet: TDataSet);
    procedure q_documentNewRecord(DataSet: TDataSet);
  private

  public
    newDocId, strukId, klientId, tipOpId, tipDokId: integer;
    dateDok, dateOp: TDate;
    ndok: string;

    procedure openDocument(strukId, klientId, tipOpId, tipDokId : integer; dateBegin,
                           dateEnd : TDate);
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TFDocumentDM }

procedure TFDocumentDM.openDocument(strukId, klientId, tipOpId,
  tipDokId: integer; dateBegin, dateEnd: TDate);
begin
  q_document.Close;
  q_document.ParamByName('struk_id').AsInteger := strukId;
  q_document.ParamByName('klient_id').AsInteger := klientId;
  q_document.ParamByName('tip_op_id').AsInteger := tipOpId;
  q_document.ParamByName('tip_dok_id').AsInteger := tipDokId;
  q_document.MacroByName('usl').AsString := ' document.date_op between '''
                                            + DateToStr(dateBegin) + ''' and '''
                                            + DateToStr(dateEnd) + ''' ';
  q_document.Open;
end;

procedure TFDocumentDM.q_documentBeforeInsert(DataSet: TDataSet);
begin
  proc_addDoc.StoredProcName := 'ADD_DOCUMENT';
  proc_addDoc.ExecProc;
  newDocId := proc_addDoc.Params.Items[0].AsInteger;
end;

procedure TFDocumentDM.q_documentNewRecord(DataSet: TDataSet);
begin
  if (newDocId <> 0) then
  begin
    q_document.FieldByName('DOC_ID').AsInteger := newDocId;
    newDocId := 0;
    q_document.FieldByName('STRUK_ID').AsInteger := strukId;
    q_document.FieldByName('KLIENT_ID').AsInteger := klientId;
    q_document.FieldByName('NDOK').AsString := ndok;
    q_document.FieldByName('TIP_OP_ID').AsInteger := tipOpId;
    q_document.FieldByName('TIP_DOK_ID').AsInteger := tipDokId;
    q_document.FieldByName('DATE_DOK').AsDateTime := dateDok;
    q_document.FieldByName('DATE_OP').AsDateTime := dateOp;
  end;
end;

end.
