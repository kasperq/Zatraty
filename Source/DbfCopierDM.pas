unit DbfCopierDM;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Bde.DBTables, RxQuery, ERxQuery;

type
  TdbfCopyDM = class(TDataModule)
    q_zatraDbf: TERxQuery;
    q_zatraDbfMES: TSmallintField;
    q_zatraDbfSTRK: TStringField;
    q_zatraDbfKOPREP: TStringField;
    q_zatraDbfKOMATR: TStringField;
    q_zatraDbfNMAT: TStringField;
    q_zatraDbfRAZD: TStringField;
    q_zatraDbfCENA: TFloatField;
    q_zatraDbfCENA1: TFloatField;
    q_zatraDbfCENOS: TFloatField;
    q_zatraDbfCENON: TFloatField;
    q_zatraDbfCENAZA: TFloatField;
    q_zatraDbfCENVY: TFloatField;
    q_zatraDbfEDIZ: TStringField;
    q_zatraDbfBAL: TStringField;
    q_zatraDbfT: TStringField;
    q_zatraDbfG5: TFloatField;
    q_zatraDbfG6: TFloatField;
    q_zatraDbfG7: TFloatField;
    q_zatraDbfG8A: TFloatField;
    q_zatraDbfG8: TFloatField;
    q_zatraDbfG9A: TFloatField;
    q_zatraDbfREALOSTK: TFloatField;
    q_zatraDbfG9: TFloatField;
    q_zatraDbfG10: TFloatField;
    q_zatraDbfG11: TFloatField;
    q_zatraDbfG12: TFloatField;
    q_zatraDbfG13: TFloatField;
    q_zatraDbfG14: TFloatField;
    q_zatraDbfG15: TFloatField;
    q_zatraDbfG16: TFloatField;
    q_zatraDbfG17: TFloatField;
    q_zatraDbfG18: TFloatField;
    q_zatraDbfG19: TFloatField;
    q_zatraDbfG20: TFloatField;
    q_zatraDbfOTKLON: TFloatField;
    q_zatraDbfOTKL: TFloatField;
    q_zatraDbfG9_NDS: TFloatField;
    q_zatraDbfCENON_NDS: TFloatField;
    q_zatraDbfNDS: TFloatField;
    q_zatraDbfPNDS: TFloatField;
    q_zatraDbfSUM_NDS: TFloatField;
    q_zatraDbfNOM_ID: TFloatField;
    q_zatraDbfCENON_OLD: TFloatField;
    q_zatraDbfG9_OLD: TFloatField;
    q_zatraDbfKSM_ID: TFloatField;
    q_zatraDbfKOPREP_S: TStringField;
    q_zatraDbfKSM_ID_S: TFloatField;
  private
    { Private declarations }
  public
    procedure openZatraDbf(fileName : string);

  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TdbfCopyDM }

procedure TdbfCopyDM.openZatraDbf(fileName: string);
begin
//
end;

end.
