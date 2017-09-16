unit SvodViewer;

interface

uses DBDM, Settings, SvodParams, SvodViewerDM,
  Forms, SysUtils;

type
  TSvodViewer = class
  private
    db : TdDM;
    m_sets : TSettings;
    dm : TSvodDM;

    reportName : string;

    procedure openSvod(svodTyp : TSvodType);

  public
    Constructor Create(var db : TdDM; var sets : TSettings);
    Destructor Destroy; override;

    procedure setSets(var value : TSettings);

    procedure printSvod(svodTyp : TSvodType; svodPl : TSvodPlace);

  end;

implementation

{ TSvodViewer }

constructor TSvodViewer.Create(var db: TdDM; var sets: TSettings);
begin
  inherited Create;
  self.db := db;
  setSets(sets);
  dm := TSvodDM.Create(application);
  dm.q_struk.Database := db.db;
  dm.q_struk.Transaction := db.trans_read;
end;

destructor TSvodViewer.Destroy;
begin

  inherited;
end;

procedure TSvodViewer.openSvod(svodTyp: TSvodType);
begin
  if (svodTyp = TSvodType.svodVed) then
  begin
    dm.openSvodVed(m_sets.year, m_sets.month, m_sets.stkod, m_sets.machine, m_sets.driveLetter);
    reportName := 'svod_ved.fr3';
  end;
  if (svodTyp = TSvodType.tovarProd) then
  begin
    dm.openSvodVed(m_sets.year, m_sets.month, m_sets.stkod, m_sets.machine, m_sets.driveLetter);
    reportName := 'svod_tovar.fr3';
  end;
  if (svodTyp = TSvodType.itogNez) then
  begin
    dm.openSvodVed(m_sets.year, m_sets.month, m_sets.stkod, m_sets.machine, m_sets.driveLetter);
    dm.openSvodNezav(m_sets.year, m_sets.month, m_sets.stkod, m_sets.machine, m_sets.driveLetter);
    reportName := 'svod_nezav.fr3';
  end;
end;

procedure TSvodViewer.printSvod(svodTyp: TSvodType; svodPl: TSvodPlace);
var
  i : integer;
begin
  dm.clearDatasets;
  m_sets.medPlace := svodPl;
  for i := 0 to m_sets.medPlaceSize - 1 do
  begin
    m_sets.strukId := m_sets.medPlaceStrukList[i];
    dm.findStruk(m_sets.strukId);
    m_sets.stkod := dm.q_strukSTKOD.AsString;
    openSvod(svodTyp);
    dm.setSvodVedStruk(m_sets.strukId, dm.q_strukSTNAME.AsString, m_sets.stkod);
  end;
  if (svodTyp = TSvodType.itogNez) then
    dm.setSvodNezavPF21;
//  dm.mem_svodVed.SortOn('', []);
  dm.frxReport1.Script.Variables['month'] := m_sets.monthStr;
  dm.frxReport1.Script.Variables['year'] := IntToStr(m_sets.year);
  if (svodPl = TSvodPlace.medPrep) then
    dm.frxReport1.Script.Variables['placeName'] := 'производство медпрепаратов'
  else
    dm.frxReport1.Script.Variables['placeName'] := 'эндокринное производство';
  dm.frxReport1.LoadFromFile(m_sets.reportPath + reportName);
  dm.frxReport1.ShowReport;
end;

procedure TSvodViewer.setSets(var value: TSettings);
begin
  m_sets := value;
end;

end.
