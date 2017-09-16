unit Drug;

interface

uses
  SysUtils;

type
  TDrug = class
  private
    m_ksmId, m_sprodId : integer;
    m_nmat, m_kodProd, m_koprep : string;

  public
    Constructor Create; overload;
    Constructor Create(ksmId, sprodId : integer; nmat, kodProd : string); overload;
    Destructor Destroy; override;

    procedure setKoprep(ksmId : string);
    procedure setKsmId(ksmId : integer);

    property ksmId : integer read m_ksmId write setKsmId;
    property sprodId : integer read m_sprodId write m_sprodId;
    property nmat : string read m_nmat write m_nmat;
    property kodProd : string read m_kodProd write m_kodProd;
    property koprep : string read m_koprep write setKoprep;
  end;

implementation

{ TDrug }

constructor TDrug.Create;
begin
  inherited Create;
  self.ksmId := 0;
  self.sprodId := 0;
  self.nmat := '';
  self.kodProd := '';
  self.koprep := '';
end;

constructor TDrug.Create(ksmId, sprodId: integer; nmat, kodProd: string);
begin
  self.ksmId := ksmId;
  self.sprodId := sprodId;
  self.nmat := nmat;
  self.kodProd := kodProd;
  self.koprep := IntToStr(ksmId);
end;

destructor TDrug.Destroy;
begin
  //
  inherited Destroy;
end;

procedure TDrug.setKsmId(ksmId: integer);
begin
  self.m_ksmId := ksmId;
  self.koprep := IntToStr(ksmId);
end;

procedure TDrug.setKoprep(ksmId: string);
var
  i : integer;
begin
  m_koprep := '';
  for i := 1 to (6 - length(ksmId)) do
  begin
    m_koprep := m_koprep + '0';
  end;
  m_koprep := m_koprep + ksmId;
end;

end.
