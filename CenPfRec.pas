unit CenPfRec;

interface

const
  DefaultWaitTime = 1000;

type
  TCenPfRec = class
  public
    Constructor Create;
    Destructor Destroy; override;

    function getStkod() : string;
    function getNumkcu() : string;
    function getKodProd() : string;
    function getNmat() : string;
    function getStrukId() : integer;
    function getKsmId() : integer;
    function getCenaZagr() : double;
    function getPrihCehAmount() : double;
    function getPrihCehSum() : double;
    procedure setStkod(value : string);
    procedure setNumkcu(value : string);
    procedure setKodProd(value : string);
    procedure setNmat(value : string);
    procedure setStrukId(value : integer);
    procedure setKsmId(value : integer);
    procedure setCenaZagr(value : double);
    procedure setPrihCehAmount(value : double);
    procedure setPrihCehSum(value : double);



    property stkod : string read getStkod write setStkod;
    property numkcu : string read getNumkcu write setNumkcu;
    property kodProd : string read getKodProd write setKodProd;
    property nmat : string read getNmat write setNmat;
    property strukId : integer read getStrukId write setStrukId;
    property ksmId : integer read getKsmId write setKsmId;
    property cenaZagr : double read getCenaZagr write setCenaZagr;
    property prihCehAmount : double read getPrihCehAmount write setPrihCehAmount;
    property prihCehSum : double read getPrihCehSum write setPrihCehSum;





  private
    m_stkod : string;
    m_strukId : integer;
    m_numkcu : string;
    m_ksmId : integer;
    m_kodProd : string;
    m_nmat : string;
    m_cenaZagr : double;
    m_prihCehAmount : double;
    m_prihCehSum : double;

    FCriticalMutex: THandle;

  end;

implementation

uses Windows;

Constructor TCenPfRec.Create;
begin
  inherited Create;
  m_stkod := '0000';
  m_strukId := 0;
  m_numkcu := '00000';
  m_ksmId := 0;
  m_kodProd := '0000.000.0.0.00.00';
  m_nmat := '';
  m_cenaZagr := 0.0;
  m_prihCehAmount := 0.0;
  m_prihCehSum := 0.0;
  FCriticalMutex := CreateMutex(nil, false, nil);
end;

Destructor TCenPfRec.Destroy;
begin
  if (WaitForSingleObject(FCriticalMutex, DefaultWaitTime) <> WAIT_OBJECT_0)  then
    exit;

  m_stkod := '0000';
  m_strukId := 0;
  m_numkcu := '00000';
  m_ksmId := 0;
  m_kodProd := '0000.000.0.0.00.00';
  m_nmat := '';
  m_cenaZagr := 0.0;
  m_prihCehAmount := 0.0;
  m_prihCehSum := 0.0;

  ReleaseMutex(FCriticalMutex);
  CloseHandle(FCriticalMutex);
  inherited Destroy;
end;

function TCenPfRec.getStkod() : string;
begin
  if (WaitForSingleObject(FCriticalMutex, DefaultWaitTime) <> WAIT_OBJECT_0)  then
    exit;
  result := self.m_stkod;
  ReleaseMutex(FCriticalMutex);
end;

function TCenPfRec.getNumkcu() : string;
begin
  if (WaitForSingleObject(FCriticalMutex, DefaultWaitTime) <> WAIT_OBJECT_0)  then
    exit;
  result := self.m_numkcu;
  ReleaseMutex(FCriticalMutex);
end;

function TCenPfRec.getKodProd() : string;
begin
  if (WaitForSingleObject(FCriticalMutex, DefaultWaitTime) <> WAIT_OBJECT_0)  then
    exit;
  result := self.m_kodProd;
  ReleaseMutex(FCriticalMutex);
end;

function TCenPfRec.getNmat() : string;
begin
  if (WaitForSingleObject(FCriticalMutex, DefaultWaitTime) <> WAIT_OBJECT_0)  then
    exit;
  result := self.m_nmat;
  ReleaseMutex(FCriticalMutex);
end;

function TCenPfRec.getStrukId() : integer;
begin
  if (WaitForSingleObject(FCriticalMutex, DefaultWaitTime) <> WAIT_OBJECT_0)  then
    exit;
  result := self.m_strukId;
  ReleaseMutex(FCriticalMutex);
end;

function TCenPfRec.getKsmId() : integer;
begin 
  if (WaitForSingleObject(FCriticalMutex, DefaultWaitTime) <> WAIT_OBJECT_0)  then
    exit;
  result := self.m_ksmId;
  ReleaseMutex(FCriticalMutex);
end;

function TCenPfRec.getCenaZagr() : double;
begin 
  if (WaitForSingleObject(FCriticalMutex, DefaultWaitTime) <> WAIT_OBJECT_0)  then
    exit;
  result := self.m_cenaZagr;
  ReleaseMutex(FCriticalMutex);
end;

function TCenPfRec.getPrihCehAmount() : double;
begin
  if (WaitForSingleObject(FCriticalMutex, DefaultWaitTime) <> WAIT_OBJECT_0)  then
    exit;
  result := self.m_prihCehAmount;
  ReleaseMutex(FCriticalMutex);
end;

function TCenPfRec.getPrihCehSum() : double;
begin
  if (WaitForSingleObject(FCriticalMutex, DefaultWaitTime) <> WAIT_OBJECT_0)  then
    exit;
  result := self.m_prihCehSum;
  ReleaseMutex(FCriticalMutex);
end;

procedure TCenPfRec.setStkod(value : string);
begin
  if (WaitForSingleObject(FCriticalMutex, DefaultWaitTime) <> WAIT_OBJECT_0)  then
    exit;
  m_stkod := value;
  ReleaseMutex(FCriticalMutex);
end;

procedure TCenPfRec.setNumkcu(value : string);
begin
  if (WaitForSingleObject(FCriticalMutex, DefaultWaitTime) <> WAIT_OBJECT_0)  then
    exit;
  m_numkcu := value;
  ReleaseMutex(FCriticalMutex);
end;

procedure TCenPfRec.setKodProd(value : string);
begin
  if (WaitForSingleObject(FCriticalMutex, DefaultWaitTime) <> WAIT_OBJECT_0)  then
    exit;
  m_kodProd := value;
  ReleaseMutex(FCriticalMutex);
end;

procedure TCenPfRec.setNmat(value : string);
begin
  if (WaitForSingleObject(FCriticalMutex, DefaultWaitTime) <> WAIT_OBJECT_0)  then
    exit;
  m_nmat := value;
  ReleaseMutex(FCriticalMutex);
end;

procedure TCenPfRec.setStrukId(value : integer);
begin
  if (WaitForSingleObject(FCriticalMutex, DefaultWaitTime) <> WAIT_OBJECT_0)  then
    exit;
  m_strukId := value;
  ReleaseMutex(FCriticalMutex);
end;

procedure TCenPfRec.setKsmId(value : integer);
begin
  if (WaitForSingleObject(FCriticalMutex, DefaultWaitTime) <> WAIT_OBJECT_0)  then
    exit;
  m_ksmId := value;
  ReleaseMutex(FCriticalMutex);
end;

procedure TCenPfRec.setCenaZagr(value : double);
begin
  if (WaitForSingleObject(FCriticalMutex, DefaultWaitTime) <> WAIT_OBJECT_0)  then
    exit;
  m_cenaZagr := value;
  ReleaseMutex(FCriticalMutex);
end;

procedure TCenPfRec.setPrihCehAmount(value : double);
begin
  if (WaitForSingleObject(FCriticalMutex, DefaultWaitTime) <> WAIT_OBJECT_0)  then
    exit;
  m_prihCehAmount := value;
  ReleaseMutex(FCriticalMutex);
end;

procedure TCenPfRec.setPrihCehSum(value : double);
begin 
  if (WaitForSingleObject(FCriticalMutex, DefaultWaitTime) <> WAIT_OBJECT_0)  then
    exit;
  m_prihCehSum := value;
  ReleaseMutex(FCriticalMutex);
end;


end.
