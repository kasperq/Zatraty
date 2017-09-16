unit Settings;

interface

uses Drug, SvodParams,
  SysUtils;

type
  TSetsChangedEvent = procedure() of object;

  TSettings = class
  private
    m_month : integer;
    m_year : integer;
    m_dateBeginMonth, m_dateEnd, m_dateBeginQuat, m_dateBeginYear : TDate;
    m_curStrukId : integer;
    m_stkod, m_machine, m_operatorName, m_monthStr, m_reportPath, m_medPlaceStr,
    m_driveLetter : string;
    m_machineList : TArray<string>;
    m_machineCount : integer;

    arr_medPrep, arr_endokr : TArray<Integer>;
    m_medPrepSize, m_endokrSize : integer;

    prep : TDrug;

    m_medPlace : TSvodPlace;



    procedure formDatePeriod;

  public
    onChanged : TSetsChangedEvent;

    Constructor Create;
    Destructor Destroy; override;

    function getMonth() : integer;
    function getYear() : integer;
    procedure setMonth(value : integer);
    procedure setYear(value : integer);
    procedure setStrukId(value : integer);
    procedure setMedPlace(medPlace : TSvodPlace);
    function getMedPlaceList() : TArray<Integer>;
    function getMedPlaceSize() : integer;

    property month : integer read getMonth write setMonth;
    property year : integer read getYear write setYear;
    property dateBeginMonth : TDate read m_dateBeginMonth;
    property dateEnd : TDate read m_dateEnd;
    property dateBeginQuat : TDate read m_dateBeginQuat;
    property dateBeginYear : TDate read m_dateBeginYear;

    property strukId : integer read m_curStrukId write setStrukId;
    property stkod : string read m_stkod write m_stkod;

    property machine : string read m_machine write m_machine;
    property machineList : TArray<string> read m_machineList;
    property machineCount : integer read m_machineCount;
    property driveLetter : string read m_driveLetter;
    property operatorName : string read m_operatorName write m_operatorName;
    property reportPath : string read m_reportPath write m_reportPath;
    property monthStr : string read m_monthStr write m_monthStr;

    property medPlace : TSvodPlace read m_medPlace write setMedPlace;
    property medPlaceStrukList : TArray<Integer> read getMedPlaceList;
    property medPlaceSize : integer read getMedPlaceSize;

    property drug : TDrug read prep write prep;


  end;

implementation

Constructor TSettings.Create;
begin
  inherited Create;
  m_month := 0;
  m_year := 0;
  prep := TDrug.Create;
  operatorName := 'Прислегина Т.В.';
  {$IFDEF RELEASE}
  reportPath := 'F:\Zatraty\Reports\';
  m_driveLetter := 'f';
  {$ENDIF}
  {$IFDEF DEBUG}
  reportPath := 'C:\MyProg\zatraty\Source\Reports\';
  m_driveLetter := 'd';
  {$ENDIF}

  m_medPrepSize := 6;
  SetLength(arr_medPrep, m_medPrepSize);
  arr_medPrep[0] := 1;  // 0100
  arr_medPrep[1] := 29; // 0400
  arr_medPrep[2] := 106;  // 2412
  arr_medPrep[3] := 540;  // 1600
  arr_medPrep[4] := 696;  // 0200
  arr_medPrep[5] := 760;  // 1800

  m_endokrSize := 8;
  SetLength(arr_endokr, m_endokrSize);
  arr_endokr[0] := 645;  // 0300
  arr_endokr[1] := 37;  // 0500
  arr_endokr[2] := 38;  // 0600
  arr_endokr[3] := 39;  // 0700
  arr_endokr[4] := 648; // 0800
  arr_endokr[5] := 43;  // 1200
  arr_endokr[6] := 541; // 1700
  arr_endokr[7] := 649; // 2100

  SetLength(m_machineList, 2);
  m_machineList[0] := 'PC1';
  m_machineList[1] := 'PC2';
  m_machineCount := 2;
end;

Destructor TSettings.Destroy;
begin
  m_month := 0;
  m_year := 0;
  FreeAndNil(prep);
  inherited Destroy;
end;

procedure TSettings.formDatePeriod;
var
  str_month : string;
begin
  if (m_month <> 0) and (m_year <> 0) then
  begin
    if (m_month < 10) then
      str_month := '0' + IntToStr(m_month)
    else
      str_month := IntToStr(m_month);
    m_dateBeginMonth := StrToDate('01.' + str_month + '.' + copy(IntToStr(m_year), 3, 2));
    m_dateEnd := IncMonth(m_dateBeginMonth, 1) - 1;

    if (m_month >= 1) and (m_month <= 3) then
        m_dateBeginQuat := StrToDate('01.01.' + IntToStr(m_year));
    if (m_month >= 4) and (m_month <= 6) then
        m_dateBeginQuat := StrToDate('01.04.' + IntToStr(m_year));
    if (m_month >= 7) and (m_month <= 9) then
        m_dateBeginQuat := StrToDate('01.07.' + IntToStr(m_year));
    if (m_month >= 10) and (m_month <= 12) then
        m_dateBeginQuat := StrToDate('01.10.' + IntToStr(m_year));

    m_dateBeginYear := StrToDate('01.01.' + IntToStr(m_year));
  end;
end;

function TSettings.getMedPlaceList() : TArray<Integer>;
begin
  if (m_medPlace = TSvodPlace.medPrep) then
    result := arr_medPrep;
  if (m_medPlace = TSvodPlace.endokr) then
    result := arr_endokr;
end;

function TSettings.getMedPlaceSize(): integer;
begin
  result := 0;
  if (m_medPlace = TSvodPlace.medPrep) then
    result := m_medPrepSize;
  if (m_medPlace = TSvodPlace.endokr) then
    result := m_endokrSize;
end;

function TSettings.getMonth() : integer;
begin
  result := m_month;
end;

function TSettings.getYear() : integer;
begin
  result := m_year;
end;

procedure TSettings.setMedPlace(medPlace: TSvodPlace);
begin
  m_medPlace := medPlace;
end;

procedure TSettings.setMonth(value : integer);
begin
  m_month := value;
  formDatePeriod;
  case m_month of
  1 : monthStr := 'январь';
  2 : monthStr := 'февраль';
  3 : monthStr := 'март';
  4 : monthStr := 'апрель';
  5 : monthStr := 'май';
  6 : monthStr := 'июнь';
  7 : monthStr := 'июль';
  8 : monthStr := 'август';
  9 : monthStr := 'сентябрь';
  10 : monthStr := 'октябрь';
  11 : monthStr := 'ноябрь';
  12 : monthStr := 'декабрь';
  end;
  if (Assigned(onChanged)) then
    onChanged();
end;

procedure TSettings.setStrukId(value: integer);
begin
  m_curStrukId := value;
  if (m_curStrukId = 1) or (m_curStrukId = 29) or (m_curStrukId = 37)
     or (m_curStrukId = 648) or (m_curStrukId = 43) or (m_curStrukId = 540)
     or (m_curStrukId = 649) or (m_curStrukId = 106) then
    m_machine := 'PC1'
  else
    m_machine := 'PC2';

  if (Assigned(onChanged)) then
    onChanged();
end;

procedure TSettings.setYear(value : integer);
begin
  m_year := value;
  formDatePeriod;
  if (Assigned(onChanged)) then
    onChanged();
end;

end.
