program Zatraty;

uses
  Forms,
  SysUtils,
  MainForm in 'Source\Forms\MainForm.pas' {FZatratyMain},
  Settings in 'Source\Settings.pas',
  Vcl.Themes,
  Vcl.Styles,
  CalcZatrForm in 'Source\Forms\CalcZatrForm.pas' {FCalcZatrForm},
  OpenedWnds in 'Source\OpenedWnds.pas',
  OpenedWnd in 'Source\OpenedWnd.pas',
  DBDM in 'Source\DB\DBDM.pas' {dDM: TDataModule},
  Departments in 'Source\Departments.pas',
  DepartmentsDM in 'Source\DepartmentsDM.pas' {depDM: TDataModule},
  MainDM in 'MainDM.pas' {FMainDM: TDataModule},
  Vipusk in 'Source\Vipusk.pas',
  VipuskDM in 'Source\VipuskDM.pas' {vipDM: TDataModule},
  ZatrController in 'Source\ZatrController.pas',
  ZatrViewer in 'Source\ZatrViewer.pas',
  ZatrViewerDM in 'Source\ZatrViewerDM.pas' {zatrViewDM: TDataModule},
  Drug in 'Source\Drug.pas',
  Department in 'Source\Department.pas',
  SvodViewer in 'Source\SvodViewer.pas',
  SvodParams in 'Source\SvodParams.pas',
  SvodViewerDM in 'Source\SvodViewerDM.pas' {SvodDM: TDataModule},
  ZatrRecord in 'Source\ZatrRecord.pas',
  CenPF in 'Source\CenPF.pas',
  CenPFDM in 'Source\CenPFDM.pas' {cPFDM: TDataModule},
  PrReports in 'Source\Forms\PrReports.pas' {FPrReports},
  ZatrViewForm in 'Source\Forms\ZatrViewForm.pas' {Form1},
  PrReportController in 'Source\PrReportController.pas',
  ReportCopier in 'Source\ReportCopier.pas',
  ReportCopierDM in 'Source\ReportCopierDM.pas' {FReportCopierDM: TDataModule},
  Document in 'Source\Document.pas',
  DocumentDM in 'Source\DocumentDM.pas' {FDocumentDM: TDataModule},
  ZatrReport in 'Source\ZatrReport.pas',
  ZatrReportDM in 'Source\ZatrReportDM.pas' {FZatrReportDM: TDataModule},
  MoneyForm in 'Source\Forms\MoneyForm.pas' {FMoneyForm},
  MoneyController in 'Source\MoneyController.pas',
  MoneyCopier in 'Source\MoneyCopier.pas',
  MoneyCopierDM in 'Source\MoneyCopierDM.pas' {FMoneyCopierDM: TDataModule},
  MoneyZatr in 'Source\MoneyZatr.pas',
  MoneyZatrDM in 'Source\MoneyZatrDM.pas' {FMoneyZatrDM: TDataModule},
  MoneyTypes in 'Source\MoneyTypes.pas',
  ZatrUtils in 'Source\ZatrUtils.pas',
  ZatrCalcReport in 'Source\ZatrCalcReport.pas',
  StartForm in 'Source\Forms\StartForm.pas' {FStartForm},
  StartController in 'Source\StartController.pas',
  DbfCopier in 'Source\DbfCopier.pas',
  DbfCopierDM in 'Source\DbfCopierDM.pas' {dbfCopyDM: TDataModule};

{$R *.res}
//var
//  FZatratyMain : TFZatratyMain;

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := true;
//  TStyleManager.TrySetStyle('Silver');
  Application.Title := 'Расчет затрат';
  Application.CreateForm(TFMainDM, FMainDM);
  Application.Run;
end.
