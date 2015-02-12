unit DepartmentDM;

interface

uses
  SysUtils, Classes, DB, IBCustomDataSet, kbmMemTable, IBDatabase, IBQuery,
  RxIBQuery;

type
  TdepDM = class(TDataModule)
    q_configumc: TRxIBQuery;
    Belmed: TIBDatabase;
    trans_read: TIBTransaction;
    mem_department: TkbmMemTable;
    q_configumcSTNAM: TIBStringField;
    q_configumcSTRUK_ID: TSmallintField;
    q_configumcSTKOD: TIBStringField;
    q_configumcRELA_STRUK_ID: TSmallintField;
    q_configumcRELASTRUKID: TSmallintField;
    mem_departmentSTRUK_ID: TSmallintField;
    mem_departmentRELA_STRUK_ID: TSmallintField;
    mem_departmentRELASTRUKID: TSmallintField;
    mem_departmentSTNAM: TStringField;
    mem_departmentSTKOD: TStringField;
    mem_departmentCHECKED: TBooleanField;
    procedure DataModuleDestroy(Sender: TObject);
    procedure DataModuleCreate(Sender: TObject);
  private
    function fillMemTable() : boolean;

  public
    function openConfigumc() : boolean;

  end;

implementation

{$R *.dfm}

uses Dialogs, UtilR;

procedure TdepDM.DataModuleCreate(Sender: TObject);
var
  userName : string;
begin
  UserName := AnsiUpperCase(GetCurrentUserName);
  BELMED.Close;
  BELMED.Params.Clear;
  BELMED.DatabaseName := '192.168.13.13:D:\IBDATA\BELMED.GDB';
  BELMED.Params.Add('lc_ctype=WIN1251');
  BELMED.Params.Add('sql_role_name=sklad_CEH');
  BELMED.Params.Add('user_name=' + UserName);
  BELMED.Params.Add('password=' + AnsiLowerCase(UserName));
  try
    BELMED.Open;
    trans_read.StartTransaction;
  except
    Delete(UserName, 1, 10);
    ShowMessage('” пользовател€ ' + UserName + ' нет доступа к базе данных');
  end;
end;

procedure TdepDM.DataModuleDestroy(Sender: TObject);
begin
  q_configumc.Close;
  mem_department.Close;
  mem_department.EmptyTable;
end;

function TdepDM.fillMemTable() : boolean;
begin
  result := false;
  mem_department.DisableControls;
  mem_department.EmptyTable;
  mem_department.LoadFromDataSet(q_configumc, [mtcpoAppend]);
  mem_department.Open;
  mem_department.EnableControls;
  mem_department.First;
  if (mem_department.RecordCount > 0) then
    result := true;
end;

function TdepDM.openConfigumc() : boolean;
begin
  result := false;
  q_configumc.Close;
  q_configumc.Open;
  fillMemTable();
  if (mem_department.RecordCount > 0) then
    result := true;
end;


end.
