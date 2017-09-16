unit CenPFDM;

interface

uses DBDM,
  System.SysUtils, System.Classes, kbmMemTable, Data.DB, Bde.DBTables, RxQuery,
  ERxQuery, IBX.IBCustomDataSet, IBX.IBQuery, RxIBQuery, frxClass, frxDBSet;

type
  TcPFDM = class(TDataModule)
    q_cenPfDBf: TERxQuery;
    mem_cenPf: TkbmMemTable;
    q_cenPfDBfGOD: TSmallintField;
    q_cenPfDBfMES: TSmallintField;
    q_cenPfDBfOTSTRK: TStringField;
    q_cenPfDBfOTMATR: TStringField;
    q_cenPfDBfCENA_ZA: TFloatField;
    q_cenPfDBfSKOL_SKL: TFloatField;
    q_cenPfDBfSSUM_SKL: TFloatField;
    q_cenPfDBfVIPUSK: TFloatField;
    q_cenPfDBfSUM_SV: TFloatField;
    q_cenPfDBfSUM_FS: TFloatField;
    q_cenPfDBfSKOL_CEH: TFloatField;
    q_cenPfDBfSSUM_CEH: TFloatField;
    q_cenPfDBfKPRI_CEH: TFloatField;
    q_cenPfDBfSPRI_CEH: TFloatField;
    q_cenPfDBfSUM_PRI_C: TFloatField;
    mem_cenPfGOD: TSmallintField;
    mem_cenPfMES: TSmallintField;
    mem_cenPfOTSTRK: TStringField;
    mem_cenPfOTMATR: TStringField;
    mem_cenPfCENA_ZA: TFloatField;
    mem_cenPfSKOL_SKL: TFloatField;
    mem_cenPfSSUM_SKL: TFloatField;
    mem_cenPfVIPUSK: TFloatField;
    mem_cenPfSUM_SV: TFloatField;
    mem_cenPfSUM_FS: TFloatField;
    mem_cenPfSKOL_CEH: TFloatField;
    mem_cenPfSSUM_CEH: TFloatField;
    mem_cenPfSPRI_CEH: TFloatField;
    mem_cenPfSUM_PRI_C: TFloatField;
    mem_cenPfKOD_PROD: TStringField;
    mem_cenPfNMAT: TStringField;
    q_spprod: TRxIBQuery;
    q_spprodSPROD_ID: TIntegerField;
    q_spprodKSM_ID: TIntegerField;
    q_spprodSPKSM: TIBStringField;
    q_spprodSPPRN: TSmallintField;
    q_spprodSPVIS: TSmallintField;
    q_spprodNMAT: TIBStringField;
    q_spprodPROD_ID: TIntegerField;
    q_spprodKEI_ID: TSmallintField;
    q_spprodLEK_ID: TSmallintField;
    q_spprodMOD_ID: TSmallintField;
    q_spprodSPRODS: TSmallintField;
    q_spprodSPSR: TSmallintField;
    q_spprodVOL_ID: TSmallintField;
    q_spprodUMN: TSmallintField;
    q_spprodEAN13: TSmallintField;
    q_spprodSPRIZ: TSmallintField;
    q_spprodSTRUK_ID: TSmallintField;
    q_spprodREG: TSmallintField;
    q_spprodKORG: TIntegerField;
    q_spprodSPFS: TIBStringField;
    q_spprodSPFV: TSmallintField;
    q_spprodSPVU: TSmallintField;
    q_spprodSPTIP: TSmallintField;
    q_spprodSPSPIS: TSmallintField;
    q_spprodDOLPO: TIBBCDField;
    q_spprodSTAT: TSmallintField;
    q_spprodPUP: TSmallintField;
    q_spprodNMATS: TIBStringField;
    q_spprodGOST: TIBStringField;
    q_spprodGR: TIBStringField;
    q_spprodPGR: TIBStringField;
    q_spprodXARKT: TIBStringField;
    q_spprodACTIVP: TSmallintField;
    q_spprodACTIVF: TSmallintField;
    q_spprodREGISTR_ID: TIntegerField;
    q_spprodVOLUMF: TFMTBCDField;
    q_spprodVOL_OV: TFMTBCDField;
    q_spprodKOD_PROD: TIBStringField;
    q_spprodMAIN_SPROD_ID: TIntegerField;
    q_spprodVES_UP: TIBBCDField;
    q_spprodINOV: TSmallintField;
    q_spprodDATEI_1: TDateField;
    q_spprodDATEI_2: TDateField;
    q_spprodREGLS_ID: TIntegerField;
    q_spprodSERTIFIED: TSmallintField;
    frxReport1: TfrxReport;
    frxCenPF: TfrxDBDataset;
    mem_cenPfKSM_ID: TIntegerField;
    mem_cenPfKPRI_CEH: TFloatField;
    procedure DataModuleDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    procedure openCenPFDbf(month, year : integer; machine, driveLetter: string);
    function parseKsmId(numkcu : string) : integer;
    procedure setKsmIdAndKodProd;

  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TcPFDM }

procedure TcPFDM.DataModuleDestroy(Sender: TObject);
begin
  q_cenPfDBf.Close;
  q_spprod.Close;
  mem_cenPf.EmptyTable;
  mem_cenPf.Close;
end;

procedure TcPFDM.openCenPFDbf(month, year : integer; machine, driveLetter: string);
begin
  if (not q_spprod.Active) then
    q_spprod.Open;
  q_cenPfDBf.Close;
  q_cenPfDBf.EhSQL.Text := 'select cenpf.god, cenpf.mes, cenpf.otstrk, cenpf.otmatr, '
                           + 'cenpf.cena_za, cenpf.skol_skl, cenpf.ssum_skl, '
                           + 'cenpf.vipusk, cenpf.sum_sv, cenpf.sum_fs, cenpf.skol_ceh, '
                           + 'cenpf.ssum_ceh, cenpf.kpri_ceh, cenpf.spri_ceh, '
                           + 'cenpf.vipusk+ cenpf.sum_sv+cenpf.sum_fs as sum_pri_c '
                           + 'from ''' + driveLetter + ':\' + machine + '\otchbas\cen_pf.dbf'' cenpf '
                           + 'where cenpf.god = :year and cenpf.mes = :month '
                           + 'order by cenpf.otstrk, cenpf.otmatr ';
  q_cenPfDBf.ParamByName('year').AsInteger := year;
  q_cenPfDBf.ParamByName('month').AsInteger := month;
  q_cenPfDBf.Open;
end;

function TcPFDM.parseKsmId(numkcu: string) : integer;
var
  i : integer;
  ksmIdS : string;
begin
  ksmIdS := '';
  for i := 1 to length(numkcu) do
  begin
    if ((numkcu[i] <> '0'){ and (ksmIdS = '')})
       or ((numkcu[i] = '0') and (ksmIdS <> '')) then
      ksmIdS := ksmIdS + numkcu[i];
  end;
  if (ksmIdS = '') then
    result := 0
  else
    result := StrToInt(ksmIdS);
end;

procedure TcPFDM.setKsmIdAndKodProd;
begin
  mem_cenPf.First;
  while (not mem_cenPf.Eof) do
  begin
    if (mem_cenPfKSM_ID.AsInteger = 0) then
    begin
      mem_cenPf.Edit;
      mem_cenPfKSM_ID.AsInteger := parseKsmId(mem_cenPfOTMATR.AsString);
      if (q_spprod.Locate('ksm_id', mem_cenPfKSM_ID.AsInteger, [])) then
      begin
        mem_cenPfKOD_PROD.AsString := q_spprodKOD_PROD.AsString;
        mem_cenPfNMAT.AsString := q_spprodNMAT.AsString;
      end;
      mem_cenPf.Post;
    end;
    mem_cenPf.Next;
  end;
end;

end.
