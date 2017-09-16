unit MoneyCopierDM;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Bde.DBTables, RxQuery, ERxQuery;

type
  TFMoneyCopierDM = class(TDataModule)
    q_bmomtsDbf: TERxQuery;
    q_nomenDbf: TERxQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
