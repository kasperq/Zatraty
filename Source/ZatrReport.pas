unit ZatrReport;

interface

uses DBDM, ZatrReportDM, Document,
  Forms, Data.DB, SysUtils, DateUtils;

type
  TZatrReport = class
  private
    db : TdDM;
    dm : TFZatrReportDM;
    repDoc, zatrDoc : TDocument;

    m_dateDok, m_dateOp, m_dateBegin, m_dateEnd: TDate;
    m_strukId, m_ksmIdPrep, m_ksmId, m_keiId, m_razdelId: integer;
    m_ostBegS, m_ostBegNz, m_prih, m_zagr, m_rash, m_perS, m_perNz, m_ostEndS,
    m_ostEndNz, m_rashYear, m_rashQuat, m_pererasM, m_pererasG: double;
    m_account: string;
    curOtchetId : integer;

    procedure formZatrReport;
//    procedure formZatrZatr;
    function findZatrReportDocument(strukId, ksmIdPrep : integer; dateBegin,
                                    dateEnd : TDate) : boolean;
//    function findZatrZatrDocument(strukId, ksmIdPrep : integer; dateBegin,
//                                  dateEnd : TDate) : boolean;

  public
    Constructor Create(var db : TdDm);
    Destructor Destroy; override;

    function findReport(strukId, ksmIdPrep : integer; dateBegin, dateEnd : TDate) : boolean;
    function openReport(strukId, ksmIdPrep : integer; dateBegin, dateEnd : TDate) : boolean;
    function deleteReport() : boolean;
    procedure appendReportRecord(dateDok, dateOp : TDate; strukId, ksmIdPrep,
                                 ksmId, keiId, razdelId : integer; ostBegS, ostBegNz,
                                 prih, zagr, rash, perS, perNz, ostEndS, ostEndNz,
                                 rashYear, rashQuat, pererasM, pererasG : double;
                                 account : string);
    function saveReport() : boolean;


  end;

implementation

{ TZatrReport }

procedure TZatrReport.appendReportRecord(dateDok, dateOp: TDate; strukId, ksmIdPrep,
                                         ksmId, keiId, razdelId: integer; ostBegS,
                                         ostBegNz, prih, zagr, rash, perS, perNz,
                                         ostEndS, ostEndNz, rashYear, rashQuat,
                                         pererasM, pererasG: double; account: string);
var
  ndok : string;
begin
  m_dateDok := dateDok;
  m_dateOp := dateOp;
  m_strukId := strukId;
  m_ksmIdPrep := ksmIdPrep;
  m_ksmId := ksmId;
  m_keiId := keiId;
  m_razdelId := razdelId;
  m_ostBegS := ostBegS;
  m_ostBegNz := ostBegNz;
  m_prih := prih;
  m_zagr := zagr;
  m_rash := rash;
  m_perS := perS;
  m_perNz := perNz;
  m_ostEndS := ostEndS;
  m_ostEndNz := ostEndNz;
  m_rashYear := rashYear;
  m_rashQuat := rashQuat;
  m_pererasM := pererasM;
  m_pererasG := pererasG;
  m_account := account;

  if (repDoc.docId = 0) then
  begin
    ndok := 'гн_' + IntToStr(m_ksmIdPrep) + '_' + IntToStr(MonthOf(dateDok))
            + '_' + IntToStr(YearOf(dateDok));
    repDoc.createDocument(m_strukId, m_ksmIdPrep, 163, 237, dateDok, dateOp, ndok);
    repDoc.saveDocument;
  end;

  if (repDoc.docId <> dm.curDocId) then
    dm.openZatrReport(repDoc.docId);

  dm.q_zatrReport.Append;
  formZatrReport;
 { dm.q_zatrReport.Append;
  formZatrZatr;  }
end;

constructor TZatrReport.Create(var db: TdDm);
begin
  inherited Create;
  self.db := db;
  if (dm = nil) then
    dm := TFZatrReportDM.Create(application);

  dm.q_zatrReport.Database := db.db;
  dm.q_zatrReport.Transaction := db.trans_read;
  dm.upd_zatrReport.UpdateTransaction := db.trans_write;
end;

function TZatrReport.deleteReport() : boolean;
begin
  dm.q_zatrReport.First;
  while (not dm.q_zatrReport.Eof) do
    dm.q_zatrReport.Delete;
  result := true;
end;

destructor TZatrReport.Destroy;
begin
//
  inherited Destroy;
end;

function TZatrReport.findReport(strukId, ksmIdPrep: integer; dateBegin,
                                dateEnd: TDate): boolean;
begin
  m_dateBegin := dateBegin;
  m_dateEnd := dateEnd;
  result := findZatrReportDocument(strukId, ksmIdPrep, dateBegin, dateEnd);
end;

function TZatrReport.findZatrReportDocument(strukId, ksmIdPrep: integer;
                                            dateBegin, dateEnd: TDate): boolean;
begin
  if (repDoc = nil) then
    repDoc := TDocument.Create(db);
  result := repDoc.find(strukId, ksmIdPrep, 163, 237, dateBegin, dateEnd);
end;

{function TZatrReport.findZatrZatrDocument(strukId, ksmIdPrep: integer;
                                          dateBegin, dateEnd: TDate): boolean;
begin
  if (zatrDoc = nil) then
    zatrDoc := TDocument.Create(db);
  result := repDoc.find(strukId, ksmIdPrep, 163, 237, dateBegin, dateEnd);
end; }

procedure TZatrReport.formZatrReport;
begin
  dm.q_zatrReport.Edit;
  dm.q_zatrReportOTCHET_ID.AsInteger := dm.newOtchetId;
  dm.q_zatrReportDOC_ID.AsInteger := repDoc.docId;
  dm.q_zatrReportKSM_ID.AsInteger := m_ksmId;
  dm.q_zatrReportRAZDEL_ID.AsInteger := m_razdelId;
  dm.q_zatrReportKEI_ID.AsInteger := m_keiId;
  dm.q_zatrReportACCOUNT.AsString := m_account;
  dm.q_zatrReportOST_BEG_S.AsFloat := m_ostBegS;
  dm.q_zatrReportOST_BEG_NZ.AsFloat := m_ostBegNz;
  dm.q_zatrReportPRIHOD.AsFloat := m_prih;
  dm.q_zatrReportZAGRUZ.AsFloat := m_zagr;
  dm.q_zatrReportRASHOD.AsFloat := m_rash;
  dm.q_zatrReportPER_S.AsFloat := m_perS;
  dm.q_zatrReportPER_NZ.AsFloat := m_perNz;
  dm.q_zatrReportOST_END_S.AsFloat := m_ostEndS;
  dm.q_zatrReportOST_END_NZ.AsFloat := m_ostEndNz;
  dm.q_zatrReportPERERAS_M.AsFloat := m_pererasM;
  dm.q_zatrReportPERERAS_G.AsFloat := m_pererasG;
  dm.q_zatrReportRASHOD_YEAR.AsFloat := m_rashYear;
  dm.q_zatrReportRASHOD_QUAT.AsFloat := m_rashQuat;
  dm.q_zatrReport.Post;
  curOtchetId := dm.q_zatrReportOTCHET_ID.AsInteger;
end;

{procedure TZatrReport.formZatrZatr;
begin
  dm.q_zatrReport.Edit;
  dm.q_zatrReportOTCHET_ID.AsInteger := dm.newOtchetId;
  dm.q_zatrReportDOC_ID.AsInteger := zatrDoc.docId;
  dm.q_zatrReportKSM_ID.AsInteger := m_ksmId;
  dm.q_zatrReportRAZDEL_ID.AsInteger := m_razdelId;
  dm.q_zatrReportKEI_ID.AsInteger := m_keiId;
  dm.q_zatrReportACCOUNT.AsInteger := m_account;
  dm.q_zatrReportOST_BEG_NZ.AsFloat := m_ostBegNz;
  dm.q_zatrReportPRIHOD.AsFloat := m_prih;
  dm.q_zatrReportZAGRUZ.AsFloat := m_zagr - m_perNz;
  dm.q_zatrReportRASHOD.AsFloat := m_rash;
  dm.q_zatrReportPER_NZ.AsFloat := m_perNz;
  dm.q_zatrReportOST_END_NZ.AsFloat := m_ostEndNz;
  dm.q_zatrReportPERERAS_M.AsFloat := m_pererasM;
  dm.q_zatrReportPERERAS_G.AsFloat := m_pererasG;
  dm.q_zatrReportPARENT.AsInteger := curOtchetId;
  dm.q_zatrReport.Post;
end; }

function TZatrReport.openReport(strukId, ksmIdPrep: integer; dateBegin,
                                dateEnd: TDate): boolean;
begin
  dm.openZatrReport(repDoc.docId);
//  dm.openZatrReport(zatrDoc.docId);
end;

function TZatrReport.saveReport: boolean;
begin
  if (dm.q_zatrReport.Modified)
     or (dm.q_zatrReport.State = dsEdit) or (dm.q_zatrReport.State = dsInsert)  then
    dm.q_zatrReport.Post;
  if (dm.q_zatrReport.UpdatesPending) then
    dm.q_zatrReport.ApplyUpdates;
end;

end.
