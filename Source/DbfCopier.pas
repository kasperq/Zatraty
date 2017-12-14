unit DbfCopier;

interface

uses DBDM, Settings, DbfCopierDM, ZatrReport, MoneyZatr, MoneyTypes,
  Forms;

type
  TDbfCopier = class
  private
    db : TdDM;
    m_sets : TSettings;
    dm : TdbfCopyDM;
    moneyZ : TMoneyZatr;
    zatrKol, zatrSum : TZatrReport;

    m_strukId, m_ksmIdPrep : integer;
    m_dateMonthBegin, m_dateMonthEnd : TDate;

    procedure setSets(var value: TSettings);

    procedure createZatrRecord(strukId, ksmIdPrep : integer; dateMonthBegin,
                               dateMonthEnd : TDate);
    procedure createZatrMoneyRecord;
    procedure formZatrReportParams;

  public
    Constructor Create(var db : TdDM; var sets : TSettings); overload;
    Destructor Destroy; override;

    procedure copyDbfZatrToDb(fileName : string);
  end;

implementation

procedure TDbfCopier.copyDbfZatrToDb(fileName : string);
begin
  if (fileName <> '') then
  begin
    if (dm = nil) then
      dm := TdbfCopyDM.Create(application);
    dm.openZatraDbf(fileName);
    dm.q_zatraDbf.First;
    while (not dm.q_zatraDbf.Eof) do
    begin
      formZatrReportParams;
      createZatrRecord(strukId, ksmIdPrep, dateMonthBegin, dateMonthEnd);

      createZatrMoneyRecord;
      dm.q_zatraDbf.Next;
    end;
  end;
end;

constructor TDbfCopier.Create(var db: TdDM; var sets: TSettings);
begin
  inherited Create;
  self.db := db;
  setSets(sets);
end;

procedure TDbfCopier.createZatrRecord(strukId, ksmIdPrep : integer; dateMonthBegin,
                                      dateMonthEnd : TDate);
begin
  if (zatrKol = nil) then
    zatrKol := TZatrReport.Create(db, TTipDok.zatrKol);
  if (zatrSum = nil) then
    zatrSum := TZatrReport.Create(db, TTipDok.zatrSum);
  if (zatrSum.openReport(strukId, ksmIdPrep, dateMonthBegin, dateMonthEnd)) then
  begin
    zatrSum.deleteReport;
    zatrSum.saveReport;
    zatrSum.deleteReportDocument;
    zatrSum.saveReportDocument;
    if (zatrKol.openReport(strukId, ksmIdPrep, dateMonthBegin, dateMonthEnd)) then
    begin
      zatrKol.deleteReport;
      zatrKol.saveReport;
      zatrKol.deleteReportDocument;
      zatrKol.saveReportDocument;
    end;
  end;
end;

procedure TDbfCopier.createZatrMoneyRecord;
begin

end;

destructor TDbfCopier.Destroy;
begin

  inherited Destroy;
end;

procedure TDbfCopier.formZatrReportParams;
begin

end;

procedure TDbfCopier.setSets(var value: TSettings);
begin
  m_sets := value;
end;

end.