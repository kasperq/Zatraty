unit OpenedWnd;

interface

type
  TOpenedWnd = class
  private
    m_wndName : string;
    m_pWnd : pointer;

  public
//    Constructor Create; overload;
    Constructor Create(wndName : string; pWnd : Pointer); overload;
    Destructor Destroy; override;

    property wndName : string read m_wndName write m_wndName;
    property pWnd : pointer read m_pWnd write m_pWnd;
  end;

implementation

//Constructor TOpenedWnd.Create;
//begin
//  inherited Create;
//  m_wndName := '';
//  m_pWnd := nil;
//end;

Constructor TOpenedWnd.Create(wndName : string; pWnd : Pointer);
begin
  inherited Create;
  m_wndName := wndName;
  m_pWnd := pWnd;
end;

Destructor TOpenedWnd.Destroy;
begin
  m_wndName := '';
  Dispose(m_pWnd);
  inherited Destroy;
end;

end.
