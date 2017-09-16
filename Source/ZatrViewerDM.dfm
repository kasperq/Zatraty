object zatrViewDM: TzatrViewDM
  OldCreateOrder = False
  OnDestroy = DataModuleDestroy
  Height = 636
  Width = 764
  object q_zatraDbf: TERxQuery
    SQL.Strings = (
      
        'select zatra.razd, zatra.bal, zatra.komatr, zatra.nmat, zatra.ed' +
        'iz, zatra.cena, zatra.cenaza, '
      
        'zatra.g6 as ost_beg, zatra.g7 as ost_beg_s, zatra.g10 as zagr, z' +
        'atra.g11 as zagr_s, '
      
        'zatra.g12 as rash, zatra.g13 as rash_s, zatra.g8 as ost_end, zat' +
        'ra.g9 as ost_end_s, '
      
        'zatra.g14 as rash_god, zatra.g15 as rash_god_s, zatra.g18 as per' +
        'edano, zatra.g20,'
      
        'zatra.otklon, zatra.koprep, zatra.strk, zatra.g16 rash_kv, zatra' +
        '.g17 rash_kv_s'
      'from '#39'f:\pc1\otchbas\zatra.dbf'#39' zatra'
      'where zatra.mes = :month'
      'and zatra.strk = :stkod'
      'and zatra.koprep= :koprep'
      'order by zatra.razd, zatra.nmat')
    EhSQL.Strings = (
      
        'select zatra.razd, zatra.bal, zatra.komatr, zatra.nmat, zatra.ed' +
        'iz, zatra.cena, zatra.cenaza, '
      
        'zatra.g6 as ost_beg, zatra.g7 as ost_beg_s, zatra.g10 as zagr, z' +
        'atra.g11 as zagr_s, '
      
        'zatra.g12 as rash, zatra.g13 as rash_s, zatra.g8 as ost_end, zat' +
        'ra.g9 as ost_end_s, '
      
        'zatra.g14 as rash_god, zatra.g15 as rash_god_s, zatra.g18 as per' +
        'edano, zatra.g20,'
      
        'zatra.otklon, zatra.koprep, zatra.strk, zatra.g16 rash_kv, zatra' +
        '.g17 rash_kv_s'
      'from '#39'f:\pc1\otchbas\zatra.dbf'#39' zatra'
      'where zatra.mes = :month'
      'and zatra.strk = :stkod'
      'and zatra.koprep= :koprep'
      'order by zatra.razd, zatra.nmat')
    EhMacros = <>
    Left = 104
    Top = 24
    ParamData = <
      item
        DataType = ftInteger
        Name = 'month'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'stkod'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'koprep'
        ParamType = ptInput
      end>
    object q_zatraDbfRAZD: TStringField
      FieldName = 'RAZD'
      Size = 2
    end
    object q_zatraDbfBAL: TStringField
      FieldName = 'BAL'
      Size = 3
    end
    object q_zatraDbfKOMATR: TStringField
      FieldName = 'KOMATR'
      Size = 5
    end
    object q_zatraDbfNMAT: TStringField
      FieldName = 'NMAT'
      Size = 25
    end
    object q_zatraDbfEDIZ: TStringField
      FieldName = 'EDIZ'
      Size = 6
    end
    object q_zatraDbfCENA: TFloatField
      FieldName = 'CENA'
    end
    object q_zatraDbfCENAZA: TFloatField
      FieldName = 'CENAZA'
    end
    object q_zatraDbfOST_BEG: TFloatField
      FieldName = 'OST_BEG'
    end
    object q_zatraDbfOST_BEG_S: TFloatField
      FieldName = 'OST_BEG_S'
    end
    object q_zatraDbfZAGR: TFloatField
      FieldName = 'ZAGR'
    end
    object q_zatraDbfZAGR_S: TFloatField
      FieldName = 'ZAGR_S'
    end
    object q_zatraDbfRASH: TFloatField
      FieldName = 'RASH'
    end
    object q_zatraDbfRASH_S: TFloatField
      FieldName = 'RASH_S'
    end
    object q_zatraDbfOST_END: TFloatField
      FieldName = 'OST_END'
    end
    object q_zatraDbfOST_END_S: TFloatField
      FieldName = 'OST_END_S'
    end
    object q_zatraDbfRASH_GOD: TFloatField
      FieldName = 'RASH_GOD'
    end
    object q_zatraDbfRASH_GOD_S: TFloatField
      FieldName = 'RASH_GOD_S'
    end
    object q_zatraDbfPEREDANO: TFloatField
      FieldName = 'PEREDANO'
    end
    object q_zatraDbfOTKLON: TFloatField
      FieldName = 'OTKLON'
    end
    object q_zatraDbfKOPREP: TStringField
      FieldName = 'KOPREP'
      Size = 6
    end
    object q_zatraDbfSTRK: TStringField
      FieldName = 'STRK'
      Size = 4
    end
    object q_zatraDbfRASH_KV: TFloatField
      FieldName = 'RASH_KV'
    end
    object q_zatraDbfRASH_KV_S: TFloatField
      FieldName = 'RASH_KV_S'
    end
    object q_zatraDbfG20: TFloatField
      FieldName = 'G20'
    end
  end
  object mem_zatra: TkbmMemTable
    Active = True
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'IT_NAME'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'RAZD'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'BAL'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'KOMATR'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'NMAT'
        DataType = ftString
        Size = 25
      end
      item
        Name = 'EDIZ'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'CENA'
        DataType = ftFloat
      end
      item
        Name = 'CENAZA'
        DataType = ftFloat
      end
      item
        Name = 'OST_BEG'
        DataType = ftFloat
      end
      item
        Name = 'OST_BEG_S'
        DataType = ftFloat
      end
      item
        Name = 'ZAGR'
        DataType = ftFloat
      end
      item
        Name = 'ZAGR_S'
        DataType = ftFloat
      end
      item
        Name = 'RASH'
        DataType = ftFloat
      end
      item
        Name = 'RASH_S'
        DataType = ftFloat
      end
      item
        Name = 'OST_END'
        DataType = ftFloat
      end
      item
        Name = 'OST_END_S'
        DataType = ftFloat
      end
      item
        Name = 'RASH_GOD'
        DataType = ftFloat
      end
      item
        Name = 'RASH_GOD_S'
        DataType = ftFloat
      end
      item
        Name = 'PEREDANO'
        DataType = ftFloat
      end
      item
        Name = 'G20'
        DataType = ftFloat
      end
      item
        Name = 'OTKLON'
        DataType = ftFloat
      end
      item
        Name = 'NAMRAZ'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'KOPREP'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'STRK'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'STRUK_ID'
        DataType = ftInteger
      end
      item
        Name = 'STNAME'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'KSM_ID_PREP'
        DataType = ftInteger
      end
      item
        Name = 'NMAT_PREP'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'VIPUSK'
        DataType = ftFloat
      end
      item
        Name = 'VIPUSK_QUAT'
        DataType = ftFloat
      end
      item
        Name = 'VIPUSK_YEAR'
        DataType = ftFloat
      end
      item
        Name = 'EDIZ_PREP'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'KEI_ID_PREP'
        DataType = ftInteger
      end
      item
        Name = 'KOD_PROD'
        DataType = ftString
        Size = 18
      end
      item
        Name = 'CHECKED'
        DataType = ftInteger
      end
      item
        Name = 'RASH_KV'
        DataType = ftFloat
      end
      item
        Name = 'RASH_KV_S'
        DataType = ftFloat
      end
      item
        Name = 'IT_RAZD'
        DataType = ftInteger
      end
      item
        Name = 'IT_BAL'
        DataType = ftInteger
      end
      item
        Name = 'LAST_REC'
        DataType = ftInteger
      end>
    IndexDefs = <>
    SortOptions = []
    PersistentBackup = True
    ProgressFlags = [mtpcLoad, mtpcSave, mtpcCopy]
    LoadedCompletely = True
    SavedCompletely = True
    FilterOptions = []
    Version = '7.64.00 Standard Edition'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    Left = 104
    Top = 80
    object mem_zatraIT_NAME: TStringField
      FieldName = 'IT_NAME'
      Size = 40
    end
    object mem_zatraRAZD: TStringField
      FieldName = 'RAZD'
      Size = 2
    end
    object mem_zatraBAL: TStringField
      FieldName = 'BAL'
      Size = 3
    end
    object mem_zatraKOMATR: TStringField
      FieldName = 'KOMATR'
      Size = 5
    end
    object mem_zatraNMAT: TStringField
      FieldName = 'NMAT'
      Size = 25
    end
    object mem_zatraEDIZ: TStringField
      FieldName = 'EDIZ'
      Size = 6
    end
    object mem_zatraCENA: TFloatField
      FieldName = 'CENA'
    end
    object mem_zatraCENAZA: TFloatField
      FieldName = 'CENAZA'
    end
    object mem_zatraOST_BEG: TFloatField
      FieldName = 'OST_BEG'
    end
    object mem_zatraOST_BEG_S: TFloatField
      FieldName = 'OST_BEG_S'
    end
    object mem_zatraZAGR: TFloatField
      FieldName = 'ZAGR'
    end
    object mem_zatraZAGR_S: TFloatField
      FieldName = 'ZAGR_S'
    end
    object mem_zatraRASH: TFloatField
      FieldName = 'RASH'
    end
    object mem_zatraRASH_S: TFloatField
      FieldName = 'RASH_S'
    end
    object mem_zatraOST_END: TFloatField
      FieldName = 'OST_END'
    end
    object mem_zatraOST_END_S: TFloatField
      FieldName = 'OST_END_S'
    end
    object mem_zatraRASH_GOD: TFloatField
      FieldName = 'RASH_GOD'
    end
    object mem_zatraRASH_GOD_S: TFloatField
      FieldName = 'RASH_GOD_S'
    end
    object mem_zatraPEREDANO: TFloatField
      FieldName = 'PEREDANO'
    end
    object mem_zatraG20: TFloatField
      FieldName = 'G20'
    end
    object mem_zatraOTKLON: TFloatField
      DefaultExpression = '0'
      FieldName = 'OTKLON'
    end
    object mem_zatraNAMRAZ: TStringField
      FieldName = 'NAMRAZ'
      Size = 60
    end
    object mem_zatraKOPREP: TStringField
      FieldName = 'KOPREP'
      Size = 6
    end
    object mem_zatraSTRK: TStringField
      FieldName = 'STRK'
      Size = 4
    end
    object mem_zatraSTRUK_ID: TIntegerField
      FieldName = 'STRUK_ID'
    end
    object mem_zatraSTNAME: TStringField
      FieldName = 'STNAME'
    end
    object mem_zatraKSM_ID_PREP: TIntegerField
      FieldName = 'KSM_ID_PREP'
    end
    object mem_zatraNMAT_PREP: TStringField
      FieldName = 'NMAT_PREP'
      Size = 60
    end
    object mem_zatraVIPUSK: TFloatField
      FieldName = 'VIPUSK'
    end
    object mem_zatraVIPUSK_QUAT: TFloatField
      FieldName = 'VIPUSK_QUAT'
    end
    object mem_zatraVIPUSK_YEAR: TFloatField
      FieldName = 'VIPUSK_YEAR'
    end
    object mem_zatraEDIZ_PREP: TStringField
      FieldName = 'EDIZ_PREP'
      Size = 10
    end
    object mem_zatraKEI_ID_PREP: TIntegerField
      FieldName = 'KEI_ID_PREP'
    end
    object mem_zatraKOD_PROD: TStringField
      FieldName = 'KOD_PROD'
      Size = 18
    end
    object mem_zatraCHECKED: TIntegerField
      DefaultExpression = '0'
      FieldName = 'CHECKED'
      MaxValue = 1
    end
    object mem_zatraRASH_KV: TFloatField
      FieldName = 'RASH_KV'
    end
    object mem_zatraRASH_KV_S: TFloatField
      FieldName = 'RASH_KV_S'
    end
    object mem_zatraIT_RAZD: TIntegerField
      FieldName = 'IT_RAZD'
    end
    object mem_zatraIT_BAL: TIntegerField
      FieldName = 'IT_BAL'
    end
    object mem_zatraLAST_REC: TIntegerField
      DefaultExpression = '0'
      FieldName = 'LAST_REC'
      MaxValue = 1
    end
  end
  object q_razdel: TRxIBQuery
    Database = dDM.db
    Transaction = dDM.trans_read
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select *'
      'from razdel')
    Macros = <>
    Left = 432
    Top = 16
    object q_razdelRAZDEL_ID: TSmallintField
      FieldName = 'RAZDEL_ID'
      Origin = '"RAZDEL"."RAZDEL_ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object q_razdelKODRAZ: TIBStringField
      FieldName = 'KODRAZ'
      Origin = '"RAZDEL"."KODRAZ"'
      FixedChar = True
      Size = 2
    end
    object q_razdelNAMRAZ: TIBStringField
      FieldName = 'NAMRAZ'
      Origin = '"RAZDEL"."NAMRAZ"'
      Size = 60
    end
    object q_razdelKRAZ: TSmallintField
      FieldName = 'KRAZ'
      Origin = '"RAZDEL"."KRAZ"'
    end
  end
  object frxReport1: TfrxReport
    Version = '5.2.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = #1055#1086' '#1091#1084#1086#1083#1095#1072#1085#1080#1102
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42783.661840659700000000
    ReportOptions.LastChange = 42809.619849421290000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'var'
      '  ksmIdPrep : integer;'
      '  naim : string;                            '
      '    '
      'procedure GroupHeader2OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '  ksmIdPrep := <frxZatra."ksm_id_prep">;                        ' +
        '        '
      'end;'
      ''
      'procedure MasterData1OnBeforePrint(Sender: TfrxComponent);'
      'var'
      '  ds: TfrxDataset;                        '
      'begin'
      '  printItogi;'
      '  printWidth;                          '
      '  ds := TfrxMasterData(Sender).DataSet;'
      ''
      
        '  if (<frxZatra."LAST_REC"> = 1) and (Engine.FreeSpace < 250) th' +
        'en'
      '  begin                      '
      '    Engine.NewPage;                       '
      '  end'
      '  else '
      '  begin'
      '    if (<frxZatra."nmat"> <> '#39#1103#1103#1103#39') then'
      '    begin'
      '      ds.next;'
      '      if (not ds.eof) then'
      '      begin          '
      '        if (<frxZatra."nmat"> = '#39#1103#1103#1103#39')'
      
        '           and ( ((Engine.FreeSpace < 120) and (<frxZatra."IT_RA' +
        'ZD"> = 20))'
      
        '                or ((Engine.FreeSpace < 160) and (<frxZatra."IT_' +
        'RAZD"> <> 20)) ) then'
      '        begin'
      '          ds.prior;                                   '
      '          Engine.NewPage;                          '
      '        end'
      '        else'
      '          ds.prior;                                   '
      '      end;                              '
      '    end;          '
      '  end;                        '
      'end;'
      ''
      
        'procedure PageHeader1OnBeforePrint(Sender: TfrxComponent);      ' +
        '                                                          '
      'begin'
      '  if (<page> = 1) then'
      '    pageHeader1.visible := false'
      '  else'
      '    pageHeader1.visible := true;                  '
      'end;'
      ''
      'procedure printWidth;'
      'begin'
      '  if (<frxZatra."PEREDANO"> >= 1000000) then'
      '  begin              '
      '    memo65.font.Size := 8;                            '
      '  end                  '
      '  else'
      '  begin              '
      '    memo65.font.Size := 9;'
      '  end;'
      ''
      '  if (<frxZatra."OTKLON"> >= 1000000) then'
      '  begin              '
      '    memo66.font.Size := 8;                            '
      '  end                  '
      '  else'
      '  begin              '
      '    memo66.font.Size := 9;'
      '  end;'
      '    '
      '  if (<frxZatra."OST_BEG"> >= 1000000) then'
      '  begin              '
      '    memo56.font.Size := 8;                            '
      '  end                  '
      '  else'
      '  begin              '
      '    memo56.font.Size := 9;'
      '  end;'
      ''
      '  if (<frxZatra."OST_END"> >= 1000000) then'
      '  begin              '
      '    memo62.font.Size := 8;                            '
      '  end                  '
      '  else'
      '  begin              '
      '    memo62.font.Size := 9;'
      '  end;      '
      '    '
      '  if (<frxZatra."ZAGR"> >= 1000000) then'
      '  begin              '
      '    memo58.font.Size := 8;                            '
      '  end                  '
      '  else'
      '  begin              '
      '    memo58.font.Size := 9;'
      '  end;'
      '    '
      '  if (<frxZatra."RASH"> >= 1000000) then'
      '  begin              '
      '    memo60.font.Size := 8;                            '
      '  end                  '
      '  else'
      '  begin              '
      '    memo60.font.Size := 9;'
      '  end;'
      ''
      '  if (<frxZatra."RASH_GOD"> >= 1000000) then'
      '  begin              '
      '    memo64.font.Size := 8;                            '
      '  end                  '
      '  else'
      '  begin              '
      '    memo64.font.Size := 9;'
      '  end;'
      ''
      '  if (<frxZatra."RASH_KV"> >= 1000000) then'
      '  begin              '
      '    memo68.font.Size := 8;                            '
      '  end                  '
      '  else'
      '  begin              '
      '    memo68.font.Size := 9;'
      '  end;'
      '    '
      '  if (<frxZatra."OST_BEG_S"> >= 1000000) then'
      '  begin              '
      '    memo57.font.Size := 8;                            '
      '  end                  '
      '  else'
      '  begin              '
      '    memo57.font.Size := 9;'
      '  end;'
      ''
      '  if (<frxZatra."OST_END_S"> >= 1000000) then'
      '  begin              '
      '    memo63.font.Size := 8;                            '
      '  end                  '
      '  else'
      '  begin              '
      '    memo63.font.Size := 9;'
      '  end;      '
      '    '
      '  if (<frxZatra."ZAGR_S"> >= 1000000) then'
      '  begin              '
      '    memo59.font.Size := 8;                            '
      '  end                  '
      '  else'
      '  begin              '
      '    memo59.font.Size := 9;'
      '  end;'
      '    '
      '  if (<frxZatra."RASH_S"> >= 1000000) then'
      '  begin              '
      '    memo61.font.Size := 8;                            '
      '  end                  '
      '  else'
      '  begin              '
      '    memo61.font.Size := 9;'
      '  end;'
      ''
      '  if (<frxZatra."RASH_GOD_S"> >= 1000000) then'
      '  begin              '
      '    memo67.font.Size := 8;                            '
      '  end                  '
      '  else'
      '  begin              '
      '    memo67.font.Size := 9;'
      '  end;'
      ''
      '  if (<frxZatra."RASH_KV_S"> >= 1000000) then'
      '  begin              '
      '    memo69.font.Size := 8;                            '
      '  end                  '
      '  else'
      '  begin              '
      '    memo69.font.Size := 9;'
      '  end;     '
      ''
      '    '
      'end;          '
      ''
      'procedure printItogi;'
      'var'
      
        '  memoHeight : integer;                                         ' +
        '                           '
      'begin'
      '  if (<frxZatra."NMAT"> = '#39#1103#1103#1103#39') then      '
      '  begin                                          '
      '    naim := <frxZatra."IT_NAME">;'
      '    memo13.width := 188;'
      
        '    memo7.visible := false;                                     ' +
        ' '
      '    memo55.visible := false;  '
      '    memo14.visible := false;  '
      '    memo15.visible := false;  '
      '    memo16.visible := false;'
      
        '    memoHeight := 16;                                           ' +
        '       '
      '    masterSyr.height := 16;'
      '    memo13.color := cl3dlight;        '
      '  end'
      '  else'
      '  begin                 '
      '    naim := <frxZatra."NMAT">;'
      '    masterSyr.height := 32;        '
      '    memo13.width := 92;'
      '    memo7.visible := true;                                      '
      '    memo55.visible := true;  '
      '    memo14.visible := true;  '
      '    memo15.visible := true;  '
      '    memo16.visible := true;'
      '    memoHeight := 23;'
      '    memo13.color := clNone;        '
      '  end;'
      '  memo56.height := memoHeight;        '
      '  memo57.height := memoHeight;    '
      '  memo58.height := memoHeight;    '
      '  memo59.height := memoHeight;    '
      '  memo60.height := memoHeight;      '
      '  memo61.height := memoHeight;      '
      '  memo62.height := memoHeight;      '
      '  memo63.height := memoHeight;      '
      '  memo64.height := memoHeight;  '
      '  memo65.height := memoHeight;    '
      '  memo66.height := memoHeight;    '
      '  memo67.height := memoHeight;    '
      '  memo68.height := memoHeight;    '
      '  memo69.height := memoHeight;      '
      'end;    '
      ''
      'procedure GroupHeader3OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  if (<frxZatra."RAZD"> = '#39'99'#39') then'
      '  begin              '
      '    memo8.visible := false;  '
      '    memo8.height := 0;'
      '    groupheader3.height := 0;        '
      '  end                  '
      '  else'
      '  begin              '
      '    memo8.visible := true;'
      '    memo8.height := 16;'
      
        '    groupheader3.height := 20;                                  ' +
        '                            '
      '  end;  '
      'end;     '
      ''
      'begin'
      ''
      'end.')
    OnGetValue = frxReport1GetValue
    Left = 440
    Top = 104
    Datasets = <
      item
        DataSet = frxZatra
        DataSetName = 'frxZatra'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 7.408333333333330000
      RightMargin = 5.291666666666670000
      TopMargin = 10.001250000000000000
      BottomMargin = 10.001250000000000000
      LargeDesignHeight = True
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 16.000000000000000000
        Top = 16.000000000000000000
        Width = 1074.520379000000000000
        OnBeforePrint = 'ReportTitle1OnBeforePrint'
        object Memo2: TfrxMemoView
          Align = baRight
          Left = 962.520379000000000000
          Width = 112.000000000000000000
          Height = 16.000000000000000000
          Memo.UTF8W = (
            #1060#1054#1056#1052#1040' N 8 '#1047'/'#1055)
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Top = 792.000000000000000000
        Width = 1074.520379000000000000
      end
      object GroupHeader2: TfrxGroupHeader
        FillType = ftBrush
        Height = 388.000000000000000000
        Top = 152.000000000000000000
        Width = 1074.520379000000000000
        OnBeforePrint = 'GroupHeader2OnBeforePrint'
        Condition = 'frxZatra."KSM_ID_PREP"'
        ResetPageNumbers = True
        StartNewPage = True
        object Memo1: TfrxMemoView
          Align = baLeft
          Width = 200.000000000000000000
          Height = 16.000000000000000000
          Memo.UTF8W = (
            #1056#1059#1055' "'#1041#1045#1051#1052#1045#1044#1055#1056#1045#1055#1040#1056#1040#1058#1067'"')
        end
        object Memo3: TfrxMemoView
          Left = 200.000000000000000000
          Top = 28.000000000000000000
          Width = 732.000000000000000000
          Height = 16.000000000000000000
          Memo.UTF8W = (
            '[frxZatra."STNAME"]')
        end
        object Memo4: TfrxMemoView
          Align = baWidth
          Top = 52.000000000000000000
          Width = 1074.520379000000000000
          Height = 76.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            #1056#1040#1057#1063#1045#1058' '#1047#1040#1058#1056#1040#1058
            #1053#1040' '#1055#1056#1054#1048#1047#1042#1054#1044#1057#1058#1042#1054' [frxZatra."KOD_PROD"] [frxZatra."NMAT_PREP"]'
            #1047#1040' [month_str] [year] '#1075'.'
            #1042#1067#1055#1054#1051#1053#1045#1053#1048#1045' '#1055#1056#1054#1048#1047#1042#1054#1044#1057#1058#1042#1045#1053#1053#1054#1049' '#1055#1056#1054#1043#1056#1040#1052#1052#1067)
          ParentFont = False
          VAlign = vaCenter
          Formats = <
            item
            end
            item
            end
            item
            end>
        end
        object Memo9: TfrxMemoView
          Align = baLeft
          Top = 312.000000000000000000
          Width = 36.000000000000000000
          Height = 56.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1057#1095#1077#1090', '#1082#1086#1076)
          ParentFont = False
          WordBreak = True
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Align = baLeft
          Left = 36.000000000000000000
          Top = 312.000000000000000000
          Width = 152.000000000000000000
          Height = 28.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077', '#1077#1076'. '#1080#1079'.')
          ParentFont = False
          WordBreak = True
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Align = baLeft
          Left = 36.000000000000000000
          Top = 340.000000000000000000
          Width = 76.000000000000000000
          Height = 28.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1094#1077#1085#1072' '#1087#1088#1080#1093#1086#1076#1072)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Align = baLeft
          Left = 112.000000000000000000
          Top = 340.000000000000000000
          Width = 76.000000000000000000
          Height = 28.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1094#1077#1085#1072' '#1079#1072#1075#1088#1091#1079#1082#1080)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          Top = 136.000000000000000000
          Width = 112.000000000000000000
          Height = 40.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 112.000000000000000000
          Top = 136.000000000000000000
          Width = 32.000000000000000000
          Height = 40.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1045#1044'. '#1048#1047#1052'.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          Left = 144.000000000000000000
          Top = 136.000000000000000000
          Width = 336.000000000000000000
          Height = 24.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1047#1040' '#1054#1058#1063#1045#1058#1053#1067#1049' '#1052#1045#1057#1071#1062)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          Left = 480.000000000000000000
          Top = 136.000000000000000000
          Width = 240.000000000000000000
          Height = 24.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1057' '#1053#1040#1063#1040#1051#1040' '#1043#1054#1044#1040)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo21: TfrxMemoView
          Left = 720.000000000000000000
          Top = 136.000000000000000000
          Width = 120.000000000000000000
          Height = 40.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1055#1056#1048#1052#1045#1063#1040#1053#1048#1045)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          Top = 176.000000000000000000
          Width = 112.000000000000000000
          Height = 96.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '1. '#1047#1072#1076#1072#1085#1080#1077' '#1087#1086' '#1087#1083#1072#1085#1091
            '2. '#1042#1099#1087#1086#1083#1085#1077#1085#1080#1077' '#1074
            '3. '#1054#1089#1090'. '#1074' '#1094#1077#1093#1077' '#1085#1072' 1'
            '4. '#1042#1099#1088#1072#1073#1086#1090'. '#1079#1072' '#1084#1077#1089#1103#1094
            '5. '#1057#1076#1072#1085#1086
            '6. '#1054#1089#1090'. '#1074' '#1094#1077#1093#1077' '#1085#1072' 1'
            '7. '#1055#1086#1083#1091#1095#1077#1085#1086' '#1086#1090#1093#1086#1076#1086#1074)
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 112.000000000000000000
          Top = 176.000000000000000000
          Width = 728.000000000000000000
          Height = 24.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo25: TfrxMemoView
          Left = 144.000000000000000000
          Top = 160.000000000000000000
          Width = 48.000000000000000000
          Height = 16.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo26: TfrxMemoView
          Align = baLeft
          Left = 192.000000000000000000
          Top = 160.000000000000000000
          Width = 48.000000000000000000
          Height = 16.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo27: TfrxMemoView
          Align = baLeft
          Left = 240.000000000000000000
          Top = 160.000000000000000000
          Width = 48.000000000000000000
          Height = 16.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo28: TfrxMemoView
          Align = baLeft
          Left = 288.000000000000000000
          Top = 160.000000000000000000
          Width = 48.000000000000000000
          Height = 16.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo29: TfrxMemoView
          Align = baLeft
          Left = 336.000000000000000000
          Top = 160.000000000000000000
          Width = 48.000000000000000000
          Height = 16.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo30: TfrxMemoView
          Align = baLeft
          Left = 384.000000000000000000
          Top = 160.000000000000000000
          Width = 48.000000000000000000
          Height = 16.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo31: TfrxMemoView
          Align = baLeft
          Left = 432.000000000000000000
          Top = 160.000000000000000000
          Width = 48.000000000000000000
          Height = 16.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo24: TfrxMemoView
          Left = 144.000000000000000000
          Top = 212.000000000000000000
          Width = 68.500000000000000000
          Height = 16.000000000000000000
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ' '
          DisplayFormat.FormatStr = '%2.4n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxZatra."VIPUSK"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo32: TfrxMemoView
          Left = 192.000000000000000000
          Top = 212.000000000000000000
          Width = 48.000000000000000000
          Height = 16.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '0.000')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo33: TfrxMemoView
          Left = 241.000000000000000000
          Top = 212.000000000000000000
          Width = 48.000000000000000000
          Height = 16.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '0.000')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo34: TfrxMemoView
          Left = 289.500000000000000000
          Top = 212.000000000000000000
          Width = 48.000000000000000000
          Height = 16.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '0.000')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo35: TfrxMemoView
          Left = 334.000000000000000000
          Top = 212.000000000000000000
          Width = 48.000000000000000000
          Height = 16.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '0.000')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo36: TfrxMemoView
          Left = 382.500000000000000000
          Top = 212.000000000000000000
          Width = 48.000000000000000000
          Height = 16.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo37: TfrxMemoView
          Left = 431.000000000000000000
          Top = 212.000000000000000000
          Width = 48.000000000000000000
          Height = 16.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo38: TfrxMemoView
          Left = 480.000000000000000000
          Top = 212.000000000000000000
          Width = 64.500000000000000000
          Height = 16.000000000000000000
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ' '
          DisplayFormat.FormatStr = '%2.4n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxZatra."VIPUSK_YEAR"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo39: TfrxMemoView
          Left = 528.000000000000000000
          Top = 212.000000000000000000
          Width = 48.000000000000000000
          Height = 16.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '0.000')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo40: TfrxMemoView
          Left = 576.000000000000000000
          Top = 212.000000000000000000
          Width = 48.000000000000000000
          Height = 16.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '0.000')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo41: TfrxMemoView
          Left = 624.000000000000000000
          Top = 212.000000000000000000
          Width = 48.000000000000000000
          Height = 16.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '0.000')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo42: TfrxMemoView
          Left = 672.000000000000000000
          Top = 212.000000000000000000
          Width = 48.000000000000000000
          Height = 16.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '0.000')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo43: TfrxMemoView
          Align = baLeft
          Left = 480.000000000000000000
          Top = 160.000000000000000000
          Width = 48.000000000000000000
          Height = 16.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo44: TfrxMemoView
          Align = baLeft
          Left = 528.000000000000000000
          Top = 160.000000000000000000
          Width = 48.000000000000000000
          Height = 16.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo45: TfrxMemoView
          Align = baLeft
          Left = 576.000000000000000000
          Top = 160.000000000000000000
          Width = 48.000000000000000000
          Height = 16.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo46: TfrxMemoView
          Align = baLeft
          Left = 624.000000000000000000
          Top = 160.000000000000000000
          Width = 48.000000000000000000
          Height = 16.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo47: TfrxMemoView
          Align = baLeft
          Left = 672.000000000000000000
          Top = 160.000000000000000000
          Width = 48.000000000000000000
          Height = 16.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo48: TfrxMemoView
          Left = 112.000000000000000000
          Top = 248.000000000000000000
          Width = 728.000000000000000000
          Height = 24.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo49: TfrxMemoView
          Left = 732.000000000000000000
          Top = 200.000000000000000000
          Width = 108.000000000000000000
          Height = 48.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo50: TfrxMemoView
          Top = 284.000000000000000000
          Width = 232.000000000000000000
          Height = 16.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            #1050#1086#1083'-'#1074#1086' '#1074#1099#1088#1072#1073'. '#1087#1088#1086#1076#1091#1082#1094#1080#1080' '#1089' '#1085#1072#1095#1072#1083#1072' '#1082#1074#1072#1088#1090#1072#1083#1072':')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo51: TfrxMemoView
          Align = baLeft
          Top = 368.000000000000000000
          Width = 36.000000000000000000
          Height = 20.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '01')
          ParentFont = False
          WordBreak = True
          VAlign = vaCenter
        end
        object Memo52: TfrxMemoView
          Align = baLeft
          Left = 36.000000000000000000
          Top = 368.000000000000000000
          Width = 152.000000000000000000
          Height = 20.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '02')
          ParentFont = False
          WordBreak = True
          VAlign = vaCenter
        end
        object Memo70: TfrxMemoView
          Left = 244.000000000000000000
          Top = 284.000000000000000000
          Width = 80.000000000000000000
          Height = 16.000000000000000000
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ' '
          DisplayFormat.FormatStr = '%2.6n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            ' [frxZatra."VIPUSK_QUAT"]')
          ParentFont = False
        end
        object Memo71: TfrxMemoView
          Align = baLeft
          Left = 188.000000000000000000
          Top = 368.000000000000000000
          Width = 64.000000000000000000
          Height = 20.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '03')
          ParentFont = False
          WordBreak = True
          VAlign = vaCenter
        end
        object Memo72: TfrxMemoView
          Align = baLeft
          Left = 252.000000000000000000
          Top = 368.000000000000000000
          Width = 64.000000000000000000
          Height = 20.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '04')
          ParentFont = False
          WordBreak = True
          VAlign = vaCenter
        end
        object Memo73: TfrxMemoView
          Align = baLeft
          Left = 316.000000000000000000
          Top = 368.000000000000000000
          Width = 64.000000000000000000
          Height = 20.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '05')
          ParentFont = False
          WordBreak = True
          VAlign = vaCenter
        end
        object Memo74: TfrxMemoView
          Align = baLeft
          Left = 380.000000000000000000
          Top = 368.000000000000000000
          Width = 64.000000000000000000
          Height = 20.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '06')
          ParentFont = False
          WordBreak = True
          VAlign = vaCenter
        end
        object Memo75: TfrxMemoView
          Align = baLeft
          Left = 444.000000000000000000
          Top = 368.000000000000000000
          Width = 64.000000000000000000
          Height = 20.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '07')
          ParentFont = False
          WordBreak = True
          VAlign = vaCenter
        end
        object Memo76: TfrxMemoView
          Align = baLeft
          Left = 508.000000000000000000
          Top = 368.000000000000000000
          Width = 64.000000000000000000
          Height = 20.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '08')
          ParentFont = False
          WordBreak = True
          VAlign = vaCenter
        end
        object Memo77: TfrxMemoView
          Align = baLeft
          Left = 572.000000000000000000
          Top = 368.000000000000000000
          Width = 64.000000000000000000
          Height = 20.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '09')
          ParentFont = False
          WordBreak = True
          VAlign = vaCenter
        end
        object Memo78: TfrxMemoView
          Align = baLeft
          Left = 636.000000000000000000
          Top = 368.000000000000000000
          Width = 64.000000000000000000
          Height = 20.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '10')
          ParentFont = False
          WordBreak = True
          VAlign = vaCenter
        end
        object Memo79: TfrxMemoView
          Align = baLeft
          Left = 700.000000000000000000
          Top = 368.000000000000000000
          Width = 64.000000000000000000
          Height = 20.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '11')
          ParentFont = False
          WordBreak = True
          VAlign = vaCenter
        end
        object Memo80: TfrxMemoView
          Align = baLeft
          Left = 764.000000000000000000
          Top = 368.000000000000000000
          Width = 64.000000000000000000
          Height = 20.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '12')
          ParentFont = False
          WordBreak = True
          VAlign = vaCenter
        end
        object Memo81: TfrxMemoView
          Align = baLeft
          Left = 828.000000000000000000
          Top = 368.000000000000000000
          Width = 64.000000000000000000
          Height = 20.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '13')
          ParentFont = False
          WordBreak = True
          VAlign = vaCenter
        end
        object Memo82: TfrxMemoView
          Align = baLeft
          Left = 892.000000000000000000
          Top = 368.000000000000000000
          Width = 64.000000000000000000
          Height = 20.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '14')
          ParentFont = False
          WordBreak = True
          VAlign = vaCenter
        end
        object Memo83: TfrxMemoView
          Align = baLeft
          Left = 956.000000000000000000
          Top = 368.000000000000000000
          Width = 64.000000000000000000
          Height = 20.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '15')
          ParentFont = False
          WordBreak = True
          VAlign = vaCenter
        end
        object Memo84: TfrxMemoView
          Align = baLeft
          Left = 1020.000000000000000000
          Top = 368.000000000000000000
          Width = 50.000000000000000000
          Height = 20.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '16')
          ParentFont = False
          WordBreak = True
          VAlign = vaCenter
        end
        object Memo99: TfrxMemoView
          Align = baLeft
          Left = 188.000000000000000000
          Top = 312.000000000000000000
          Width = 128.000000000000000000
          Height = 40.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1054#1089#1090#1072#1090#1086#1082' '#1085#1072' '#1085#1072#1095#1072#1083#1086' '#1084#1077#1089#1103#1094#1072' '#1074' '#1085#1077#1079#1072#1074#1077#1088#1096'. '#1087#1088#1086#1080#1079#1074#1086#1076#1089#1090#1074#1077)
          ParentFont = False
          WordBreak = True
          VAlign = vaCenter
        end
        object Memo100: TfrxMemoView
          Align = baLeft
          Left = 188.000000000000000000
          Top = 352.000000000000000000
          Width = 64.000000000000000000
          Height = 16.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1082#1086#1083'-'#1074#1086)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo101: TfrxMemoView
          Align = baLeft
          Left = 252.000000000000000000
          Top = 352.000000000000000000
          Width = 64.000000000000000000
          Height = 16.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1089#1091#1084#1084#1072)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo102: TfrxMemoView
          Align = baLeft
          Left = 316.000000000000000000
          Top = 312.000000000000000000
          Width = 128.000000000000000000
          Height = 40.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1047#1072#1075#1088#1091#1078#1077#1085#1086)
          ParentFont = False
          WordBreak = True
          VAlign = vaCenter
        end
        object Memo103: TfrxMemoView
          Align = baLeft
          Left = 316.000000000000000000
          Top = 352.000000000000000000
          Width = 64.000000000000000000
          Height = 16.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1082#1086#1083'-'#1074#1086)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo104: TfrxMemoView
          Align = baLeft
          Left = 380.000000000000000000
          Top = 352.000000000000000000
          Width = 64.000000000000000000
          Height = 16.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1089#1091#1084#1084#1072)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo105: TfrxMemoView
          Align = baLeft
          Left = 444.000000000000000000
          Top = 312.000000000000000000
          Width = 128.000000000000000000
          Height = 40.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1056#1072#1089#1093#1086#1076' '#1085#1072' '#1074#1099#1088#1072#1073#1086#1090#1082#1091' '#1089' '#1085#1072#1095#1072#1083#1072' '#1084#1077#1089#1103#1094#1072)
          ParentFont = False
          WordBreak = True
          VAlign = vaCenter
        end
        object Memo106: TfrxMemoView
          Align = baLeft
          Left = 444.000000000000000000
          Top = 352.000000000000000000
          Width = 64.000000000000000000
          Height = 16.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1082#1086#1083'-'#1074#1086)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo107: TfrxMemoView
          Align = baLeft
          Left = 508.000000000000000000
          Top = 352.000000000000000000
          Width = 64.000000000000000000
          Height = 16.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1089#1091#1084#1084#1072)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo108: TfrxMemoView
          Align = baLeft
          Left = 572.000000000000000000
          Top = 312.000000000000000000
          Width = 128.000000000000000000
          Height = 40.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1054#1089#1090#1072#1090#1086#1082' '#1085#1072' '#1082#1086#1085#1077#1094' '#1084#1077#1089#1103#1094#1072' '#1074' '#1085#1077#1079#1072#1074#1077#1088#1096'. '#1087#1088#1086#1080#1079#1074#1086#1076#1089#1090#1074#1077)
          ParentFont = False
          WordBreak = True
          VAlign = vaCenter
        end
        object Memo109: TfrxMemoView
          Align = baLeft
          Left = 572.000000000000000000
          Top = 352.000000000000000000
          Width = 64.000000000000000000
          Height = 16.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1082#1086#1083'-'#1074#1086)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo110: TfrxMemoView
          Align = baLeft
          Left = 636.000000000000000000
          Top = 352.000000000000000000
          Width = 64.000000000000000000
          Height = 16.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1089#1091#1084#1084#1072)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo111: TfrxMemoView
          Align = baLeft
          Left = 700.000000000000000000
          Top = 312.000000000000000000
          Width = 128.000000000000000000
          Height = 40.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1056#1072#1089#1093#1086#1076' '#1085#1072' '#1074#1099#1088#1072#1073#1086#1090#1082#1091' '#1089' '#1085#1072#1095#1072#1083#1072' '#1075#1086#1076#1072)
          ParentFont = False
          WordBreak = True
          VAlign = vaCenter
        end
        object Memo112: TfrxMemoView
          Align = baLeft
          Left = 700.000000000000000000
          Top = 352.000000000000000000
          Width = 64.000000000000000000
          Height = 16.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1082#1086#1083'-'#1074#1086)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo113: TfrxMemoView
          Align = baLeft
          Left = 764.000000000000000000
          Top = 352.000000000000000000
          Width = 64.000000000000000000
          Height = 16.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1089#1091#1084#1084#1072)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo114: TfrxMemoView
          Align = baLeft
          Left = 828.000000000000000000
          Top = 312.000000000000000000
          Width = 128.000000000000000000
          Height = 40.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1056#1072#1089#1093#1086#1076' '#1085#1072' '#1074#1099#1088#1072#1073#1086#1090#1082#1091' '#1089' '#1085#1072#1095#1072#1083#1072' '#1082#1074#1072#1088#1090#1072#1083#1072)
          ParentFont = False
          WordBreak = True
          VAlign = vaCenter
        end
        object Memo115: TfrxMemoView
          Align = baLeft
          Left = 828.000000000000000000
          Top = 352.000000000000000000
          Width = 64.000000000000000000
          Height = 16.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1082#1086#1083'-'#1074#1086)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo116: TfrxMemoView
          Align = baLeft
          Left = 892.000000000000000000
          Top = 352.000000000000000000
          Width = 64.000000000000000000
          Height = 16.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1089#1091#1084#1084#1072)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo117: TfrxMemoView
          Align = baLeft
          Left = 956.000000000000000000
          Top = 312.000000000000000000
          Width = 64.000000000000000000
          Height = 40.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1055#1077#1088#1077#1076#1072#1085#1086' '#1080#1079' '#1085#1077#1079#1072#1074'. '#1087#1088#1086#1080#1079'.')
          ParentFont = False
          WordBreak = True
          VAlign = vaCenter
        end
        object Memo119: TfrxMemoView
          Align = baLeft
          Left = 956.000000000000000000
          Top = 352.000000000000000000
          Width = 64.000000000000000000
          Height = 16.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1082#1086#1083'-'#1074#1086)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo118: TfrxMemoView
          Align = baLeft
          Left = 1020.000000000000000000
          Top = 312.000000000000000000
          Width = 50.000000000000000000
          Height = 56.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1055#1077#1088#1077#1086#1094#1077#1085#1082#1072)
          ParentFont = False
          WordBreak = True
          VAlign = vaCenter
        end
      end
      object GroupFooter2: TfrxGroupFooter
        FillType = ftBrush
        Height = 48.000000000000000000
        Top = 684.000000000000000000
        Width = 1074.520379000000000000
        object Memo5: TfrxMemoView
          Left = 200.000000000000000000
          Width = 448.000000000000000000
          Height = 16.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            #1041#1059#1061#1043#1040#1051#1058#1045#1056'________________________________')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 24.000000000000000000
          Top = 16.000000000000000000
          Width = 624.000000000000000000
          Height = 32.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            #1056#1040#1057#1063#1045#1058' '#1053#1040' '#1069#1042#1052' '#1055#1056#1054#1048#1047#1042#1045#1051':'
            #1054#1055#1045#1056#1040#1058#1054#1056' '#1069#1042#1052' [operator_name] [current_date]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object masterSyr: TfrxMasterData
        FillType = ftBrush
        Height = 32.000000000000000000
        Top = 600.000000000000000000
        Width = 1074.520379000000000000
        OnBeforePrint = 'MasterData1OnBeforePrint'
        DataSet = frxZatra
        DataSetName = 'frxZatra'
        RowCount = 0
        object Memo7: TfrxMemoView
          Align = baLeft
          Width = 24.000000000000000000
          Height = 32.000000000000000000
          OnBeforePrint = 'Memo7OnBeforePrint'
          DataField = 'BAL'
          DataSet = frxZatra
          DataSetName = 'frxZatra'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxZatra."BAL"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Align = baLeft
          Left = 60.000000000000000000
          Width = 92.000000000000000000
          Height = 16.000000000000000000
          OnAfterPrint = 'Memo13OnAfterPrint'
          OnBeforePrint = 'Memo13OnBeforePrint'
          DataSet = frxZatra
          DataSetName = 'frxZatra'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[naim]')
          ParentFont = False
          WordWrap = False
        end
        object Memo14: TfrxMemoView
          Align = baLeft
          Left = 152.000000000000000000
          Width = 36.000000000000000000
          Height = 16.000000000000000000
          DataSet = frxZatra
          DataSetName = 'frxZatra'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '  [frxZatra."EDIZ"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          Left = 36.000000000000000000
          Top = 16.000000000000000000
          Width = 76.000000000000000000
          Height = 16.000000000000000000
          DataField = 'CENA'
          DataSet = frxZatra
          DataSetName = 'frxZatra'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ' '
          DisplayFormat.FormatStr = '%2.6n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxZatra."CENA"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 112.000000000000000000
          Top = 16.000000000000000000
          Width = 76.000000000000000000
          Height = 16.000000000000000000
          DataField = 'CENAZA'
          DataSet = frxZatra
          DataSetName = 'frxZatra'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ' '
          DisplayFormat.FormatStr = '%2.6n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxZatra."CENAZA"]')
          ParentFont = False
        end
        object Memo55: TfrxMemoView
          Align = baLeft
          Left = 24.000000000000000000
          Width = 36.000000000000000000
          Height = 16.000000000000000000
          DataField = 'KOMATR'
          DataSet = frxZatra
          DataSetName = 'frxZatra'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxZatra."KOMATR"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo56: TfrxMemoView
          Align = baLeft
          Left = 188.000000000000000000
          Width = 64.000000000000000000
          Height = 23.000000000000000000
          DataField = 'OST_BEG'
          DataSet = frxZatra
          DataSetName = 'frxZatra'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ' '
          DisplayFormat.FormatStr = '%2.3n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxZatra."OST_BEG"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo57: TfrxMemoView
          Align = baLeft
          Left = 252.000000000000000000
          Width = 64.000000000000000000
          Height = 23.000000000000000000
          DataField = 'OST_BEG_S'
          DataSet = frxZatra
          DataSetName = 'frxZatra'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ' '
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Fill.BackColor = cl3DLight
          HAlign = haRight
          Memo.UTF8W = (
            '[frxZatra."OST_BEG_S"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo58: TfrxMemoView
          Align = baLeft
          Left = 316.000000000000000000
          Width = 64.000000000000000000
          Height = 23.000000000000000000
          DataField = 'ZAGR'
          DataSet = frxZatra
          DataSetName = 'frxZatra'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ' '
          DisplayFormat.FormatStr = '%2.3n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxZatra."ZAGR"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo59: TfrxMemoView
          Align = baLeft
          Left = 380.000000000000000000
          Width = 64.000000000000000000
          Height = 23.000000000000000000
          DataField = 'ZAGR_S'
          DataSet = frxZatra
          DataSetName = 'frxZatra'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ' '
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Fill.BackColor = cl3DLight
          HAlign = haRight
          Memo.UTF8W = (
            '[frxZatra."ZAGR_S"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo60: TfrxMemoView
          Align = baLeft
          Left = 444.000000000000000000
          Width = 64.000000000000000000
          Height = 23.000000000000000000
          DataField = 'RASH'
          DataSet = frxZatra
          DataSetName = 'frxZatra'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ' '
          DisplayFormat.FormatStr = '%2.3n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxZatra."RASH"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo61: TfrxMemoView
          Align = baLeft
          Left = 508.000000000000000000
          Width = 64.000000000000000000
          Height = 23.000000000000000000
          DataField = 'RASH_S'
          DataSet = frxZatra
          DataSetName = 'frxZatra'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ' '
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Fill.BackColor = cl3DLight
          HAlign = haRight
          Memo.UTF8W = (
            '[frxZatra."RASH_S"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo62: TfrxMemoView
          Align = baLeft
          Left = 572.000000000000000000
          Width = 64.000000000000000000
          Height = 23.000000000000000000
          DataField = 'OST_END'
          DataSet = frxZatra
          DataSetName = 'frxZatra'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ' '
          DisplayFormat.FormatStr = '%2.3n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxZatra."OST_END"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo63: TfrxMemoView
          Align = baLeft
          Left = 636.000000000000000000
          Width = 64.000000000000000000
          Height = 23.000000000000000000
          DataField = 'OST_END_S'
          DataSet = frxZatra
          DataSetName = 'frxZatra'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ' '
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Fill.BackColor = cl3DLight
          HAlign = haRight
          Memo.UTF8W = (
            '[frxZatra."OST_END_S"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo64: TfrxMemoView
          Align = baLeft
          Left = 700.000000000000000000
          Width = 64.000000000000000000
          Height = 23.000000000000000000
          DataField = 'RASH_GOD'
          DataSet = frxZatra
          DataSetName = 'frxZatra'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ' '
          DisplayFormat.FormatStr = '%2.3n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxZatra."RASH_GOD"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo65: TfrxMemoView
          Align = baLeft
          Left = 956.000000000000000000
          Width = 64.000000000000000000
          Height = 23.000000000000000000
          DataField = 'PEREDANO'
          DataSet = frxZatra
          DataSetName = 'frxZatra'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ' '
          DisplayFormat.FormatStr = '%2.3n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxZatra."PEREDANO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo66: TfrxMemoView
          Align = baLeft
          Left = 1020.000000000000000000
          Width = 50.000000000000000000
          Height = 23.000000000000000000
          DataField = 'OTKLON'
          DataSet = frxZatra
          DataSetName = 'frxZatra'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ' '
          DisplayFormat.FormatStr = '%2.3n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Fill.BackColor = cl3DLight
          HAlign = haRight
          Memo.UTF8W = (
            '[frxZatra."OTKLON"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo67: TfrxMemoView
          Align = baLeft
          Left = 764.000000000000000000
          Width = 64.000000000000000000
          Height = 23.000000000000000000
          DataField = 'RASH_GOD_S'
          DataSet = frxZatra
          DataSetName = 'frxZatra'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ' '
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Fill.BackColor = cl3DLight
          HAlign = haRight
          Memo.UTF8W = (
            '[frxZatra."RASH_GOD_S"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo68: TfrxMemoView
          Align = baLeft
          Left = 828.000000000000000000
          Width = 64.000000000000000000
          Height = 23.000000000000000000
          DataField = 'RASH_KV'
          DataSet = frxZatra
          DataSetName = 'frxZatra'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ' '
          DisplayFormat.FormatStr = '%2.3n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxZatra."RASH_KV"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo69: TfrxMemoView
          Align = baLeft
          Left = 892.000000000000000000
          Width = 64.000000000000000000
          Height = 23.000000000000000000
          DataField = 'RASH_KV_S'
          DataSet = frxZatra
          DataSetName = 'frxZatra'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ' '
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Fill.BackColor = cl3DLight
          HAlign = haRight
          Memo.UTF8W = (
            '[frxZatra."RASH_KV_S"]')
          ParentFont = False
          WordWrap = False
        end
      end
      object GroupHeader3: TfrxGroupHeader
        FillType = ftBrush
        Height = 20.000000000000000000
        Top = 560.000000000000000000
        Width = 1074.520379000000000000
        OnBeforePrint = 'GroupHeader3OnBeforePrint'
        Condition = 'frxZatra."NAMRAZ"'
        object Memo8: TfrxMemoView
          Left = 16.000000000000000000
          Width = 588.000000000000000000
          Height = 16.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsUnderline]
          Memo.UTF8W = (
            '[frxZatra."NAMRAZ"]')
          ParentFont = False
        end
      end
      object GroupFooter3: TfrxGroupFooter
        FillType = ftBrush
        Height = 12.000000000000000000
        Top = 652.000000000000000000
        Width = 1074.520379000000000000
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 40.000000000000000000
        Top = 52.000000000000000000
        Width = 1074.520379000000000000
        OnBeforePrint = 'PageHeader1OnBeforePrint'
        PrintOnFirstPage = False
        object Memo53: TfrxMemoView
          Top = 20.000000000000000000
          Width = 36.000000000000000000
          Height = 20.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '01')
          ParentFont = False
          WordBreak = True
          VAlign = vaCenter
        end
        object Memo54: TfrxMemoView
          Align = baLeft
          Left = 36.000000000000000000
          Top = 20.000000000000000000
          Width = 152.000000000000000000
          Height = 20.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '02')
          ParentFont = False
          WordBreak = True
          VAlign = vaCenter
        end
        object Memo85: TfrxMemoView
          Align = baLeft
          Left = 188.000000000000000000
          Top = 20.000000000000000000
          Width = 64.000000000000000000
          Height = 20.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '03')
          ParentFont = False
          WordBreak = True
          VAlign = vaCenter
        end
        object Memo86: TfrxMemoView
          Align = baLeft
          Left = 252.000000000000000000
          Top = 20.000000000000000000
          Width = 64.000000000000000000
          Height = 20.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '04')
          ParentFont = False
          WordBreak = True
          VAlign = vaCenter
        end
        object Memo87: TfrxMemoView
          Align = baLeft
          Left = 316.000000000000000000
          Top = 20.000000000000000000
          Width = 64.000000000000000000
          Height = 20.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '05')
          ParentFont = False
          WordBreak = True
          VAlign = vaCenter
        end
        object Memo88: TfrxMemoView
          Align = baLeft
          Left = 380.000000000000000000
          Top = 20.000000000000000000
          Width = 64.000000000000000000
          Height = 20.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '06')
          ParentFont = False
          WordBreak = True
          VAlign = vaCenter
        end
        object Memo89: TfrxMemoView
          Align = baLeft
          Left = 444.000000000000000000
          Top = 20.000000000000000000
          Width = 64.000000000000000000
          Height = 20.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '07')
          ParentFont = False
          WordBreak = True
          VAlign = vaCenter
        end
        object Memo90: TfrxMemoView
          Align = baLeft
          Left = 508.000000000000000000
          Top = 20.000000000000000000
          Width = 64.000000000000000000
          Height = 20.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '08')
          ParentFont = False
          WordBreak = True
          VAlign = vaCenter
        end
        object Memo91: TfrxMemoView
          Align = baLeft
          Left = 572.000000000000000000
          Top = 20.000000000000000000
          Width = 64.000000000000000000
          Height = 20.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '09')
          ParentFont = False
          WordBreak = True
          VAlign = vaCenter
        end
        object Memo92: TfrxMemoView
          Align = baLeft
          Left = 636.000000000000000000
          Top = 20.000000000000000000
          Width = 64.000000000000000000
          Height = 20.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '10')
          ParentFont = False
          WordBreak = True
          VAlign = vaCenter
        end
        object Memo93: TfrxMemoView
          Align = baLeft
          Left = 700.000000000000000000
          Top = 20.000000000000000000
          Width = 64.000000000000000000
          Height = 20.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '11')
          ParentFont = False
          WordBreak = True
          VAlign = vaCenter
        end
        object Memo94: TfrxMemoView
          Align = baLeft
          Left = 764.000000000000000000
          Top = 20.000000000000000000
          Width = 64.000000000000000000
          Height = 20.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '12')
          ParentFont = False
          WordBreak = True
          VAlign = vaCenter
        end
        object Memo95: TfrxMemoView
          Align = baLeft
          Left = 828.000000000000000000
          Top = 20.000000000000000000
          Width = 64.000000000000000000
          Height = 20.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '13')
          ParentFont = False
          WordBreak = True
          VAlign = vaCenter
        end
        object Memo96: TfrxMemoView
          Align = baLeft
          Left = 892.000000000000000000
          Top = 20.000000000000000000
          Width = 64.000000000000000000
          Height = 20.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '14')
          ParentFont = False
          WordBreak = True
          VAlign = vaCenter
        end
        object Memo97: TfrxMemoView
          Align = baLeft
          Left = 956.000000000000000000
          Top = 20.000000000000000000
          Width = 64.000000000000000000
          Height = 20.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '15')
          ParentFont = False
          WordBreak = True
          VAlign = vaCenter
        end
        object Memo98: TfrxMemoView
          Align = baLeft
          Left = 1020.000000000000000000
          Top = 20.000000000000000000
          Width = 50.000000000000000000
          Height = 20.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '16')
          ParentFont = False
          WordBreak = True
          VAlign = vaCenter
        end
        object memo_pageN: TfrxMemoView
          Align = baWidth
          Width = 1074.520379000000000000
          Height = 16.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            #1051#1080#1089#1090' [page]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 12.000000000000000000
        Top = 812.000000000000000000
        Width = 1074.520379000000000000
        object Memo120: TfrxMemoView
          Align = baWidth
          Width = 1074.520379000000000000
          Height = 12.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            #1044#1086#1082#1091#1084#1077#1085#1090' '#1089#1092#1086#1088#1084#1080#1088#1086#1074#1072#1085' '#1087#1088#1086#1075#1088#1072#1084#1084#1085#1099#1084' '#1086#1073#1077#1089#1087#1077#1095#1077#1085#1080#1077#1084' '#1054#1048#1058)
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
      end
    end
  end
  object frxZatra: TfrxDBDataset
    UserName = 'frxZatra'
    CloseDataSource = False
    DataSet = mem_zatra
    BCDToCurrency = False
    Left = 440
    Top = 160
  end
  object q_zatraSpprod: TRxIBQuery
    Database = dDM.db
    Transaction = dDM.trans_read
    OnCalcFields = q_zatraSpprodCalcFields
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      
        'select spprod.ksm_id, spprod.kod_prod, spprod.nmat, vipNG.vip vi' +
        'p_ng, vipKv.vip vip_kv, vipMes.vip vip_mes,'
      'configumc.stname, configumc.struk_id, ediz.neis, spprod.kei_id'
      'from spprod'
      'left join (SELECT  sum(KARTv.KOL_PRIH) vip, kartv.ksm_id'
      '            FROM KARTv'
      
        '            INNER JOIN DOCUMENT ON (KARTv.DOC_ID = DOCUMENT.DOC_' +
        'ID)'
      '            WHERE DOCUMENT.STRUK_ID = :struk_id'
      
        '            AND DOCUMENT.TIP_OP_ID = 36 and document.tip_dok_id ' +
        '= 74'
      
        '            AND Document.Date_op between :date_begin_god and :da' +
        'te_end'
      
        '            group by kartv.ksm_id) vipNG on vipNG.ksm_id = sppro' +
        'd.ksm_id'
      'left join (SELECT  sum(KARTv.KOL_PRIH) vip, kartv.ksm_id'
      '            FROM KARTv'
      
        '            INNER JOIN DOCUMENT ON (KARTv.DOC_ID = DOCUMENT.DOC_' +
        'ID)'
      '            WHERE DOCUMENT.STRUK_ID = :struk_id'
      
        '            AND DOCUMENT.TIP_OP_ID = 36 and document.tip_dok_id ' +
        '= 74'
      
        '            AND Document.Date_op between :date_begin_kv and :dat' +
        'e_end'
      
        '            group by kartv.ksm_id) vipKv on vipKv.ksm_id = sppro' +
        'd.ksm_id'
      'left join (SELECT  sum(KARTv.KOL_PRIH) vip, kartv.ksm_id'
      '            FROM KARTv'
      
        '            INNER JOIN DOCUMENT ON (KARTv.DOC_ID = DOCUMENT.DOC_' +
        'ID)'
      '            WHERE DOCUMENT.STRUK_ID = :struk_id'
      
        '            AND DOCUMENT.TIP_OP_ID = 36 and document.tip_dok_id ' +
        '= 74'
      
        '            AND Document.Date_op between :date_begin_mes and :da' +
        'te_end'
      
        '            group by kartv.ksm_id) vipMes on vipMes.ksm_id = spp' +
        'rod.ksm_id'
      'left join configumc on configumc.struk_id = spprod.struk_id'
      'left join ediz on ediz.kei_id = spprod.kei_id'
      'where spprod.ksm_id = :ksm_id'
      '--where spprod.kod_prod = '#39'0040.014.1.1.00.02'#39)
    Macros = <>
    Left = 104
    Top = 152
    ParamData = <
      item
        DataType = ftInteger
        Name = 'struk_id'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'date_begin_god'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'date_end'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'struk_id'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'date_begin_kv'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'date_end'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'struk_id'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'date_begin_mes'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'date_end'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ksm_id'
        ParamType = ptInput
      end>
    object q_zatraSpprodKSM_ID: TIntegerField
      FieldName = 'KSM_ID'
      Origin = '"SPPROD"."KSM_ID"'
      Required = True
    end
    object q_zatraSpprodKOD_PROD: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'KOD_PROD'
      Origin = '"SPPROD"."KOD_PROD"'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 18
    end
    object q_zatraSpprodNMAT: TIBStringField
      FieldName = 'NMAT'
      Origin = '"SPPROD"."NMAT"'
      Size = 60
    end
    object q_zatraSpprodVIP_NG: TFMTBCDField
      FieldName = 'VIP_NG'
      ProviderFlags = []
      Precision = 18
      Size = 6
    end
    object q_zatraSpprodVIP_KV: TFMTBCDField
      FieldName = 'VIP_KV'
      ProviderFlags = []
      Precision = 18
      Size = 6
    end
    object q_zatraSpprodVIP_MES: TFMTBCDField
      FieldName = 'VIP_MES'
      ProviderFlags = []
      Precision = 18
      Size = 6
    end
    object q_zatraSpprodSTNAME: TIBStringField
      FieldName = 'STNAME'
      Origin = '"CONFIGUMC"."STNAME"'
      FixedChar = True
    end
    object q_zatraSpprodSTRUK_ID: TSmallintField
      FieldName = 'STRUK_ID'
      Origin = '"CONFIGUMC"."STRUK_ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object q_zatraSpprodKOMATR: TStringField
      FieldKind = fkCalculated
      FieldName = 'KOMATR'
      Size = 6
      Calculated = True
    end
    object q_zatraSpprodNEIS: TIBStringField
      FieldName = 'NEIS'
      Origin = '"EDIZ"."NEIS"'
      FixedChar = True
      Size = 10
    end
    object q_zatraSpprodKEI_ID: TSmallintField
      FieldName = 'KEI_ID'
      Origin = '"SPPROD"."KEI_ID"'
    end
  end
  object q_zatraItogiDbf: TERxQuery
    SQL.Strings = (
      
        'select zatra.razd, zatra.bal, zatra.komatr, zatra.nmat,  zatra.g' +
        '6 as ost_beg, '
      'zatra.g7 as ost_beg_s, zatra.g10 as zagr, zatra.g11 as zagr_s, '
      'zatra.g12 as rash, zatra.g13 as rash_s, zatra.g8 as ost_end, '
      
        'zatra.g9 as ost_end_s, zatra.g14 as rash_god, zatra.g15 as rash_' +
        'god_s, '
      
        'zatra.g16 as rash_kv, zatra.g17 as rash_kv_s, zatra.g18 as pered' +
        'ano, '
      'zatra.otklon, zatra.koprep, zatra.strk'
      'from '#39'f:\pc1\otchbas\zatra.dbf'#39' zatra'
      'where zatra.mes = :month'
      'and zatra.strk = :stkod'
      'and zatra.koprep = :koprep'
      'and zatra.nmat = '#39#1103#1103#1103#39
      
        'and zatra.komatr in ('#39'ITOGP'#39', '#39'ITOGR'#39', '#39'ITOGS'#39', '#39'VSEGO'#39', '#39'VSEGP'#39 +
        ', '#39'VSEGS'#39')')
    EhSQL.Strings = (
      
        'select zatra.razd, zatra.bal, zatra.komatr, zatra.nmat,  zatra.g' +
        '6 as ost_beg, '
      'zatra.g7 as ost_beg_s, zatra.g10 as zagr, zatra.g11 as zagr_s, '
      'zatra.g12 as rash, zatra.g13 as rash_s, zatra.g8 as ost_end, '
      
        'zatra.g9 as ost_end_s, zatra.g14 as rash_god, zatra.g15 as rash_' +
        'god_s, '
      
        'zatra.g16 as rash_kv, zatra.g17 as rash_kv_s, zatra.g18 as pered' +
        'ano, '
      'zatra.otklon, zatra.koprep, zatra.strk'
      'from '#39'f:\pc1\otchbas\zatra.dbf'#39' zatra'
      'where zatra.mes = :month'
      'and zatra.strk = :stkod'
      'and zatra.koprep = :koprep'
      'and zatra.nmat = '#39#1103#1103#1103#39
      
        'and zatra.komatr in ('#39'ITOGP'#39', '#39'ITOGR'#39', '#39'ITOGS'#39', '#39'VSEGO'#39', '#39'VSEGP'#39 +
        ', '#39'VSEGS'#39')')
    EhMacros = <>
    Left = 104
    Top = 216
    ParamData = <
      item
        DataType = ftInteger
        Name = 'month'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'stkod'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'koprep'
        ParamType = ptInput
      end>
    object q_zatraItogiDbfRAZD: TStringField
      FieldName = 'RAZD'
      Size = 2
    end
    object q_zatraItogiDbfBAL: TStringField
      FieldName = 'BAL'
      Size = 3
    end
    object q_zatraItogiDbfKOMATR: TStringField
      FieldName = 'KOMATR'
      Size = 5
    end
    object q_zatraItogiDbfNMAT: TStringField
      FieldName = 'NMAT'
      Size = 25
    end
    object q_zatraItogiDbfOST_BEG: TFloatField
      FieldName = 'OST_BEG'
    end
    object q_zatraItogiDbfOST_BEG_S: TFloatField
      FieldName = 'OST_BEG_S'
    end
    object q_zatraItogiDbfZAGR: TFloatField
      FieldName = 'ZAGR'
    end
    object q_zatraItogiDbfZAGR_S: TFloatField
      FieldName = 'ZAGR_S'
    end
    object q_zatraItogiDbfRASH: TFloatField
      FieldName = 'RASH'
    end
    object q_zatraItogiDbfRASH_S: TFloatField
      FieldName = 'RASH_S'
    end
    object q_zatraItogiDbfOST_END: TFloatField
      FieldName = 'OST_END'
    end
    object q_zatraItogiDbfOST_END_S: TFloatField
      FieldName = 'OST_END_S'
    end
    object q_zatraItogiDbfRASH_GOD: TFloatField
      FieldName = 'RASH_GOD'
    end
    object q_zatraItogiDbfRASH_GOD_S: TFloatField
      FieldName = 'RASH_GOD_S'
    end
    object q_zatraItogiDbfRASH_KV: TFloatField
      FieldName = 'RASH_KV'
    end
    object q_zatraItogiDbfRASH_KV_S: TFloatField
      FieldName = 'RASH_KV_S'
    end
    object q_zatraItogiDbfPEREDANO: TFloatField
      FieldName = 'PEREDANO'
    end
    object q_zatraItogiDbfOTKLON: TFloatField
      FieldName = 'OTKLON'
    end
    object q_zatraItogiDbfKOPREP: TStringField
      FieldName = 'KOPREP'
      Size = 6
    end
    object q_zatraItogiDbfSTRK: TStringField
      FieldName = 'STRK'
      Size = 4
    end
  end
  object frxZatraItogi: TfrxDBDataset
    UserName = 'frxZatraItogi'
    CloseDataSource = False
    BCDToCurrency = False
    Left = 440
    Top = 216
  end
  object mem_zatraPrep: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'IT_NAME'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'RAZD'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'BAL'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'KOMATR'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'NMAT'
        DataType = ftString
        Size = 25
      end
      item
        Name = 'EDIZ'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'CENA'
        DataType = ftFloat
      end
      item
        Name = 'CENAZA'
        DataType = ftFloat
      end
      item
        Name = 'OST_BEG'
        DataType = ftFloat
      end
      item
        Name = 'OST_BEG_S'
        DataType = ftFloat
      end
      item
        Name = 'ZAGR'
        DataType = ftFloat
      end
      item
        Name = 'ZAGR_S'
        DataType = ftFloat
      end
      item
        Name = 'RASH'
        DataType = ftFloat
      end
      item
        Name = 'RASH_S'
        DataType = ftFloat
      end
      item
        Name = 'OST_END'
        DataType = ftFloat
      end
      item
        Name = 'OST_END_S'
        DataType = ftFloat
      end
      item
        Name = 'RASH_GOD'
        DataType = ftFloat
      end
      item
        Name = 'RASH_GOD_S'
        DataType = ftFloat
      end
      item
        Name = 'PEREDANO'
        DataType = ftFloat
      end
      item
        Name = 'OTKLON'
        DataType = ftFloat
      end
      item
        Name = 'NAMRAZ'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'KOPREP'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'STRK'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'STRUK_ID'
        DataType = ftInteger
      end
      item
        Name = 'STNAME'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'KSM_ID_PREP'
        DataType = ftInteger
      end
      item
        Name = 'NMAT_PREP'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'VIPUSK'
        DataType = ftFloat
      end
      item
        Name = 'VIPUSK_QUAT'
        DataType = ftFloat
      end
      item
        Name = 'VIPUSK_YEAR'
        DataType = ftFloat
      end
      item
        Name = 'EDIZ_PREP'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'KEI_ID_PREP'
        DataType = ftInteger
      end
      item
        Name = 'KOD_PROD'
        DataType = ftString
        Size = 18
      end
      item
        Name = 'CHECKED'
        DataType = ftInteger
      end
      item
        Name = 'RASH_KV'
        DataType = ftFloat
      end
      item
        Name = 'RASH_KV_S'
        DataType = ftFloat
      end
      item
        Name = 'IT_RAZD'
        DataType = ftInteger
      end
      item
        Name = 'IT_BAL'
        DataType = ftInteger
      end>
    IndexDefs = <>
    SortOptions = []
    PersistentBackup = True
    ProgressFlags = [mtpcLoad, mtpcSave, mtpcCopy]
    LoadedCompletely = True
    SavedCompletely = True
    FilterOptions = []
    Version = '7.64.00 Standard Edition'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    Left = 24
    Top = 80
    object mem_zatraPrepG20: TFloatField
      FieldName = 'G20'
    end
    object StringField1: TStringField
      FieldName = 'IT_NAME'
      Size = 40
    end
    object StringField2: TStringField
      FieldName = 'RAZD'
      Size = 2
    end
    object StringField3: TStringField
      FieldName = 'BAL'
      Size = 3
    end
    object StringField4: TStringField
      FieldName = 'KOMATR'
      Size = 5
    end
    object StringField5: TStringField
      FieldName = 'NMAT'
      Size = 25
    end
    object StringField6: TStringField
      FieldName = 'EDIZ'
      Size = 6
    end
    object FloatField1: TFloatField
      FieldName = 'CENA'
    end
    object FloatField2: TFloatField
      FieldName = 'CENAZA'
    end
    object FloatField3: TFloatField
      FieldName = 'OST_BEG'
    end
    object FloatField4: TFloatField
      FieldName = 'OST_BEG_S'
    end
    object FloatField5: TFloatField
      FieldName = 'ZAGR'
    end
    object FloatField6: TFloatField
      FieldName = 'ZAGR_S'
    end
    object FloatField7: TFloatField
      FieldName = 'RASH'
    end
    object FloatField8: TFloatField
      FieldName = 'RASH_S'
    end
    object FloatField9: TFloatField
      FieldName = 'OST_END'
    end
    object FloatField10: TFloatField
      FieldName = 'OST_END_S'
    end
    object FloatField11: TFloatField
      FieldName = 'RASH_GOD'
    end
    object FloatField12: TFloatField
      FieldName = 'RASH_GOD_S'
    end
    object FloatField13: TFloatField
      FieldName = 'PEREDANO'
    end
    object FloatField14: TFloatField
      FieldName = 'OTKLON'
    end
    object StringField7: TStringField
      FieldName = 'NAMRAZ'
      Size = 60
    end
    object StringField8: TStringField
      FieldName = 'KOPREP'
      Size = 6
    end
    object StringField9: TStringField
      FieldName = 'STRK'
      Size = 4
    end
    object IntegerField1: TIntegerField
      FieldName = 'STRUK_ID'
    end
    object StringField10: TStringField
      FieldName = 'STNAME'
    end
    object IntegerField2: TIntegerField
      FieldName = 'KSM_ID_PREP'
    end
    object StringField11: TStringField
      FieldName = 'NMAT_PREP'
      Size = 60
    end
    object FloatField15: TFloatField
      FieldName = 'VIPUSK'
    end
    object FloatField16: TFloatField
      FieldName = 'VIPUSK_QUAT'
    end
    object FloatField17: TFloatField
      FieldName = 'VIPUSK_YEAR'
    end
    object StringField12: TStringField
      FieldName = 'EDIZ_PREP'
      Size = 10
    end
    object IntegerField3: TIntegerField
      FieldName = 'KEI_ID_PREP'
    end
    object StringField13: TStringField
      FieldName = 'KOD_PROD'
      Size = 18
    end
    object IntegerField4: TIntegerField
      DefaultExpression = '0'
      FieldName = 'CHECKED'
      MaxValue = 1
    end
    object FloatField18: TFloatField
      FieldName = 'RASH_KV'
    end
    object FloatField19: TFloatField
      FieldName = 'RASH_KV_S'
    end
    object IntegerField5: TIntegerField
      FieldName = 'IT_RAZD'
    end
    object IntegerField6: TIntegerField
      FieldName = 'IT_BAL'
    end
    object mem_zatraPrepLAST_REC: TIntegerField
      DefaultExpression = '0'
      FieldName = 'LAST_REC'
      MaxValue = 1
    end
  end
  object mem_prepItogi21: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'IT_NAME'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'RAZD'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'BAL'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'KOMATR'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'NMAT'
        DataType = ftString
        Size = 25
      end
      item
        Name = 'EDIZ'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'CENA'
        DataType = ftFloat
      end
      item
        Name = 'CENAZA'
        DataType = ftFloat
      end
      item
        Name = 'OST_BEG'
        DataType = ftFloat
      end
      item
        Name = 'OST_BEG_S'
        DataType = ftFloat
      end
      item
        Name = 'ZAGR'
        DataType = ftFloat
      end
      item
        Name = 'ZAGR_S'
        DataType = ftFloat
      end
      item
        Name = 'RASH'
        DataType = ftFloat
      end
      item
        Name = 'RASH_S'
        DataType = ftFloat
      end
      item
        Name = 'OST_END'
        DataType = ftFloat
      end
      item
        Name = 'OST_END_S'
        DataType = ftFloat
      end
      item
        Name = 'RASH_GOD'
        DataType = ftFloat
      end
      item
        Name = 'RASH_GOD_S'
        DataType = ftFloat
      end
      item
        Name = 'PEREDANO'
        DataType = ftFloat
      end
      item
        Name = 'OTKLON'
        DataType = ftFloat
      end
      item
        Name = 'NAMRAZ'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'KOPREP'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'STRK'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'STRUK_ID'
        DataType = ftInteger
      end
      item
        Name = 'STNAME'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'KSM_ID_PREP'
        DataType = ftInteger
      end
      item
        Name = 'NMAT_PREP'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'VIPUSK'
        DataType = ftFloat
      end
      item
        Name = 'VIPUSK_QUAT'
        DataType = ftFloat
      end
      item
        Name = 'VIPUSK_YEAR'
        DataType = ftFloat
      end
      item
        Name = 'EDIZ_PREP'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'KEI_ID_PREP'
        DataType = ftInteger
      end
      item
        Name = 'KOD_PROD'
        DataType = ftString
        Size = 18
      end
      item
        Name = 'CHECKED'
        DataType = ftInteger
      end
      item
        Name = 'RASH_KV'
        DataType = ftFloat
      end
      item
        Name = 'RASH_KV_S'
        DataType = ftFloat
      end
      item
        Name = 'IT_RAZD'
        DataType = ftInteger
      end
      item
        Name = 'IT_BAL'
        DataType = ftInteger
      end>
    IndexDefs = <>
    SortOptions = []
    PersistentBackup = True
    ProgressFlags = [mtpcLoad, mtpcSave, mtpcCopy]
    LoadedCompletely = False
    SavedCompletely = True
    FilterOptions = []
    Version = '7.64.00 Standard Edition'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    Left = 192
    Top = 80
    object FloatField20: TFloatField
      FieldName = 'G20'
    end
    object StringField14: TStringField
      FieldName = 'IT_NAME'
      Size = 40
    end
    object StringField15: TStringField
      FieldName = 'RAZD'
      Size = 2
    end
    object StringField16: TStringField
      FieldName = 'BAL'
      Size = 3
    end
    object StringField17: TStringField
      FieldName = 'KOMATR'
      Size = 5
    end
    object StringField18: TStringField
      FieldName = 'NMAT'
      Size = 25
    end
    object StringField19: TStringField
      FieldName = 'EDIZ'
      Size = 6
    end
    object FloatField21: TFloatField
      FieldName = 'CENA'
    end
    object FloatField22: TFloatField
      FieldName = 'CENAZA'
    end
    object FloatField23: TFloatField
      FieldName = 'OST_BEG'
    end
    object FloatField24: TFloatField
      FieldName = 'OST_BEG_S'
    end
    object FloatField25: TFloatField
      FieldName = 'ZAGR'
    end
    object FloatField26: TFloatField
      FieldName = 'ZAGR_S'
    end
    object FloatField27: TFloatField
      FieldName = 'RASH'
    end
    object FloatField28: TFloatField
      FieldName = 'RASH_S'
    end
    object FloatField29: TFloatField
      FieldName = 'OST_END'
    end
    object FloatField30: TFloatField
      FieldName = 'OST_END_S'
    end
    object FloatField31: TFloatField
      FieldName = 'RASH_GOD'
    end
    object FloatField32: TFloatField
      FieldName = 'RASH_GOD_S'
    end
    object FloatField33: TFloatField
      FieldName = 'PEREDANO'
    end
    object FloatField34: TFloatField
      FieldName = 'OTKLON'
    end
    object StringField20: TStringField
      FieldName = 'NAMRAZ'
      Size = 60
    end
    object StringField21: TStringField
      FieldName = 'KOPREP'
      Size = 6
    end
    object StringField22: TStringField
      FieldName = 'STRK'
      Size = 4
    end
    object IntegerField7: TIntegerField
      FieldName = 'STRUK_ID'
    end
    object StringField23: TStringField
      FieldName = 'STNAME'
    end
    object IntegerField8: TIntegerField
      FieldName = 'KSM_ID_PREP'
    end
    object StringField24: TStringField
      FieldName = 'NMAT_PREP'
      Size = 60
    end
    object FloatField35: TFloatField
      FieldName = 'VIPUSK'
    end
    object FloatField36: TFloatField
      FieldName = 'VIPUSK_QUAT'
    end
    object FloatField37: TFloatField
      FieldName = 'VIPUSK_YEAR'
    end
    object StringField25: TStringField
      FieldName = 'EDIZ_PREP'
      Size = 10
    end
    object IntegerField9: TIntegerField
      FieldName = 'KEI_ID_PREP'
    end
    object StringField26: TStringField
      FieldName = 'KOD_PROD'
      Size = 18
    end
    object IntegerField10: TIntegerField
      DefaultExpression = '0'
      FieldName = 'CHECKED'
      MaxValue = 1
    end
    object FloatField38: TFloatField
      FieldName = 'RASH_KV'
    end
    object FloatField39: TFloatField
      FieldName = 'RASH_KV_S'
    end
    object IntegerField11: TIntegerField
      FieldName = 'IT_RAZD'
    end
    object IntegerField12: TIntegerField
      FieldName = 'IT_BAL'
    end
    object IntegerField13: TIntegerField
      DefaultExpression = '0'
      FieldName = 'LAST_REC'
      MaxValue = 1
    end
  end
  object q_zatra21Dbf: TERxQuery
    SQL.Strings = (
      
        'select zatra.razd, zatra.bal, zatra.komatr, zatra.nmat, zatra.ed' +
        'iz, zatra.cena, zatra.cenaza, '
      
        'zatra.g6 as ost_beg, zatra.g7 as ost_beg_s, zatra.g10 as zagr, z' +
        'atra.g11 as zagr_s, '
      
        'zatra.g12 as rash, zatra.g13 as rash_s, zatra.g8 as ost_end, zat' +
        'ra.g9 as ost_end_s, '
      
        'zatra.g14 as rash_god, zatra.g15 as rash_god_s, zatra.g18 as per' +
        'edano, zatra.g20,'
      
        'zatra.otklon, zatra.koprep, zatra.strk, zatra.g16 rash_kv, zatra' +
        '.g17 rash_kv_s'
      'from '#39'f:\pc1\otchbas\zatra.dbf'#39' zatra'
      'where zatra.mes = :month'
      'and zatra.strk = :stkod'
      'and zatra.koprep= :koprep'
      'order by zatra.razd, zatra.nmat')
    EhSQL.Strings = (
      
        'select zatra.razd, zatra.bal, zatra.komatr, zatra.nmat, zatra.ed' +
        'iz, zatra.cena, zatra.cenaza, '
      
        'zatra.g6 as ost_beg, zatra.g7 as ost_beg_s, zatra.g10 as zagr, z' +
        'atra.g11 as zagr_s, '
      
        'zatra.g12 as rash, zatra.g13 as rash_s, zatra.g8 as ost_end, zat' +
        'ra.g9 as ost_end_s, '
      
        'zatra.g14 as rash_god, zatra.g15 as rash_god_s, zatra.g18 as per' +
        'edano, zatra.g20,'
      
        'zatra.otklon, zatra.koprep, zatra.strk, zatra.g16 rash_kv, zatra' +
        '.g17 rash_kv_s'
      'from '#39'f:\pc1\otchbas\zatra.dbf'#39' zatra'
      'where zatra.mes = :month'
      'and zatra.strk = :stkod'
      'and zatra.koprep= :koprep'
      'order by zatra.razd, zatra.nmat')
    EhMacros = <>
    Left = 192
    Top = 24
    ParamData = <
      item
        DataType = ftInteger
        Name = 'month'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'stkod'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'koprep'
        ParamType = ptInput
      end>
    object StringField27: TStringField
      FieldName = 'RAZD'
      Size = 2
    end
    object StringField28: TStringField
      FieldName = 'BAL'
      Size = 3
    end
    object StringField29: TStringField
      FieldName = 'KOMATR'
      Size = 5
    end
    object StringField30: TStringField
      FieldName = 'NMAT'
      Size = 25
    end
    object StringField31: TStringField
      FieldName = 'EDIZ'
      Size = 6
    end
    object FloatField40: TFloatField
      FieldName = 'CENA'
    end
    object FloatField41: TFloatField
      FieldName = 'CENAZA'
    end
    object FloatField42: TFloatField
      FieldName = 'OST_BEG'
    end
    object FloatField43: TFloatField
      FieldName = 'OST_BEG_S'
    end
    object FloatField44: TFloatField
      FieldName = 'ZAGR'
    end
    object FloatField45: TFloatField
      FieldName = 'ZAGR_S'
    end
    object FloatField46: TFloatField
      FieldName = 'RASH'
    end
    object FloatField47: TFloatField
      FieldName = 'RASH_S'
    end
    object FloatField48: TFloatField
      FieldName = 'OST_END'
    end
    object FloatField49: TFloatField
      FieldName = 'OST_END_S'
    end
    object FloatField50: TFloatField
      FieldName = 'RASH_GOD'
    end
    object FloatField51: TFloatField
      FieldName = 'RASH_GOD_S'
    end
    object FloatField52: TFloatField
      FieldName = 'PEREDANO'
    end
    object FloatField53: TFloatField
      FieldName = 'OTKLON'
    end
    object StringField32: TStringField
      FieldName = 'KOPREP'
      Size = 6
    end
    object StringField33: TStringField
      FieldName = 'STRK'
      Size = 4
    end
    object FloatField54: TFloatField
      FieldName = 'RASH_KV'
    end
    object FloatField55: TFloatField
      FieldName = 'RASH_KV_S'
    end
    object FloatField56: TFloatField
      FieldName = 'G20'
    end
  end
end
