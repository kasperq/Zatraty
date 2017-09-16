unit MoneyCopier;

interface

uses MoneyZatr, DBDM, ZatrReport, MoneyCopierDM,
  kbmMemTable;

type
  TMoneyCopier = class
  private
    db : TdDM;
    moneyZ : TMoneyZatr;
    zatrRep : TZatrReport;
    dm : TFMoneyCopierDM;

    procedure openNomen(strukId : integer);
    procedure getStrukPath(stkod : string);
    procedure getStrukStkod(strukId : integer);

  public
    Constructor Create(var db : TdDM);
    Destructor Destroy; override;
    procedure copyCex(stkod : string; strukId, month, year : integer; vipuskList : TkbmMemTable);

  end;

implementation

{ TMoneyCopier }

procedure TMoneyCopier.copyCex(stkod: string; strukId, month, year: integer;
  vipuskList: TkbmMemTable);
begin

end;

constructor TMoneyCopier.Create(var db: TdDM);
begin

end;

destructor TMoneyCopier.Destroy;
begin

  inherited;
end;

procedure TMoneyCopier.getStrukPath(stkod: string);
begin

end;

procedure TMoneyCopier.getStrukStkod(strukId: integer);
begin

end;

procedure TMoneyCopier.openNomen(strukId: integer);
begin

end;

end.
