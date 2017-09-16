unit ZatrRecord;

interface

type
  TZatrRecord = class
  private
    m_ksmId : integer;
    m_ostBeg, m_ostBegS, m_zagr, m_zagrS, m_rash, m_rashS, m_rashYear, m_rashYearS,
    m_rashKv, m_rashKvS, m_perNz, m_pereoc, m_ostEnd, m_ostEndS : double;
    m_itRazdel : integer;
    m_namRazdel : string;
  public
    Constructor Create;
    Destructor Destroy; override;

    procedure clearFields;
    function isNullRecord() : boolean;

    property ostBeg : double read m_ostBeg write m_ostBeg;
    property ostBegS : double read m_ostBegS write m_ostBegS;
    property ostEnd : double read m_ostEnd write m_ostEnd;
    property ostEndS : double read m_ostEndS write m_ostEndS;
    property zagr : double read m_zagr write m_zagr;
    property zagrS : double read m_zagrS write m_zagrS;
    property rash : double read m_rash write m_rash;
    property rashS : double read m_rashS write m_rashS;
    property rashYear : double read m_rashYear write m_rashYear;
    property rashYearS : double read m_rashYearS write m_rashYearS;
    property rashKv : double read m_rashKv write m_rashKv;
    property rashKvS : double read m_rashKvS write m_rashKvS;
    property perNz : double read m_perNz write m_perNz;
    property pereoc : double read m_pereoc write m_pereoc;
    property itRazdel : integer read m_itRazdel write m_itRazdel;
    property namRazdel : string read m_namRazdel write m_namRazdel;
    property isNull : boolean read isNullRecord;
  end;

implementation

{ TZatrRecord }

procedure TZatrRecord.clearFields;
begin
  m_ostBeg := 0;
  m_ostBegS := 0;
  m_zagr := 0;
  m_zagrS := 0;
  m_rash := 0;
  m_rashS := 0;
  m_rashYear := 0;
  m_rashYearS := 0;
  m_rashKv := 0;
  m_rashKvS := 0;
  m_perNz := 0;
  m_pereoc := 0;
end;

constructor TZatrRecord.Create;
begin
  inherited Create;
  //
end;

destructor TZatrRecord.Destroy;
begin
   //
  inherited;
end;

function TZatrRecord.isNullRecord() : boolean;
begin
  result := false;
  if (m_zagrS = 0) and (m_rashS = 0) then
    result := true;
end;

end.
