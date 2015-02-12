unit CenaPf;

interface

type
  TCenaPf = class
  public
    Constructor Create;
    Destructor Destroy; override;

    function calcCena(strukId, ksmId : integer) : boolean;
  private

  end;

implementation

Constructor TCenaPf.Create;
begin
  inherited Create;
  //
end;

Destructor TCenaPf.Destroy; override;
begin
  //
  inherited Destroy;
end;

function TCenaPf.calcCena(strukId, ksmId : integer) : boolean;
begin
  result := false;
end;

end.
