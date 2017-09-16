unit PrReports;

interface

uses VipuskDM, PrReportController, Settings, DBDM,
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.ComCtrls, Vcl.ExtCtrls, Data.DB;

type
  TFPrReports = class(TForm)
    panel_toolbar: TPanel;
    panel_main: TPanel;
    pc_reports: TPageControl;
    tab_preps: TTabSheet;
    tab_view: TTabSheet;
    btn_copy: TSpeedButton;
    btn_faspPrint: TSpeedButton;
    btn_viewReps: TBitBtn;
    Panel1: TPanel;
    panel_prepsMain: TPanel;
    ds_vipusk: TDataSource;
    grid_vipusk: TDBGridEh;
    cb_selectAll: TCheckBox;
    procedure FormShow(Sender: TObject);
    procedure btn_copyClick(Sender: TObject);
    procedure cb_selectAllClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    repContr : TPrReportController;
    m_sets : TSettings;
    db : TdDM;

  public
    function getSets() : TSettings;
    procedure setSets(var value : TSettings);
    procedure setDB(var db : TdDM);

  end;

implementation

{$R *.dfm}

procedure TFPrReports.btn_copyClick(Sender: TObject);
begin
  repContr.copyReports();
end;

procedure TFPrReports.cb_selectAllClick(Sender: TObject);
begin
  repContr.selectAllPreps(cb_selectAll.Checked);
end;

procedure TFPrReports.FormDestroy(Sender: TObject);
begin
  FreeAndNil(repContr);
end;

procedure TFPrReports.FormShow(Sender: TObject);
begin
  inherited Show;
  if (repContr = nil) then
    repContr := TPrReportController.Create(db, m_sets);
  repContr.loadVipusk;
  ds_vipusk.DataSet := repContr.vipuskList;
end;

function TFPrReports.getSets: TSettings;
begin
  result := m_sets;
end;

procedure TFPrReports.setDB(var db: TdDM);
begin
  self.db := db;
end;

procedure TFPrReports.setSets(var value: TSettings);
begin
  m_sets := value;
end;

end.
