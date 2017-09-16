unit CenPF;

interface

uses DBDM, Settings, CenPFDM,
  Forms, kbmMemTable;

type
  TCenPF = class
  private
    db : TdDM;
    m_sets : TSettings;
    dm : TcPFDM;

  public
    Constructor Create(var db : TdDM; var sets : TSettings);
    Destructor Destroy; override;

    procedure printCenPf;

  end;

implementation

{ TCenPF }

constructor TCenPF.Create(var db: TdDM; var sets: TSettings);
begin
  inherited Create;
  self.db := db;
  self.m_sets := sets;
  dm := TcPFDM.Create(application);
  dm.q_spprod.Database := db.db;
  dm.q_spprod.Transaction := db.trans_read;
end;

destructor TCenPF.Destroy;
begin

  inherited;
end;

procedure TCenPF.printCenPf;
var
  i : integer;
begin
  dm.mem_cenPf.Close;
  dm.mem_cenPf.EmptyTable;
  for i := 0 to m_sets.machineCount - 1 do
  begin
    dm.openCenPFDbf(m_sets.month, m_sets.year, m_sets.machineList[i], m_sets.driveLetter);
    dm.mem_cenPf.LoadFromDataSet(dm.q_cenPfDBf, [mtcpoAppend]);
    dm.setKsmIdAndKodProd;
  end;
  dm.mem_cenPf.Open;

  dm.frxReport1.Script.Variables['month_str'] := m_sets.monthStr;
  dm.frxReport1.Script.Variables['year'] := m_sets.year;
  dm.frxReport1.LoadFromFile(m_sets.reportPath + 'cen_pf.fr3');
  dm.frxReport1.ShowReport;
end;

end.
