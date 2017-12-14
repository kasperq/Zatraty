unit VipuskDM;

interface

uses DBDM, Settings,
  System.SysUtils, System.Classes, Data.DB, IBX.IBCustomDataSet, IBX.IBQuery,
  RxIBQuery, IBX.IBUpdateSQL, IBUpdSQLW, kbmMemTable;

type
  TvipDM = class(TDataModule)
    q_vipusk: TRxIBQuery;
    q_vipuskKSM_ID: TIntegerField;
    q_vipuskKOL_PRIH: TFMTBCDField;
    q_vipuskNMAT: TIBStringField;
    q_vipuskKOD_PROD: TIBStringField;
    q_vipuskNEIS: TIBStringField;
    q_vipuskSPROD_ID: TIntegerField;
    q_vipuskCHECKED: TIntegerField;
    upd_vipusk: TIBUpdateSQLW;
    mem_checkedVipusk: TkbmMemTable;
    q_vipuskCOPIED: TIntegerField;
    q_vipuskCALCULATED: TIntegerField;
    q_vipuskSPPRN: TSmallintField;
    procedure q_vipuskAfterScroll(DataSet: TDataSet);
    procedure DataModuleDestroy(Sender: TObject);
    procedure q_vipuskCHECKEDChange(Sender: TField);
  private
    m_sets : TSettings;

  public
    function openVipusk(strukId : integer; dateBegin, dateEnd : TDate) : boolean;
    procedure setSets(var sets : TSettings);
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TvipDM.DataModuleDestroy(Sender: TObject);
begin
  q_vipusk.Close;
end;

function TvipDM.openVipusk(strukId : integer; dateBegin, dateEnd : TDate) : boolean;
begin
  q_vipusk.Close;
  q_vipusk.ParamByName('struk_id').AsInteger := strukId;
  q_vipusk.ParamByName('date1').AsDate := dateBegin;
  q_vipusk.ParamByName('date2').AsDate := dateEnd;
  q_vipusk.Open;
  result := true;
end;

procedure TvipDM.q_vipuskAfterScroll(DataSet: TDataSet);
begin
  m_sets.drug.ksmId := q_vipuskKSM_ID.AsInteger;
  m_sets.drug.sprodId := q_vipuskSPROD_ID.AsInteger;
  m_sets.drug.nmat := q_vipuskNMAT.AsString;
  m_sets.drug.kodProd := q_vipuskKOD_PROD.AsString;
  m_sets.drug.setPf(q_vipuskSPPRN.AsInteger);
end;

procedure TvipDM.q_vipuskCHECKEDChange(Sender: TField);
begin
//  mem_checkedVipusk.Open;
//  if (q_vipuskCHECKED.AsBoolean) then
//    mem_checkedVipusk.AppendRecord(q_vipusk.);

end;

procedure TvipDM.setSets(var sets: TSettings);
begin
  m_sets := sets;
end;

end.
