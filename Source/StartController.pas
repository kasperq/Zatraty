unit StartController;

interface

uses DBDM, Settings, DbfCopier,
  SysUtils;

type
  TStartController = class
  private
    db : TdDM;
    m_sets : TSettings;
    dbfCopier : TDbfCopier;

    procedure setSets(var value: TSettings);

  public
    Constructor Create(var db : TdDM; var sets : TSettings); overload;
    Destructor Destroy; override;

    procedure copyDbfZatrToDb(fileName : string);
  end;

implementation

{ TStartController }

procedure TStartController.copyDbfZatrToDb(fileName : string);
begin
  if (dbfCopier = nil) then
    dbfCopier := TDbfCopier.Create(db, m_sets);
  dbfCopier.copyDbfZatrToDb(fileName);
end;

constructor TStartController.Create(var db: TdDM; var sets: TSettings);
begin
  inherited Create;
  self.db := db;
  setSets(sets);
end;

destructor TStartController.Destroy;
begin
  FreeAndNil(dbfCopier);
  inherited Destroy;
end;

procedure TStartController.setSets(var value: TSettings);
begin
  m_sets := value;
end;

end.
