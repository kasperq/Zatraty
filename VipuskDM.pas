unit VipuskDM;

interface

uses
  SysUtils, Classes, IBDatabase, DB, IBCustomDataSet, IBQuery, RxIBQuery,
  kbmMemTable, Controls;

type
  TVipDM = class(TDataModule)
    Belmed: TIBDatabase;
    trans_read: TIBTransaction;
    q_document: TRxIBQuery;
    q_documentTIP_DOK_ID: TSmallintField;
    q_documentNDOK: TIBStringField;
    q_documentDOC_ID: TIntegerField;
    q_documentDATE_OP: TDateField;
    q_documentDATE_DOK: TDateField;
    q_documentKLIENT_ID: TIntegerField;
    q_documentTIP_OP_ID: TSmallintField;
    q_documentDATE_VVOD: TDateTimeField;
    q_documentSTRUK_ID: TSmallintField;
    q_documentZADACHA_ID: TIBStringField;
    q_documentKLIENT_STNAME: TIBStringField;
    q_kartv: TRxIBQuery;
    q_kartvDOC_ID: TIntegerField;
    q_kartvSTROKA_ID: TIntegerField;
    q_kartvKSM_ID: TIntegerField;
    q_kartvKOL_PRIH: TFMTBCDField;
    mem_vipusk: TkbmMemTable;
    q_kartvSTRUK_ID: TSmallintField;
    q_kartvKLIENT_ID: TIntegerField;
    q_kartvKOD_PROD: TIBStringField;
    q_kartvNMAT: TIBStringField;
    mem_vipuskDOC_ID: TIntegerField;
    mem_vipuskSTROKA_ID: TIntegerField;
    mem_vipuskKSM_ID: TIntegerField;
    mem_vipuskSTRUK_ID: TSmallintField;
    mem_vipuskKLIENT_ID: TIntegerField;
    mem_vipuskKOL_PRIH: TFloatField;
    mem_vipuskKOD_PROD: TStringField;
    mem_vipuskNMAT: TStringField;
    mem_vipuskCHECKED: TBooleanField;
    procedure DataModuleCreate(Sender: TObject);
    
  private
    function openDocument(strukId : integer; dat1, dat2 : TDate) : boolean;
    function openKartv(docId : integer) : boolean;
    procedure fillVipuskMem;

  public
    function loadVipusk(strukId : integer; dat1, dat2 : TDate) : boolean;

  end;

var
  VipDM: TVipDM;

implementation

{$R *.dfm}

uses UtilR, Dialogs;

procedure TVipDM.DataModuleCreate(Sender: TObject);
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

function TVipDM.openDocument(strukId : integer; dat1, dat2 : TDate) : boolean;
begin
  result := false;
  q_document.Close;
  q_document.ParamByName('struk_id').AsInteger := strukId;
  q_document.ParamByName('dat1').AsDate := dat1;
  q_document.ParamByName('dat2').AsDate := dat2;
  q_document.Open;
  if (q_document.RecordCount > 0) then
    result := true;
end;

function TVipDM.openKartv(docId : integer) : boolean;
begin
  result := false;
  q_kartv.Close;
  q_kartv.ParamByName('doc_id').AsInteger := docId;
  q_kartv.Open;
  if (q_kartv.RecordCount > 0) then
    result := true;
end;

function TVipDM.loadVipusk(strukId : integer; dat1, dat2 : TDate) : boolean;
begin
  result := false;
  if (openDocument(strukId, dat1, dat2)) then
    if (openKartv(q_documentDOC_ID.AsInteger)) then
    begin
      fillVipuskMem;
      result := true;
    end;
end;

procedure TVipDM.fillVipuskMem;
begin
  mem_vipusk.DisableControls;
  mem_vipusk.EmptyTable;
  mem_vipusk.Open;
  mem_vipusk.LoadFromDataSet(q_kartv, [mtcpoAppend]);
  mem_vipusk.Last;
  mem_vipusk.First;
  mem_vipusk.EnableControls;
end;

end.
