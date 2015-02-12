unit vipuskRec;

interface

type
  TVipuskRec = class
  public
    Constructor Create;
    Destructor Destroy; override;

    function getStrukId() : integer;
    function getKsmId() : integer;
    function getKodProd() : string;
    function getNmat() : string;
    function getCurMonthAmount() : double;
    function getYearAmount() : double;
    procedure setStrukId(value : integer);
    procedure setKsmId(value : integer);
    procedure setKodProd(value : string);
    procedure setNmat(value : string);
    procedure setCurMonthAmount(value : double);
    procedure setYearAmount(value : double);

    property strukId : integer read getStrukId write setStrukId;
    property ksmId : integer read getKsmId write setKsmId;
    property kodProd : string read getKodProd write setKodProd;
    property nmat : string read getNmat write setNmat;
    property curMonthAmount : double read getCurMonthAmount write setCurMonthAmount;
    property yearAmount : double read getYearAmount write setYearAmount;
    
  private
    m_strukId : integer;
    m_ksmId : integer;
    m_kodProd : string;
    m_nmat : string;
    m_curMonthAmount : double;
    m_yearAmount : double;

  end;

implementation

Constructor TVipuskRec.Create;
begin
  inherited Create;
  //
end;

Destructor TVipuskRec.Destroy;
begin
  //
  inherited Destroy;
end;

function TVipuskRec.getStrukId() : integer;
begin
  result := m_strukId;
end;

function TVipuskRec.getKsmId() : integer;
begin
  result := m_ksmId;
end;

function TVipuskRec.getKodProd() : string;
begin
  result := m_kodProd;
end;

function TVipuskRec.getNmat() : string;
begin
  result := m_nmat;
end;

function TVipuskRec.getCurMonthAmount() : double;
begin
  result := m_curMonthAmount;
end;

function TVipuskRec.getYearAmount() : double;
begin
  result := m_yearAmount;
end;

procedure TVipuskRec.setStrukId(value : integer);
begin
  m_strukId := value;
end;

procedure TVipuskRec.setKsmId(value : integer);
begin
  m_ksmId := value;
end;

procedure TVipuskRec.setKodProd(value : string);
begin
  m_kodProd := value;
end;

procedure TVipuskRec.setNmat(value : string);
begin
  m_nmat := value;
end;

procedure TVipuskRec.setCurMonthAmount(value : double);
begin
  m_curMonthAmount := value;
end;

procedure TVipuskRec.setYearAmount(value : double);
begin
  m_yearAmount := value;
end;

end.
