unit MoneyForm;

interface

uses Settings, DBDM, MoneyController,
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Vcl.StdCtrls, Vcl.Buttons, EhLibVCL, GridsEh,
  DBAxisGridsEh, DBGridEh, Vcl.ExtCtrls, Vcl.ComCtrls;

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
    edit_newPrice: TEdit;
    grid_ksmVipusk: TDBGridEh;
    procedure btn_copyAllStrukClick(Sender: TObject);
  private
    m_sets : TSettings;
    db : TdDM;
    mContr : TMoneyController;

  public
    function getSets() : TSettings;
    procedure setSets(var value : TSettings);
    procedure setDB(var db : TdDM);

  end;

implementation

{$R *.dfm}

{ TFMoneyForm }

procedure TFMoneyForm.btn_copyAllStrukClick(Sender: TObject);
begin
  if (mContr = nil) then
    mContr := TMoneyController.Create(db, m_sets);
  mContr.copyFullCurrentCex;
end;

function TFMoneyForm.getSets: TSettings;
begin
  result := m_sets;
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
