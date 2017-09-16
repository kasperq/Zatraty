unit MoneyZatr;

interface

uses DBDM, MoneyTypes;

type
  TMoneyZatr = class
  private
    db : TdDM;

  public
    Constructor Create(var db : TdDM);
    Destructor Destroy; override;

    procedure findMoney(strukId, month, year : integer);
    procedure deleteMoney(strukId, month, year : integer);
    procedure saveMoney;
    procedure addMoney(strukId, ksmId, keiId, month, year, moneyType : TMoneyTypes;
                       value : double); overload;
    procedure addMoney(strukId, ksmIdPrep, ksmId, keiId, month, year,
                       moneyType : TMoneyTypes; value : double); overload;
    procedure findPreviousMoney(strukId, ksmIdPrep, ksmId, curMonth, curYear : integer;
                                moneyType : TMoneyTypes);

  end;

implementation

{ TMoneyZatr }

procedure TMoneyZatr.addMoney(strukId, ksmIdPrep, ksmId, keiId, month, year,
  moneyType: TMoneyTypes; value: double);
begin

end;

procedure TMoneyZatr.addMoney(strukId, ksmId, keiId, month, year,
  moneyType: TMoneyTypes; value: double);
begin

end;

constructor TMoneyZatr.Create(var db: TdDM);
begin

end;

procedure TMoneyZatr.deleteMoney(strukId, month, year: integer);
begin

end;

destructor TMoneyZatr.Destroy;
begin

  inherited;
end;

procedure TMoneyZatr.findMoney(strukId, month, year: integer);
begin

end;

procedure TMoneyZatr.findPreviousMoney(strukId, ksmIdPrep, ksmId, curMonth,
  curYear: integer; moneyType: TMoneyTypes);
begin

end;

procedure TMoneyZatr.saveMoney;
begin

end;

end.
