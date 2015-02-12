unit Departments;

interface

uses kbmMemTable,
DepartmentDM;

type
  TDepartments = class
  public
    Constructor Create;
    Destructor Destroy; override;

    function loadDepartments() : boolean;
    function getDepartmentsList() : TkbmMemTable;
    function getCurStrukId() : integer;
    property departments : TkbmMemTable read getDepartmentsList;

    property strukId : integer read getCurStrukId;

  private
    curStrukId : integer;
    dm : TdepDM;

  end;

implementation

uses Forms, SysUtils;

Constructor TDepartments.Create;
begin
  inherited Create;
  if (dm = nil) then  
    dm := TdepDM.Create(Application);
  curStrukId := 0;
end;

Destructor TDepartments.Destroy;
begin
  curStrukId := 0;
  inherited Destroy;
end;

function TDepartments.loadDepartments() : boolean;
begin
  result := false;
  if (dm.openConfigumc()) then
    result := true;
end;

function TDepartments.getDepartmentsList() : TkbmMemTable;
begin
  result := dm.mem_department;
end;

function TDepartments.getCurStrukId() : integer;
begin
  result := dm.mem_departmentSTRUK_ID.AsInteger;
end;

end.
