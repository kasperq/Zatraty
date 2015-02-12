unit Zatrat;

interface

uses
ZatratyMain;

type
  TZatraty = class
  public
    Constructor Create;
    Destructor Destroy; override;

//    procedure startProgram;
//    function getExitProgram() : boolean;
//    procedure setExitProgram(value : boolean);

//    property exitProgram : boolean read getExitProgram write setExitProgram;

  private
//    zatrM : TFZatratyMain;
//    m_exitProgram : boolean;

  end;

implementation

uses Forms, SysUtils, Dialogs;

Constructor TZatraty.Create;
begin
  inherited Create;
//  zatrM := TFZatratyMain.Create(Application);
//  m_exitProgram := false;
//  zatrM.m_exitProgram := @(m_exitProgram);
end;

Destructor TZatraty.Destroy;
begin
//  FreeAndNil(zatrM);
  inherited Destroy;
end;

//procedure TZatraty.startProgram;
//begin
//  zatrM.Show;
//  ShowMessage('hi');
//end;

//function TZatraty.getExitProgram() : boolean;
//begin
//  result := m_exitProgram;
//end;

//procedure TZatraty.setExitProgram(value : boolean);
//begin
//  m_exitProgram := value;
//end;

end.
