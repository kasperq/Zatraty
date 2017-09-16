unit DepartmentsDM;

interface

uses DBDM, Settings,
  System.SysUtils, System.Classes, Data.DB, IBX.IBCustomDataSet, IBX.IBQuery,
  RxIBQuery, kbmMemTable;

type
  TdepDM = class(TDataModule)
    q_struk: TRxIBQuery;
    q_strukMES: TSmallintField;
    q_strukGOD: TSmallintField;
    q_strukSTNAME: TIBStringField;
    q_strukSTRUK_ID: TSmallintField;
    q_strukTIP_SKLAD_ID: TSmallintField;
    q_strukOTTISK: TIBStringField;
    q_strukPUNKT_POGR: TIBStringField;
    q_strukOTP_RAZR: TIBStringField;
    q_strukACTIVE_SKLAD: TSmallintField;
    q_strukSTKOD: TIBStringField;
    q_strukPRECISION: TSmallintField;
    q_strukOTP_PROIZV: TIBStringField;
    q_strukSTNAM: TIBStringField;
    q_strukRELA_STRUK_ID: TSmallintField;
    mem_struk: TkbmMemTable;
    mem_strukSTRUK_ID: TSmallintField;
    mem_strukRELA_STRUK_ID: TSmallintField;
    mem_strukSTNAME: TStringField;
    mem_strukSTKOD: TStringField;
    ds_struk: TDataSource;
    mem_strukSTNAM: TStringField;
    mem_strukVIB: TIntegerField;
    procedure mem_strukAfterScroll(DataSet: TDataSet);
  private
    m_sets : TSettings;
  public
    procedure setSets(var value: TSettings);

  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TdepDM.mem_strukAfterScroll(DataSet: TDataSet);
begin
  if (m_sets <> nil) then
  begin
    m_sets.strukId := mem_strukSTRUK_ID.AsInteger;
    m_sets.stkod := mem_strukSTKOD.AsString;
  end;
end;

procedure TdepDM.setSets(var value: TSettings);
begin
  m_sets := value;
end;

end.
