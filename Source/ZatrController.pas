unit ZatrController;

interface

uses DBDM, Vipusk, Departments, Settings, ZatrViewer,
  kbmMemTable, RxIBQuery, RxMemDS, SysUtils;

type
  TZatrController = class
  private
    db : TdDM;
    vip : TVipusk;
    m_sets : TSettings;
    struk : TDepartments;
    zatrViewer, zatrList : TZatrViewer;

    procedure loadDepartments;
    procedure loadVipusk;
    procedure appendZatraToList;

  public
    Constructor Create(var db :TdDM); overload;
    Constructor Create(var db : TdDM; var sets : TSettings); overload;
    Destructor Destroy; override;

    procedure loadDepartmentsAndVipusk;
    procedure setSets(var value : TSettings);
    procedure setDB(var db : TdDM);

    procedure loadCurrentPrep;
    procedure loadPrep;
    procedure printCurrentPrep(variantNum : integer);
    procedure printCheckedPrep(variantNum : integer);
    procedure viewCheckedPrep;
    procedure vipListSetChecked(checked : integer);


    function getDepartmentsList() : TkbmMemTable;
    function getVipusk() : TRxIBQuery;
    function getZatrMaterials() : TkbmMemTable;


    property strukList : TkbmMemTable read getDepartmentsList;
    property vipuskList : TRxIBQuery read getVipusk;
    property zatrMaterials : TkbmMemTable read getZatrMaterials;
  end;

implementation

{ TZatrController }

constructor TZatrController.Create(var db: TdDM);
begin
  inherited Create;
  self.db := db;
end;

procedure TZatrController.appendZatraToList;
begin
  if (zatrList = nil) then
    zatrList := TZatrViewer.Create(db, m_sets);
  zatrList.zatrMaterials.LoadFromDataSet(zatrViewer.zatrMaterials, [mtcpoAppend]);
end;

constructor TZatrController.Create(var db: TdDM; var sets: TSettings);
begin
  inherited Create;
  self.db := db;
  setSets(sets);
end;

destructor TZatrController.Destroy;
begin
  FreeAndNil(vip);
  FreeAndNil(struk);
  FreeAndNil(zatrViewer);
  FreeAndNil(zatrList);
  inherited Destroy;
end;

function TZatrController.getDepartmentsList: TkbmMemTable;
begin
  result := struk.strukList;
end;

function TZatrController.getVipusk: TRxIBQuery;
begin
  result := vip.vipuskList;
end;

function TZatrController.getZatrMaterials() : TkbmMemTable;
begin
  result := zatrList.zatrMaterials;
end;

procedure TZatrController.loadDepartmentsAndVipusk;
begin
  loadDepartments;
//  loadVipusk;
end;

procedure TZatrController.loadDepartments;
begin
  if (struk = nil) then
    struk := TDepartments.Create(db, m_sets);
  struk.openDepartmentsList;
  struk.strukList.First;
end;

procedure TZatrController.loadVipusk;
begin
  if (vip = nil) then
    vip := TVipusk.Create(db, m_sets);
  vip.openVipusk(struk.strukList.FieldByName('struk_id').AsInteger,
                 m_sets.dateBeginMonth, m_sets.dateEnd);
  vip.vipuskList.First;
end;

procedure TZatrController.viewCheckedPrep;
begin
  vip.vipuskList.DisableControls;
  vip.vipuskList.First;
  if (zatrList = nil) then
    zatrList := TZatrViewer.Create(db, m_sets);
  zatrList.prepareLoading;
  while (not vip.vipuskList.Eof) do
  begin
    if (vip.vipuskList.FieldByName('CHECKED').AsInteger = 1) then
    begin
      loadPrep;
      appendZatraToList;
    end;
    vip.vipuskList.Next;
  end;
  vip.vipuskList.EnableControls;
end;

procedure TZatrController.printCheckedPrep(variantNum : integer);
begin
  viewCheckedPrep;
  zatrList.printReport(variantNum);
end;

procedure TZatrController.printCurrentPrep(variantNum : integer);
begin
  loadCurrentPrep;
  zatrList.printReport(variantNum);
end;

procedure TZatrController.vipListSetChecked(checked : integer);
begin
  vip.vipuskList.DisableControls;
  vip.vipuskList.First;
  while (not vip.vipuskList.Eof) do
  begin
    vip.vipuskList.Edit;
    vip.vipuskList.FieldByName('CHECKED').AsInteger := checked;
    vip.vipuskList.Post;
    vip.vipuskList.Next;
  end;
  vip.vipuskList.EnableControls;
end;

procedure TZatrController.setDB(var db: TdDM);
begin
  self.db := db;
end;

procedure TZatrController.setSets(var value: TSettings);
begin
  m_sets := value;
  m_sets.onChanged := loadVipusk;
end;

procedure TZatrController.loadCurrentPrep;
begin
  if (zatrViewer = nil) then
    zatrViewer := TZatrViewer.Create(db, m_sets);
  zatrViewer.prepareLoading;
  zatrViewer.loadZatrReport(m_sets.month, m_sets.year, m_sets.stkod, m_sets.drug.koprep);
  if (zatrList = nil) then
    zatrList := TZatrViewer.Create(db, m_sets);
  zatrList.prepareLoading;
  appendZatraToList;
end;

procedure TZatrController.loadPrep;
begin
  if (zatrViewer = nil) then
    zatrViewer := TZatrViewer.Create(db, m_sets);
  zatrViewer.prepareLoading;
  zatrViewer.loadZatrReport(m_sets.month, m_sets.year, m_sets.stkod, m_sets.drug.koprep);
end;

end.
