unit MoneyCopierDM;

interface

uses DBDM,
  System.SysUtils, System.Classes, Data.DB, Bde.DBTables, RxQuery, ERxQuery,
  IBX.IBCustomDataSet, IBX.IBQuery, RxIBQuery, UtilRIb, Variants;

type
  TFMoneyCopierDM = class(TDataModule)
    q_nomenDbf: TERxQuery;
    q_bmPath: TRxIBQuery;
    q_nomenDbfNUMKCU: TStringField;
    q_nomenDbfSKLAD: TStringField;
    q_nomenDbfKEI: TStringField;
    q_nomenDbfMONEY: TFloatField;
    q_nomenDbfKSM_ID: TFloatField;
    q_nomenDbfBALS: TStringField;
  private
    function getStrukPath(stkod : string) : string;
    procedure setNomenSql(stkod : string);

  public
    procedure openBmMoney(stkod : string);

  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TFMoneyCopierDM }

function TFMoneyCopierDM.getStrukPath(stkod: string): string;
begin
  result := '';
  q_bmPath.Close;
  q_bmPath.ParamByName('stkod').AsString := stkod;
  q_bmPath.Open;
  q_bmPath.First;
  if (q_bmPath.FieldByName('PATH').AsString <> '') then
    result := q_bmPath.FieldByName('PATH').AsString;

end;

procedure TFMoneyCopierDM.openBmMoney(stkod: string);
begin
  q_nomenDbf.Close;
  setNomenSql(stkod);
  q_nomenDbf.ParamByName('STKOD').AsString := stkod;
  q_nomenDbf.Open;
end;

procedure TFMoneyCopierDM.setNomenSql(stkod: string);
begin
  q_nomenDbf.EhSQL.Text := 'select nomen.numkcu, nomen.sklad, nomen.kei, '
                           + 'nomen."money", nomen.ksm_id, nomen.bals '
                           + 'from ''' + Trim(getStrukPath(stkod)) + '\nomen.dbf'' nomen '
                           + 'where nomen.sklad = :stkod ';
  q_nomenDbf.SQL := q_nomenDbf.EhSQL;
end;

end.
