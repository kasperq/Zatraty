unit CalcZatrForm;

interface

uses DBDM, Settings, ZatrController, {ZatrViewerDM,} VipuskDM,

  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBGridEh, StdCtrls, Mask, DBCtrlsEh, DBLookupEh, ExtCtrls, ComCtrls,
  Buttons, Grids, DB, kbmMemTable, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, Vcl.Menus;

type
  TFCalcZatrForm = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    grid_vipusk: TDBGridEh;
    ds_vipusk: TDataSource;
    pc_zatraty: TPageControl;
    vipuskPage: TTabSheet;
    viewPage: TTabSheet;
    grid_zatra: TDBGridEh;
    ds_zatra: TDataSource;
    btn_showCurZatr: TBitBtn;
    btn_calcZatr: TBitBtn;
    btn_printChecked: TBitBtn;
    Panel4: TPanel;
    Panel5: TPanel;
    DBGridEh1: TDBGridEh;
    Splitter2: TSplitter;
    ds_zatraItogi: TDataSource;
    btn_viewChecked: TBitBtn;
    menu_print: TPopupMenu;
    N11: TMenuItem;
    N21: TMenuItem;
    Panel3: TPanel;
    cb_selectAll: TCheckBox;
    procedure FormShow(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btn_showCurZatrClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure grid_zatraDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure grid_vipuskDblClick(Sender: TObject);
    procedure btn_viewCheckedClick(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure N21Click(Sender: TObject);
    procedure btn_printCheckedClick(Sender: TObject);
    procedure btn_calcZatrClick(Sender: TObject);
    procedure cb_selectAllClick(Sender: TObject);
  private
    m_sets : TSettings;
//    cenPf : TCenaPf;
    db : TdDM;
    zatrContr : TZatrController;

//    curRazd : string;
//    curColor : integer;

    procedure createAndInitZatrController;
    procedure viewCurrentReport;

  public
    function getSets() : TSettings;
    procedure setSets(var value : TSettings);
    procedure setDB(var db : TdDM);
    procedure loadCalcForm;

//    property sets : TSettings read getSets write setSets;
  end;

implementation

{$R *.dfm}

procedure TFCalcZatrForm.btn_calcZatrClick(Sender: TObject);
begin
  zatrContr.calcZatras;
end;

procedure TFCalcZatrForm.btn_printCheckedClick(Sender: TObject);
begin
  menu_print.Popup(Mouse.CursorPos.x,Mouse.CursorPos.y);
end;

procedure TFCalcZatrForm.btn_showCurZatrClick(Sender: TObject);
begin
  viewCurrentReport;
end;

procedure TFCalcZatrForm.btn_viewCheckedClick(Sender: TObject);
begin
  zatrContr.viewCheckedPrep;
  pc_zatraty.ActivePage := viewPage;
  ds_zatra.DataSet := zatrContr.zatrMaterials;
end;

procedure TFCalcZatrForm.cb_selectAllClick(Sender: TObject);
begin
  zatrContr.vipListSetChecked(cb_selectAll.Checked);
end;

procedure TFCalcZatrForm.createAndInitZatrController;
begin
  if (zatrContr = nil) then
    zatrContr := TZatrController.Create(db, m_sets);
end;

procedure TFCalcZatrForm.FormCreate(Sender: TObject);
begin
  pc_zatraty.ActivePage := vipuskPage;
end;

procedure TFCalcZatrForm.FormDestroy(Sender: TObject);
begin
  FreeAndNil(zatrContr);
end;

procedure TFCalcZatrForm.FormShow(Sender: TObject);
begin
//  grid_zatra.Columns.AddAllColumns(true);
  loadCalcForm;
end;

function TFCalcZatrForm.getSets() : TSettings;
begin
  result := m_sets;
end;

procedure TFCalcZatrForm.grid_vipuskDblClick(Sender: TObject);
begin
  zatrContr.checkVipuskRecord;

  pc_zatraty.ActivePage := viewPage;
  zatrContr.loadCurrentPrep;
  ds_zatra.DataSet := zatrContr.zatrMaterials;
end;

procedure TFCalcZatrForm.grid_zatraDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
{  if (zatrContr.zatrMaterials.FieldByName('RAZD').AsString <> curRazd) then
  begin
    curRazd := zatrContr.zatrMaterials.FieldByName('RAZD').AsString;
    if (curColor = cl3DLight) then
      grid_zatra.Canvas.Brush.Color := clWindow
    else
      grid_zatra.Canvas.Brush.Color := cl3DLight;
    curColor := grid_zatra.Canvas.Brush.Color;
  end
  else
  begin
    grid_zatra.Canvas.Brush.Color := curColor;
  end;   }

  grid_zatra.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TFCalcZatrForm.loadCalcForm;
begin
  createAndInitZatrController;
  zatrContr.loadVipusk;
  ds_vipusk.DataSet := zatrContr.vipuskList;
end;

procedure TFCalcZatrForm.N11Click(Sender: TObject);
begin
  zatrContr.printCheckedPrep(1);
end;

procedure TFCalcZatrForm.N21Click(Sender: TObject);
begin
  zatrContr.printCheckedPrep(2);
end;

procedure TFCalcZatrForm.setDB(var db: TdDM);
begin
  self.db := db;
end;

procedure TFCalcZatrForm.setSets(var value : TSettings);
begin
  m_sets := value;
end;

procedure TFCalcZatrForm.viewCurrentReport;
begin
  pc_zatraty.ActivePage := viewPage;
  zatrContr.loadCurrentPrep;
  ds_zatra.DataSet := zatrContr.zatrMaterials;
end;

end.
