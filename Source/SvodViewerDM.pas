unit SvodViewerDM;

interface

uses DBDM,
  System.SysUtils, System.Classes, Data.DB, Bde.DBTables, RxQuery, ERxQuery,
  kbmMemTable, IBX.IBCustomDataSet, IBX.IBQuery, RxIBQuery, frxClass, frxDBSet;

type
  TSvodDM = class(TDataModule)
    q_svodVedDbf: TERxQuery;
    mem_svodVed: TkbmMemTable;
    q_struk: TRxIBQuery;
    q_strukSTRUK_ID: TSmallintField;
    q_strukSTNAME: TIBStringField;
    q_strukSTKOD: TIBStringField;
    q_svodVedDbfGOD: TStringField;
    q_svodVedDbfMES: TStringField;
    q_svodVedDbfCEH: TStringField;
    q_svodVedDbfKOPREP: TStringField;
    q_svodVedDbfNAM: TStringField;
    q_svodVedDbfKR101: TFloatField;
    q_svodVedDbfVOZVRA15: TFloatField;
    q_svodVedDbfKR102: TFloatField;
    q_svodVedDbfVOZVRA25: TFloatField;
    q_svodVedDbfKR104: TFloatField;
    q_svodVedDbfVOZVRA45: TFloatField;
    q_svodVedDbfPF21: TFloatField;
    q_svodVedDbfVOZKOL: TFloatField;
    q_svodVedDbfVOZVR: TFloatField;
    mem_svodVedGOD: TStringField;
    mem_svodVedMES: TStringField;
    mem_svodVedCEH: TStringField;
    mem_svodVedKOPREP: TStringField;
    mem_svodVedNAM: TStringField;
    mem_svodVedKR101: TFloatField;
    mem_svodVedVOZVRA15: TFloatField;
    mem_svodVedKR102: TFloatField;
    mem_svodVedVOZVRA25: TFloatField;
    mem_svodVedKR104: TFloatField;
    mem_svodVedVOZVRA45: TFloatField;
    mem_svodVedPF21: TFloatField;
    mem_svodVedVOZKOL: TFloatField;
    mem_svodVedVOZVR: TFloatField;
    frxReport1: TfrxReport;
    frxSvod: TfrxDBDataset;
    mem_svodVedSTRUK_ID: TIntegerField;
    mem_svodVedPP_101: TFloatField;
    mem_svodVedPP_102: TFloatField;
    mem_svodVedPP_104: TFloatField;
    mem_svodVedSUM_KR10: TFloatField;
    mem_svodVedPP_21: TFloatField;
    mem_svodVedPP_VOZKOL: TFloatField;
    mem_svodVedPP_VOZVR: TFloatField;
    mem_svodVedSUM_ALL: TFloatField;
    mem_svodVedSUM_PP_ALL: TFloatField;
    mem_svodVedSUM_PP_KR10: TFloatField;
    q_svodVedDbfS43KR102: TFloatField;
    q_svodVedDbfS43KR104: TFloatField;
    q_svodVedDbfVOZVR5: TFloatField;
    mem_svodVedS43KR102: TFloatField;
    mem_svodVedS43KR104: TFloatField;
    mem_svodVedVOZVR5: TFloatField;
    mem_svodVedSTNAME_SHORT_ROD: TStringField;
    mem_svodVedSTNAME_SHORT_DAV: TStringField;
    q_svodVedDbfOSNOV: TFloatField;
    q_svodVedDbfVOZVRA: TFloatField;
    q_svodVedDbfVSPOM: TFloatField;
    q_svodVedDbfPRASVYR: TFloatField;
    q_svodVedDbfTARA: TFloatField;
    q_svodVedDbfUPAK: TFloatField;
    mem_svodVedOSNOV: TFloatField;
    mem_svodVedVOZVRA: TFloatField;
    mem_svodVedVSPOM: TFloatField;
    mem_svodVedPRASVYR: TFloatField;
    mem_svodVedTARA: TFloatField;
    mem_svodVedUPAK: TFloatField;
    mem_svodVedTOVAR_SUM: TFloatField;
    mem_svodVedTOVAR_SUM_ALL: TFloatField;
    mem_svodVedPP_OSNOV: TFloatField;
    mem_svodVedPP_VOZVRA: TFloatField;
    mem_svodVedPP_VSPOM: TFloatField;
    mem_svodVedPP_PRASVYR: TFloatField;
    mem_svodVedPP_TOVAR_SUM: TFloatField;
    mem_svodVedPP_TARA: TFloatField;
    mem_svodVedPP_UPAK: TFloatField;
    mem_svodVedPP_TOVAR_SUM_ALL: TFloatField;
    q_svodVedDbfNEZNM: TFloatField;
    q_svodVedDbfZAGRU: TFloatField;
    q_svodVedDbfVOZVRA1: TFloatField;
    q_svodVedDbfVOZVRA2: TFloatField;
    q_svodVedDbfVOZVRA4: TFloatField;
    q_svodVedDbfPEREOC: TFloatField;
    q_svodVedDbfNEZKM: TFloatField;
    q_svodVedDbfNEZCEX: TFloatField;
    q_svodVedDbfNEZPROD: TFloatField;
    q_svodVedDbfECONOM: TFloatField;
    q_svodVedDbfPNEZNM: TFloatField;
    q_svodVedDbfPNEZKM: TFloatField;
    mem_svodVedNEZNM: TFloatField;
    mem_svodVedZAGRU: TFloatField;
    mem_svodVedVOZVRA1: TFloatField;
    mem_svodVedVOZVRA2: TFloatField;
    mem_svodVedVOZVRA4: TFloatField;
    mem_svodVedPEREOC: TFloatField;
    mem_svodVedNEZKM: TFloatField;
    mem_svodVedNEZCEX: TFloatField;
    mem_svodVedNEZPROD: TFloatField;
    mem_svodVedECONOM: TFloatField;
    mem_svodVedPNEZNM: TFloatField;
    mem_svodVedPNEZKM: TFloatField;
    mem_svodVedRASHOD: TFloatField;
    q_svodVedDbfRASVYR: TFloatField;
    mem_svodVedRASVYR: TFloatField;
    mem_svodVedNEZ_RASCH: TFloatField;
    mem_svodVedSTNAME: TStringField;
    q_svodNezav: TERxQuery;
    q_svodNezavGOD: TStringField;
    q_svodNezavMES: TStringField;
    q_svodNezavCEH: TStringField;
    q_svodNezavKOPREP: TStringField;
    q_svodNezavNAM: TStringField;
    q_svodNezavPF21: TFloatField;
    q_svodNezavPRASVYR: TFloatField;
    q_svodNezavNEZNM: TFloatField;
    q_svodNezavNEZKM: TFloatField;
    q_svodNezavPNEZNM: TFloatField;
    q_svodNezavPNEZKM: TFloatField;
    q_svodNezavRASVYR: TFloatField;
    mem_svodVedP21: TBooleanField;
    mem_svodVedSHOW_ALL: TBooleanField;
    procedure DataModuleDestroy(Sender: TObject);
  private
    m_month, m_year : integer;
    procedure setSvodSTNAME(strukId : integer; stname, stkod : string);

  public
    procedure openSvodVed(year, month : integer; stkod, machine, driveLetter : string);
    procedure openSvodNezav(year, month: integer; stkod, machine, driveLetter: string);
    procedure findStruk(strukId : integer);
    procedure setSvodVedStruk(strukId : integer; stname, stkod : string);
    procedure setSvodNezavPF21;
    procedure clearDatasets;

  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TDataModule1 }

procedure TSvodDM.clearDatasets;
begin
  mem_svodVed.Close;
  mem_svodVed.EmptyTable;
end;

procedure TSvodDM.DataModuleDestroy(Sender: TObject);
begin
  mem_svodVed.Close;
  mem_svodVed.EmptyTable;
end;

procedure TSvodDM.findStruk(strukId: integer);
begin
  if (not q_struk.Active)
     or ((q_struk.Active) and (q_struk.ParamByName('struk_id').AsInteger <> strukId)) then
  begin
    q_struk.Close;
    q_struk.ParamByName('struk_id').AsInteger := strukId;
    q_struk.Open;
  end;
end;

procedure TSvodDM.openSvodVed(year, month: integer; stkod, machine, driveLetter: string);
begin
  m_month := month;
  m_year := year;
  q_svodVedDbf.Close;
  q_svodVedDbf.EhSQL.Text := 'select sv.god, sv.mes, sv.ceh, sv.koprep, sv.nam, '
                             + 'sv.kr101, sv.vozvra15, sv.kr102, sv.vozvra25, '           // --это для сводной ведомости
                             + 'sv.kr104, sv.vozvra45, sv.pf21, sv.vozkol, sv.vozvr, '    // по затратам
                             + 'sv.S43Kr102, sv.S43Kr104, sv.vozvr5, '                    // на производство--
                             + 'sv.osnov, sv.vozvra, sv.vspom, sv.prasvyr, sv.tara, '     // --это для сводной
                             + 'sv.upak, '                                                 // по товарной продукции--
                             + 'sv.neznm, sv.zagru, sv.vozvra1, sv.vozvra2, sv.vozvra4, '
                             + 'sv.pereoc, sv.nezkm, sv.nezcex, sv.nezprod, '
                             + 'sv.econom, sv.pneznm, sv.pnezkm, sv.rasvyr '
                             + 'from ''' + driveLetter + ':\' + machine + '\otchbas\svotab.dbf'' sv '
                             + 'where god = :year and mes = :month and ceh = :stkod '
//                             + 'where ceh = :stkod '
                             + 'order by nam ';

  q_svodVedDbf.ParamByName('year').AsString := copy(IntToStr(year), 3, 2);
  q_svodVedDbf.ParamByName('month').AsString := IntToStr(month);
  if (month < 10) then
    q_svodVedDbf.ParamByName('month').AsString := ' ' + IntToStr(month);
  q_svodVedDbf.ParamByName('stkod').AsString := stkod;
  q_svodVedDbf.Open;

//  mem_svodVed.Close;
//  mem_svodVed.EmptyTable;
  mem_svodVed.LoadFromDataSet(q_svodVedDbf, [mtcpoAppend]);
  mem_svodVed.Open;

  q_svodVedDbf.Close;
end;

procedure TSvodDM.openSvodNezav(year, month: integer; stkod, machine, driveLetter: string);
begin
  q_svodNezav.Close;
  q_svodNezav.EhSQL.Text := 'select sv.god, sv.mes, sv.ceh, sv.koprep, sv.nam, '
                             + 'sv.prasvyr, sv.pf21, sv.neznm, sv.nezkm, '
                             + 'sv.pneznm, sv.pnezkm, sv.rasvyr '
                             + 'from ''' + driveLetter + ':\' + machine + '\otchbas\svotab.dbf'' sv '
                             + 'where ((god = :year and mes <> :month) or ((god <> :year))) and ceh = :stkod '
                             + 'and (sv.nezkm <> 0 or sv.pnezkm <> 0) '
                             + 'order by nam ';

  q_svodNezav.ParamByName('year').AsString := copy(IntToStr(year), 3, 2);
  q_svodNezav.ParamByName('month').AsString := IntToStr(month);
  if (month < 10) then
    q_svodNezav.ParamByName('month').AsString := ' ' + IntToStr(month);
  q_svodNezav.ParamByName('stkod').AsString := stkod;
  q_svodNezav.Open;

  q_svodNezav.First;
  while (not q_svodNezav.Eof) do
  begin
    mem_svodVed.Append;
    mem_svodVedGOD.AsString := q_svodNezavGOD.AsString;
    mem_svodVedMES.AsString := q_svodNezavMES.AsString;
    mem_svodVedCEH.AsString := q_svodNezavCEH.AsString;
    mem_svodVedKOPREP.AsString := q_svodNezavKOPREP.AsString;
    mem_svodVedNAM.AsString := q_svodNezavNAM.AsString;
    mem_svodVedPRASVYR.AsFloat := q_svodNezavPRASVYR.AsFloat;
    mem_svodVedPF21.AsFloat := q_svodNezavPF21.AsFloat;
    mem_svodVedNEZNM.AsFloat := q_svodNezavNEZKM.AsFloat;
    mem_svodVedNEZKM.AsFloat := q_svodNezavNEZKM.AsFloat;
    mem_svodVedPNEZNM.AsFloat := q_svodNezavPNEZKM.AsFloat;
    mem_svodVedPNEZKM.AsFloat := q_svodNezavPNEZKM.AsFloat;
    mem_svodVedRASVYR.AsFloat := q_svodNezavRASVYR.AsFloat;
    mem_svodVed.Post;
    q_svodNezav.Next;
  end;

//  mem_svodVed.LoadFromDataSet(q_svodNezav, [mtcpoAppend]);
//  mem_svodVed.Open;

  q_svodNezav.Close;
end;

procedure TSvodDM.setSvodNezavPF21;
var
  pf21, pneznm, pnezkm, prasvyr : double;
  god, mes, koprep, stkod, stname : string;
  strukId, prevMonth, prevYear : integer;
begin
  if (m_month = 1) then
  begin
    prevMonth := 12;
    prevYear := m_year - 1;
  end
  else
  begin
    prevMonth := m_month - 1;
    prevYear := m_year
  end;
  mem_svodVed.DisableControls;
  mem_svodVed.First;
  while (not mem_svodVed.Eof) do
  begin
    if (StrToInt(TrimLeft(mem_svodVedMES.AsString)) = prevMonth)
        and (mem_svodVedGOD.AsString = copy(IntToStr(prevYear), 3, 2)) then
    begin
      mem_svodVed.Edit;
      mem_svodVedNEZNM.AsFloat := mem_svodVedNEZKM.AsFloat;
      mem_svodVedNEZ_RASCH.AsFloat := mem_svodVedNEZKM.AsFloat;
      mem_svodVedRASHOD.AsFloat := 0;
      mem_svodVedSHOW_ALL.AsBoolean := false;
      mem_svodVed.Post;
    end;
    
    if ((mem_svodVedPF21.AsFloat <> 0) or (mem_svodVedPNEZNM.AsFloat <> 0)
         or (mem_svodVedPNEZKM.AsFloat <> 0) or (mem_svodVedPRASVYR.AsFloat <> 0)) then
    begin
      pf21 := mem_svodVedPF21.AsFloat;
      pneznm := mem_svodVedPNEZNM.AsFloat;
      pnezkm := mem_svodVedPNEZKM.AsFloat;
      prasvyr := mem_svodVedPRASVYR.AsFloat;
      god := mem_svodVedGOD.AsString;
      mes := mem_svodVedMES.AsString;
      koprep := mem_svodVedKOPREP.AsString;
      stkod := mem_svodVedCEH.AsString;
      stname := mem_svodVedSTNAME.AsString;
      strukId := mem_svodVedSTRUK_ID.AsInteger;

      if ((StrToInt(TrimLeft(mem_svodVedMES.AsString)) <> m_month)
        and (mem_svodVedGOD.AsString = copy(IntToStr(m_year), 3, 2)))
        or (mem_svodVedGOD.AsString <> copy(IntToStr(m_year), 3, 2)) then
      begin
        mem_svodVed.Edit;
        mem_svodVedSHOW_ALL.AsBoolean := false;
        mem_svodVedRASHOD.AsFloat := 0;
        mem_svodVed.Post;
      end;

      mem_svodVed.Next;
      mem_svodVed.Insert;
      mem_svodVed.Edit;
      mem_svodVedPF21.AsFloat := pf21;
      mem_svodVedNEZNM.AsFloat := pneznm;
      mem_svodVedNEZKM.AsFloat := pnezkm;
      mem_svodVedPRASVYR.AsFloat := prasvyr;
      mem_svodVedGOD.AsString := god;
      mem_svodVedMES.AsString := mes;
      mem_svodVedKOPREP.AsString := koprep;
      mem_svodVedCEH.AsString := stkod;
      mem_svodVedNAM.AsString := '     21 счет (п/ф))';
      mem_svodVedP21.AsBoolean := true;
      setSvodSTNAME(strukId, stname, stkod);
      if (StrToInt(TrimLeft(mem_svodVedMES.AsString)) = m_month)
        and (mem_svodVedGOD.AsString = copy(IntToStr(m_year), 3, 2)) then
      begin
        mem_svodVedZAGRU.AsFloat := pf21;
        mem_svodVedRASHOD.AsFloat := prasvyr;
      end;
      mem_svodVed.Post;
    end;
    mem_svodVed.Next;
  end;
  mem_svodVed.EnableControls;
end;

procedure TSvodDM.setSvodVedStruk(strukId : integer; stname, stkod : string);
begin
  mem_svodVed.DisableControls;
  mem_svodVed.First;
  while (not mem_svodVed.Eof) do
  begin
    mem_svodVed.Edit;
    // поля для сводной ведомости по затратам
    mem_svodVedKR101.AsFloat := mem_svodVedKR101.AsFloat - mem_svodVedVOZVRA15.AsFloat;
    mem_svodVedKR104.AsFloat := mem_svodVedKR104.AsFloat - mem_svodVedVOZVRA45.AsFloat;
    mem_svodVedSUM_KR10.AsFloat := mem_svodVedKR101.AsFloat
                                   + mem_svodVedKR102.AsFloat
                                   + mem_svodVedKR104.AsFloat;
    mem_svodVedSUM_ALL.AsFloat := mem_svodVedSUM_KR10.AsFloat
                                  + mem_svodVedS43KR102.AsFloat
                                  + mem_svodVedS43KR104.AsFloat
                                  - mem_svodVedVOZVR.AsFloat;
    // поля для сводной ведомости по товарной продукции
    mem_svodVedTOVAR_SUM.AsFloat := mem_svodVedOSNOV.AsFloat
                                    + mem_svodVedVSPOM.AsFloat
                                    - mem_svodVedVOZVRA.AsFloat;
    mem_svodVedTOVAR_SUM_ALL.AsFloat := mem_svodVedTOVAR_SUM.AsFloat
                                        + mem_svodVedTARA.AsFloat
                                        + mem_svodVedUPAK.AsFloat;
    // поля для сводной ведомости по незавершенке
    mem_svodVedZAGRU.AsFloat := mem_svodVedSUM_KR10.AsFloat - mem_svodVedVOZVRA1.AsFloat
                                - mem_svodVedVOZVRA2.AsFloat - mem_svodVedVOZVRA4.AsFloat
                                - mem_svodVedVOZVRA15.AsFloat - mem_svodVedVOZVRA25.AsFloat
                                - mem_svodVedVOZVRA45.AsFloat;
    mem_svodVedRASHOD.AsFloat := mem_svodVedRASVYR.AsFloat - mem_svodVedVOZVRA.AsFloat
                                 - mem_svodVedVOZVR5.AsFloat - mem_svodVedTARA.AsFloat
                                 - mem_svodVedUPAK.AsFloat;
    mem_svodVedNEZ_RASCH.AsFloat := mem_svodVedNEZNM.AsFloat + mem_svodVedSUM_KR10.AsFloat
                                    - mem_svodVedVOZVRA1.AsFloat - mem_svodVedVOZVRA2.AsFloat
                                    - mem_svodVedVOZVRA4.AsFloat - mem_svodVedRASVYR.AsFloat
                                    - mem_svodVedVOZVRA.AsFloat - mem_svodVedVOZVR5.AsFloat
                                    - mem_svodVedTARA.AsFloat - mem_svodVedUPAK.AsFloat;
    mem_svodVedNEZCEX.AsFloat := mem_svodVedNEZCEX.AsFloat + mem_svodVedNEZPROD.AsFloat;

    if (copy(mem_svodVedNAM.AsString, 10, 1) = '2') then
    begin
      // поля для сводной ведомости по затратам
      mem_svodVedPP_101.AsFloat := mem_svodVedKR101.AsFloat;
      mem_svodVedPP_102.AsFloat := mem_svodVedKR102.AsFloat;
      mem_svodVedPP_104.AsFloat := mem_svodVedKR104.AsFloat;
      mem_svodVedPP_21.AsFloat := mem_svodVedPF21.AsFloat;
      mem_svodVedPP_VOZKOL.AsFloat := mem_svodVedVOZKOL.AsFloat;
      mem_svodVedPP_VOZVR.AsFloat := mem_svodVedVOZVR.AsFloat;
      mem_svodVedSUM_PP_KR10.AsFloat := mem_svodVedPP_101.AsFloat
                                        + mem_svodVedPP_102.AsFloat
                                        + mem_svodVedPP_104.AsFloat;
      mem_svodVedSUM_PP_ALL.AsFloat := mem_svodVedPP_101.AsFloat
                                       + mem_svodVedPP_102.AsFloat
                                       + mem_svodVedPP_104.AsFloat
                                       - mem_svodVedPP_VOZVR.AsFloat;
      // поля для сводной ведомости по товарной продукции
      mem_svodVedPP_OSNOV.AsFloat := mem_svodVedOSNOV.AsFloat;
      mem_svodVedPP_VOZVRA.AsFloat := mem_svodVedVOZVRA.AsFloat;
      mem_svodVedPP_VSPOM.AsFloat := mem_svodVedVSPOM.AsFloat;
      mem_svodVedPP_PRASVYR.AsFloat := mem_svodVedPRASVYR.AsFloat;
      mem_svodVedPP_TOVAR_SUM.AsFloat := mem_svodVedPP_OSNOV.AsFloat
                                         + mem_svodVedPP_VSPOM.AsFloat
                                         - mem_svodVedPP_VOZVRA.AsFloat;
      mem_svodVedPP_TARA.AsFloat := mem_svodVedTARA.AsFloat;
      mem_svodVedPP_UPAK.AsFloat := mem_svodVedUPAK.AsFloat;
      mem_svodVedPP_TOVAR_SUM_ALL.AsFloat := mem_svodVedPP_TOVAR_SUM.AsFloat
                                             + mem_svodVedPP_TARA.AsFloat
                                             + mem_svodVedPP_UPAK.AsFloat;
    end;
    setSvodSTNAME(strukId, stname, stkod);
    mem_svodVed.Post;
    mem_svodVed.Next;
  end;
end;

procedure TSvodDM.setSvodSTNAME(strukId : integer; stname, stkod : string);
begin
  if (stkod = mem_svodVedCEH.AsString) then
  begin
    mem_svodVedSTRUK_ID.AsInteger := strukId;
    mem_svodVedSTNAME.AsString := stname;
    mem_svodVedSTNAME_SHORT_ROD.AsString := 'цеха №' + copy(mem_svodVedCEH.AsString, 1, 2);
    mem_svodVedSTNAME_SHORT_DAV.AsString := 'цеху №' + copy(mem_svodVedCEH.AsString, 1, 2);
    if (mem_svodVedSTRUK_ID.AsInteger = 106) then
    begin
      mem_svodVedSTNAME_SHORT_ROD.AsString := 'ЭПЦ';
      mem_svodVedSTNAME_SHORT_DAV.AsString := 'ЭПЦ';
    end;
  end;
end;

end.
