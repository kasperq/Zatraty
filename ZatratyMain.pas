unit ZatratyMain;

interface

uses Settings,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, RxMenus, ExtCtrls, ComCtrls, StdCtrls, Spin, Buttons;

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
    pc_mainMenu: TPageControl;
    calcPage: TTabSheet;
    Panel2: TPanel;
    SpeedButton1: TSpeedButton;
    procedure N1Click(Sender: TObject);
    procedure SpinButton1UpClick(Sender: TObject);
    procedure SpinButton1DownClick(Sender: TObject);
    procedure curMonthComboChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure mi_cenaZagrPfClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    sets : TSettings;

  public
//

  end;

implementation

{$R *.dfm}

uses CenaPfForm;

procedure TFZatratyMain.curMonthComboChange(Sender: TObject);
begin
//
end;

procedure TFZatratyMain.FormCreate(Sender: TObject);
begin
  if (sets = nil) then
    sets := TSettings.Create;
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
end;

procedure TFZatratyMain.N1Click(Sender: TObject);
begin
  Close;
end;

procedure TFZatratyMain.mi_cenaZagrPfClick(Sender: TObject);
var
  cenPf : TFCenaPfForm;
begin
  cenPf := TFCenaPfForm.Create(Application);
  cenPf.sets := self.sets;
  cenPf.Parent := panel_main;
  cenPf.Show;
end;

procedure TFZatratyMain.SpeedButton1Click(Sender: TObject);
begin
  mi_cenaZagrPfClick(sender);
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

end.
