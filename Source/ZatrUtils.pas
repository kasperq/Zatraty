unit ZatrUtils;

interface

uses DBDM,
  UtilRIB, Variants;

function getKsmId(numkcu : string) : integer;
function koefPerevoda(var db : TdDM; keiIn, keiFrom, ksmId : integer) : double;

implementation

uses SysUtils;

function getKsmId(numkcu : string) : integer;
var
  i : integer;
  resultStr : string;
begin
  result := 0;
  resultStr := '';
  for i := 1 to length(numkcu) do
  begin
    if (resultStr = '') then
    begin
      if (numkcu[i] <> '0')  then
        resultStr := numkcu[i];
    end
    else
      resultStr := resultStr + numkcu[i];
  end;
  if (resultStr <> '') then
    result := StrToInt(resultStr);
end;

function koefPerevoda(var db : TdDM; keiIn, keiFrom, ksmId : integer) : double;
var
  vKoef : variant;
begin
  if (keiIn <> keiFrom) and (keiIn <> 0) and (keiFrom <> 0) then
  begin
// Коэффициент перевода  из одной единицы измерения в другую
    vKoef := SelectToVarIB('SELECT KOEFPR.KOEF FROM KOEFPR WHERE KOEFPR.KEIR = '
                           + IntToStr(keiIn) + ' AND KOEFPR.KEI_ID = '
                           + IntToStr(keiFrom) + ' AND KOEFPR.KSM_ID = 0 AND KOEFPR.KOEF <> 0 ',
                           db.db, db.trans_read);
    if (vKoef = NULL) then
    begin
      vKoef := SelectToVarIB('SELECT KOEFPR.KOEF FROM KOEFPR WHERE KOEFPR.KEIR = '
                             + IntToStr(keiIn) + ' AND KOEFPR.KEI_ID = '
                             + IntToStr(keiFrom) + ' AND KOEFPR.KSM_ID =' + IntToStr(ksmId)
                             + ' AND KOEFPR.KOEF <> 0 ',
                             db.db, db.trans_read);
      if (vKoef = NULL) then
        vKoef := 1;
    end;
    result := vKoef;
  end
  else
    result := 1;
end;


end.
