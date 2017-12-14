unit StartForm;

interface

uses Settings, DBDM, StartController,
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.ExtCtrls;

type
  TFStartForm = class(TForm)
    panel_btns: TPanel;
    Panel2: TPanel;
    SpeedButton1: TSpeedButton;
    dlg_openZatr: TOpenDialog;
    procedure SpeedButton1Click(Sender: TObject);
  private
    m_sets : TSettings;
    db : TdDM;
    startContr : TStartController;

  public
    procedure setSets(var value : TSettings);
    procedure setDB(var db : TdDM);
  end;

implementation

{$R *.dfm}

{ TFStartForm }

procedure TFStartForm.setDB(var db: TdDM);
begin
  self.db := db;
end;

procedure TFStartForm.setSets(var value: TSettings);
begin
  m_sets := value;
end;

procedure TFStartForm.SpeedButton1Click(Sender: TObject);
var
  fileName : string;
begin
  dlg_openZatr.Execute();
  if (dlg_openZatr.Files.Capacity > 0) then
  begin
    fileName := dlg_openZatr.FileName;
    if (startContr = nil) then
      startContr := TStartController.Create(db, m_sets);
    startContr.copyDbfZatrToDb(fileName);
  end;
end;

end.
