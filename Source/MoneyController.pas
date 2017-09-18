unit MoneyController;

interface

uses DBDM, Settings, MoneyCopier, Vipusk,
  SysUtils, kbmMemTable;

type
  TMoneyController = class
  private
    m_sets : TSettings;
    db : TdDM;
    moneyCop : TMoneyCopier;
    vip : TVipusk;
    vipuskList : TkbmMemTable;

  public
    Constructor Create(var db : TdDM; var sets : TSettings);
    Destructor Destroy; override;

    procedure copyFullCurrentCex;

  end;

implementation

{ TMoneyController }

procedure TMoneyController.copyFullCurrentCex;
begin
  if (moneyCop = nil) then
    moneyCop := TMoneyCopier.Create(db);
//  vipuskList.Open;
//  vipuskList.EmptyTable;
//  vipuskList.LoadFromDataSet(vip.vipuskList, [mtcpoAppend]);
  moneyCop.copyCex(m_sets.stkod, m_sets.strukId, m_sets.month, m_sets.year, vip.vipuskList);
end;

constructor TMoneyController.Create(var db: TdDM; var sets: TSettings);
begin
  inherited Create;
  self.db := db;
  self.m_sets := sets;
  vip := TVipusk.Create(db, m_sets);
  vip.openVipusk(m_sets.strukId, m_sets.dateBeginMonth, m_sets.dateEnd);
end;

destructor TMoneyController.Destroy;
begin
  FreeAndNil(moneyCop);
  inherited;
end;

end.
