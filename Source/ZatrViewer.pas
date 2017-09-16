unit ZatrViewer;

interface

uses DBDM, Settings, ZatrViewerDM, ZatrRecord,
  kbmMemTable, Forms, SysUtils, RxMemDS, Variants;

type
  TZatrViewer = class
  private
    db : TdDM;
    m_sets : TSettings;
    dm : TzatrViewDM;

    m_reportsCount : integer;

    zRec101, zRec102, zRec104, zRec21, zRecSum10, zRecPrep101, zRecPrep102,
    zRecPrep104, zRecPrep21, zRecPrepSum10 : TZatrRecord;

    procedure formZatraItogi(var table  : TkbmMemTable);
    function getCurBal(var table : TkbmMemTable) : integer;
    procedure locateRecord(var table : TkbmMemTable; recNo : integer);
    procedure setSpprodAndRazdelToZatra(var table : TkbmMemTable);
    procedure addItogiToZatra;
    procedure createZatrRecord({var zRec : TZatrRecord});

    procedure sumZatrRecordFields(var table : TkbmMemTable; var zR : TZatrRecord;
                                  prepItogi : boolean);
    procedure sumRazdZatrRecs;
    procedure calcAndInsertZatraItogi(var table : TkbmMemTable);
    procedure insertItogiRecs(var table : TkbmMemTable; curNamRaz : string; curItRazd : integer);
    procedure insertPrepItogiRecs(var table : TkbmMemTable; curNamRaz : string;
                                  curItRazd : integer);
    function insertItogiRecord(var table : TkbmMemTable; var zR : TZatrRecord;
                              namRaz, itName, komatr : string; itRazd : integer) : boolean;

  public
    Constructor Create(var db : TdDM; var sets : TSettings);
    Destructor Destroy; override;

    procedure prepareLoading;
    procedure loadZatrReport(month, year : integer; stkod, koprep : string);
    procedure printReport(variantNum : integer);

    function getZatrMaterials() : TkbmMemTable;

    property zatrMaterials : TkbmMemTable read getZatrMaterials;
  end;

implementation

{ TZatrViewer }

procedure TZatrViewer.addItogiToZatra;
begin
  dm.mem_zatra.LoadFromDataSet(dm.mem_zatraPrep, [mtcpoAppend]);
  dm.mem_zatra.Open;
//  dm.mem_zatra.SortOn('KOD_PROD;IT_RAZD;IT_BAL;NMAT', []);
end;

procedure TZatrViewer.insertPrepItogiRecs(var table : TkbmMemTable; curNamRaz : string;
                                          curItRazd : integer);
var
  curRecNo : integer;
begin
  //***************  œ–≈œ¿–¿“****************************************//
  curRecNo := table.RecNo;
  if (insertItogiRecord(table, zRecPrep101, curNamRaz, '¬—≈√Œ 101', 'VSEGP', curItRazd)) then
    locateRecord(table, curRecNo);

  curRecNo := table.RecNo;
  if (insertItogiRecord(table, zRecPrep102, curNamRaz, '¬—≈√Œ 102', 'VSEGP', curItRazd)) then
    locateRecord(table, curRecNo);

  curRecNo := table.RecNo;
  if (insertItogiRecord(table, zRecPrep104, curNamRaz, '¬—≈√Œ 104', 'VSEGP', curItRazd)) then
    locateRecord(table, curRecNo);

  curRecNo := table.RecNo;
  if (insertItogiRecord(table, zRecPrepSum10, curNamRaz, '¬—≈√Œ œŒ —◊≈“¿Ã(·ÂÁ Ò˜.21)', 'VSEGS', curItRazd)) then
    locateRecord(table, curRecNo);

  curRecNo := table.RecNo;
  if (insertItogiRecord(table, zRecPrepSum10, curNamRaz, '¬—≈√Œ œŒ –¿«ƒ≈À”(·ÂÁ Ò˜.21)', 'VSEGO', curItRazd)) then
    locateRecord(table, curRecNo);
end;

procedure TZatrViewer.insertItogiRecs(var table : TkbmMemTable; curNamRaz : string;
                                      curItRazd : integer);
var
  curRecNo : integer;
begin
  curRecNo := table.RecNo;
  if (insertItogiRecord(table, zRec101, curNamRaz, '»“Œ√Œ 101', 'ITOGP', curItRazd)) then
    locateRecord(table, curRecNo);

  curRecNo := table.RecNo;
  if (insertItogiRecord(table, zRec102, curNamRaz, '»“Œ√Œ 102', 'ITOGP', curItRazd)) then
    locateRecord(table, curRecNo);

  curRecNo := table.RecNo;
  if (insertItogiRecord(table, zRec104, curNamRaz, '»“Œ√Œ 104', 'ITOGP', curItRazd)) then
    locateRecord(table, curRecNo);

  curRecNo := table.RecNo;
  if (insertItogiRecord(table, zRecSum10, curNamRaz, '»“Œ√Œ œŒ —◊≈“¿Ã(·ÂÁ Ò˜.21)', 'ITOGS', curItRazd)) then
    locateRecord(table, curRecNo);

  curRecNo := table.RecNo;
  if (insertItogiRecord(table, zRecSum10, curNamRaz, '»“Œ√Œ œŒ –¿«ƒ≈À”(·ÂÁ Ò˜.21)', 'ITOGR', curItRazd)) then
    locateRecord(table, curRecNo);
end;

function TZatrViewer.insertItogiRecord(var table : TkbmMemTable; var zR : TZatrRecord;
                                      namRaz, itName, komatr : string; itRazd : integer) : boolean;
begin
  if (zR.isNull)
     or (((itRazd = 30) or (itRazd = 50))
         and ((komatr <> 'ITOGR') and (komatr <> 'VSEGP') and (komatr <> 'VSEGS')
              and (komatr <> 'VSEGO'))) then
  begin
    result := false;
  end
  else
  begin
    if ((table.RecNo = table.RecordCount) and (itRazd = table.FieldByName('IT_RAZD').AsInteger))
       or ((table.RecNo = table.RecordCount) and (itRazd <> 0) and (table.FieldByName('IT_RAZD').AsInteger = 0)) then
      table.Append
    else
      table.Insert;
    table.Edit;
    table.FieldByName('NMAT').AsString := 'ˇˇˇ';
    table.FieldByName('OST_BEG_S').AsFloat := zR.ostBegS;
    table.FieldByName('ZAGR_S').AsFloat := zR.zagrS;
    table.FieldByName('RASH_S').AsFloat := zR.rashS;
    table.FieldByName('OST_END_S').AsFloat := zR.ostEndS;
    table.FieldByName('RASH_GOD_S').AsFloat := zR.rashYearS;
    table.FieldByName('RASH_KV_S').AsFloat := zR.rashKvS;
    table.FieldByName('IT_NAME').AsString := itName;
    table.FieldByName('KOMATR').AsString := komatr;
    table.FieldByName('it_bal').AsInteger := getCurBal(table);
    table.FieldByName('otklon').AsFloat := table.FieldByName('g20').AsFloat;
    table.FieldByName('kod_prod').AsString := m_sets.drug.kodProd;
    table.FieldByName('ksm_id_prep').AsInteger := m_sets.drug.ksmId;
    table.FieldByName('NAMRAZ').AsString := namRaz;
    table.Post;
    result := true;
  end;
end;

procedure TZatrViewer.createZatrRecord({var zRec : TZatrRecord});
begin
  if (zRec101 = nil) then
    zRec101 := TZatrRecord.Create;
  if (zRec102 = nil) then
    zRec102 := TZatrRecord.Create;
  if (zRec104 = nil) then
    zRec104 := TZatrRecord.Create;
  if (zRecSum10 = nil) then
    zRecSum10 := TZatrRecord.Create;
  if (zRecPrep101 = nil) then
    zRecPrep101 := TZatrRecord.Create;
  if (zRecPrep102 = nil) then
    zRecPrep102 := TZatrRecord.Create;
  if (zRecPrep104 = nil) then
    zRecPrep104 := TZatrRecord.Create;
  if (zRecPrepSum10 = nil) then
    zRecPrepSum10 := TZatrRecord.Create;

  zRec101.clearFields;
  zRec102.clearFields;
  zRec104.clearFields;
  zRecSum10.clearFields;

  zRecPrep101.clearFields;
  zRecPrep102.clearFields;
  zRecPrep104.clearFields;
  zRecPrepSum10.clearFields;
end;

procedure TZatrViewer.sumZatrRecordFields(var table : TkbmMemTable; var zR : TZatrRecord;
                                          prepItogi : boolean);
var
  znak : integer;
begin
  if ((table.FieldByName('IT_RAZD').AsInteger = 30) or (table.FieldByName('IT_RAZD').AsInteger = 50))
     and (prepItogi) then
    znak := -1
  else
    znak := 1;

  zR.zagrS := zR.zagrS + znak * table.FieldByName('ZAGR_S').AsFloat;
  zR.ostBegS := zR.ostBegS + znak * table.FieldByName('OST_BEG_S').AsFloat;
  zR.ostEndS := zR.ostEndS + znak * table.FieldByName('OST_END_S').AsFloat;
  zR.rashS := zR.rashS + znak * table.FieldByName('RASH_S').AsFloat;
  zR.rashYearS := zR.rashYearS + znak * table.FieldByName('RASH_GOD_S').AsFloat;
  zR.rashKvS := zR.rashKvS + znak * table.FieldByName('RASH_KV_S').AsFloat;


end;

procedure TZatrViewer.sumRazdZatrRecs;
begin

end;

procedure TZatrViewer.locateRecord(var table : TkbmMemTable; recNo : integer);
var
  i : integer;
begin
  if (table.RecNo <> recNo) then
  begin
    table.First;
    for i := 1 to recNo do
      table.Next;
  end
  else
    table.Next;
end;

procedure TZatrViewer.calcAndInsertZatraItogi(var table : TkbmMemTable);
var
  curItRazd : integer;
  curNamRaz : string;
  i : integer;
begin
  curItRazd := 0;
  createZatrRecord();
  table.DisableControls;
  table.First;
  while (not table.Eof) do
  begin
    if (curItRazd <> table.FieldByName('IT_RAZD').AsInteger) then
    begin
      if (curItRazd <> 0) then
      begin
        insertItogiRecs(table, curNamRaz, curItRazd);
      end;
      zRec101.clearFields;
      zRec102.clearFields;
      zRec104.clearFields;
      zRecSum10.clearFields;
      curItRazd := table.FieldByName('IT_RAZD').AsInteger;
      curNamRaz := table.FieldByName('NAMRAZ').AsString;
    end;

    if (table.FieldByName('BAL').AsString = '101') then
    begin
      sumZatrRecordFields(table, zRec101, false);
      sumZatrRecordFields(table, zRecSum10, false);
      sumZatrRecordFields(table, zRecPrep101, true);
      sumZatrRecordFields(table, zRecPrepSum10, true);
    end;
    if (table.FieldByName('BAL').AsString = '102') then
    begin
      sumZatrRecordFields(table, zRec102, false);
      sumZatrRecordFields(table, zRecSum10, false);
      sumZatrRecordFields(table, zRecPrep102, true);
      sumZatrRecordFields(table, zRecPrepSum10, true);
    end;
    if (table.FieldByName('BAL').AsString = '104') then
    begin
      sumZatrRecordFields(table, zRec104, false);
      sumZatrRecordFields(table, zRecSum10, false);
      sumZatrRecordFields(table, zRecPrep104, true);
      sumZatrRecordFields(table, zRecPrepSum10, true);
    end;
    table.Next;
  end;
  insertItogiRecs(table, curNamRaz, curItRazd);
  insertPrepItogiRecs(table, curNamRaz, curItRazd);

  table.EnableControls;
end;

constructor TZatrViewer.Create(var db: TdDM; var sets: TSettings);
begin
  inherited Create;
  self.db := db;
  self.m_sets := sets;
  dm := TzatrViewDM.Create(application);
  dm.q_razdel.Database := db.db;
  dm.q_razdel.Transaction := db.trans_read;
  dm.q_zatraSpprod.Database := db.db;
  dm.q_zatraSpprod.Transaction := db.trans_read;
end;

destructor TZatrViewer.Destroy;
begin
  dm.q_zatraDbf.Close;
  dm.q_razdel.Close;
  dm.q_zatraItogiDbf.Close;
  dm.q_zatraSpprod.Close;
  inherited Destroy;
end;

function TZatrViewer.getCurBal(var table : TkbmMemTable) : integer;
var
  curKomatr : string;
begin
  curKomatr := table.FieldByName('komatr').AsString;
  result := 0;
  if (table.FieldByName('bal').AsString = '') then
  begin
    if (curKomatr = 'ITOGS') or (curKomatr = 'VSEGS') then
    begin
      result := 701;
    end
    else
    begin
      if (curKomatr = 'ITOGR') or (curKomatr = 'VSEGO') then
      begin
        result := 702;
      end
      else
        result := 703;
    end;
  end
  else
  begin
    if (curKomatr = 'ITOGP') or (curKomatr = 'VSEGP') then
      result := table.FieldByName('bal').AsInteger + 500;
  end;

end;

procedure TZatrViewer.formZatraItogi(var table : TkbmMemTable);
var
  multiplier : integer;
  curKomatr : string;
  ostBeg, ostEnd, zagr, rash, rashGod, rashKv, otklon : double;
begin
  curKomatr := table.FieldByName('komatr').AsString;

  table.Edit;
  table.FieldByName('it_bal').AsInteger := getCurBal(table);
  table.FieldByName('otklon').AsFloat := table.FieldByName('g20').AsFloat;


  if (curKomatr = 'ITOGP') then
    table.FieldByName('IT_NAME').AsString := '»“Œ√Œ ' + table.FieldByName('bal').AsString;
  if (curKomatr = 'ITOGS') then
    table.FieldByName('IT_NAME').AsString := '»“Œ√Œ œŒ —◊≈“¿Ã(·ÂÁ Ò˜. 21):';
  if (curKomatr = 'ITOGR') then
    table.FieldByName('IT_NAME').AsString := '»“Œ√Œ œŒ –¿«ƒ≈À”(·ÂÁ Ò˜. 21):';
  if (curKomatr = 'VSEGP') then
    table.FieldByName('IT_NAME').AsString := '¬—≈√Œ ' + table.FieldByName('bal').AsString;
  if (curKomatr = 'VSEGS') then
    table.FieldByName('IT_NAME').AsString := '¬—≈√Œ œŒ —◊≈“¿Ã(·ÂÁ Ò˜. 21):';
  if (curKomatr = 'VSEGO') then
    table.FieldByName('IT_NAME').AsString := '¬—≈√Œ œŒ œ–≈œ¿–¿“”(·ÂÁ Ò˜. 21):';

  multiplier := 1;
  ostBeg := 0;
  ostEnd := 0;
  zagr := 0;
  rash := 0;
  rashGod := 0;
  rashKv := 0;
  otklon := 0;
  if (table.FieldByName('razd').AsString <> '30')
      and (table.FieldByName('razd').AsString <> '50') then
  begin

    if (curKomatr <> 'ITOGR') then
    begin
      multiplier := -1;
    end;
    if (curKomatr = 'VSEGS') or (curKomatr = 'VSEGO') or (curKomatr = 'ITOGS')
       or (curKomatr = 'ITOGR') then
    begin
      if (((curKomatr = 'VSEGS') or (curKomatr = 'VSEGO')) and
          (dm.mem_prepItogi21.Locate('komatr;razd',
                                     VarArrayOf(['VSEGP', table.FieldByName('razd').AsString]), [])))
         or (((curKomatr = 'ITOGS') or (curKomatr = 'ITOGR')) and
             (dm.mem_prepItogi21.Locate('komatr;razd',
                                        VarArrayOf(['ITOGP', table.FieldByName('razd').AsString]), [])))
         and (table.FieldByName('bal').AsString <> '21') then
      begin
        ostBeg := dm.mem_prepItogi21.FieldByName('ost_beg_s').AsFloat * -1;
        ostEnd := dm.mem_prepItogi21.FieldByName('ost_end_s').AsFloat * -1;
        zagr := dm.mem_prepItogi21.FieldByName('zagr_s').AsFloat * -1;
        rash := dm.mem_prepItogi21.FieldByName('rash_s').AsFloat * -1;
        rashGod := dm.mem_prepItogi21.FieldByName('rash_god_s').AsFloat * -1;
        rashKv := dm.mem_prepItogi21.FieldByName('rash_kv_s').AsFloat * -1;
        otklon := dm.mem_prepItogi21.FieldByName('otklon').AsFloat * -1;
      end;
    end;
  end;
  table.FieldByName('ost_beg_s').AsFloat := (table.FieldByName('ost_beg_s').AsFloat * multiplier) - ostBeg;
  table.FieldByName('ost_end_s').AsFloat := (table.FieldByName('ost_end_s').AsFloat * multiplier) - ostEnd;
  table.FieldByName('zagr_s').AsFloat := (table.FieldByName('zagr_s').AsFloat * multiplier) - zagr;
  table.FieldByName('rash_s').AsFloat := (table.FieldByName('rash_s').AsFloat * multiplier) - rash;
  table.FieldByName('rash_god_s').AsFloat := (table.FieldByName('rash_god_s').AsFloat * multiplier) - rashGod;
  table.FieldByName('rash_kv_s').AsFloat := (table.FieldByName('rash_kv_s').AsFloat * multiplier) - rashKv;
  table.FieldByName('otklon').AsFloat := (table.FieldByName('otklon').AsFloat * multiplier) - otklon;

  table.Post;
end;

function TZatrViewer.getZatrMaterials() : TkbmMemTable;
begin
  result := dm.mem_zatra;
end;

procedure TZatrViewer.loadZatrReport(month, year : integer; stkod, koprep : string);
begin
  dm.loadZatra(month, year, stkod, koprep, m_sets.machine, m_sets.driveLetter);
  setSpprodAndRazdelToZatra(dm.mem_zatraPrep);
  addItogiToZatra;
  calcAndInsertZatraItogi(dm.mem_zatra);
//  dm.mem_zatra.SortOn('KOD_PROD;IT_RAZD;IT_BAL;NMAT', []);
end;

procedure TZatrViewer.prepareLoading;
begin
  dm.prepare;
  m_reportsCount := 0;
end;

procedure TZatrViewer.printReport(variantNum : integer);
begin
  if (variantNum = 1) then
    dm.frxReport1.LoadFromFile(m_sets.reportPath + 'zatra.fr3');
  if (variantNum = 2) then
    dm.frxReport1.LoadFromFile(m_sets.reportPath + 'zatra_new.fr3');
  dm.frxReport1.Script.Variables['month_str'] := AnsiUpperCase(m_sets.monthStr);
  dm.frxReport1.Script.Variables['year'] := m_sets.year;
  dm.frxReport1.Script.Variables['operator_name'] := m_sets.operatorName;
  dm.frxReport1.Script.Variables['current_date'] := DateToStr(now);
  dm.frxReport1.ShowReport;
end;

procedure TZatrViewer.setSpprodAndRazdelToZatra(var table : TkbmMemTable);
var
  curRazd, curNmat : string;
begin
  dm.q_razdel.Close;
  dm.q_razdel.Open;
  table.DisableControls;
  table.First;
  while (not table.Eof) do
  begin
    if (table.FieldByName('KSM_ID_PREP').AsInteger = 0) then
    begin
      curNmat := table.FieldByName('NMAT').AsString;
      curRazd := copy(table.FieldByName('RAZD').AsString, 1, 1) + '0';
      if (dm.q_razdel.Locate('kraz', curRazd, [])) then
      begin
        table.Edit;
        table.FieldByName('NAMRAZ').AsString := dm.q_razdelNAMRAZ.AsString;
        table.Post;
      end;

      table.Edit;
      table.FieldByName('IT_RAZD').AsInteger := StrToInt(curRazd);
      table.FieldByName('IT_BAL').AsInteger := 80 + StrToInt(curRazd);
      table.Post;

      if (not dm.q_zatraSpprod.Active)
         or ((dm.q_zatraSpprodKOMATR.AsString <> table.FieldByName('KOPREP').AsString)
             and (table.FieldByName('KSM_ID_PREP').AsInteger = 0)) then
      begin
        dm.openZatraSpprod(m_sets.drug.ksmId, m_sets.strukId, m_sets.dateBeginMonth,
                           m_sets.dateBeginYear, m_sets.dateBeginQuat, m_sets.dateEnd);
        dm.q_zatraSpprod.First;
        m_reportsCount := m_reportsCount + 1;
      end;

      table.Edit;
      table.FieldByName('KSM_ID_PREP').AsInteger := dm.q_zatraSpprodKSM_ID.AsInteger;
      table.FieldByName('STRUK_ID').AsInteger := dm.q_zatraSpprodSTRUK_ID.AsInteger;
      table.FieldByName('STNAME').AsString := dm.q_zatraSpprodSTNAME.AsString;
      table.FieldByName('NMAT_PREP').AsString := dm.q_zatraSpprodNMAT.AsString;
      table.FieldByName('VIPUSK').AsFloat := dm.q_zatraSpprodVIP_MES.AsFloat;
      table.FieldByName('VIPUSK_QUAT').AsFloat := dm.q_zatraSpprodVIP_KV.AsFloat;
      table.FieldByName('VIPUSK_YEAR').AsFloat := dm.q_zatraSpprodVIP_NG.AsFloat;
      table.FieldByName('EDIZ_PREP').AsString := dm.q_zatraSpprodNEIS.AsString;
      table.FieldByName('KEI_ID_PREP').AsInteger := dm.q_zatraSpprodKEI_ID.AsInteger;
      table.FieldByName('KOD_PROD').AsString := dm.q_zatraSpprodKOD_PROD.AsString;
      table.Post;
//      if (AnsiSameText(curNmat, 'ˇˇˇ')) then
//      begin
//        formZatraItogi(table);
//      end;
    end;
    table.Next;
  end;
//  addItogiToZatra;
//  calcZatraItogi(table);
  dm.reportsCount := m_reportsCount;
  dm.q_razdel.Close;
  table.EnableControls;
end;

end.
