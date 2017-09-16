unit Departments;

interface

uses DepartmentsDM, DBDM, Settings,
  Forms, kbmMemTable, Dialogs, SysUtils;

type
  TDepartments = class
  private
    dm : TdepDM;
    db : TdDM;
    m_sets : TSettings;

  public
    Constructor Create(var db : TdDM); overload;
    Constructor Create(var db : TdDM; var sets : TSettings); overload;
    Destructor Destroy; override;

    procedure setSets(var value: TSettings);

    function openDepartmentsList() : boolean;
    function getDepartmentsList() : TkbmMemTable;

    property strukList : TkbmMemTable read getDepartmentsList;
  end;

implementation

Constructor TDepartments.Create(var db : TdDM);
begin
  inherited Create;
  self.db := db;
  dm := TdepDM.Create(Application);
  dm.q_struk.Database := db.db;
  dm.q_struk.Transaction := db.trans_read;
  dm.setSets(m_sets);
end;

constructor TDepartments.Create(var db: TdDM; var sets: TSettings);
begin
  self.db := db;
  dm := TdepDM.Create(Application);
  dm.q_struk.Database := db.db;
  dm.q_struk.Transaction := db.trans_read;
  setSets(sets);
  dm.setSets(m_sets);
end;

Destructor TDepartments.Destroy;
begin
//  FreeAndNil(dm);
  inherited Destroy;
end;

function TDepartments.getDepartmentsList() : TkbmMemTable;
begin
  result := dm.mem_struk;
end;

function TDepartments.openDepartmentsList() : boolean;
begin
  dm.q_struk.Close;
  dm.q_struk.MacroByName('usl').AsString := '(configumc.struk_id = 1 or '
                                               + 'configumc.struk_id = 645 or '
                                               + 'configumc.struk_id = 29 or '
                                               + 'configumc.struk_id = 37 or '
                                               + 'configumc.struk_id = 38 or '
                                               + 'configumc.struk_id = 39 or '
                                               + 'configumc.struk_id = 648 or '
                                               + 'configumc.struk_id = 43 or '
                                               + 'configumc.struk_id = 540 or '
                                               + 'configumc.struk_id = 541 or '
                                               + 'configumc.struk_id = 649 or '
                                               + 'configumc.struk_id = 106 or '
                                               + 'configumc.struk_id = 696 or '
                                               + 'configumc.struk_id = 760) ';
  dm.q_struk.Open;
  dm.q_struk.Last;
  dm.mem_struk.AfterScroll := nil;
  dm.mem_struk.EmptyTable;
  dm.mem_struk.LoadFromDataSet(dm.q_struk, [mtcpoAppend]);
  dm.mem_struk.Open;
  dm.mem_struk.AfterScroll := dm.mem_strukAfterScroll;
  result := true;
end;

procedure TDepartments.setSets(var value: TSettings);
begin
  m_sets := value;
end;

end.
