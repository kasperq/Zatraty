unit Vipusk;

interface

uses VipuskDM, DBDM, Settings,
  Forms, RxIBQuery, SysUtils;

type
  TVipusk = class
  private
    db : TdDM;
    dm : TvipDM;
    m_sets : TSettings;

  public
    Constructor Create(var db : TdDM); overload;
    Constructor Create(var db : TdDM; var sets : TSettings); overload;
    Destructor Destroy; override;

    procedure setSets(var value: TSettings);
    procedure selectAll(select : boolean);

    function openVipusk(strukId : integer; dateBegin, dateEnd : TDate) : boolean;
    function getVipusk() : TRxIBQuery;

    property vipuskList : TRxIBQuery read getVipusk;
  end;

implementation

{ TVipusk }

constructor TVipusk.Create(var db: TdDM);
begin
  inherited Create;
  self.db := db;
  dm := TvipDM.Create(Application);
  dm.q_vipusk.Database := db.db;
  dm.q_vipusk.Transaction := db.trans_read;
end;

constructor TVipusk.Create(var db: TdDM; var sets: TSettings);
begin
  inherited Create;
  self.db := db;
  dm := TvipDM.Create(Application);
  dm.q_vipusk.Database := db.db;
  dm.q_vipusk.Transaction := db.trans_read;
  setSets(sets);
  dm.setSets(sets);
end;

destructor TVipusk.Destroy;
begin
  dm.q_vipusk.close;
//  FreeAndNil(dm);
  inherited Destroy;;
end;

function TVipusk.getVipusk() : TRxIBQuery;
begin
  result := dm.q_vipusk;
end;

function TVipusk.openVipusk(strukId : integer; dateBegin, dateEnd : TDate) : boolean;
begin
  dm.openVipusk(strukId, dateBegin, dateEnd);
  result := true;
end;

procedure TVipusk.selectAll(select : boolean);
begin
  dm.q_vipusk.DisableControls;
  dm.q_vipusk.First;
  while (not dm.q_vipusk.Eof) do
  begin
    dm.q_vipusk.Edit;
    if (select) then
      dm.q_vipuskCHECKED.AsInteger := 1
    else
      dm.q_vipuskCHECKED.AsInteger := 0;
    dm.q_vipusk.Post;
    dm.q_vipusk.Next;
  end;
  dm.q_vipusk.EnableControls;
end;

procedure TVipusk.setSets(var value: TSettings);
begin
  m_sets := value;
end;

end.
