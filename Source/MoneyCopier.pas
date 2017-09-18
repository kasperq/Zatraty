unit MoneyCopier;

interface

uses MoneyZatr, DBDM, ZatrReport, MoneyCopierDM,
  RxIBQuery, Forms;

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
    procedure copyCex(stkod : string; strukId, month, year : integer; vipuskList : TRxIBQuery);

  end;

implementation

{ TMoneyCopier }

procedure TMoneyCopier.copyCex(stkod: string; strukId, month, year: integer;
                               vipuskList: TRxIBQuery);
begin
  dm.openBmMoney(stkod);

end;

constructor TMoneyCopier.Create(var db: TdDM);
begin
  inherited Create;
  dm := TFMoneyCopierDM.Create(application);

  dm.q_bmPath.Database := db.db;
  dm.q_bmPath.Transaction := db.trans_read;
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
