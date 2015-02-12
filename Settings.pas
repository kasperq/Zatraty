unit Settings;

interface

type
  TSettings = class
  public
    Constructor Create;
    Destructor Destroy; override;

    function getMonth() : integer;
    function getYear() : integer;
    procedure setMonth(value : integer);
    procedure setYear(value : integer);

    property month : integer read getMonth write setMonth;
    property year : integer read getYear write setYear;

  private
    m_month : integer;
    m_year : integer;

  end;

implementation

Constructor TSettings.Create;
begin
  inherited Create;
  m_month := 0;
  m_year := 0;
end;

Destructor TSettings.Destroy;
begin
  m_month := 0;
  m_year := 0;
  inherited Destroy;
end;

function TSettings.getMonth() : integer;
begin
  result := m_month;
end;

function TSettings.getYear() : integer;
begin
  result := m_year;
end;

procedure TSettings.setMonth(value : integer);
begin
  m_month := value;
end;

procedure TSettings.setYear(value : integer);
begin
  m_year := value;
end;

end.
