unit ZatrCalcReport;

interface

uses DBDM, ZatrReport, MoneyZatr, MoneyTypes,
  SysUtils, RxIBQuery, Variants, Math;

type
  TZatrCalcReport = class
  private
    db : TdDM;
    otchet, prevOtchet, zatrKol, zatrSum : TZatrReport;
    prepMoney : TMoneyZatr;
    m_prepPf : boolean;

    q_rep : TRxIBQuery;
    m_zagrS, m_rashS, m_ostBegS, m_ostEndS, m_rashYearS, m_rashQuatS : double;
    m_monZagr, m_monRash, m_monOst : double;

    procedure formZatrCalcReports(ksmIdPrep, strukId, month, year : integer;
                                  dateOp, dateDok, dateYearBegin, dateQuatBegin,
                                  dateMonthEnd : TDate);
    procedure formZatrCalcKolReport(ksmIdPrep, strukId, month, year : integer;
                                    dateOp, dateDok : TDate);
    procedure formZatrCalcSumReport(ksmIdPrep, strukId, month, year : integer;
                                    dateOp, dateDok, dateYearBegin,dateQuatBegin,
                                    dateMonthEnd : TDate);
    procedure calcZagrMoneyAndSum(strukId, ksmIdPrep, month, year : integer);
    procedure calcRashMoneyAndSum(strukId, ksmIdPrep, month, year : integer);
    procedure calcOstEndMoneyAndSum(strukId, ksmIdPrep, month, year : integer);

  public
    Constructor Create(var db : TdDM);
    Destructor Destroy; override;

    procedure calc(ksmIdPrep, strukId, month, year : integer; dateMonthBegin,
                   dateMonthEnd, dateYearBegin, dateQuatBegin, dateOp, dateDok : TDate;
                   prepPf : boolean);
  end;

implementation

{ TZatrCalc }

procedure TZatrCalcReport.calc(ksmIdPrep, strukId, month, year : integer;
                               dateMonthBegin, dateMonthEnd, dateYearBegin,
                               dateQuatBegin, dateOp, dateDok : TDate; prepPf : boolean);
begin
  m_prepPf := prepPf;
  if (zatrKol = nil) then
    zatrKol := TZatrReport.Create(db, TTipDok.zatrKol);
  if (zatrSum = nil) then
    zatrSum := TZatrReport.Create(db, TTipDok.zatrSum);
  if (zatrSum.openReport(strukId, ksmIdPrep, dateMonthBegin, dateMonthEnd)) then
  begin
    zatrSum.deleteReport;
    zatrSum.saveReport;
    zatrSum.deleteReportDocument;
    zatrSum.saveReportDocument;
    if (zatrKol.openReport(strukId, ksmIdPrep, dateMonthBegin, dateMonthEnd)) then
    begin
      zatrKol.deleteReport;
      zatrKol.saveReport;
      zatrKol.deleteReportDocument;
      zatrKol.saveReportDocument;
    end;
  end
  else
    zatrKol.openReport(strukId, ksmIdPrep, dateMonthBegin, dateMonthEnd);

  if (otchet = nil) then
    otchet := TZatrReport.Create(db, TTipDok.report);
  if (otchet.openReport(strukId, ksmIdPrep, dateMonthBegin, dateMonthEnd)) then
  begin
    formZatrCalcReports(ksmIdPrep, strukId, month, year, dateOp, dateDok,
                        dateYearBegin, dateQuatBegin, dateMonthEnd);
  end;

  db.commitWriteTrans(true);
end;

constructor TZatrCalcReport.Create(var db: TdDM);
begin
  inherited Create;
  self.db := db;

end;

destructor TZatrCalcReport.Destroy;
begin

  inherited;
end;

procedure TZatrCalcReport.formZatrCalcReports(ksmIdPrep, strukId, month, year : integer;
                                              dateOp, dateDok, dateYearBegin,
                                              dateQuatBegin, dateMonthEnd : TDate);
begin
  if (prepMoney = nil) then
    prepMoney := TMoneyZatr.Create(db);
  prepMoney.findMoney(strukId, month, year, ksmIdPrep);

  if (prevOtchet = nil) then
    prevOtchet := TZatrReport.Create(db, TTipDok.zatrSum);
  prevOtchet.findPrevReport(strukId, ksmIdPrep, dateOp);
  prevOtchet.openReport({strukId, ksmIdPrep, dateOp, dateMonthEnd});

  otchet.report.First;
  while (not otchet.report.Eof) do
  begin
    prepMoney.moneyList.Locate('ksm_id;razdel_id',
                               VarArrayOf([otchet.report.FieldByName('KSM_ID').AsInteger,
                                           otchet.report.FieldByName('RAZDEL_ID').AsInteger]),
                               []);
    prevOtchet.report.Locate('ksm_id;razdel_id',
                             VarArrayOf([otchet.report.FieldByName('KSM_ID').AsInteger,
                                         otchet.report.FieldByName('RAZDEL_ID').AsInteger]),
                             []);

    formZatrCalcKolReport(ksmIdPrep, strukId, month, year, dateOp, dateDok);
    formZatrCalcSumReport(ksmIdPrep, strukId, month, year, dateOp, dateDok,
                          dateYearBegin, dateQuatBegin, dateMonthEnd);
    otchet.report.Next;
  end;
  zatrKol.saveReport;
  zatrSum.saveReport;
end;

procedure TZatrCalcReport.formZatrCalcKolReport(ksmIdPrep, strukId, month, year: integer;
                                                dateOp, dateDok : TDate);
var
//  q_rep : TRxIBQuery;
  rash, zagr : double;
begin
  q_rep := otchet.report;
  if (q_rep.FieldByName('ZAGRUZ').AsFloat = 0)
     and ((q_rep.FieldByName('RAZDEL_ID').AsInteger = 10)             // возвратные
          or (q_rep.FieldByName('RAZDEL_ID').AsInteger = 11)) then
    zagr := q_rep.FieldByName('PRIHOD').AsFloat - q_rep.FieldByName('PER_NZ').AsFloat
  else
    zagr := q_rep.FieldByName('ZAGRUZ').AsFloat - q_rep.FieldByName('PER_NZ').AsFloat;

  if (q_rep.FieldByName('RASHOD').AsFloat = 0)
     and ((q_rep.FieldByName('RAZDEL_ID').AsInteger = 10)             // возвратные
          or (q_rep.FieldByName('RAZDEL_ID').AsInteger = 11)) then
    rash := q_rep.FieldByName('PER_S').AsFloat
  else
    rash := q_rep.FieldByName('RASHOD').AsFloat;

  zatrKol.appendReportRecord(dateDok, dateOp, strukId, ksmIdPrep, q_rep.FieldByName('KSM_ID').AsInteger,
                             q_rep.FieldByName('KEI_ID').AsInteger, q_rep.FieldByName('RAZDEL_ID').AsInteger,
                             0, q_rep.FieldByName('OST_BEG_NZ').AsFloat, 0,
                             zagr, rash, 0, q_rep.FieldByName('PER_NZ').AsFloat,
                             0, q_rep.FieldByName('OST_END_NZ').AsFloat, q_rep.FieldByName('RASHOD_YEAR').AsFloat,
                             q_rep.FieldByName('RASHOD_QUAT').AsFloat, 0, 0,
                             prepMoney.moneyList.FieldByName('ACCOUNT').AsString);
end;

procedure TZatrCalcReport.formZatrCalcSumReport(ksmIdPrep, strukId, month, year: integer;
                                                dateOp, dateDok, dateYearBegin,
                                                dateQuatBegin, dateMonthEnd : TDate);
begin
  q_rep := otchet.report;
// остаток на начало мес€ца сумма
  if (zatrKol.report.FieldByName('OST_BEG_NZ').AsFloat <> 0) then
    m_ostBegS := prevOtchet.report.FieldByName('OST_END_NZ').AsFloat
  else
    m_ostBegS := 0;
// расчет цены и суммы загрузки
  calcZagrMoneyAndSum(strukId, ksmIdPrep, month, year);
// расчет цены и суммы расхода на выработку
  calcRashMoneyAndSum(strukId, ksmIdPrep, month, year);
// расчет цены и суммы остатка на конец мес€ца
  calcOstEndMoneyAndSum(strukId, ksmIdPrep, month, year);
// годовой расход сумма
  zatrSum.openReportSum(strukId, ksmIdPrep, dateYearBegin, dateMonthEnd);
  zatrSum.reportSum.Locate('ksm_id;razdel_id',
                           VarArrayOf([q_rep.FieldByName('KSM_ID').AsInteger,
                                       q_rep.FieldByName('RAZDEL_ID').AsInteger]),
                           []);
  m_rashYearS := zatrSum.reportSum.FieldByName('RASHOD').AsFloat
              + q_rep.FieldByName('RASHOD').AsFloat;
// квартальный расход сумма
  zatrSum.openReportSum(strukId, ksmIdPrep, dateQuatBegin, dateMonthEnd);
  zatrSum.reportSum.Locate('ksm_id;razdel_id',
                           VarArrayOf([q_rep.FieldByName('KSM_ID').AsInteger,
                                       q_rep.FieldByName('RAZDEL_ID').AsInteger]),
                           []);
  m_rashQuatS := zatrSum.reportSum.FieldByName('RASHOD').AsFloat
              + q_rep.FieldByName('RASHOD').AsFloat;

  zatrSum.appendReportRecord(dateDok, dateOp, strukId, ksmIdPrep, q_rep.FieldByName('KSM_ID').AsInteger,
                             q_rep.FieldByName('KEI_ID').AsInteger, q_rep.FieldByName('RAZDEL_ID').AsInteger,
                             0, m_ostBegS, 0, m_zagrS, m_rashS, 0, q_rep.FieldByName('PER_NZ').AsFloat,
                             0, m_ostEndS, m_rashYearS, m_rashQuatS, 0, 0,
                             prepMoney.moneyList.FieldByName('ACCOUNT').AsString);

  prepMoney.saveMoney;
end;

procedure TZatrCalcReport.calcZagrMoneyAndSum(strukId, ksmIdPrep, month, year : integer);
begin
  if (m_prepPf) then
    m_monZagr := prepMoney.moneyList.FieldByName('NOMEN_MONEY').AsFloat
  else
  begin
    if (q_rep.FieldByName('ZAGRUZ').AsFloat = 0)
       and ((q_rep.FieldByName('RAZDEL_ID').AsInteger <> 10)
            or (q_rep.FieldByName('RAZDEL_ID').AsInteger <> 11)) then
      m_monZagr := prepMoney.moneyList.FieldByName('OST_BEG_MONEY').AsFloat
    else
      m_monZagr := prepMoney.moneyList.FieldByName('NOMEN_MONEY').AsFloat;
  end;

  prepMoney.editMoney(strukId, ksmIdPrep, q_rep.FieldByName('KSM_ID').AsInteger,
                      q_rep.FieldByName('KEI_ID').AsInteger, q_rep.FieldByName('RAZDEL_ID').AsInteger,
                      month, year, TMoneyTypes.zagr, m_monZagr, '');

  m_zagrS := SimpleRoundTo(zatrKol.report.FieldByName('ZAGRUZ').AsFloat * m_monZagr, -2);
end;

procedure TZatrCalcReport.calcRashMoneyAndSum(strukId, ksmIdPrep, month, year : integer);
begin
  if (not m_prepPf) then
  begin
    if ((zatrKol.report.FieldByName('ZAGRUZ').AsFloat
         + zatrKol.report.FieldByName('OST_BEG_NZ').AsFloat) <> 0) then
      m_monRash := (m_zagrS + m_ostBegS)
                 / (zatrKol.report.FieldByName('ZAGRUZ').AsFloat
                    + zatrKol.report.FieldByName('OST_BEG_NZ').AsFloat)
    else
      m_monRash := 0;
  end
  else
  begin
    if ((zatrKol.report.FieldByName('ZAGRUZ').AsFloat
         + zatrKol.report.FieldByName('OST_BEG_NZ').AsFloat) = 0) then
      m_monRash := m_monZagr
    else
      m_monRash := (m_zagrS + m_ostBegS)
                 / (zatrKol.report.FieldByName('ZAGRUZ').AsFloat
                    + zatrKol.report.FieldByName('OST_BEG_NZ').AsFloat);
  end;

  m_rashS := SimpleRoundTo(zatrKol.report.FieldByName('RASHOD').AsFloat * m_monRash, -2);
  prepMoney.editMoney(strukId, ksmIdPrep, q_rep.FieldByName('KSM_ID').AsInteger,
                      q_rep.FieldByName('KEI_ID').AsInteger, q_rep.FieldByName('RAZDEL_ID').AsInteger,
                      month, year, TMoneyTypes.rash, m_monRash, '');
end;

procedure TZatrCalcReport.calcOstEndMoneyAndSum(strukId, ksmIdPrep, month, year : integer);
begin
  if (zatrKol.report.FieldByName('ZAGRUZ').AsFloat = zatrKol.report.FieldByName('RASHOD').AsFloat)
     and (zatrKol.report.FieldByName('OST_BEG_NZ').AsFloat < 0) then
    m_monOst := m_ostBegS / zatrKol.report.FieldByName('OST_BEG_NZ').AsFloat
  else
    m_monOst := m_monRash;

  m_ostEndS := SimpleRoundTo(q_rep.FieldByName('OST_END_NZ').AsFloat * m_monOst, -2);

  prepMoney.editMoney(strukId, ksmIdPrep, q_rep.FieldByName('KSM_ID').AsInteger,
                      q_rep.FieldByName('KEI_ID').AsInteger, q_rep.FieldByName('RAZDEL_ID').AsInteger,
                      month, year, TMoneyTypes.ostEndNz, m_monOst, '');
end;


end.
