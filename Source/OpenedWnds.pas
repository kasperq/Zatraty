unit OpenedWnds;

interface

uses OpenedWnd, System.Generics.Collections;

type
  TOpenedWnds = class
  public
    Constructor Create;
    Destructor Destroy; override;

    procedure pushBack(wndName : string; pWnd : Pointer);
  private
    wndList : TObjectList<TOpenedWnd>;

  end;

implementation

Constructor TOpenedWnds.Create;
begin
  inherited Create;
  //
end;

Destructor TOpenedWnds.Destroy;
begin
  //
  inherited Destroy;
end;

procedure TOpenedWnds.pushBack(wndName: string; pWnd: Pointer);
begin
//  wndList.Add(TOpenedWnd(wndName, pWnd));
end;

end.
