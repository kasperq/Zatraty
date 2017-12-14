unit ZatratyMainForm;

interface

uses Settings, OpenedWnds, DBDM, Departments, CalcZatrForm, SvodParams,
  SvodViewer, CenPF, PrReports, MoneyForm, StartForm,

  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, RxMenus, ExtCtrls, ComCtrls, StdCtrls, Spin, Buttons,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, Data.DB, kbmMemTable, System.Actions,
  Vcl.ActnList, RxDBComb, Vcl.DBCtrls, Vcl.DBLookup, IBX.IBCustomDataSet,
  IBX.IBQuery, RxIBQuery, Vcl.Mask, DBCtrlsEh, DBLookupEh, System.Types;

type
  TFZatratyMain = class(TForm)
    MainMenu1: TMainMenu;
    N4: TMenuItem;
    mi_cenaZagrPf: TMenuItem;
    N1: TMenuItem;
    StatusBar1: TStatusBar;
    panel_main: TPanel;
    panel_openedWnd: TPanel;
    Splitter1: TSplitter;
    Panel1: TPanel;
    curMonthCombo: TComboBox;
    SpinButton1: TSpinButton;
    curYearEdit: TSpinEdit;
    Label1: TLabel;
    panel_menu: TPanel;
    DBGridEh1: TDBGridEh;
    mem_openedWnds: TkbmMemTable;
    ds_openedWnds: TDataSource;
    mem_openedWndsWND_NAME: TStringField;
    pnl_left: TPanel;
    Button1: TButton;
    Timer1: TTimer;
    ActionList1: TActionList;
    openDoc: TAction;
    N2: TMenuItem;
    ds_struk: TDataSource;
    menu_svod: TPopupMenu;
    MenuItem1: TMenuItem;
    menuIt_svodMed: TMenuItem;
    menuIt_svodEnd: TMenuItem;
    MenuItem2: TMenuItem;
    menuIt_nezMed: TMenuItem;
    menuIt_nezEnd: TMenuItem;
    N3: TMenuItem;
    menuIt_tovarMed: TMenuItem;
    menuIt_tovarEnd: TMenuItem;
    btn_printCenPf: TSpeedButton;
    Panel3: TPanel;
    grid_departments: TDBGridEh;
    ds_departments: TDataSource;
    pc_menu: TPageControl;
    tab_reports: TTabSheet;
    tab_zatras: TTabSheet;
    tab_svod: TTabSheet;
    tab_cen: TTabSheet;
    tab_start: TTabSheet;
    procedure N1Click(Sender: TObject);
    procedure SpinButton1UpClick(Sender: TObject);
    procedure SpinButton1DownClick(Sender: TObject);
    procedure curMonthComboChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure mi_cenaZagrPfClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1MouseEnter(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure curYearEditChange(Sender: TObject);
    procedure menuIt_svodMedClick(Sender: TObject);
    procedure menuIt_svodEndClick(Sender: TObject);
    procedure menuIt_nezMedClick(Sender: TObject);
    procedure menuIt_nezEndClick(Sender: TObject);
    procedure menuIt_tovarMedClick(Sender: TObject);
    procedure menuIt_tovarEndClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btn_printCenPfClick(Sender: TObject);
    procedure pc_menuChange(Sender: TObject);
  private
    sets : TSettings;
    opened : TOpenedWnds;
    db : TdDM;
    struk : TDepartments;
    calcZatr : TFCalcZatrForm;
    svodView : TSvodViewer;
    cenP : TCenPF;
    prReps : TFPrReports;
    moneyF : TFMoneyForm;
    startF : TFStartForm;

    curBtn : TObject;

    procedure loadDepartments;
    procedure openPrReports;
    procedure openMoneyForm;
    procedure openStartForm;

  public
//
    procedure setDB(var db : TdDM);
  end;

implementation

{$R *.dfm}

procedure TFZatratyMain.Button1MouseEnter(Sender: TObject);
begin
  panel_openedWnd.Visible := true;
end;

procedure TFZatratyMain.curMonthComboChange(Sender: TObject);
begin
  sets.month := curMonthCombo.ItemIndex + 1;
end;

procedure TFZatratyMain.curYearEditChange(Sender: TObject);
begin
  sets.year := curYearEdit.Value;
end;

procedure TFZatratyMain.FormCreate(Sender: TObject);
begin
  if (sets = nil) then
    sets := TSettings.Create;
  if (opened = nil) then
    opened := TOpenedWnds.Create;
end;

procedure TFZatratyMain.FormDestroy(Sender: TObject);
begin
  FreeAndNil(sets);
  FreeAndNil(opened);
//  FreeAndNil(calcZatr);
  FreeAndNil(svodView);
  FreeAndNil(cenP);
  FreeAndNil(struk);
  FreeAndNil(db);
end;

procedure TFZatratyMain.FormShow(Sender: TObject);
var
  year, month, day : word;
begin
  DecodeDate(Now, year, month, day);
  if (month = 1) then
  begin
    month := 13;
    year := year - 1;
  end;

  sets.month := month - 1;
  curMonthCombo.ItemIndex := month - 2;
  curYearEdit.Value := year;
  sets.year := year;

  loadDepartments;
  pc_menu.ActivePage := tab_reports;
  pc_menuChange(sender);
//  combo_struk.KeyValue := struk.strukList.FieldByName('struk_id').AsString;
end;

procedure TFZatratyMain.N1Click(Sender: TObject);
begin
  Close;
end;

procedure TFZatratyMain.openPrReports;
begin
  if (prReps = nil) then
    prReps := TFPrReports.Create(Application);
  prReps.setDB(db);
  prReps.setSets(sets);
  prReps.Parent := panel_main;
  prReps.Show;
  opened.pushBack('Отчеты', prReps);
end;

procedure TFZatratyMain.openStartForm;
begin
  if (startF = nil) then
    startF := TFStartForm.Create(Application);
  startF.setDB(db);
  startF.setSets(sets);
  startF.Parent := panel_main;
  startF.Show;
  opened.pushBack('Стартовый режим', startF);
end;

procedure TFZatratyMain.pc_menuChange(Sender: TObject);
begin
  if (pc_menu.ActivePage = tab_reports) then
    openPrReports;
  if (pc_menu.ActivePage = tab_zatras) then
    mi_cenaZagrPfClick(sender);
  if (pc_menu.ActivePage = tab_cen) then
    openMoneyForm;
  if (pc_menu.ActivePage = tab_svod) then
    menu_svod.Popup(Mouse.CursorPos.x,Mouse.CursorPos.y);
  if (pc_menu.ActivePage = tab_start) then
    openStartForm;
end;

procedure TFZatratyMain.openMoneyForm;
begin
  if (moneyF = nil) then
    moneyF := TFMoneyForm.Create(Application);
  moneyF.setDB(db);
  moneyF.setSets(sets);
  moneyF.Parent := panel_main;
  moneyF.Show;
  opened.pushBack('Цены загрузки', moneyF);
end;

procedure TFZatratyMain.setDB(var db: TdDM);
begin
  self.db := db;
end;

procedure TFZatratyMain.loadDepartments;
begin
  if (struk = nil) then
    struk := TDepartments.Create(db, sets);
  struk.openDepartmentsList;
  struk.strukList.First;
  ds_departments.DataSet := struk.strukList;
end;

procedure TFZatratyMain.mi_cenaZagrPfClick(Sender: TObject);
begin
  if (calcZatr = nil) then
    calcZatr := TFCalcZatrForm.Create(Application);
  calcZatr.setDB(db);
  calcZatr.setSets(sets);
  calcZatr.Parent := panel_main;
  calcZatr.Show;
  opened.pushBack('Расчет цен загрузки', calcZatr);
end;

procedure TFZatratyMain.btn_printCenPfClick(Sender: TObject);
begin
  if (cenP = nil) then
    cenP := TCenPF.Create(db, sets);
  cenP.printCenPf;
end;

procedure TFZatratyMain.SpinButton1DownClick(Sender: TObject);
begin
  if (curMonthCombo.ItemIndex < 11) then
  begin
    curMonthCombo.ItemIndex := curMonthCombo.ItemIndex + 1;
    curMonthComboChange(sender);
  end
  else
  begin
    curMonthCombo.ItemIndex := 0;
    curMonthComboChange(sender);
  end;
end;

procedure TFZatratyMain.SpinButton1UpClick(Sender: TObject);
begin
  if (curMonthCombo.ItemIndex > 0) then
  begin
    curMonthCombo.ItemIndex := curMonthCombo.ItemIndex - 1;
    curMonthComboChange(sender);
  end
  else
  begin
    curMonthCombo.ItemIndex := 11;
    curMonthComboChange(sender);
  end;
end;

procedure TFZatratyMain.Timer1Timer(Sender: TObject);
var
  mouseX, mouseY : integer;
begin
  mouseX := self.ScreenToClient(Point(Mouse.CursorPos.X, Mouse.CursorPos.Y)).X;
  mouseY := self.ScreenToClient(Point(Mouse.CursorPos.X, Mouse.CursorPos.Y)).Y;
  if ((mouseX > (panel_openedWnd.Left + panel_openedWnd.Width))
     or (mouseY < (panel_openedWnd.Top))
     or (mouseY > (panel_openedWnd.Top + panel_openedWnd.Height))
     or (Mouse.CursorPos.X < self.Left))
     and (panel_openedWnd.Visible) then
    panel_openedWnd.Visible := false;
end;

procedure TFZatratyMain.menuIt_nezEndClick(Sender: TObject);
begin
  if (svodView = nil) then
    svodView := TSvodViewer.Create(db, sets);
  svodView.printSvod(TSvodType.itogNez, TSvodPlace.endokr);
end;

procedure TFZatratyMain.menuIt_nezMedClick(Sender: TObject);
begin
  if (svodView = nil) then
    svodView := TSvodViewer.Create(db, sets);
  svodView.printSvod(TSvodType.itogNez, TSvodPlace.medPrep);
end;

procedure TFZatratyMain.menuIt_svodEndClick(Sender: TObject);
begin
  if (svodView = nil) then
    svodView := TSvodViewer.Create(db, sets);
  svodView.printSvod(TSvodType.svodVed, TSvodPlace.endokr);
end;

procedure TFZatratyMain.menuIt_svodMedClick(Sender: TObject);
begin
  if (svodView = nil) then
    svodView := TSvodViewer.Create(db, sets);
  svodView.printSvod(TSvodType.svodVed, TSvodPlace.medPrep);
end;

procedure TFZatratyMain.menuIt_tovarEndClick(Sender: TObject);
begin
  if (svodView = nil) then
    svodView := TSvodViewer.Create(db, sets);
  svodView.printSvod(TSvodType.tovarProd, TSvodPlace.endokr);
end;

procedure TFZatratyMain.menuIt_tovarMedClick(Sender: TObject);
begin
  if (svodView = nil) then
    svodView := TSvodViewer.Create(db, sets);
  svodView.printSvod(TSvodType.tovarProd, TSvodPlace.medPrep);
end;

end.
