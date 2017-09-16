unit ReportCopier;

interface

uses DBDM, Vipusk, Settings, ZatrReport, ReportCopierDM,
  Forms, DateUtils;

type
  TReportCopier = class
  private
    db : TdDM;
    dm : TFReportCopierDM;
    report : TZatrReport;

    m_strukId : integer;
    m_ksmIdPrep : integer;
    m_dateBegin, m_dateEnd : TDate;


  public
    Constructor Create(var db : TdDM); overload;
    Destructor Destroy; override;

    procedure copyReport(strukId, ksmIdPrep : integer; dateBegin, dateEnd, dateBeginKv : TDate);

    property strukId : integer read m_strukId write m_strukId;
    property ksmIdPrep : integer read m_ksmIdPrep write m_ksmIdPrep;
    property dateBegin : TDate read m_dateBegin write m_dateBegin;
    property dateEnd : TDate read m_dateEnd write m_dateEnd;

  end;

implementation

{ TReportCopier }

procedure TReportCopier.copyReport(strukId, ksmIdPrep: integer; dateBegin, dateEnd, dateBeginKv: TDate);
begin
  self.strukId := strukId;
  self.ksmIdPrep := ksmIdPrep;
  self.dateBegin := dateBegin;
  self.dateEnd := dateEnd;

  dm.openOtchet(dateBegin, dateEnd, dateBeginKv, ksmIdPrep);
  dm.q_otchet.FetchAll;
  if (dm.q_otchet.RecordCount > 0) then
  begin
    if (report = nil) then
      report := TZatrReport.Create(db);
    if (report.findReport(strukId, ksmIdPrep, dateBegin, dateEnd)) then
    begin
      report.openReport(strukId, ksmIdPrep, dateBegin, dateEnd);
      report.deleteReport();
      report.saveReport;
    end;
    dm.q_otchet.First;
    while (not dm.q_otchet.Eof) do
    begin
      report.appendReportRecord(dateBegin, dateBegin, strukId, ksmIdPrep,
                                dm.q_otchetKSM_ID.AsInteger, dm.q_otchetKEI_ID.AsInteger,
                                dm.q_otchetRAZDEL_ID.AsInteger, dm.q_otchetOSTATOK_BEGIN_S.AsFloat,
                                dm.q_otchetOSTATOK_BEGIN_NZ.AsFloat, dm.q_otchetPRIX_PERIOD.AsFloat,
                                dm.q_otchetZAG_PERIOD.AsFloat, dm.q_otchetRASX_PERIOD.AsFloat,
                                dm.q_otchetPERS.AsFloat, dm.q_otchetPERNZ.AsFloat,
                                dm.q_otchetOSTATOK_END_S.AsFloat, dm.q_otchetOSTATOK_END_NZ.AsFloat,
                                dm.q_otchetRASH_GOD.AsFloat, dm.q_otchetRASH_KV.AsFloat,
                                0,0,dm.q_otchetACCOUNT.AsString);
      dm.q_otchet.Next;
    end;
    report.saveReport;
    db.commitWriteTrans(true);
  end;

//  openReport(strukId, ksmIdPrep, dateBegin, dateEnd);
//  findZatrReport;
//  deleteZatrReport;
//  appendReport;
//  findZatrZatr;
//  deleteZatrZatr;
//  appendZatrZatr;
end;

constructor TReportCopier.Create(var db : TdDM);
begin
  inherited Create;
  self.db := db;
  if (dm = nil) then
    dm := TFReportCopierDM.Create(application);
  dm.q_otchet.Database := db.db;
  dm.q_otchet.Transaction := db.trans_read;
end;

destructor TReportCopier.Destroy;
begin

  inherited Destroy;
end;

end.
