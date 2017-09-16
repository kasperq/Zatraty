unit DBDM;

interface

uses
  SysUtils, Classes, IBDatabase, DB, Dialogs;

type
  TdDM = class(TDataModule)
    db: TIBDatabase;
    trans_read: TIBTransaction;
    trans_write: TIBTransaction;
    procedure DataModuleDestroy(Sender: TObject);
  private
    login, password, serverAddr, role : string;

  public
    procedure setDB(var db : TIBDatabase); overload;
    procedure setDB(serverAddr, login, password, role : string); overload;
    function connectToDB() : boolean;
    function disconnectFromDB() : boolean;
    procedure commitWriteTrans(retaining : boolean);
    procedure startWriteTrans;
    procedure startReadTrans;

  end;

implementation

{$R *.dfm}

{ TTempDM }

procedure TdDM.commitWriteTrans(retaining: boolean);
begin
  startWriteTrans;
  if (retaining) then
    trans_write.CommitRetaining
  else
    trans_write.Commit;
end;

function TdDM.connectToDB(): boolean;
begin
  result := false;
  try
    db.Open;
    startReadTrans;
    if (db.Connected) and (trans_read.Active) then
      result := true;
  except
    ShowMessage('” пользовател€ ' + login + ' нет доступа к базе данных.');
  end;
end;

procedure TdDM.DataModuleDestroy(Sender: TObject);
begin
  disconnectFromDB();
end;

function TdDM.disconnectFromDB(): boolean;
begin
  result := false;
  try
    if (trans_read.InTransaction) then
      trans_read.CommitRetaining;
    trans_read.Active := false;
    db.Close;
    result := not db.Connected;
  except

  end;
end;

procedure TdDM.setDB(var db: TIBDatabase);
begin
  self.db := db;
end;

procedure TdDM.setDB(serverAddr, login, password, role : string);
begin
  db.Close;
  db.Params.Clear;
  db.Params.Add('lc_ctype=WIN1251');
  db.Params.Add('sql_role_name=' + role);
  db.Params.Add('user_name=' + login);
  db.Params.Add('password=' + AnsiLowerCase(password));
  db.LoginPrompt := false;
  db.DatabaseName := serverAddr;
  self.login := login;
  self.password := password;
  self.serverAddr := serverAddr;
  self.role := role;
end;

procedure TdDM.startReadTrans;
begin
  if (not trans_read.Active) then
    trans_read.StartTransaction;
end;

procedure TdDM.startWriteTrans;
begin
  if (not trans_write.Active) then
    trans_write.StartTransaction;
end;

end.
