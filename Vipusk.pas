unit Vipusk;

interface

uses VipuskDM,
Contnrs, kbmMemTable;

type
  TVipusk = class
  public
    Constructor Create;
    Destructor Destroy; override;

    procedure loadVipusk(month, year, strukId : integer);

    function getVipuskList() : TkbmMemTable;
    function getStrukId() : integer;
    function getMonth() : integer;
    function getYear() : integer;
    procedure setStrukId(value : integer);
    procedure setMonth(value : integer);
    procedure setYear(value : integer);

    property vipuskList : TkbmMemTable read getVipuskList;
    property strukId : integer read getStrukId write setStrukId;
    property month : integer read getMonth write setMonth;
    property year : integer read getYear write setYear;

  private
    dm : TVipDM;
    m_strukId : integer;
    m_month : integer;
    m_year : integer;

  end;

implementation

uses Forms, Controls, SysUtils;

Constructor TVipusk.Create;
begin
  inherited Create;
  if (dm = nil) then
    dm := TVipDM.Create(Application);
end;

Destructor TVipusk.Destroy;
begin
  //
  inherited Destroy;
end;

function TVipusk.getVipuskList() : TkbmMemTable;
begin
  result := dm.mem_vipusk;
end;

function TVipusk.getStrukId() : integer;
begin
  result := m_strukId;
end;

function TVipusk.getMonth() : integer;
begin
  result := m_month;
end;

function TVipusk.getYear() : integer;
begin
  result := m_year;
end;

procedure TVipusk.setStrukId(value : integer);
begin
  m_strukId := value;
end;

procedure TVipusk.setMonth(value : integer);
begin
  m_month := value;
end;

procedure TVipusk.setYear(value : integer);
begin
  m_year := value;
end;

procedure TVipusk.loadVipusk(month, year, strukId : Integer);
var
  dat1, dat2 : TDate;
  monthStr : string;
begin
  m_month := month;
  m_year := year;
  m_strukId := strukId;
  IF (month < 10) THEN
    monthStr := '0' + IntToStr(month)
  ELSE
    monthStr := IntToStr(month);
  dat1 := StrToDate('01.' + monthStr + '.' + IntToStr(year));
  dat2 := StrToDate(DateToStr( IncMonth( dat1, 1 ) -1 ));
  dm.loadVipusk(m_strukId, dat1, dat2);
end;

end.
