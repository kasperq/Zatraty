unit PrReportController;

interface

uses DBDM, Settings, Vipusk, ReportCopier,
  RxIbQuery, kbmMemTable;

type
  TPrReportController = class
  private
    db : TdDM;
    vip : TVipusk;
    m_sets : TSettings;
    repCopier : TReportCopier;
    function getVipusk: TRxIBQuery;
  public
    Constructor Create(var db : TdDM; var sets : TSettings); overload;
    Destructor Destroy; override;

    procedure setSets(var value : TSettings);
    procedure setDB(var db : TdDM);
    procedure loadVipusk;

    procedure copyReports({reportList : TkbmMemTable});
    procedure selectAllPreps(select : boolean);

    property vipuskList : TRxIBQuery read getVipusk;
  end;

implementation

{ TPrReportController }

procedure TPrReportController.copyReports({reportList : TkbmMemTable});
var
  curKsmIdPrep : integer;
begin
  curKsmIdPrep := vipuskList.FieldByName('KSM_ID').AsInteger;
  vipuskList.First;
  while (not vipuskList.Eof) do
  begin
    if (vipuskList.FieldByName('CHECKED').AsInteger = 1) then
    begin
      if (repCopier = nil) then
        repCopier := TReportCopier.Create(db);
      repCopier.copyReport(m_sets.strukId, m_sets.drug.ksmId,
                           m_sets.dateBeginMonth, m_sets.dateEnd, m_sets.dateBeginQuat);
    end;
    vipuskList.Next;
  end;
  vip.openVipusk(m_sets.strukId, m_sets.dateBeginMonth, m_sets.dateEnd);
  vipuskList.Locate('ksm_id', curKsmIdPrep, []);
end;

constructor TPrReportController.Create(var db: TdDM; var sets: TSettings);
begin
  inherited Create;
  self.db := db;
  setSets(sets);
end;

destructor TPrReportController.Destroy;
begin

  inherited;
end;

procedure TPrReportController.selectAllPreps(select : boolean);
begin
  vip.selectAll(select);
end;

procedure TPrReportController.setDB(var db: TdDM);
begin
  self.db := db;
end;

procedure TPrReportController.setSets(var value: TSettings);
begin
  m_sets := value;
  m_sets.onChanged := loadVipusk;
end;

procedure TPrReportController.loadVipusk;
begin
  if (vip = nil) then
    vip := TVipusk.Create(db, m_sets);
  vip.openVipusk(m_sets.strukId, m_sets.dateBeginMonth, m_sets.dateEnd);
  vip.vipuskList.First;
end;

function TPrReportController.getVipusk: TRxIBQuery;
begin
  result := vip.vipuskList;
end;

end.
