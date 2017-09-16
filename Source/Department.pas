unit Department;

interface

type
  TDepartment = class
  private
    m_curStrukId : integer;
    m_stkod : string;

  public
    Constructor Create;
    Destructor Destroy; override;

    procedure setStrukId(value : integer);

    property strukId : integer read m_curStrukId write setStrukId;
    property stkod : string read m_stkod write m_stkod;
  end;

implementation

{ TDepartment }

constructor TDepartment.Create;
begin

end;

destructor TDepartment.Destroy;
begin

  inherited;
end;

procedure TDepartment.setStrukId(value: integer);
begin

end;

end.
