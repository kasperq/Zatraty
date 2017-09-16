object SvodDM: TSvodDM
  OldCreateOrder = False
  OnDestroy = DataModuleDestroy
  Height = 811
  Width = 959
  object q_svodVedDbf: TERxQuery
    SQL.Strings = (
      
        'select sv.god, sv.mes, sv.ceh, sv.koprep, sv.nam, sv.kr101, sv.v' +
        'ozvra15,'
      
        'sv.kr102, sv.vozvra25, sv.kr104, sv.vozvra45, sv.pf21, sv.vozkol' +
        ', sv.vozvr,'
      
        'sv.S43Kr102, sv.S43Kr104, sv.vozvr5, sv.osnov, sv.vozvra, sv.vsp' +
        'om, sv.prasvyr, '
      
        'sv.tara, sv.upak, sv.neznm, sv.zagru, sv.vozvra1, sv.vozvra2, sv' +
        '.vozvra4, '
      'sv.pereoc, sv.nezkm, sv.nezcex, sv.nezprod, '
      'sv.econom, sv.pneznm, sv.pnezkm, sv.rasvyr'
      'from '#39'f:\pc1\otchbas\svotab.dbf'#39' sv'
      'where god = :year and mes = :month and ceh = :stkod'
      'order by nam')
    EhSQL.Strings = (
      
        'select sv.god, sv.mes, sv.ceh, sv.koprep, sv.nam, sv.kr101, sv.v' +
        'ozvra15,'
      
        'sv.kr102, sv.vozvra25, sv.kr104, sv.vozvra45, sv.pf21, sv.vozkol' +
        ', sv.vozvr,'
      
        'sv.S43Kr102, sv.S43Kr104, sv.vozvr5, sv.osnov, sv.vozvra, sv.vsp' +
        'om, sv.prasvyr, '
      
        'sv.tara, sv.upak, sv.neznm, sv.zagru, sv.vozvra1, sv.vozvra2, sv' +
        '.vozvra4, '
      'sv.pereoc, sv.nezkm, sv.nezcex, sv.nezprod, '
      'sv.econom, sv.pneznm, sv.pnezkm, sv.rasvyr'
      'from '#39'f:\pc1\otchbas\svotab.dbf'#39' sv'
      'where god = :year and mes = :month and ceh = :stkod'
      'order by nam')
    EhMacros = <>
    Left = 56
    Top = 24
    ParamData = <
      item
        DataType = ftString
        Name = 'year'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'month'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'stkod'
        ParamType = ptInput
      end>
    object q_svodVedDbfGOD: TStringField
      FieldName = 'GOD'
      Size = 2
    end
    object q_svodVedDbfMES: TStringField
      FieldName = 'MES'
      Size = 2
    end
    object q_svodVedDbfCEH: TStringField
      FieldName = 'CEH'
      Size = 4
    end
    object q_svodVedDbfKOPREP: TStringField
      FieldName = 'KOPREP'
      Size = 6
    end
    object q_svodVedDbfNAM: TStringField
      FieldName = 'NAM'
      Size = 50
    end
    object q_svodVedDbfKR101: TFloatField
      DefaultExpression = '0'
      FieldName = 'KR101'
    end
    object q_svodVedDbfVOZVRA15: TFloatField
      DefaultExpression = '0'
      FieldName = 'VOZVRA15'
    end
    object q_svodVedDbfKR102: TFloatField
      DefaultExpression = '0'
      FieldName = 'KR102'
    end
    object q_svodVedDbfVOZVRA25: TFloatField
      DefaultExpression = '0'
      FieldName = 'VOZVRA25'
    end
    object q_svodVedDbfKR104: TFloatField
      DefaultExpression = '0'
      FieldName = 'KR104'
    end
    object q_svodVedDbfVOZVRA45: TFloatField
      DefaultExpression = '0'
      FieldName = 'VOZVRA45'
    end
    object q_svodVedDbfPF21: TFloatField
      DefaultExpression = '0'
      FieldName = 'PF21'
    end
    object q_svodVedDbfVOZKOL: TFloatField
      DefaultExpression = '0'
      FieldName = 'VOZKOL'
    end
    object q_svodVedDbfVOZVR: TFloatField
      DefaultExpression = '0'
      FieldName = 'VOZVR'
    end
    object q_svodVedDbfS43KR102: TFloatField
      DefaultExpression = '0'
      FieldName = 'S43KR102'
    end
    object q_svodVedDbfS43KR104: TFloatField
      DefaultExpression = '0'
      FieldName = 'S43KR104'
    end
    object q_svodVedDbfVOZVR5: TFloatField
      DefaultExpression = '0'
      FieldName = 'VOZVR5'
    end
    object q_svodVedDbfOSNOV: TFloatField
      FieldName = 'OSNOV'
    end
    object q_svodVedDbfVOZVRA: TFloatField
      FieldName = 'VOZVRA'
    end
    object q_svodVedDbfVSPOM: TFloatField
      FieldName = 'VSPOM'
    end
    object q_svodVedDbfPRASVYR: TFloatField
      FieldName = 'PRASVYR'
    end
    object q_svodVedDbfTARA: TFloatField
      FieldName = 'TARA'
    end
    object q_svodVedDbfUPAK: TFloatField
      FieldName = 'UPAK'
    end
    object q_svodVedDbfNEZNM: TFloatField
      FieldName = 'NEZNM'
    end
    object q_svodVedDbfZAGRU: TFloatField
      FieldName = 'ZAGRU'
    end
    object q_svodVedDbfVOZVRA1: TFloatField
      FieldName = 'VOZVRA1'
    end
    object q_svodVedDbfVOZVRA2: TFloatField
      FieldName = 'VOZVRA2'
    end
    object q_svodVedDbfVOZVRA4: TFloatField
      FieldName = 'VOZVRA4'
    end
    object q_svodVedDbfPEREOC: TFloatField
      FieldName = 'PEREOC'
    end
    object q_svodVedDbfNEZKM: TFloatField
      FieldName = 'NEZKM'
    end
    object q_svodVedDbfNEZCEX: TFloatField
      FieldName = 'NEZCEX'
    end
    object q_svodVedDbfNEZPROD: TFloatField
      FieldName = 'NEZPROD'
    end
    object q_svodVedDbfECONOM: TFloatField
      FieldName = 'ECONOM'
    end
    object q_svodVedDbfPNEZNM: TFloatField
      FieldName = 'PNEZNM'
    end
    object q_svodVedDbfPNEZKM: TFloatField
      FieldName = 'PNEZKM'
    end
    object q_svodVedDbfRASVYR: TFloatField
      FieldName = 'RASVYR'
    end
  end
  object mem_svodVed: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'GOD'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'MES'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'CEH'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'KOPREP'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'NAM'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'KR101'
        DataType = ftFloat
      end
      item
        Name = 'VOZVRA15'
        DataType = ftFloat
      end
      item
        Name = 'KR102'
        DataType = ftFloat
      end
      item
        Name = 'VOZVRA25'
        DataType = ftFloat
      end
      item
        Name = 'KR104'
        DataType = ftFloat
      end
      item
        Name = 'VOZVRA45'
        DataType = ftFloat
      end
      item
        Name = 'PF21'
        DataType = ftFloat
      end
      item
        Name = 'VOZKOL'
        DataType = ftFloat
      end
      item
        Name = 'VOZVR'
        DataType = ftFloat
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
        Name = 'PP_101'
        DataType = ftFloat
      end
      item
        Name = 'PP_102'
        DataType = ftFloat
      end
      item
        Name = 'PP_104'
        DataType = ftFloat
      end
      item
        Name = 'SUM_KR10'
        DataType = ftFloat
      end
      item
        Name = 'PP_21'
        DataType = ftFloat
      end
      item
        Name = 'PP_VOZKOL'
        DataType = ftFloat
      end
      item
        Name = 'PP_VOZVR'
        DataType = ftFloat
      end
      item
        Name = 'SUM_ALL'
        DataType = ftFloat
      end
      item
        Name = 'SUM_PP_ALL'
        DataType = ftFloat
      end
      item
        Name = 'S43KR102'
        DataType = ftFloat
      end
      item
        Name = 'S43KR104'
        DataType = ftFloat
      end
      item
        Name = 'VOZVR5'
        DataType = ftFloat
      end
      item
        Name = 'SUM_PP_KR10'
        DataType = ftFloat
      end
      item
        Name = 'STNAME_SHORT_ROD'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'STNAME_SHORT_DAV'
        DataType = ftString
        Size = 20
      end>
    IndexDefs = <>
    SortOptions = []
    PersistentBackup = False
    ProgressFlags = [mtpcLoad, mtpcSave, mtpcCopy]
    LoadedCompletely = False
    SavedCompletely = False
    FilterOptions = []
    Version = '7.64.00 Standard Edition'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    Left = 56
    Top = 176
    object mem_svodVedGOD: TStringField
      FieldName = 'GOD'
      Size = 2
    end
    object mem_svodVedMES: TStringField
      FieldName = 'MES'
      Size = 2
    end
    object mem_svodVedCEH: TStringField
      FieldName = 'CEH'
      Size = 4
    end
    object mem_svodVedKOPREP: TStringField
      FieldName = 'KOPREP'
      Size = 6
    end
    object mem_svodVedNAM: TStringField
      FieldName = 'NAM'
      Size = 50
    end
    object mem_svodVedKR101: TFloatField
      FieldName = 'KR101'
    end
    object mem_svodVedVOZVRA15: TFloatField
      FieldName = 'VOZVRA15'
    end
    object mem_svodVedKR102: TFloatField
      FieldName = 'KR102'
    end
    object mem_svodVedVOZVRA25: TFloatField
      FieldName = 'VOZVRA25'
    end
    object mem_svodVedKR104: TFloatField
      FieldName = 'KR104'
    end
    object mem_svodVedVOZVRA45: TFloatField
      FieldName = 'VOZVRA45'
    end
    object mem_svodVedPF21: TFloatField
      FieldName = 'PF21'
    end
    object mem_svodVedVOZKOL: TFloatField
      FieldName = 'VOZKOL'
    end
    object mem_svodVedVOZVR: TFloatField
      FieldName = 'VOZVR'
    end
    object mem_svodVedSTRUK_ID: TIntegerField
      FieldName = 'STRUK_ID'
    end
    object mem_svodVedPP_101: TFloatField
      FieldName = 'PP_101'
    end
    object mem_svodVedPP_102: TFloatField
      FieldName = 'PP_102'
    end
    object mem_svodVedPP_104: TFloatField
      FieldName = 'PP_104'
    end
    object mem_svodVedSUM_KR10: TFloatField
      FieldName = 'SUM_KR10'
    end
    object mem_svodVedPP_21: TFloatField
      FieldName = 'PP_21'
    end
    object mem_svodVedPP_VOZKOL: TFloatField
      FieldName = 'PP_VOZKOL'
    end
    object mem_svodVedPP_VOZVR: TFloatField
      FieldName = 'PP_VOZVR'
    end
    object mem_svodVedSUM_ALL: TFloatField
      FieldName = 'SUM_ALL'
    end
    object mem_svodVedSUM_PP_ALL: TFloatField
      FieldName = 'SUM_PP_ALL'
    end
    object mem_svodVedS43KR102: TFloatField
      FieldName = 'S43KR102'
    end
    object mem_svodVedS43KR104: TFloatField
      FieldName = 'S43KR104'
    end
    object mem_svodVedVOZVR5: TFloatField
      FieldName = 'VOZVR5'
    end
    object mem_svodVedSUM_PP_KR10: TFloatField
      FieldName = 'SUM_PP_KR10'
    end
    object mem_svodVedSTNAME_SHORT_ROD: TStringField
      FieldName = 'STNAME_SHORT_ROD'
    end
    object mem_svodVedSTNAME_SHORT_DAV: TStringField
      FieldName = 'STNAME_SHORT_DAV'
    end
    object mem_svodVedOSNOV: TFloatField
      FieldName = 'OSNOV'
    end
    object mem_svodVedVOZVRA: TFloatField
      FieldName = 'VOZVRA'
    end
    object mem_svodVedVSPOM: TFloatField
      FieldName = 'VSPOM'
    end
    object mem_svodVedPRASVYR: TFloatField
      FieldName = 'PRASVYR'
    end
    object mem_svodVedTARA: TFloatField
      FieldName = 'TARA'
    end
    object mem_svodVedUPAK: TFloatField
      FieldName = 'UPAK'
    end
    object mem_svodVedTOVAR_SUM: TFloatField
      FieldName = 'TOVAR_SUM'
    end
    object mem_svodVedTOVAR_SUM_ALL: TFloatField
      FieldName = 'TOVAR_SUM_ALL'
    end
    object mem_svodVedPP_OSNOV: TFloatField
      FieldName = 'PP_OSNOV'
    end
    object mem_svodVedPP_VOZVRA: TFloatField
      FieldName = 'PP_VOZVRA'
    end
    object mem_svodVedPP_VSPOM: TFloatField
      FieldName = 'PP_VSPOM'
    end
    object mem_svodVedPP_PRASVYR: TFloatField
      FieldName = 'PP_PRASVYR'
    end
    object mem_svodVedPP_TOVAR_SUM: TFloatField
      FieldName = 'PP_TOVAR_SUM'
    end
    object mem_svodVedPP_TOVAR_SUM_ALL: TFloatField
      FieldName = 'PP_TOVAR_SUM_ALL'
    end
    object mem_svodVedPP_TARA: TFloatField
      FieldName = 'PP_TARA'
    end
    object mem_svodVedPP_UPAK: TFloatField
      FieldName = 'PP_UPAK'
    end
    object mem_svodVedNEZNM: TFloatField
      FieldName = 'NEZNM'
    end
    object mem_svodVedZAGRU: TFloatField
      FieldName = 'ZAGRU'
    end
    object mem_svodVedVOZVRA1: TFloatField
      FieldName = 'VOZVRA1'
    end
    object mem_svodVedVOZVRA2: TFloatField
      FieldName = 'VOZVRA2'
    end
    object mem_svodVedVOZVRA4: TFloatField
      FieldName = 'VOZVRA4'
    end
    object mem_svodVedPEREOC: TFloatField
      FieldName = 'PEREOC'
    end
    object mem_svodVedNEZKM: TFloatField
      FieldName = 'NEZKM'
    end
    object mem_svodVedNEZCEX: TFloatField
      FieldName = 'NEZCEX'
    end
    object mem_svodVedNEZPROD: TFloatField
      FieldName = 'NEZPROD'
    end
    object mem_svodVedECONOM: TFloatField
      FieldName = 'ECONOM'
    end
    object mem_svodVedPNEZNM: TFloatField
      FieldName = 'PNEZNM'
    end
    object mem_svodVedPNEZKM: TFloatField
      FieldName = 'PNEZKM'
    end
    object mem_svodVedRASHOD: TFloatField
      FieldName = 'RASHOD'
    end
    object mem_svodVedRASVYR: TFloatField
      FieldName = 'RASVYR'
    end
    object mem_svodVedNEZ_RASCH: TFloatField
      FieldName = 'NEZ_RASCH'
    end
    object mem_svodVedSTNAME: TStringField
      FieldName = 'STNAME'
    end
    object mem_svodVedP21: TBooleanField
      DefaultExpression = 'false'
      FieldName = 'P21'
    end
    object mem_svodVedSHOW_ALL: TBooleanField
      DefaultExpression = 'true'
      FieldName = 'SHOW_ALL'
    end
  end
  object q_struk: TRxIBQuery
    Database = dDM.db
    Transaction = dDM.trans_read
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select conf.struk_id, conf.stname, conf.stkod'
      'from configumc conf'
      'where  conf.struk_id = :struk_id')
    Macros = <>
    Left = 192
    Top = 24
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'struk_id'
        ParamType = ptUnknown
      end>
    object q_strukSTRUK_ID: TSmallintField
      FieldName = 'STRUK_ID'
      Origin = '"CONFIGUMC"."STRUK_ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object q_strukSTNAME: TIBStringField
      FieldName = 'STNAME'
      Origin = '"CONFIGUMC"."STNAME"'
      FixedChar = True
    end
    object q_strukSTKOD: TIBStringField
      FieldName = 'STKOD'
      Origin = '"CONFIGUMC"."STKOD"'
      FixedChar = True
      Size = 4
    end
  end
  object frxReport1: TfrxReport
    Version = '5.2.3'
    DotMatrixReport = False
    EngineOptions.DoublePass = True
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = #1055#1086' '#1091#1084#1086#1083#1095#1072#1085#1080#1102
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42816.590828645800000000
    ReportOptions.LastChange = 42823.390414363430000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      '  '
      'procedure MasterData1OnBeforePrint(Sender: TfrxComponent);'
      'var'
      '  ds: TfrxDataset;'
      
        '  strukId : integer;                                            ' +
        '  '
      'begin'
      '  if (not <frxSvod."SHOW_ALL">) then'
      '  begin'
      '    memo11.hidezeros := true;'
      '    memo10.hidezeros := true;'
      '    memo9.hidezeros := true;'
      '    memo5.hidezeros := true;'
      '    memo4.hidezeros := true;        '
      '  end'
      '  else'
      '  begin'
      '    memo11.hidezeros := false;'
      '    memo10.hidezeros := false;'
      '    memo9.hidezeros := false;'
      '    memo5.hidezeros := false;'
      '    memo4.hidezeros := false;  '
      '  end;            '
      
        '  if (<frxSvod."ECONOM"> >= 100000000) or (<frxSvod."ECONOM"> <=' +
        ' -100000000) then'
      '  begin              '
      '    memo4.font.Size := 8;'
      '    memo13.font.Size := 8;'
      '    memo33.font.Size := 8;          '
      '  end'
      '  else'
      '  begin'
      '    memo4.font.Size := 9;'
      '    //memo13.font.Size := 9;                          '
      '  end;            '
      '    '
      '  ds := TfrxMasterData(Sender).DataSet;'
      '  strukId := <frxSvod."struk_id">;'
      '  ds.next;'
      '  if (not ds.eof) then'
      '  begin'
      '    if (<frxSvod."struk_id"> <> strukId)'
      '       and (Engine.FreeSpace < 55) then'
      '    begin'
      '      ds.prior;'
      '      Engine.NewPage;                                      '
      '    end'
      '    else'
      '      ds.prior;                                      '
      '  end'
      '  else'
      '  begin'
      '    if (Engine.FreeSpace < 100) then'
      '    begin'
      '      Engine.NewPage;                                      '
      '    end       '
      '  end;    '
      'end;'
      ''
      'begin'
      ''
      'end.')
    Left = 376
    Top = 72
    Datasets = <
      item
        DataSet = frxSvod
        DataSetName = 'frxSvod'
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
      LeftMargin = 10.001250000000000000
      RightMargin = 10.001250000000000000
      TopMargin = 10.001250000000000000
      BottomMargin = 10.001250000000000000
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 100.000000000000000000
        Top = 16.000000000000000000
        Width = 1046.920361175000000000
        object Memo55: TfrxMemoView
          Align = baWidth
          Top = 16.000000000000000000
          Width = 1046.920361175000000000
          Height = 84.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            #1057#1074#1086#1076#1085#1072#1103' '#1074#1077#1076#1086#1084#1086#1089#1090#1100' '#1087#1086' '#1085#1077#1079#1072#1074#1077#1088#1096#1077#1085#1085#1086#1084#1091' '#1087#1088#1086#1080#1079#1074#1086#1076#1089#1090#1074#1091
            #1079#1072' [month] '#1084#1077#1089#1103#1094' [year] '#1075'.'
            ''
            '([placeName])')
          ParentFont = False
          Formats = <
            item
            end
            item
            end
            item
            end>
        end
        object Memo100: TfrxMemoView
          Align = baRight
          Left = 851.329761175000000000
          Width = 195.590600000000000000
          Height = 14.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            #1051#1080#1089#1090' [Page#]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 16.000000000000000000
        Top = 392.000000000000000000
        Width = 1046.920361175000000000
        OnBeforePrint = 'MasterData1OnBeforePrint'
        DataSet = frxSvod
        DataSetName = 'frxSvod'
        RowCount = 0
        object Memo3: TfrxMemoView
          Align = baWidth
          Width = 374.920361175000000000
          Height = 16.000000000000000000
          DataField = 'NAM'
          DataSet = frxSvod
          DataSetName = 'frxSvod'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Memo.UTF8W = (
            '[frxSvod."NAM"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo4: TfrxMemoView
          Align = baRight
          Left = 962.920361175000000000
          Width = 84.000000000000000000
          Height = 16.000000000000000000
          DataField = 'ECONOM'
          DataSet = frxSvod
          DataSetName = 'frxSvod'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ' '
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxSvod."ECONOM"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Align = baRight
          Left = 878.920361175000000000
          Width = 84.000000000000000000
          Height = 16.000000000000000000
          DataField = 'NEZCEX'
          DataSet = frxSvod
          DataSetName = 'frxSvod'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ' '
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxSvod."NEZCEX"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Align = baRight
          Left = 794.920361175000000000
          Width = 84.000000000000000000
          Height = 16.000000000000000000
          DataField = 'NEZ_RASCH'
          DataSet = frxSvod
          DataSetName = 'frxSvod'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ' '
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxSvod."NEZ_RASCH"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Align = baRight
          Left = 710.920361175000000000
          Width = 84.000000000000000000
          Height = 16.000000000000000000
          DataField = 'NEZKM'
          DataSet = frxSvod
          DataSetName = 'frxSvod'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ' '
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxSvod."NEZKM"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Align = baRight
          Left = 626.920361175000000000
          Width = 84.000000000000000000
          Height = 16.000000000000000000
          DataField = 'PEREOC'
          DataSet = frxSvod
          DataSetName = 'frxSvod'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ' '
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxSvod."PEREOC"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Align = baRight
          Left = 542.920361175000000000
          Width = 84.000000000000000000
          Height = 16.000000000000000000
          DataField = 'RASHOD'
          DataSet = frxSvod
          DataSetName = 'frxSvod'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ' '
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxSvod."RASHOD"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Align = baRight
          Left = 458.920361175000000000
          Width = 84.000000000000000000
          Height = 16.000000000000000000
          DataField = 'ZAGRU'
          DataSet = frxSvod
          DataSetName = 'frxSvod'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ' '
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxSvod."ZAGRU"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Align = baRight
          Left = 374.920361175000000000
          Width = 84.000000000000000000
          Height = 16.000000000000000000
          DataField = 'NEZNM'
          DataSet = frxSvod
          DataSetName = 'frxSvod'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ' '
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxSvod."NEZNM"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 20.000000000000000000
        Top = 640.000000000000000000
        Width = 1046.920361175000000000
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 76.000000000000000000
        Top = 136.000000000000000000
        Width = 1046.920361175000000000
        PrintOnFirstPage = False
        object Memo1: TfrxMemoView
          Align = baRight
          Left = 851.329761175000000000
          Width = 195.590600000000000000
          Height = 14.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            #1051#1080#1089#1090' [Page#]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Align = baRight
          Left = 962.920361175000000000
          Top = 16.000000000000000000
          Width = 84.000000000000000000
          Height = 44.000000000000000000
          DataSet = frxSvod
          DataSetName = 'frxSvod'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ' '
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1069#1082#1086#1085#1086#1084#1080#1103'-   '#1087#1077#1088#1077#1088#1072#1089#1093#1086#1076' ('#1088#1091#1073'.)')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Align = baRight
          Left = 878.920361175000000000
          Top = 16.000000000000000000
          Width = 84.000000000000000000
          Height = 44.000000000000000000
          DataSet = frxSvod
          DataSetName = 'frxSvod'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ' '
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1053#1077#1079#1072#1074#1077#1088#1096#1077#1085#1082#1072' '#1087#1086' '#1094#1077#1093#1072#1084' ('#1088#1091#1073'.)')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo25: TfrxMemoView
          Align = baRight
          Left = 794.920361175000000000
          Top = 44.000000000000000000
          Width = 84.000000000000000000
          Height = 16.000000000000000000
          DataSet = frxSvod
          DataSetName = 'frxSvod'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ' '
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1088#1072#1089#1095#1077#1090#1085#1072#1103)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo36: TfrxMemoView
          Align = baRight
          Left = 710.920361175000000000
          Top = 44.000000000000000000
          Width = 84.000000000000000000
          Height = 16.000000000000000000
          DataSet = frxSvod
          DataSetName = 'frxSvod'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ' '
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1092#1072#1082#1090#1080#1095#1077#1089#1082#1072#1103)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo45: TfrxMemoView
          Align = baRight
          Left = 626.920361175000000000
          Top = 16.000000000000000000
          Width = 84.000000000000000000
          Height = 44.000000000000000000
          DataSet = frxSvod
          DataSetName = 'frxSvod'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ' '
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1055#1077#1088#1077#1086#1094#1077#1085#1082#1072' ('#1088#1091#1073'.)')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo65: TfrxMemoView
          Align = baRight
          Left = 542.920361175000000000
          Top = 16.000000000000000000
          Width = 84.000000000000000000
          Height = 44.000000000000000000
          DataSet = frxSvod
          DataSetName = 'frxSvod'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ' '
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1056#1072#1089#1093#1086#1076' '#1085#1072' '#1074#1099#1088#1072#1073#1086#1090#1082#1091' ('#1088#1091#1073'.)')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo66: TfrxMemoView
          Align = baRight
          Left = 458.920361175000000000
          Top = 16.000000000000000000
          Width = 84.000000000000000000
          Height = 44.000000000000000000
          DataSet = frxSvod
          DataSetName = 'frxSvod'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ' '
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1047#1072#1075#1088#1091#1079#1082#1072' ('#1088#1091#1073'.)')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo76: TfrxMemoView
          Align = baRight
          Left = 374.920361175000000000
          Top = 16.000000000000000000
          Width = 84.000000000000000000
          Height = 44.000000000000000000
          DataSet = frxSvod
          DataSetName = 'frxSvod'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ' '
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1053#1077#1079#1072#1074#1077#1088#1096#1077#1085#1082#1072' '#1085#1072' '#1085#1072#1095#1072#1083#1086' '#1084'-'#1094#1072' ('#1088#1091#1073'.)')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo77: TfrxMemoView
          Align = baWidth
          Top = 16.000000000000000000
          Width = 374.920361175000000000
          Height = 44.000000000000000000
          DataSet = frxSvod
          DataSetName = 'frxSvod'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ' '
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '        '#1050#1086#1076'                '#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1087#1088#1077#1087#1072#1088#1072#1090#1072)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo78: TfrxMemoView
          Align = baRight
          Left = 962.920361175000000000
          Top = 60.000000000000000000
          Width = 84.000000000000000000
          Height = 16.000000000000000000
          DataSet = frxSvod
          DataSetName = 'frxSvod'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ' '
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '09')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo79: TfrxMemoView
          Align = baRight
          Left = 878.920361175000000000
          Top = 60.000000000000000000
          Width = 84.000000000000000000
          Height = 16.000000000000000000
          DataSet = frxSvod
          DataSetName = 'frxSvod'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ' '
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '08')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo80: TfrxMemoView
          Align = baRight
          Left = 794.920361175000000000
          Top = 60.000000000000000000
          Width = 84.000000000000000000
          Height = 16.000000000000000000
          DataSet = frxSvod
          DataSetName = 'frxSvod'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ' '
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '07')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo81: TfrxMemoView
          Align = baRight
          Left = 710.920361175000000000
          Top = 60.000000000000000000
          Width = 84.000000000000000000
          Height = 16.000000000000000000
          DataSet = frxSvod
          DataSetName = 'frxSvod'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ' '
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '06')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo82: TfrxMemoView
          Align = baRight
          Left = 626.920361175000000000
          Top = 60.000000000000000000
          Width = 84.000000000000000000
          Height = 16.000000000000000000
          DataSet = frxSvod
          DataSetName = 'frxSvod'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ' '
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '05')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo83: TfrxMemoView
          Align = baRight
          Left = 542.920361175000000000
          Top = 60.000000000000000000
          Width = 84.000000000000000000
          Height = 16.000000000000000000
          DataSet = frxSvod
          DataSetName = 'frxSvod'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ' '
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '04')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo84: TfrxMemoView
          Align = baRight
          Left = 458.920361175000000000
          Top = 60.000000000000000000
          Width = 84.000000000000000000
          Height = 16.000000000000000000
          DataSet = frxSvod
          DataSetName = 'frxSvod'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ' '
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '03')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo85: TfrxMemoView
          Align = baRight
          Left = 374.920361175000000000
          Top = 60.000000000000000000
          Width = 84.000000000000000000
          Height = 16.000000000000000000
          DataSet = frxSvod
          DataSetName = 'frxSvod'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ' '
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '02')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo86: TfrxMemoView
          Align = baWidth
          Top = 60.000000000000000000
          Width = 374.920361175000000000
          Height = 16.000000000000000000
          DataSet = frxSvod
          DataSetName = 'frxSvod'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ' '
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '01')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo88: TfrxMemoView
          Align = baRight
          Left = 710.920361175000000000
          Top = 16.000000000000000000
          Width = 168.000000000000000000
          Height = 28.000000000000000000
          DataSet = frxSvod
          DataSetName = 'frxSvod'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ' '
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1053#1077#1079#1072#1074#1077#1088#1096#1077#1085#1082#1072' '#1085#1072' '#1082#1086#1085#1077#1094' '#1084'-'#1094#1072' ('#1088#1091#1073'.)')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Height = 60.000000000000000000
        Top = 560.000000000000000000
        Width = 1046.920361175000000000
        object Memo51: TfrxMemoView
          Align = baWidth
          Top = 28.000000000000000000
          Width = 374.920361175000000000
          Height = 16.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Fill.BackColor = cl3DLight
          Memo.UTF8W = (
            #1042#1089#1077#1075#1086' '#1087#1086' 21 '#1089#1095#1077#1090#1091' ('#1087'/'#1092')')
          ParentFont = False
        end
        object Memo52: TfrxMemoView
          Align = baWidth
          Top = 44.000000000000000000
          Width = 374.920361175000000000
          Height = 16.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Fill.BackColor = cl3DLight
          Memo.UTF8W = (
            #1042#1089#1077#1075#1086)
          ParentFont = False
        end
        object Memo53: TfrxMemoView
          Align = baWidth
          Width = 1046.920361175000000000
          Height = 12.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo98: TfrxMemoView
          Align = baWidth
          Top = 12.000000000000000000
          Width = 374.920361175000000000
          Height = 16.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Fill.BackColor = cl3DLight
          Memo.UTF8W = (
            #1042' '#1090#1086#1084' '#1095#1080#1089#1083#1077' '#1074#1089#1077#1075#1086' '#1087#1086' '#1087'/'#1087':')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          Align = baRight
          Left = 962.920361175000000000
          Top = 44.000000000000000000
          Width = 84.000000000000000000
          Height = 16.000000000000000000
          OnAfterData = 'Memo13OnAfterData'
          OnAfterPrint = 'Memo13OnAfterPrint'
          DataSet = frxSvod
          DataSetName = 'frxSvod'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ' '
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Fill.BackColor = cl3DLight
          HAlign = haRight
          Memo.UTF8W = (
            '[sum(iif(not <frxSvod."p21">, <frxSvod."ECONOM">, 0))]')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          Align = baRight
          Left = 878.920361175000000000
          Top = 44.000000000000000000
          Width = 84.000000000000000000
          Height = 16.000000000000000000
          DataSet = frxSvod
          DataSetName = 'frxSvod'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ' '
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Fill.BackColor = cl3DLight
          HAlign = haRight
          Memo.UTF8W = (
            '[sum(iif(not <frxSvod."p21">, <frxSvod."NEZCEX">, 0))]')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          Align = baRight
          Left = 794.920361175000000000
          Top = 44.000000000000000000
          Width = 84.000000000000000000
          Height = 16.000000000000000000
          DataSet = frxSvod
          DataSetName = 'frxSvod'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ' '
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Fill.BackColor = cl3DLight
          HAlign = haRight
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          Align = baRight
          Left = 710.920361175000000000
          Top = 44.000000000000000000
          Width = 84.000000000000000000
          Height = 16.000000000000000000
          DataSet = frxSvod
          DataSetName = 'frxSvod'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ' '
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Fill.BackColor = cl3DLight
          HAlign = haRight
          Memo.UTF8W = (
            '[sum(iif(not <frxSvod."p21">, <frxSvod."NEZKM">, 0))]')
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          Align = baRight
          Left = 626.920361175000000000
          Top = 44.000000000000000000
          Width = 84.000000000000000000
          Height = 16.000000000000000000
          DataSet = frxSvod
          DataSetName = 'frxSvod'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ' '
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Fill.BackColor = cl3DLight
          HAlign = haRight
          Memo.UTF8W = (
            '[sum(iif(not <frxSvod."p21">, <frxSvod."PEREOC">, 0))]')
          ParentFont = False
        end
        object Memo48: TfrxMemoView
          Align = baRight
          Left = 542.920361175000000000
          Top = 44.000000000000000000
          Width = 84.000000000000000000
          Height = 16.000000000000000000
          DataSet = frxSvod
          DataSetName = 'frxSvod'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ' '
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Fill.BackColor = cl3DLight
          HAlign = haRight
          Memo.UTF8W = (
            '[sum(iif(not <frxSvod."p21">, <frxSvod."RASHOD">, 0))]')
          ParentFont = False
        end
        object Memo49: TfrxMemoView
          Align = baRight
          Left = 458.920361175000000000
          Top = 44.000000000000000000
          Width = 84.000000000000000000
          Height = 16.000000000000000000
          DataSet = frxSvod
          DataSetName = 'frxSvod'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ' '
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Fill.BackColor = cl3DLight
          HAlign = haRight
          Memo.UTF8W = (
            '[sum(iif(not <frxSvod."p21">, <frxSvod."ZAGRU">, 0))]')
          ParentFont = False
        end
        object Memo50: TfrxMemoView
          Align = baRight
          Left = 374.920361175000000000
          Top = 44.000000000000000000
          Width = 84.000000000000000000
          Height = 16.000000000000000000
          DataSet = frxSvod
          DataSetName = 'frxSvod'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ' '
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Fill.BackColor = cl3DLight
          HAlign = haRight
          Memo.UTF8W = (
            '[sum(iif(not <frxSvod."p21">, <frxSvod."NEZNM">, 0))]')
          ParentFont = False
        end
        object Memo89: TfrxMemoView
          Align = baRight
          Left = 962.920361175000000000
          Top = 28.000000000000000000
          Width = 84.000000000000000000
          Height = 16.000000000000000000
          DataSet = frxSvod
          DataSetName = 'frxSvod'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ' '
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Fill.BackColor = cl3DLight
          HAlign = haRight
          ParentFont = False
        end
        object Memo90: TfrxMemoView
          Align = baRight
          Left = 878.920361175000000000
          Top = 28.000000000000000000
          Width = 84.000000000000000000
          Height = 16.000000000000000000
          DataSet = frxSvod
          DataSetName = 'frxSvod'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ' '
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Fill.BackColor = cl3DLight
          HAlign = haRight
          ParentFont = False
        end
        object Memo91: TfrxMemoView
          Align = baRight
          Left = 794.920361175000000000
          Top = 28.000000000000000000
          Width = 84.000000000000000000
          Height = 16.000000000000000000
          DataSet = frxSvod
          DataSetName = 'frxSvod'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ' '
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Fill.BackColor = cl3DLight
          HAlign = haRight
          ParentFont = False
        end
        object Memo92: TfrxMemoView
          Align = baRight
          Left = 710.920361175000000000
          Top = 28.000000000000000000
          Width = 84.000000000000000000
          Height = 16.000000000000000000
          DataSet = frxSvod
          DataSetName = 'frxSvod'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ' '
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Fill.BackColor = cl3DLight
          HAlign = haRight
          Memo.UTF8W = (
            '[sum(iif(<frxSvod."p21">, <frxSvod."NEZKM">,0))]')
          ParentFont = False
        end
        object Memo93: TfrxMemoView
          Align = baRight
          Left = 626.920361175000000000
          Top = 28.000000000000000000
          Width = 84.000000000000000000
          Height = 16.000000000000000000
          DataSet = frxSvod
          DataSetName = 'frxSvod'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ' '
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Fill.BackColor = cl3DLight
          HAlign = haRight
          ParentFont = False
        end
        object Memo94: TfrxMemoView
          Align = baRight
          Left = 542.920361175000000000
          Top = 28.000000000000000000
          Width = 84.000000000000000000
          Height = 16.000000000000000000
          DataSet = frxSvod
          DataSetName = 'frxSvod'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ' '
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Fill.BackColor = cl3DLight
          HAlign = haRight
          Memo.UTF8W = (
            '[sum(iif(<frxSvod."p21">, <frxSvod."rashod">,0))]')
          ParentFont = False
        end
        object Memo95: TfrxMemoView
          Align = baRight
          Left = 458.920361175000000000
          Top = 28.000000000000000000
          Width = 84.000000000000000000
          Height = 16.000000000000000000
          DataSet = frxSvod
          DataSetName = 'frxSvod'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ' '
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Fill.BackColor = cl3DLight
          HAlign = haRight
          Memo.UTF8W = (
            '[sum(iif(<frxSvod."p21">, <frxSvod."zagru">,0))]')
          ParentFont = False
        end
        object Memo96: TfrxMemoView
          Align = baRight
          Left = 374.920361175000000000
          Top = 28.000000000000000000
          Width = 84.000000000000000000
          Height = 16.000000000000000000
          DataSet = frxSvod
          DataSetName = 'frxSvod'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ' '
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Fill.BackColor = cl3DLight
          HAlign = haRight
          Memo.UTF8W = (
            '[sum(iif(<frxSvod."p21">, <frxSvod."neznm">,0))]')
          ParentFont = False
        end
        object Memo99: TfrxMemoView
          Align = baRight
          Left = 962.920361175000000000
          Top = 12.000000000000000000
          Width = 84.000000000000000000
          Height = 16.000000000000000000
          OnAfterData = 'Memo33OnAfterData'
          DataSet = frxSvod
          DataSetName = 'frxSvod'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ' '
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Fill.BackColor = cl3DLight
          HAlign = haRight
          Memo.UTF8W = (
            
              '[sum(iif(copy(<frxSvod."NAM">, 10,1) = '#39'2'#39', <frxSvod."ECONOM">,0' +
              '))]')
          ParentFont = False
        end
        object Memo101: TfrxMemoView
          Align = baRight
          Left = 878.920361175000000000
          Top = 12.000000000000000000
          Width = 84.000000000000000000
          Height = 16.000000000000000000
          DataSet = frxSvod
          DataSetName = 'frxSvod'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ' '
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Fill.BackColor = cl3DLight
          HAlign = haRight
          Memo.UTF8W = (
            
              '[sum(iif(copy(<frxSvod."NAM">, 10,1) = '#39'2'#39', <frxSvod."NEZCEX">,0' +
              '))]')
          ParentFont = False
        end
        object Memo102: TfrxMemoView
          Align = baRight
          Left = 794.920361175000000000
          Top = 12.000000000000000000
          Width = 84.000000000000000000
          Height = 16.000000000000000000
          DataSet = frxSvod
          DataSetName = 'frxSvod'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ' '
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Fill.BackColor = cl3DLight
          HAlign = haRight
          ParentFont = False
        end
        object Memo103: TfrxMemoView
          Align = baRight
          Left = 710.920361175000000000
          Top = 12.000000000000000000
          Width = 84.000000000000000000
          Height = 16.000000000000000000
          DataSet = frxSvod
          DataSetName = 'frxSvod'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ' '
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Fill.BackColor = cl3DLight
          HAlign = haRight
          Memo.UTF8W = (
            
              '[sum(iif(copy(<frxSvod."NAM">, 10,1) = '#39'2'#39', <frxSvod."NEZKM">,0)' +
              ')]')
          ParentFont = False
        end
        object Memo104: TfrxMemoView
          Align = baRight
          Left = 626.920361175000000000
          Top = 12.000000000000000000
          Width = 84.000000000000000000
          Height = 16.000000000000000000
          DataSet = frxSvod
          DataSetName = 'frxSvod'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ' '
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Fill.BackColor = cl3DLight
          HAlign = haRight
          Memo.UTF8W = (
            
              '[sum(iif(copy(<frxSvod."NAM">, 10,1) = '#39'2'#39', <frxSvod."PEREOC">,0' +
              '))]')
          ParentFont = False
        end
        object Memo105: TfrxMemoView
          Align = baRight
          Left = 542.920361175000000000
          Top = 12.000000000000000000
          Width = 84.000000000000000000
          Height = 16.000000000000000000
          DataSet = frxSvod
          DataSetName = 'frxSvod'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ' '
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Fill.BackColor = cl3DLight
          HAlign = haRight
          Memo.UTF8W = (
            
              '[sum(iif(copy(<frxSvod."NAM">, 10,1) = '#39'2'#39', <frxSvod."RASHOD">,0' +
              '))]')
          ParentFont = False
        end
        object Memo106: TfrxMemoView
          Align = baRight
          Left = 458.920361175000000000
          Top = 12.000000000000000000
          Width = 84.000000000000000000
          Height = 16.000000000000000000
          DataSet = frxSvod
          DataSetName = 'frxSvod'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ' '
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Fill.BackColor = cl3DLight
          HAlign = haRight
          Memo.UTF8W = (
            
              '[sum(iif(copy(<frxSvod."NAM">, 10,1) = '#39'2'#39', <frxSvod."ZAGRU">,0)' +
              ')]')
          ParentFont = False
        end
        object Memo107: TfrxMemoView
          Align = baRight
          Left = 374.920361175000000000
          Top = 12.000000000000000000
          Width = 84.000000000000000000
          Height = 16.000000000000000000
          DataSet = frxSvod
          DataSetName = 'frxSvod'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ' '
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Fill.BackColor = cl3DLight
          HAlign = haRight
          Memo.UTF8W = (
            
              '[sum(iif(copy(<frxSvod."NAM">, 10,1) = '#39'2'#39', <frxSvod."NEZNM">,0)' +
              ')]')
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Height = 60.000000000000000000
        Top = 272.000000000000000000
        Width = 1046.920361175000000000
        object Memo57: TfrxMemoView
          Align = baRight
          Left = 962.920361175000000000
          Width = 84.000000000000000000
          Height = 44.000000000000000000
          DataSet = frxSvod
          DataSetName = 'frxSvod'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ' '
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1069#1082#1086#1085#1086#1084#1080#1103'-   '#1087#1077#1088#1077#1088#1072#1089#1093#1086#1076' ('#1088#1091#1073'.)')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo58: TfrxMemoView
          Align = baRight
          Left = 878.920361175000000000
          Width = 84.000000000000000000
          Height = 44.000000000000000000
          DataSet = frxSvod
          DataSetName = 'frxSvod'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ' '
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1053#1077#1079#1072#1074#1077#1088#1096#1077#1085#1082#1072' '#1087#1086' '#1094#1077#1093#1072#1084' ('#1088#1091#1073'.)')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo59: TfrxMemoView
          Align = baRight
          Left = 794.920361175000000000
          Top = 28.000000000000000000
          Width = 84.000000000000000000
          Height = 16.000000000000000000
          DataSet = frxSvod
          DataSetName = 'frxSvod'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ' '
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1088#1072#1089#1095#1077#1090#1085#1072#1103)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo60: TfrxMemoView
          Align = baRight
          Left = 710.920361175000000000
          Top = 28.000000000000000000
          Width = 84.000000000000000000
          Height = 16.000000000000000000
          DataSet = frxSvod
          DataSetName = 'frxSvod'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ' '
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1092#1072#1082#1090#1080#1095#1077#1089#1082#1072#1103)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo61: TfrxMemoView
          Align = baRight
          Left = 626.920361175000000000
          Width = 84.000000000000000000
          Height = 44.000000000000000000
          DataSet = frxSvod
          DataSetName = 'frxSvod'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ' '
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1055#1077#1088#1077#1086#1094#1077#1085#1082#1072' ('#1088#1091#1073'.)')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo62: TfrxMemoView
          Align = baRight
          Left = 542.920361175000000000
          Width = 84.000000000000000000
          Height = 44.000000000000000000
          DataSet = frxSvod
          DataSetName = 'frxSvod'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ' '
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1056#1072#1089#1093#1086#1076' '#1085#1072' '#1074#1099#1088#1072#1073#1086#1090#1082#1091' ('#1088#1091#1073'.)')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo63: TfrxMemoView
          Align = baRight
          Left = 458.920361175000000000
          Width = 84.000000000000000000
          Height = 44.000000000000000000
          DataSet = frxSvod
          DataSetName = 'frxSvod'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ' '
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1047#1072#1075#1088#1091#1079#1082#1072' ('#1088#1091#1073'.)')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo64: TfrxMemoView
          Align = baRight
          Left = 374.920361175000000000
          Width = 84.000000000000000000
          Height = 44.000000000000000000
          DataSet = frxSvod
          DataSetName = 'frxSvod'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ' '
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1053#1077#1079#1072#1074#1077#1088#1096#1077#1085#1082#1072' '#1085#1072' '#1085#1072#1095#1072#1083#1086' '#1084'-'#1094#1072' ('#1088#1091#1073'.)')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo56: TfrxMemoView
          Align = baWidth
          Width = 374.920361175000000000
          Height = 44.000000000000000000
          DataSet = frxSvod
          DataSetName = 'frxSvod'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ' '
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '        '#1050#1086#1076'                '#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1087#1088#1077#1087#1072#1088#1072#1090#1072)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo67: TfrxMemoView
          Align = baRight
          Left = 962.920361175000000000
          Top = 44.000000000000000000
          Width = 84.000000000000000000
          Height = 16.000000000000000000
          DataSet = frxSvod
          DataSetName = 'frxSvod'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ' '
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '09')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo68: TfrxMemoView
          Align = baRight
          Left = 878.920361175000000000
          Top = 44.000000000000000000
          Width = 84.000000000000000000
          Height = 16.000000000000000000
          DataSet = frxSvod
          DataSetName = 'frxSvod'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ' '
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '08')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo69: TfrxMemoView
          Align = baRight
          Left = 794.920361175000000000
          Top = 44.000000000000000000
          Width = 84.000000000000000000
          Height = 16.000000000000000000
          DataSet = frxSvod
          DataSetName = 'frxSvod'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ' '
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '07')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo70: TfrxMemoView
          Align = baRight
          Left = 710.920361175000000000
          Top = 44.000000000000000000
          Width = 84.000000000000000000
          Height = 16.000000000000000000
          DataSet = frxSvod
          DataSetName = 'frxSvod'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ' '
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '06')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo71: TfrxMemoView
          Align = baRight
          Left = 626.920361175000000000
          Top = 44.000000000000000000
          Width = 84.000000000000000000
          Height = 16.000000000000000000
          DataSet = frxSvod
          DataSetName = 'frxSvod'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ' '
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '05')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo72: TfrxMemoView
          Align = baRight
          Left = 542.920361175000000000
          Top = 44.000000000000000000
          Width = 84.000000000000000000
          Height = 16.000000000000000000
          DataSet = frxSvod
          DataSetName = 'frxSvod'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ' '
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '04')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo73: TfrxMemoView
          Align = baRight
          Left = 458.920361175000000000
          Top = 44.000000000000000000
          Width = 84.000000000000000000
          Height = 16.000000000000000000
          DataSet = frxSvod
          DataSetName = 'frxSvod'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ' '
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '03')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo74: TfrxMemoView
          Align = baRight
          Left = 374.920361175000000000
          Top = 44.000000000000000000
          Width = 84.000000000000000000
          Height = 16.000000000000000000
          DataSet = frxSvod
          DataSetName = 'frxSvod'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ' '
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '02')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo75: TfrxMemoView
          Align = baWidth
          Top = 44.000000000000000000
          Width = 374.920361175000000000
          Height = 16.000000000000000000
          DataSet = frxSvod
          DataSetName = 'frxSvod'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ' '
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '01')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo87: TfrxMemoView
          Align = baRight
          Left = 710.920361175000000000
          Width = 168.000000000000000000
          Height = 28.000000000000000000
          DataSet = frxSvod
          DataSetName = 'frxSvod'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ' '
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1053#1077#1079#1072#1074#1077#1088#1096#1077#1085#1082#1072' '#1085#1072' '#1082#1086#1085#1077#1094' '#1084'-'#1094#1072' ('#1088#1091#1073'.)')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Top = 500.000000000000000000
        Width = 1046.920361175000000000
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Height = 20.000000000000000000
        Top = 352.000000000000000000
        Width = 1046.920361175000000000
        Condition = 'frxSvod."STRUK_ID"'
        object Memo2: TfrxMemoView
          Align = baWidth
          Width = 1046.920361175000000000
          Height = 20.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Memo.UTF8W = (
            '               [frxSvod."STNAME"]')
          ParentFont = False
          VAlign = vaBottom
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Height = 52.000000000000000000
        Top = 428.000000000000000000
        Width = 1046.920361175000000000
        OnAfterPrint = 'GroupFooter1OnAfterPrint'
        object Memo31: TfrxMemoView
          Align = baWidth
          Top = 20.000000000000000000
          Width = 374.920361175000000000
          Height = 16.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Fill.BackColor = cl3DLight
          Memo.UTF8W = (
            #1048#1090#1086#1075#1086' '#1087#1086' 21 '#1089#1095#1077#1090#1091' ('#1087'/'#1092') [frxSvod."STNAME_SHORT_DAV"]')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          Align = baWidth
          Top = 36.000000000000000000
          Width = 374.920361175000000000
          Height = 16.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Fill.BackColor = cl3DLight
          Memo.UTF8W = (
            #1048#1090#1086#1075#1086' '#1087#1086' [frxSvod."stname_short_dav"]')
          ParentFont = False
        end
        object Memo54: TfrxMemoView
          Align = baWidth
          Width = 1046.920361175000000000
          Height = 4.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo97: TfrxMemoView
          Align = baWidth
          Top = 4.000000000000000000
          Width = 374.920361175000000000
          Height = 16.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Fill.BackColor = cl3DLight
          Memo.UTF8W = (
            #1042' '#1090#1086#1084' '#1095#1080#1089#1083#1077' '#1080#1090#1086#1075#1086' '#1087#1086' '#1087'/'#1087' '#1094#1077#1093#1072':')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Align = baRight
          Left = 962.920361175000000000
          Top = 36.000000000000000000
          Width = 84.000000000000000000
          Height = 16.000000000000000000
          OnAfterData = 'Memo13OnAfterData'
          OnAfterPrint = 'Memo13OnAfterPrint'
          DataSet = frxSvod
          DataSetName = 'frxSvod'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ' '
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Fill.BackColor = cl3DLight
          HAlign = haRight
          Memo.UTF8W = (
            '[sum(iif(not <frxSvod."p21">, <frxSvod."ECONOM">, 0))]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Align = baRight
          Left = 878.920361175000000000
          Top = 36.000000000000000000
          Width = 84.000000000000000000
          Height = 16.000000000000000000
          DataSet = frxSvod
          DataSetName = 'frxSvod'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ' '
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Fill.BackColor = cl3DLight
          HAlign = haRight
          Memo.UTF8W = (
            '[sum(iif(not <frxSvod."p21">, <frxSvod."NEZCEX">, 0))]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Align = baRight
          Left = 794.920361175000000000
          Top = 36.000000000000000000
          Width = 84.000000000000000000
          Height = 16.000000000000000000
          DataSet = frxSvod
          DataSetName = 'frxSvod'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ' '
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Fill.BackColor = cl3DLight
          HAlign = haRight
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Align = baRight
          Left = 710.920361175000000000
          Top = 36.000000000000000000
          Width = 84.000000000000000000
          Height = 16.000000000000000000
          DataSet = frxSvod
          DataSetName = 'frxSvod'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ' '
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Fill.BackColor = cl3DLight
          HAlign = haRight
          Memo.UTF8W = (
            '[sum(iif(not <frxSvod."p21">, <frxSvod."NEZKM">, 0))]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Align = baRight
          Left = 626.920361175000000000
          Top = 36.000000000000000000
          Width = 84.000000000000000000
          Height = 16.000000000000000000
          DataSet = frxSvod
          DataSetName = 'frxSvod'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ' '
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Fill.BackColor = cl3DLight
          HAlign = haRight
          Memo.UTF8W = (
            '[sum(iif(not <frxSvod."p21">, <frxSvod."PEREOC">, 0))]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Align = baRight
          Left = 542.920361175000000000
          Top = 36.000000000000000000
          Width = 84.000000000000000000
          Height = 16.000000000000000000
          DataSet = frxSvod
          DataSetName = 'frxSvod'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ' '
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Fill.BackColor = cl3DLight
          HAlign = haRight
          Memo.UTF8W = (
            '[sum(iif(not <frxSvod."p21">, <frxSvod."RASHOD">, 0))]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Align = baRight
          Left = 458.920361175000000000
          Top = 36.000000000000000000
          Width = 84.000000000000000000
          Height = 16.000000000000000000
          DataSet = frxSvod
          DataSetName = 'frxSvod'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ' '
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Fill.BackColor = cl3DLight
          HAlign = haRight
          Memo.UTF8W = (
            '[sum(iif(not <frxSvod."p21">, <frxSvod."ZAGRU">, 0))]')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Align = baRight
          Left = 374.920361175000000000
          Top = 36.000000000000000000
          Width = 84.000000000000000000
          Height = 16.000000000000000000
          DataSet = frxSvod
          DataSetName = 'frxSvod'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ' '
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Fill.BackColor = cl3DLight
          HAlign = haRight
          Memo.UTF8W = (
            '[sum(iif(not <frxSvod."p21">, <frxSvod."NEZNM">, 0))]')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Align = baRight
          Left = 962.920361175000000000
          Top = 20.000000000000000000
          Width = 84.000000000000000000
          Height = 16.000000000000000000
          DataSet = frxSvod
          DataSetName = 'frxSvod'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ' '
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Fill.BackColor = cl3DLight
          HAlign = haRight
          Memo.UTF8W = (
            '')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Align = baRight
          Left = 878.920361175000000000
          Top = 20.000000000000000000
          Width = 84.000000000000000000
          Height = 16.000000000000000000
          DataSet = frxSvod
          DataSetName = 'frxSvod'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ' '
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Fill.BackColor = cl3DLight
          HAlign = haRight
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Align = baRight
          Left = 794.920361175000000000
          Top = 20.000000000000000000
          Width = 84.000000000000000000
          Height = 16.000000000000000000
          DataSet = frxSvod
          DataSetName = 'frxSvod'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ' '
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Fill.BackColor = cl3DLight
          HAlign = haRight
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Align = baRight
          Left = 710.920361175000000000
          Top = 20.000000000000000000
          Width = 84.000000000000000000
          Height = 16.000000000000000000
          DataSet = frxSvod
          DataSetName = 'frxSvod'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ' '
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Fill.BackColor = cl3DLight
          HAlign = haRight
          Memo.UTF8W = (
            '[sum(iif(<frxSvod."p21">, <frxSvod."NEZKM">,0))]')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Align = baRight
          Left = 626.920361175000000000
          Top = 20.000000000000000000
          Width = 84.000000000000000000
          Height = 16.000000000000000000
          DataSet = frxSvod
          DataSetName = 'frxSvod'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ' '
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Fill.BackColor = cl3DLight
          HAlign = haRight
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Align = baRight
          Left = 542.920361175000000000
          Top = 20.000000000000000000
          Width = 84.000000000000000000
          Height = 16.000000000000000000
          DataSet = frxSvod
          DataSetName = 'frxSvod'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ' '
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Fill.BackColor = cl3DLight
          HAlign = haRight
          Memo.UTF8W = (
            '[sum(iif(<frxSvod."p21">, <frxSvod."rashod">,0))]')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Align = baRight
          Left = 458.920361175000000000
          Top = 20.000000000000000000
          Width = 84.000000000000000000
          Height = 16.000000000000000000
          DataSet = frxSvod
          DataSetName = 'frxSvod'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ' '
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Fill.BackColor = cl3DLight
          HAlign = haRight
          Memo.UTF8W = (
            '[sum(iif(<frxSvod."p21">, <frxSvod."zagru">,0))]')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Align = baRight
          Left = 374.920361175000000000
          Top = 20.000000000000000000
          Width = 84.000000000000000000
          Height = 16.000000000000000000
          DataSet = frxSvod
          DataSetName = 'frxSvod'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ' '
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Fill.BackColor = cl3DLight
          HAlign = haRight
          Memo.UTF8W = (
            '[sum(iif(<frxSvod."p21">, <frxSvod."neznm">,0))]')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          Align = baRight
          Left = 962.920361175000000000
          Top = 4.000000000000000000
          Width = 84.000000000000000000
          Height = 16.000000000000000000
          OnAfterData = 'Memo33OnAfterData'
          DataSet = frxSvod
          DataSetName = 'frxSvod'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ' '
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Fill.BackColor = cl3DLight
          HAlign = haRight
          Memo.UTF8W = (
            
              '[sum(iif(copy(<frxSvod."NAM">, 10,1) = '#39'2'#39', <frxSvod."ECONOM">,0' +
              '))]')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          Align = baRight
          Left = 878.920361175000000000
          Top = 4.000000000000000000
          Width = 84.000000000000000000
          Height = 16.000000000000000000
          DataSet = frxSvod
          DataSetName = 'frxSvod'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ' '
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Fill.BackColor = cl3DLight
          HAlign = haRight
          Memo.UTF8W = (
            
              '[sum(iif(copy(<frxSvod."NAM">, 10,1) = '#39'2'#39', <frxSvod."NEZCEX">,0' +
              '))]')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          Align = baRight
          Left = 794.920361175000000000
          Top = 4.000000000000000000
          Width = 84.000000000000000000
          Height = 16.000000000000000000
          DataSet = frxSvod
          DataSetName = 'frxSvod'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ' '
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Fill.BackColor = cl3DLight
          HAlign = haRight
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          Align = baRight
          Left = 710.920361175000000000
          Top = 4.000000000000000000
          Width = 84.000000000000000000
          Height = 16.000000000000000000
          DataSet = frxSvod
          DataSetName = 'frxSvod'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ' '
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Fill.BackColor = cl3DLight
          HAlign = haRight
          Memo.UTF8W = (
            
              '[sum(iif(copy(<frxSvod."NAM">, 10,1) = '#39'2'#39', <frxSvod."NEZKM">,0)' +
              ')]')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          Align = baRight
          Left = 626.920361175000000000
          Top = 4.000000000000000000
          Width = 84.000000000000000000
          Height = 16.000000000000000000
          DataSet = frxSvod
          DataSetName = 'frxSvod'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ' '
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Fill.BackColor = cl3DLight
          HAlign = haRight
          Memo.UTF8W = (
            
              '[sum(iif(copy(<frxSvod."NAM">, 10,1) = '#39'2'#39', <frxSvod."PEREOC">,0' +
              '))]')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          Align = baRight
          Left = 542.920361175000000000
          Top = 4.000000000000000000
          Width = 84.000000000000000000
          Height = 16.000000000000000000
          DataSet = frxSvod
          DataSetName = 'frxSvod'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ' '
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Fill.BackColor = cl3DLight
          HAlign = haRight
          Memo.UTF8W = (
            
              '[sum(iif(copy(<frxSvod."NAM">, 10,1) = '#39'2'#39', <frxSvod."RASHOD">,0' +
              '))]')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          Align = baRight
          Left = 458.920361175000000000
          Top = 4.000000000000000000
          Width = 84.000000000000000000
          Height = 16.000000000000000000
          DataSet = frxSvod
          DataSetName = 'frxSvod'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ' '
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Fill.BackColor = cl3DLight
          HAlign = haRight
          Memo.UTF8W = (
            
              '[sum(iif(copy(<frxSvod."NAM">, 10,1) = '#39'2'#39', <frxSvod."ZAGRU">,0)' +
              ')]')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          Align = baRight
          Left = 374.920361175000000000
          Top = 4.000000000000000000
          Width = 84.000000000000000000
          Height = 16.000000000000000000
          DataSet = frxSvod
          DataSetName = 'frxSvod'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ' '
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Fill.BackColor = cl3DLight
          HAlign = haRight
          Memo.UTF8W = (
            
              '[sum(iif(copy(<frxSvod."NAM">, 10,1) = '#39'2'#39', <frxSvod."NEZNM">,0)' +
              ')]')
          ParentFont = False
        end
      end
    end
  end
  object frxSvod: TfrxDBDataset
    UserName = 'frxSvod'
    CloseDataSource = False
    FieldAliases.Strings = (
      'GOD=GOD'
      'MES=MES'
      'CEH=CEH'
      'KOPREP=KOPREP'
      'NAM=NAM'
      'KR101=KR101'
      'VOZVRA15=VOZVRA15'
      'KR102=KR102'
      'VOZVRA25=VOZVRA25'
      'KR104=KR104'
      'VOZVRA45=VOZVRA45'
      'PF21=PF21'
      'VOZKOL=VOZKOL'
      'VOZVR=VOZVR'
      'STRUK_ID=STRUK_ID'
      'PP_101=PP_101'
      'PP_102=PP_102'
      'PP_104=PP_104'
      'SUM_KR10=SUM_KR10'
      'PP_21=PP_21'
      'PP_VOZKOL=PP_VOZKOL'
      'PP_VOZVR=PP_VOZVR'
      'SUM_ALL=SUM_ALL'
      'SUM_PP_ALL=SUM_PP_ALL'
      'S43KR102=S43KR102'
      'S43KR104=S43KR104'
      'VOZVR5=VOZVR5'
      'SUM_PP_KR10=SUM_PP_KR10'
      'STNAME_SHORT_ROD=STNAME_SHORT_ROD'
      'STNAME_SHORT_DAV=STNAME_SHORT_DAV'
      'OSNOV=OSNOV'
      'VOZVRA=VOZVRA'
      'VSPOM=VSPOM'
      'PRASVYR=PRASVYR'
      'TARA=TARA'
      'UPAK=UPAK'
      'TOVAR_SUM=TOVAR_SUM'
      'TOVAR_SUM_ALL=TOVAR_SUM_ALL'
      'PP_OSNOV=PP_OSNOV'
      'PP_VOZVRA=PP_VOZVRA'
      'PP_VSPOM=PP_VSPOM'
      'PP_PRASVYR=PP_PRASVYR'
      'PP_TOVAR_SUM=PP_TOVAR_SUM'
      'PP_TOVAR_SUM_ALL=PP_TOVAR_SUM_ALL'
      'PP_TARA=PP_TARA'
      'PP_UPAK=PP_UPAK'
      'NEZNM=NEZNM'
      'ZAGRU=ZAGRU'
      'VOZVRA1=VOZVRA1'
      'VOZVRA2=VOZVRA2'
      'VOZVRA4=VOZVRA4'
      'PEREOC=PEREOC'
      'NEZKM=NEZKM'
      'NEZCEX=NEZCEX'
      'NEZPROD=NEZPROD'
      'ECONOM=ECONOM'
      'PNEZNM=PNEZNM'
      'PNEZKM=PNEZKM'
      'RASHOD=RASHOD'
      'RASVYR=RASVYR'
      'NEZ_RASCH=NEZ_RASCH'
      'STNAME=STNAME'
      'P21=P21'
      'SHOW_ALL=SHOW_ALL')
    DataSet = mem_svodVed
    BCDToCurrency = False
    Left = 376
    Top = 128
  end
  object q_svodNezav: TERxQuery
    SQL.Strings = (
      
        'select sv.god, sv.mes, sv.ceh, sv.koprep, sv.nam, sv.pf21, sv.pr' +
        'asvyr, '
      'sv.neznm, sv.nezkm, sv.pneznm, sv.pnezkm, sv.rasvyr'
      'from '#39'f:\pc1\otchbas\svotab.dbf'#39' sv'
      'where (god <> :year and mes <> :month) and ceh = :stkod'
      'and sv.nezkm<>0'
      'order by nam')
    EhSQL.Strings = (
      
        'select sv.god, sv.mes, sv.ceh, sv.koprep, sv.nam, sv.pf21, sv.pr' +
        'asvyr, '
      'sv.neznm, sv.nezkm, sv.pneznm, sv.pnezkm, sv.rasvyr'
      'from '#39'f:\pc1\otchbas\svotab.dbf'#39' sv'
      'where (god <> :year and mes <> :month) and ceh = :stkod'
      'and sv.nezkm<>0'
      'order by nam')
    EhMacros = <>
    Left = 56
    Top = 80
    ParamData = <
      item
        DataType = ftString
        Name = 'year'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'month'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'stkod'
        ParamType = ptInput
      end>
    object q_svodNezavGOD: TStringField
      FieldName = 'GOD'
      Size = 2
    end
    object q_svodNezavMES: TStringField
      FieldName = 'MES'
      Size = 2
    end
    object q_svodNezavCEH: TStringField
      FieldName = 'CEH'
      Size = 4
    end
    object q_svodNezavKOPREP: TStringField
      FieldName = 'KOPREP'
      Size = 6
    end
    object q_svodNezavNAM: TStringField
      FieldName = 'NAM'
      Size = 50
    end
    object q_svodNezavPF21: TFloatField
      FieldName = 'PF21'
    end
    object q_svodNezavPRASVYR: TFloatField
      FieldName = 'PRASVYR'
    end
    object q_svodNezavNEZNM: TFloatField
      FieldName = 'NEZNM'
    end
    object q_svodNezavNEZKM: TFloatField
      FieldName = 'NEZKM'
    end
    object q_svodNezavPNEZNM: TFloatField
      FieldName = 'PNEZNM'
    end
    object q_svodNezavPNEZKM: TFloatField
      FieldName = 'PNEZKM'
    end
    object q_svodNezavRASVYR: TFloatField
      FieldName = 'RASVYR'
    end
  end
end
