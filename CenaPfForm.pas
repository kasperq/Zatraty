unit CenaPfForm;

interface

uses Departments, Vipusk, Settings,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBGridEh, StdCtrls, Mask, DBCtrlsEh, DBLookupEh, ExtCtrls, ComCtrls,
  Buttons, Grids, DB, kbmMemTable;

type
  TFCenaPfForm = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    grid_vipusk: TDBGridEh;
    calcBtn: TSpeedButton;
    Panel3: TPanel;
    Splitter1: TSplitter;
    grid_departments: TDBGridEh;
    ds_departments: TDataSource;
    ds_vipusk: TDataSource;
    mem_vipusk: TkbmMemTable;
    mem_vipuskSTRUK_ID: TSmallintField;
    mem_vipuskRELA_STRUK_ID: TSmallintField;
    mem_vipuskRELASTRUKID: TSmallintField;
    mem_vipuskSTNAM: TStringField;
    mem_vipuskSTKOD: TStringField;
    mem_vipuskCHECKED: TBooleanField;
    procedure FormShow(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure mem_vipuskAfterScroll(DataSet: TDataSet);
  private
    deps : TDepartments;
    vip : TVipusk;
    m_sets : TSettings;

  public
    function getSets() : TSettings;
    procedure setSets(value : TSettings);

    property sets : TSettings read getSets write setSets;
  end;

implementation

{$R *.dfm}

procedure TFCenaPfForm.FormDestroy(Sender: TObject);
begin
  FreeAndNil(deps);
  FreeAndNil(vip);
end;

procedure TFCenaPfForm.FormShow(Sender: TObject);
begin
  if (deps = nil) then
    deps := TDepartments.Create;
  if (deps.loadDepartments()) then
  begin
    mem_vipusk.AfterScroll := nil;
    mem_vipusk.EmptyTable;
    mem_vipusk.LoadFromDataSet(deps.departments, [mtcpoAppend]);
    mem_vipusk.Open;
    mem_vipusk.AfterScroll := mem_vipuskAfterScroll;
    grid_departments.SetFocus;
    if (vip = nil) then
      vip := TVipusk.Create;
    vip.loadVipusk(sets.month, sets.year, mem_vipusk.FieldByName('struk_id').AsInteger);
    ds_vipusk.DataSet := vip.vipuskList;
  end;
end;

function TFCenaPfForm.getSets() : TSettings;
begin
  result := m_sets;
end;

procedure TFCenaPfForm.mem_vipuskAfterScroll(DataSet: TDataSet);
begin
  vip.loadVipusk(sets.month, sets.year, mem_vipusk.FieldByName('struk_id').AsInteger);
end;

procedure TFCenaPfForm.setSets(value : TSettings);
begin
  m_sets := value;
end;

end.
