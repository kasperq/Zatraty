program Zatraty;

uses
  Forms,
  SysUtils,
  ZatratyMain in 'ZatratyMain.pas' {FZatratyMain},
  CenPfRec in 'CenPfRec.pas',
  Zatrat in 'Zatrat.pas',
  CenaPfForm in 'CenaPfForm.pas' {FCenaPfForm},
  vipuskRec in 'vipuskRec.pas',
  Vipusk in 'Vipusk.pas',
  Departments in 'Departments.pas',
  DepartmentDM in 'DepartmentDM.pas' {depDM: TDataModule},
  VipuskDM in 'VipuskDM.pas' {VipDM: TDataModule},
  Settings in 'Settings.pas';

{$R *.res}
var
  zatrM : TFZatratyMain;

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
//  Application.CreateForm(TFZatratyMain, zatrM);
  Application.CreateForm(TFZatratyMain, zatrM);
  Application.Run;
end.
