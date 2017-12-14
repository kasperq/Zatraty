unit ZatrViewerDM;

interface

uses DBDM,
  System.SysUtils, System.Classes, kbmMemTable, Bde.DBTables, Data.DB, RxQuery,
  ERxQuery, IBX.IBCustomDataSet, IBX.IBQuery, RxIBQuery, frxClass, frxDBSet,
  RxMemDS, frxExportXML;

type
  TzatrViewDM = class(TDataModule)
    q_zatraDbf: TERxQuery;
    mem_zatra: TkbmMemTable;
    q_zatraDbfRAZD: TStringField;
    q_zatraDbfBAL: TStringField;
    q_zatraDbfKOMATR: TStringField;
    q_zatraDbfNMAT: TStringField;
    q_zatraDbfEDIZ: TStringField;
    q_zatraDbfCENA: TFloatField;
    q_zatraDbfCENAZA: TFloatField;
    q_zatraDbfOST_BEG: TFloatField;
    q_zatraDbfOST_BEG_S: TFloatField;
    q_zatraDbfZAGR: TFloatField;
    q_zatraDbfZAGR_S: TFloatField;
    q_zatraDbfRASH: TFloatField;
    q_zatraDbfRASH_S: TFloatField;
    q_zatraDbfOST_END: TFloatField;
    q_zatraDbfOST_END_S: TFloatField;
    q_zatraDbfRASH_GOD: TFloatField;
    q_zatraDbfRASH_GOD_S: TFloatField;
    q_zatraDbfPEREDANO: TFloatField;
    q_zatraDbfOTKLON: TFloatField;
    mem_zatraRAZD: TStringField;
    mem_zatraBAL: TStringField;
    mem_zatraKOMATR: TStringField;
    mem_zatraNMAT: TStringField;
    mem_zatraEDIZ: TStringField;
    mem_zatraCENA: TFloatField;
    mem_zatraCENAZA: TFloatField;
    mem_zatraOST_BEG: TFloatField;
    mem_zatraOST_BEG_S: TFloatField;
    mem_zatraZAGR: TFloatField;
    mem_zatraZAGR_S: TFloatField;
    mem_zatraRASH: TFloatField;
    mem_zatraRASH_S: TFloatField;
    mem_zatraOST_END: TFloatField;
    mem_zatraOST_END_S: TFloatField;
    mem_zatraRASH_GOD: TFloatField;
    mem_zatraRASH_GOD_S: TFloatField;
    mem_zatraPEREDANO: TFloatField;
    mem_zatraOTKLON: TFloatField;
    q_razdel: TRxIBQuery;
    q_razdelRAZDEL_ID: TSmallintField;
    q_razdelKODRAZ: TIBStringField;
    q_razdelNAMRAZ: TIBStringField;
    q_razdelKRAZ: TSmallintField;
    mem_zatraNAMRAZ: TStringField;
    frxReport1: TfrxReport;
    frxZatra: TfrxDBDataset;
    q_zatraSpprod: TRxIBQuery;
    q_zatraSpprodKSM_ID: TIntegerField;
    q_zatraSpprodKOD_PROD: TIBStringField;
    q_zatraSpprodNMAT: TIBStringField;
    q_zatraSpprodVIP_NG: TFMTBCDField;
    q_zatraSpprodVIP_KV: TFMTBCDField;
    q_zatraSpprodVIP_MES: TFMTBCDField;
    q_zatraSpprodSTNAME: TIBStringField;
    q_zatraSpprodSTRUK_ID: TSmallintField;
    q_zatraDbfKOPREP: TStringField;
    mem_zatraKOPREP: TStringField;
    q_zatraDbfSTRK: TStringField;
    mem_zatraSTRK: TStringField;
    mem_zatraSTRUK_ID: TIntegerField;
    mem_zatraSTNAME: TStringField;
    mem_zatraKSM_ID_PREP: TIntegerField;
    mem_zatraNMAT_PREP: TStringField;
    mem_zatraVIPUSK: TFloatField;
    mem_zatraVIPUSK_QUAT: TFloatField;
    mem_zatraVIPUSK_YEAR: TFloatField;
    mem_zatraEDIZ_PREP: TStringField;
    mem_zatraKEI_ID_PREP: TIntegerField;
    q_zatraSpprodKOMATR: TStringField;
    q_zatraSpprodNEIS: TIBStringField;
    q_zatraSpprodKEI_ID: TSmallintField;
    mem_zatraKOD_PROD: TStringField;
    mem_zatraCHECKED: TIntegerField;
    q_zatraDbfRASH_KV: TFloatField;
    q_zatraDbfRASH_KV_S: TFloatField;
    mem_zatraRASH_KV: TFloatField;
    mem_zatraRASH_KV_S: TFloatField;
    q_zatraItogiDbf: TERxQuery;
    q_zatraItogiDbfRAZD: TStringField;
    q_zatraItogiDbfBAL: TStringField;
    q_zatraItogiDbfKOMATR: TStringField;
    q_zatraItogiDbfNMAT: TStringField;
    q_zatraItogiDbfOST_BEG: TFloatField;
    q_zatraItogiDbfOST_BEG_S: TFloatField;
    q_zatraItogiDbfZAGR: TFloatField;
    q_zatraItogiDbfZAGR_S: TFloatField;
    q_zatraItogiDbfRASH: TFloatField;
    q_zatraItogiDbfRASH_S: TFloatField;
    q_zatraItogiDbfOST_END: TFloatField;
    q_zatraItogiDbfOST_END_S: TFloatField;
    q_zatraItogiDbfRASH_GOD: TFloatField;
    q_zatraItogiDbfRASH_GOD_S: TFloatField;
    q_zatraItogiDbfRASH_KV: TFloatField;
    q_zatraItogiDbfRASH_KV_S: TFloatField;
    q_zatraItogiDbfPEREDANO: TFloatField;
    q_zatraItogiDbfOTKLON: TFloatField;
    q_zatraItogiDbfKOPREP: TStringField;
    q_zatraItogiDbfSTRK: TStringField;
    frxZatraItogi: TfrxDBDataset;
    mem_zatraIT_NAME: TStringField;
    mem_zatraIT_RAZD: TIntegerField;
    mem_zatraIT_BAL: TIntegerField;
    mem_zatraPrep: TkbmMemTable;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    FloatField3: TFloatField;
    FloatField4: TFloatField;
    FloatField5: TFloatField;
    FloatField6: TFloatField;
    FloatField7: TFloatField;
    FloatField8: TFloatField;
    FloatField9: TFloatField;
    FloatField10: TFloatField;
    FloatField11: TFloatField;
    FloatField12: TFloatField;
    FloatField13: TFloatField;
    FloatField14: TFloatField;
    StringField7: TStringField;
    StringField8: TStringField;
    StringField9: TStringField;
    IntegerField1: TIntegerField;
    StringField10: TStringField;
    IntegerField2: TIntegerField;
    StringField11: TStringField;
    FloatField15: TFloatField;
    FloatField16: TFloatField;
    FloatField17: TFloatField;
    StringField12: TStringField;
    IntegerField3: TIntegerField;
    StringField13: TStringField;
    IntegerField4: TIntegerField;
    FloatField18: TFloatField;
    FloatField19: TFloatField;
    IntegerField5: TIntegerField;
    IntegerField6: TIntegerField;
    mem_zatraLAST_REC: TIntegerField;
    mem_zatraPrepLAST_REC: TIntegerField;
    q_zatraDbfG20: TFloatField;
    mem_zatraG20: TFloatField;
    mem_zatraPrepG20: TFloatField;
    mem_prepItogi21: TkbmMemTable;
    FloatField20: TFloatField;
    StringField14: TStringField;
    StringField15: TStringField;
    StringField16: TStringField;
    StringField17: TStringField;
    StringField18: TStringField;
    StringField19: TStringField;
    FloatField21: TFloatField;
    FloatField22: TFloatField;
    FloatField23: TFloatField;
    FloatField24: TFloatField;
    FloatField25: TFloatField;
    FloatField26: TFloatField;
    FloatField27: TFloatField;
    FloatField28: TFloatField;
    FloatField29: TFloatField;
    FloatField30: TFloatField;
    FloatField31: TFloatField;
    FloatField32: TFloatField;
    FloatField33: TFloatField;
    FloatField34: TFloatField;
    StringField20: TStringField;
    StringField21: TStringField;
    StringField22: TStringField;
    IntegerField7: TIntegerField;
    StringField23: TStringField;
    IntegerField8: TIntegerField;
    StringField24: TStringField;
    FloatField35: TFloatField;
    FloatField36: TFloatField;
    FloatField37: TFloatField;
    StringField25: TStringField;
    IntegerField9: TIntegerField;
    StringField26: TStringField;
    IntegerField10: TIntegerField;
    FloatField38: TFloatField;
    FloatField39: TFloatField;
    IntegerField11: TIntegerField;
    IntegerField12: TIntegerField;
    IntegerField13: TIntegerField;
    q_zatra21Dbf: TERxQuery;
    StringField27: TStringField;
    StringField28: TStringField;
    StringField29: TStringField;
    StringField30: TStringField;
    StringField31: TStringField;
    FloatField40: TFloatField;
    FloatField41: TFloatField;
    FloatField42: TFloatField;
    FloatField43: TFloatField;
    FloatField44: TFloatField;
    FloatField45: TFloatField;
    FloatField46: TFloatField;
    FloatField47: TFloatField;
    FloatField48: TFloatField;
    FloatField49: TFloatField;
    FloatField50: TFloatField;
    FloatField51: TFloatField;
    FloatField52: TFloatField;
    FloatField53: TFloatField;
    StringField32: TStringField;
    StringField33: TStringField;
    FloatField54: TFloatField;
    FloatField55: TFloatField;
    FloatField56: TFloatField;
    q_zatra: TRxIBQuery;
    mem_zatraKSM_ID: TIntegerField;
    mem_zatraPrepKSM_ID: TIntegerField;
    q_zatraDOC_ID: TIntegerField;
    q_zatraSTRUK_ID: TSmallintField;
    q_zatraKSM_ID_PREP: TIntegerField;
    q_zatraKSM_ID: TIntegerField;
    q_zatraKOMATR: TIBStringField;
    q_zatraKEI_ID: TIntegerField;
    q_zatraRAZDEL_ID: TIntegerField;
    q_zatraBAL: TIBStringField;
    q_zatraNMAT: TIBStringField;
    q_zatraRAZD: TIBStringField;
    q_zatraKRAZ: TSmallintField;
    q_zatraNAMRAZ: TIBStringField;
    q_zatraACCOUNT: TIBStringField;
    q_zatraCENA: TFMTBCDField;
    q_zatraCENAZA: TFMTBCDField;
    q_zatraOST_END_MONEY: TFMTBCDField;
    q_zatraOST_BEG: TFMTBCDField;
    q_zatraOST_BEG_S: TFMTBCDField;
    q_zatraZAGR: TFMTBCDField;
    q_zatraZAGR_S: TFMTBCDField;
    q_zatraRASH: TFMTBCDField;
    q_zatraRASH_S: TFMTBCDField;
    q_zatraOST_END: TFMTBCDField;
    q_zatraOST_END_S: TFMTBCDField;
    q_zatraRASH_GOD: TFMTBCDField;
    q_zatraRASH_GOD_S: TFMTBCDField;
    q_zatraRASH_KV: TFMTBCDField;
    q_zatraRASH_KV_S: TFMTBCDField;
    q_zatraPEREDANO: TFMTBCDField;
    q_zatraOTKLON: TFMTBCDField;
    q_zatraKOD_PROD: TIBStringField;
    q_zatraNMAT_PREP: TIBStringField;
    q_zatraSTKOD: TIBStringField;
    q_zatraSTNAME: TIBStringField;
    q_zatraVIPUSK_YEAR: TFMTBCDField;
    q_zatraVIPUSK_QUAT: TFMTBCDField;
    q_zatraVIPUSK: TFMTBCDField;
    q_zatraEDIZ: TIBStringField;
    procedure q_zatraSpprodCalcFields(DataSet: TDataSet);
    procedure frxReport1GetValue(const VarName: string; var Value: Variant);
    procedure DataModuleDestroy(Sender: TObject);
  private
    curKsmId : integer;
//    m_reportsCount : integer;

  public
    procedure prepare;
    procedure loadZatra(strukId, ksmIdPrep : integer; dateBeginMonth,
                        dateEndMonth, dateBeginQuat, dateBeginYear : TDate);

    procedure loadZatraDbf(month, year : integer; stkod, koprep, machine, driveLetter: string);
    procedure loadZatraItogi(month, year : integer; stkod, koprep, machine, driveLetter: string);
    procedure openZatraSpprod(ksmId, strukId : integer; dateBeginMonth,
                              dateBeginYear, dateBeginQuat, dateEnd : TDate);

//    property reportsCount : integer read m_reportsCount write m_reportsCount;

  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TzatrViewDM }

procedure TzatrViewDM.DataModuleDestroy(Sender: TObject);
begin
  mem_zatra.EmptyTable;
  mem_zatra.Close;
end;

procedure TzatrViewDM.frxReport1GetValue(const VarName: string;
  var Value: Variant);
begin
  if (VarName = 'GroupKsmId') then
  begin
    if (mem_zatraKSM_ID_PREP.AsInteger = curKsmId) then
      Value := 1
    else
      Value := 2;
    curKsmId := mem_zatraKSM_ID_PREP.AsInteger;
  end;
//  if (VarName = 'reportsCount') then
//  begin
//    Value := m_reportsCount;
//  end;
end;

procedure TzatrViewDM.loadZatra(strukId, ksmIdPrep : integer; dateBeginMonth,
                                dateEndMonth, dateBeginQuat, dateBeginYear : TDate);
begin
  q_zatra.Close;
  q_zatra.ParamByName('STRUK_ID').AsInteger := strukId;
  q_zatra.ParamByName('KSM_IDPR').AsInteger := ksmIdPrep;
  q_zatra.ParamByName('DATE_BEGIN_MES').AsDate := dateBeginMonth;
  q_zatra.ParamByName('DATE_END').AsDate := dateEndMonth;
  q_zatra.ParamByName('DATE_BEGIN_GOD').AsDate := dateBeginYear;
  q_zatra.ParamByName('DATE_BEGIN_KV').AsDate := dateBeginQuat;
  q_zatra.Open;

  mem_zatraPrep.Close;
  mem_zatraPrep.EmptyTable;
  mem_zatraPrep.LoadFromDataSet(q_zatra, [mtcpoAppend]);
  mem_zatraPrep.Open;

  mem_zatraPrep.Last;
  while (mem_zatraPrep.RecNo <> 1) do
  begin
    if (mem_zatraPrep.FieldByName('NMAT').AsString <> 'ÿÿÿ') then
    begin
      mem_zatraPrep.Edit;
      mem_zatraPrep.FieldByName('LAST_REC').AsInteger := 1;
      mem_zatraPrep.Post;
      break;
    end;
    mem_zatraPrep.Prior;
  end;
end;

procedure TzatrViewDM.loadZatraDbf(month, year : integer; stkod, koprep, machine, driveLetter: string);
begin
  q_zatraDbf.Close;
  q_zatraDbf.EhSQL.Text := 'select zatra.razd, zatra.bal, zatra.komatr, zatra.nmat, '
                         + 'zatra.ediz, zatra.cena, zatra.cenaza, zatra.g6 as ost_beg, '
                         + 'zatra.g7 as ost_beg_s, zatra.g10 as zagr, zatra.g11 as zagr_s, '
                         + 'zatra.g12 as rash, zatra.g13 as rash_s, zatra.g8 as ost_end, '
                         + 'zatra.g9 as ost_end_s, zatra.g14 as rash_god, '
                         + 'zatra.g15 as rash_god_s, zatra.g18 as peredano, '
                         + 'zatra.g20, zatra.otklon, '
                         + 'zatra.koprep, zatra.strk, zatra.g16 rash_kv, zatra.g17 rash_kv_s '
                         + 'from ''' + driveLetter + ':\' + machine + '\otchbas\zatra.dbf'' zatra '
                         + 'where zatra.mes = :month and zatra.strk = :stkod '
                         + 'and zatra.koprep= :koprep '
                         + 'and zatra.nmat <> ''ÿÿÿ'' '
//                         + 'and (zatra.nmat <> ''ÿÿÿ'' '
//                         + 'or zatra.komatr in (''ITOGP'', ''ITOGR'', ''ITOGS'', '
//                         + '''VSEGO'', ''VSEGP'', ''VSEGS'') ) '
                         + 'order by zatra.razd, zatra.nmat ';
  q_zatraDbf.ParamByName('month').AsInteger := month;
  q_zatraDbf.ParamByName('stkod').AsString := stkod;
  q_zatraDbf.ParamByName('koprep').AsString := koprep;
  q_zatraDbf.Open;

  q_zatra21Dbf.Close;
  q_zatra21Dbf.EhSQL.Text := 'select zatra.razd, zatra.bal, zatra.komatr, zatra.nmat, '
                         + 'zatra.ediz, zatra.cena, zatra.cenaza, zatra.g6 as ost_beg, '
                         + 'zatra.g7 as ost_beg_s, zatra.g10 as zagr, zatra.g11 as zagr_s, '
                         + 'zatra.g12 as rash, zatra.g13 as rash_s, zatra.g8 as ost_end, '
                         + 'zatra.g9 as ost_end_s, zatra.g14 as rash_god, '
                         + 'zatra.g15 as rash_god_s, zatra.g18 as peredano, '
                         + 'zatra.g20, zatra.otklon, '
                         + 'zatra.koprep, zatra.strk, zatra.g16 rash_kv, zatra.g17 rash_kv_s '
                         + 'from ''' + driveLetter + ':\' + machine + '\otchbas\zatra.dbf'' zatra '
                         + 'where zatra.mes = :month and zatra.strk = :stkod '
                         + 'and zatra.koprep= :koprep '
                         + 'and zatra.nmat <> ''ÿÿÿ'' '
//                         + 'and zatra.komatr in (''ITOGP'', ''ITOGR'', ''ITOGS'', '
//                         + '''VSEGO'', ''VSEGP'', ''VSEGS'') '
                         + 'and zatra.bal = ''21'' '
                         + 'order by zatra.razd, zatra.nmat ';
  q_zatra21Dbf.ParamByName('month').AsInteger := month;
  q_zatra21Dbf.ParamByName('stkod').AsString := stkod;
  q_zatra21Dbf.ParamByName('koprep').AsString := koprep;
  q_zatra21Dbf.Open;

  mem_prepItogi21.Close;
  mem_prepItogi21.EmptyTable;
  mem_prepItogi21.LoadFromDataSet(q_zatra21Dbf, [mtcpoAppend]);
  mem_prepItogi21.Open;

  mem_zatraPrep.Close;
  mem_zatraPrep.EmptyTable;
  mem_zatraPrep.LoadFromDataSet(q_zatraDbf, [mtcpoAppend]);
  mem_zatraPrep.Open;

  mem_zatraPrep.Last;
  while (mem_zatraPrep.RecNo <> 1) do
  begin
    if (mem_zatraPrep.FieldByName('NMAT').AsString <> 'ÿÿÿ') then
    begin
      mem_zatraPrep.Edit;
      mem_zatraPrep.FieldByName('LAST_REC').AsInteger := 1;
      mem_zatraPrep.Post;
      break;
    end;
    mem_zatraPrep.Prior;
  end;

  q_zatra21Dbf.Close;
  q_zatraDbf.Close;
end;

procedure TzatrViewDM.loadZatraItogi(month, year: integer; stkod, koprep, machine,
                                     driveLetter: string);
begin
  q_zatraItogiDbf.Close;
  q_zatraItogiDbf.EhSQL.Text := 'select zatra.razd, zatra.bal, zatra.komatr, '
                                + 'zatra.nmat,  zatra.g6 as ost_beg, zatra.g7 as ost_beg_s, '
                                + 'zatra.g10 as zagr, zatra.g11 as zagr_s, '
                                + 'zatra.g12 as rash, zatra.g13 as rash_s, '
                                + 'zatra.g8 as ost_end, zatra.g9 as ost_end_s, '
                                + 'zatra.g14 as rash_god, zatra.g15 as rash_god_s, '
                                + 'zatra.g16 as rash_kv, zatra.g17 as rash_kv_s, '
                                + 'zatra.g18 as peredano, zatra.otklon, zatra.koprep, zatra.strk '
                                + 'from ''' + driveLetter + ':\'+ machine + '\otchbas\zatra.dbf'' zatra '
                                + 'where zatra.mes = :month and zatra.strk = :stkod '
                                + 'and zatra.koprep = :koprep and zatra.nmat = ''ÿÿÿ'' '
                                + 'and zatra.komatr in (''ITOGP'', ''ITOGR'', ''ITOGS'', '
                                + '''VSEGO'', ''VSEGP'', ''VSEGS'') ';
  q_zatraItogiDbf.ParamByName('month').AsInteger := month;
  q_zatraItogiDbf.ParamByName('stkod').AsString := stkod;
  q_zatraItogiDbf.ParamByName('koprep').AsString := koprep;
  q_zatraItogiDbf.Open;
//  mem_zatraItogi.Close;
//  mem_zatraItogi.EmptyTable;
//  mem_zatraItogi.LoadFromDataSet(q_zatraItogiDbf, [mtcpoAppend]);
  mem_zatra.LoadFromDataSet(q_zatraItogiDbf, [mtcpoAppend]);
//  mem_zatraItogi.Open;
  q_zatraItogiDbf.Close;
end;

procedure TzatrViewDM.openZatraSpprod(ksmId, strukId: integer; dateBeginMonth,
  dateBeginYear, dateBeginQuat, dateEnd: TDate);
begin
  q_zatraSpprod.Close;
  q_zatraSpprod.ParamByName('struk_id').AsInteger := strukId;
  q_zatraSpprod.ParamByName('ksm_id').AsInteger := ksmId;
  q_zatraSpprod.ParamByName('date_begin_mes').AsDate := dateBeginMonth;
  q_zatraSpprod.ParamByName('date_begin_god').AsDate := dateBeginYear;
  q_zatraSpprod.ParamByName('date_begin_kv').AsDate := dateBeginQuat;
  q_zatraSpprod.ParamByName('date_end').AsDate := dateEnd;
  q_zatraSpprod.Open;
end;

procedure TzatrViewDM.prepare;
begin
  mem_zatra.Close;
  mem_zatra.EmptyTable;
  mem_zatraPrep.Close;
  mem_zatraPrep.EmptyTable;
//  mem_zatraItogi.Close;
//  mem_zatraItogi.EmptyTable;
end;

procedure TzatrViewDM.q_zatraSpprodCalcFields(DataSet: TDataSet);
var
  i : integer;
begin
  for i := 1 to (6 - length(q_zatraSpprodKSM_ID.AsString)) do
  begin
    q_zatraSpprodKOMATR.AsString := q_zatraSpprodKOMATR.AsString + '0';
  end;
  q_zatraSpprodKOMATR.AsString := q_zatraSpprodKOMATR.AsString + q_zatraSpprodKSM_ID.AsString;
end;

end.
