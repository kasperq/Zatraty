unit MoneyForm;

interface

uses Settings, DBDM, MoneyController, MoneyZatrDM,
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Vcl.StdCtrls, Vcl.Buttons, EhLibVCL, GridsEh,
  DBAxisGridsEh, DBGridEh, Vcl.ExtCtrls, Vcl.ComCtrls, Data.DB, Vcl.Mask;

type
  TFMoneyForm = class(TForm)
    panel_toolbtns: TPanel;
    panel_grid: TPanel;
    btn_copyAllStruk: TSpeedButton;
    pc_cenAction: TPageControl;
    tab_manualPriceSet: TTabSheet;
    tab_cenPf: TTabSheet;
    panel_action: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    edit_ksmId: TEdit;
    edit_zagrMoney: TEdit;
    grid_ksmVipusk: TDBGridEh;
    ds_ksmDvig: TDataSource;
    btn_setZagrMoney: TBitBtn;
    Label3: TLabel;
    edit_ostBegMoney: TEdit;
    btn_setOstBegMoney: TBitBtn;
    Label4: TLabel;
    edit_ostEndMoney: TEdit;
    btn_setOstEndMoney: TBitBtn;
    cb_selectAll: TCheckBox;
    procedure btn_copyAllStrukClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edit_ksmIdChange(Sender: TObject);
    procedure edit_ksmIdKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edit_zagrMoneyKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edit_zagrMoneyKeyPress(Sender: TObject; var Key: Char);
    procedure btn_setZagrMoneyClick(Sender: TObject);
    procedure edit_ostBegMoneyKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edit_ostEndMoneyKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btn_setOstBegMoneyClick(Sender: TObject);
    procedure btn_setOstEndMoneyClick(Sender: TObject);
    procedure cb_selectAllClick(Sender: TObject);
  private
    m_sets : TSettings;
    db : TdDM;
    mContr : TMoneyController;
    curKsmId : integer;

  public
    function getSets() : TSettings;
    procedure setSets(var value : TSettings);
    procedure setDB(var db : TdDM);

    procedure loadKsmDvig;

  end;

implementation

{$R *.dfm}

{ TFMoneyForm }

procedure TFMoneyForm.btn_setOstBegMoneyClick(Sender: TObject);
begin
  mContr.setOstBegMoney(curKsmId, m_sets.month, m_sets.year, StrToFloat(edit_ostBegMoney.Text));
  loadKsmDvig;
end;

procedure TFMoneyForm.btn_setOstEndMoneyClick(Sender: TObject);
begin
  mContr.setOstEndMoney(curKsmId, m_sets.month, m_sets.year, StrToFloat(edit_ostEndMoney.Text));
  loadKsmDvig;
end;

procedure TFMoneyForm.btn_copyAllStrukClick(Sender: TObject);
begin
  if (mContr = nil) then
    mContr := TMoneyController.Create(db, m_sets);
  mContr.copyFullCurrentCex;
end;

procedure TFMoneyForm.btn_setZagrMoneyClick(Sender: TObject);
begin
  mContr.setZagrMoney(curKsmId, m_sets.month, m_sets.year, StrToFloat(edit_zagrMoney.Text));
  loadKsmDvig;
end;

procedure TFMoneyForm.cb_selectAllClick(Sender: TObject);
begin
  mContr.selectAllPreps(cb_selectAll.Checked);
end;

procedure TFMoneyForm.edit_ksmIdChange(Sender: TObject);
begin
  try
    if (edit_ksmId.Text = '') then
      curKsmid := 0;
    curKsmId := StrToInt(edit_ksmId.Text);
    loadKsmDvig;
    mContr.selectAllPreps(true);
  except
    ShowMessage('Допустимые символы: 0,1,2,3,4,5,6,7,8,9!');

  end;
end;

procedure TFMoneyForm.edit_ksmIdKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key = VK_RETURN) then
    edit_zagrMoney.SetFocus;
end;

procedure TFMoneyForm.edit_ostBegMoneyKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key = VK_RETURN) and (edit_ostBegMoney.Text <> '') then
  begin
    edit_ksmId.SetFocus;
    mContr.setOstBegMoney(curKsmId, m_sets.month, m_sets.year, StrToFloat(edit_ostBegMoney.Text));
    loadKsmDvig;
  end;
end;

procedure TFMoneyForm.edit_ostEndMoneyKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key = VK_RETURN) and (edit_ostEndMoney.Text <> '') then
  begin
    edit_ksmId.SetFocus;
    mContr.setOstEndMoney(curKsmId, m_sets.month, m_sets.year, StrToFloat(edit_ostEndMoney.Text));
    loadKsmDvig;
  end;
end;

procedure TFMoneyForm.edit_zagrMoneyKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key = VK_RETURN) and (edit_zagrMoney.Text <> '') then
  begin
    edit_ksmId.SetFocus;
    mContr.setZagrMoney(curKsmId, m_sets.month, m_sets.year, StrToFloat(edit_zagrMoney.Text));
    loadKsmDvig;
  end;
end;

procedure TFMoneyForm.edit_zagrMoneyKeyPress(Sender: TObject; var Key: Char);
begin
  if (key = '.') then
    key := ',';
end;

procedure TFMoneyForm.FormShow(Sender: TObject);
begin
  loadKsmDvig;
end;

function TFMoneyForm.getSets: TSettings;
begin
  result := m_sets;
end;

procedure TFMoneyForm.loadKsmDvig;
begin
  if (mContr = nil) then
    mContr := TMoneyController.Create(db, m_sets);
  mContr.findKsmIdDvig(m_sets.strukId, m_sets.month, m_sets.year, curKsmId);
  ds_ksmDvig.DataSet := mContr.ksmIdDvigList;
end;

procedure TFMoneyForm.setDB(var db: TdDM);
begin
  self.db := db;
end;

procedure TFMoneyForm.setSets(var value: TSettings);
begin
  m_sets := value;
end;

end.
