unit MainDM;

interface

uses
  DBDM, MainForm,
  System.SysUtils, System.Classes, UtilR, Forms;

type
  TFMainDM = class(TDataModule)
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
    db : TdDM;
    FZatratyMain : TFZatratyMain;

    userName : string;

    function connectToDB() : boolean;

  public
    procedure startApp;
  end;

var
  FMainDM: TFMainDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

function TFMainDM.connectToDB() : boolean;
begin
  result := false;
  userName := AnsiUpperCase(GetCurrentUserName);
  if (db = nil) then
  begin
    db := TdDM.Create(Application);
    db.setDB('192.168.13.13:D:\IBDATA\BELMED.GDB',
             AnsiUpperCase(userName), AnsiLowerCase(userName), 'SKLAD_CEH');
    if (db.connectToDB()) then
      result := true;
  end;
end;

procedure TFMainDM.DataModuleCreate(Sender: TObject);
begin
  startApp;
end;

procedure TFMainDM.DataModuleDestroy(Sender: TObject);
begin
  FZatratyMain := nil;
  FZatratyMain.Free;
  db.disconnectFromDB();
end;

procedure TFMainDM.startApp;
begin
  if (connectToDB()) then
  begin
    if (FZatratyMain = nil) then
      Application.CreateForm(TFZatratyMain, FZatratyMain);
//      FZatratyMain := TFZatratyMain.Create(Application);
    FZatratyMain.setDB(db);
    FZatratyMain.Show;
  end;
end;

end.

