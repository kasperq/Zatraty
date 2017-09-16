object cPFDM: TcPFDM
  OldCreateOrder = False
  OnDestroy = DataModuleDestroy
  Height = 686
  Width = 858
  object q_cenPfDBf: TERxQuery
    SQL.Strings = (
      
        'select cenpf.god, cenpf.mes, cenpf.otstrk, cenpf.otmatr, cenpf.c' +
        'ena_za,'
      'cenpf.skol_skl, cenpf.ssum_skl, cenpf.vipusk, cenpf.sum_sv,'
      'cenpf.sum_fs, cenpf.skol_ceh, cenpf.ssum_ceh,'
      'cenpf.kpri_ceh, cenpf.spri_ceh,'
      'cenpf.vipusk+ cenpf.sum_sv+cenpf.sum_fs as sum_pri_c'
      'from '#39'f:\pc1\otchbas\cen_pf.dbf'#39' cenpf'
      'where cenpf.god = :year'
      'and cenpf.mes = :month'
      'order by cenpf.otstrk, cenpf.otmatr')
    EhSQL.Strings = (
      
        'select cenpf.god, cenpf.mes, cenpf.otstrk, cenpf.otmatr, cenpf.c' +
        'ena_za,'
      'cenpf.skol_skl, cenpf.ssum_skl, cenpf.vipusk, cenpf.sum_sv,'
      'cenpf.sum_fs, cenpf.skol_ceh, cenpf.ssum_ceh,'
      'cenpf.kpri_ceh, cenpf.spri_ceh,'
      'cenpf.vipusk+ cenpf.sum_sv+cenpf.sum_fs as sum_pri_c'
      'from '#39'f:\pc1\otchbas\cen_pf.dbf'#39' cenpf'
      'where cenpf.god = :year'
      'and cenpf.mes = :month'
      'order by cenpf.otstrk, cenpf.otmatr')
    EhMacros = <>
    Left = 72
    Top = 56
    ParamData = <
      item
        DataType = ftInteger
        Name = 'year'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'month'
        ParamType = ptInput
      end>
    object q_cenPfDBfGOD: TSmallintField
      FieldName = 'GOD'
    end
    object q_cenPfDBfMES: TSmallintField
      FieldName = 'MES'
    end
    object q_cenPfDBfOTSTRK: TStringField
      FieldName = 'OTSTRK'
      Size = 4
    end
    object q_cenPfDBfOTMATR: TStringField
      FieldName = 'OTMATR'
      Size = 5
    end
    object q_cenPfDBfCENA_ZA: TFloatField
      FieldName = 'CENA_ZA'
    end
    object q_cenPfDBfSKOL_SKL: TFloatField
      FieldName = 'SKOL_SKL'
    end
    object q_cenPfDBfSSUM_SKL: TFloatField
      FieldName = 'SSUM_SKL'
    end
    object q_cenPfDBfVIPUSK: TFloatField
      FieldName = 'VIPUSK'
    end
    object q_cenPfDBfSUM_SV: TFloatField
      FieldName = 'SUM_SV'
    end
    object q_cenPfDBfSUM_FS: TFloatField
      FieldName = 'SUM_FS'
    end
    object q_cenPfDBfSKOL_CEH: TFloatField
      FieldName = 'SKOL_CEH'
    end
    object q_cenPfDBfSSUM_CEH: TFloatField
      FieldName = 'SSUM_CEH'
    end
    object q_cenPfDBfKPRI_CEH: TFloatField
      FieldName = 'KPRI_CEH'
    end
    object q_cenPfDBfSPRI_CEH: TFloatField
      FieldName = 'SPRI_CEH'
    end
    object q_cenPfDBfSUM_PRI_C: TFloatField
      FieldName = 'SUM_PRI_C'
    end
  end
  object mem_cenPf: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <>
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
    Left = 64
    Top = 136
    object mem_cenPfGOD: TSmallintField
      FieldName = 'GOD'
    end
    object mem_cenPfMES: TSmallintField
      FieldName = 'MES'
    end
    object mem_cenPfOTSTRK: TStringField
      FieldName = 'OTSTRK'
      Size = 4
    end
    object mem_cenPfOTMATR: TStringField
      FieldName = 'OTMATR'
      Size = 5
    end
    object mem_cenPfCENA_ZA: TFloatField
      FieldName = 'CENA_ZA'
    end
    object mem_cenPfSKOL_SKL: TFloatField
      FieldName = 'SKOL_SKL'
    end
    object mem_cenPfSSUM_SKL: TFloatField
      FieldName = 'SSUM_SKL'
    end
    object mem_cenPfVIPUSK: TFloatField
      FieldName = 'VIPUSK'
    end
    object mem_cenPfSUM_SV: TFloatField
      FieldName = 'SUM_SV'
    end
    object mem_cenPfSUM_FS: TFloatField
      FieldName = 'SUM_FS'
    end
    object mem_cenPfSKOL_CEH: TFloatField
      FieldName = 'SKOL_CEH'
    end
    object mem_cenPfSSUM_CEH: TFloatField
      FieldName = 'SSUM_CEH'
    end
    object mem_cenPfSPRI_CEH: TFloatField
      FieldName = 'SPRI_CEH'
    end
    object mem_cenPfSUM_PRI_C: TFloatField
      FieldName = 'SUM_PRI_C'
    end
    object mem_cenPfKOD_PROD: TStringField
      FieldName = 'KOD_PROD'
      Size = 18
    end
    object mem_cenPfNMAT: TStringField
      FieldName = 'NMAT'
      Size = 60
    end
    object mem_cenPfKSM_ID: TIntegerField
      FieldName = 'KSM_ID'
    end
    object mem_cenPfKPRI_CEH: TFloatField
      FieldName = 'KPRI_CEH'
    end
  end
  object q_spprod: TRxIBQuery
    Database = dDM.db
    Transaction = dDM.trans_read
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select *'
      'from spprod')
    Macros = <>
    Left = 160
    Top = 56
    object q_spprodSPROD_ID: TIntegerField
      FieldName = 'SPROD_ID'
      Origin = '"SPPROD"."SPROD_ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object q_spprodKSM_ID: TIntegerField
      FieldName = 'KSM_ID'
      Origin = '"SPPROD"."KSM_ID"'
      Required = True
    end
    object q_spprodSPKSM: TIBStringField
      FieldName = 'SPKSM'
      Origin = '"SPPROD"."SPKSM"'
      FixedChar = True
      Size = 6
    end
    object q_spprodSPPRN: TSmallintField
      FieldName = 'SPPRN'
      Origin = '"SPPROD"."SPPRN"'
    end
    object q_spprodSPVIS: TSmallintField
      FieldName = 'SPVIS'
      Origin = '"SPPROD"."SPVIS"'
    end
    object q_spprodNMAT: TIBStringField
      FieldName = 'NMAT'
      Origin = '"SPPROD"."NMAT"'
      Size = 60
    end
    object q_spprodPROD_ID: TIntegerField
      FieldName = 'PROD_ID'
      Origin = '"SPPROD"."PROD_ID"'
    end
    object q_spprodKEI_ID: TSmallintField
      FieldName = 'KEI_ID'
      Origin = '"SPPROD"."KEI_ID"'
    end
    object q_spprodLEK_ID: TSmallintField
      FieldName = 'LEK_ID'
      Origin = '"SPPROD"."LEK_ID"'
    end
    object q_spprodMOD_ID: TSmallintField
      FieldName = 'MOD_ID'
      Origin = '"SPPROD"."MOD_ID"'
    end
    object q_spprodSPRODS: TSmallintField
      FieldName = 'SPRODS'
      Origin = '"SPPROD"."SPRODS"'
    end
    object q_spprodSPSR: TSmallintField
      FieldName = 'SPSR'
      Origin = '"SPPROD"."SPSR"'
    end
    object q_spprodVOL_ID: TSmallintField
      FieldName = 'VOL_ID'
      Origin = '"SPPROD"."VOL_ID"'
    end
    object q_spprodUMN: TSmallintField
      FieldName = 'UMN'
      Origin = '"SPPROD"."UMN"'
    end
    object q_spprodEAN13: TSmallintField
      FieldName = 'EAN13'
      Origin = '"SPPROD"."EAN13"'
    end
    object q_spprodSPRIZ: TSmallintField
      FieldName = 'SPRIZ'
      Origin = '"SPPROD"."SPRIZ"'
    end
    object q_spprodSTRUK_ID: TSmallintField
      FieldName = 'STRUK_ID'
      Origin = '"SPPROD"."STRUK_ID"'
    end
    object q_spprodREG: TSmallintField
      FieldName = 'REG'
      Origin = '"SPPROD"."REG"'
    end
    object q_spprodKORG: TIntegerField
      FieldName = 'KORG'
      Origin = '"SPPROD"."KORG"'
    end
    object q_spprodSPFS: TIBStringField
      FieldName = 'SPFS'
      Origin = '"SPPROD"."SPFS"'
      FixedChar = True
      Size = 2
    end
    object q_spprodSPFV: TSmallintField
      FieldName = 'SPFV'
      Origin = '"SPPROD"."SPFV"'
    end
    object q_spprodSPVU: TSmallintField
      FieldName = 'SPVU'
      Origin = '"SPPROD"."SPVU"'
    end
    object q_spprodSPTIP: TSmallintField
      FieldName = 'SPTIP'
      Origin = '"SPPROD"."SPTIP"'
    end
    object q_spprodSPSPIS: TSmallintField
      FieldName = 'SPSPIS'
      Origin = '"SPPROD"."SPSPIS"'
    end
    object q_spprodDOLPO: TIBBCDField
      FieldName = 'DOLPO'
      Origin = '"SPPROD"."DOLPO"'
      Precision = 9
      Size = 2
    end
    object q_spprodSTAT: TSmallintField
      FieldName = 'STAT'
      Origin = '"SPPROD"."STAT"'
    end
    object q_spprodPUP: TSmallintField
      FieldName = 'PUP'
      Origin = '"SPPROD"."PUP"'
    end
    object q_spprodNMATS: TIBStringField
      FieldName = 'NMATS'
      Origin = '"SPPROD"."NMATS"'
      FixedChar = True
      Size = 25
    end
    object q_spprodGOST: TIBStringField
      FieldName = 'GOST'
      Origin = '"SPPROD"."GOST"'
      FixedChar = True
      Size = 30
    end
    object q_spprodGR: TIBStringField
      FieldName = 'GR'
      Origin = '"SPPROD"."GR"'
      FixedChar = True
      Size = 2
    end
    object q_spprodPGR: TIBStringField
      FieldName = 'PGR'
      Origin = '"SPPROD"."PGR"'
      FixedChar = True
      Size = 2
    end
    object q_spprodXARKT: TIBStringField
      FieldName = 'XARKT'
      Origin = '"SPPROD"."XARKT"'
      Size = 30
    end
    object q_spprodACTIVP: TSmallintField
      FieldName = 'ACTIVP'
      Origin = '"SPPROD"."ACTIVP"'
    end
    object q_spprodACTIVF: TSmallintField
      FieldName = 'ACTIVF'
      Origin = '"SPPROD"."ACTIVF"'
    end
    object q_spprodREGISTR_ID: TIntegerField
      FieldName = 'REGISTR_ID'
      Origin = '"SPPROD"."REGISTR_ID"'
    end
    object q_spprodVOLUMF: TFMTBCDField
      FieldName = 'VOLUMF'
      Origin = '"SPPROD"."VOLUMF"'
      Precision = 18
      Size = 6
    end
    object q_spprodVOL_OV: TFMTBCDField
      FieldName = 'VOL_OV'
      Origin = '"SPPROD"."VOL_OV"'
      Precision = 18
      Size = 6
    end
    object q_spprodKOD_PROD: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'KOD_PROD'
      Origin = '"SPPROD"."KOD_PROD"'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 18
    end
    object q_spprodMAIN_SPROD_ID: TIntegerField
      FieldName = 'MAIN_SPROD_ID'
      Origin = '"SPPROD"."MAIN_SPROD_ID"'
    end
    object q_spprodVES_UP: TIBBCDField
      FieldName = 'VES_UP'
      Origin = '"SPPROD"."VES_UP"'
      Precision = 9
      Size = 3
    end
    object q_spprodINOV: TSmallintField
      FieldName = 'INOV'
      Origin = '"SPPROD"."INOV"'
    end
    object q_spprodDATEI_1: TDateField
      FieldName = 'DATEI_1'
      Origin = '"SPPROD"."DATEI_1"'
    end
    object q_spprodDATEI_2: TDateField
      FieldName = 'DATEI_2'
      Origin = '"SPPROD"."DATEI_2"'
    end
    object q_spprodREGLS_ID: TIntegerField
      FieldName = 'REGLS_ID'
      Origin = '"SPPROD"."REGLS_ID"'
    end
    object q_spprodSERTIFIED: TSmallintField
      FieldName = 'SERTIFIED'
      Origin = '"SPPROD"."SERTIFIED"'
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
    ReportOptions.CreateDate = 42879.731851990700000000
    ReportOptions.LastChange = 42886.654136377310000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 280
    Top = 64
    Datasets = <
      item
        DataSet = frxCenPF
        DataSetName = 'frxCenPF'
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
        Height = 52.000000000000000000
        Top = 16.000000000000000000
        Width = 1046.920361175000000000
        object Memo1: TfrxMemoView
          Align = baWidth
          Top = 4.000000000000000000
          Width = 1046.920361175000000000
          Height = 48.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            #1056#1072#1089#1095#1077#1090' '#1094#1077#1085' '#1079#1072#1075#1088#1091#1079#1082#1080' '#1085#1072' '#1087#1086#1083#1091#1092#1072#1073#1088#1080#1082#1072#1090#1099
            #1079#1072' [month_str] '#1084#1077#1089#1103#1094' [year] '#1075'.')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Top = 376.000000000000000000
        Width = 1046.920361175000000000
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 56.000000000000000000
        Top = 88.000000000000000000
        Width = 1046.920361175000000000
        PrintOnFirstPage = False
        object Memo51: TfrxMemoView
          Align = baLeft
          Top = 40.000000000000000000
          Width = 36.000000000000000000
          Height = 16.000000000000000000
          DataSet = frxCenPF
          DataSetName = 'frxCenPF'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '01')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo52: TfrxMemoView
          Align = baLeft
          Left = 80.000000000000000000
          Top = 40.000000000000000000
          Width = 88.000000000000000000
          Height = 16.000000000000000000
          DataSet = frxCenPF
          DataSetName = 'frxCenPF'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '03')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo53: TfrxMemoView
          Align = baLeft
          Left = 168.000000000000000000
          Top = 40.000000000000000000
          Width = 112.000000000000000000
          Height = 16.000000000000000000
          DataSet = frxCenPF
          DataSetName = 'frxCenPF'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '04')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo54: TfrxMemoView
          Align = baLeft
          Left = 280.000000000000000000
          Top = 40.000000000000000000
          Width = 68.000000000000000000
          Height = 16.000000000000000000
          DataSet = frxCenPF
          DataSetName = 'frxCenPF'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '05')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo55: TfrxMemoView
          Align = baLeft
          Left = 36.000000000000000000
          Top = 40.000000000000000000
          Width = 44.000000000000000000
          Height = 16.000000000000000000
          DataSet = frxCenPF
          DataSetName = 'frxCenPF'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '02')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo56: TfrxMemoView
          Align = baLeft
          Left = 348.000000000000000000
          Top = 40.000000000000000000
          Width = 68.000000000000000000
          Height = 16.000000000000000000
          DataSet = frxCenPF
          DataSetName = 'frxCenPF'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ' '
          DisplayFormat.FormatStr = '%2.6n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '06')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo57: TfrxMemoView
          Align = baLeft
          Left = 416.000000000000000000
          Top = 40.000000000000000000
          Width = 68.000000000000000000
          Height = 16.000000000000000000
          DataSet = frxCenPF
          DataSetName = 'frxCenPF'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ' '
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '07')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo58: TfrxMemoView
          Align = baLeft
          Left = 484.000000000000000000
          Top = 40.000000000000000000
          Width = 68.000000000000000000
          Height = 16.000000000000000000
          DataSet = frxCenPF
          DataSetName = 'frxCenPF'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ' '
          DisplayFormat.FormatStr = '%2.6n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '08')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo59: TfrxMemoView
          Align = baLeft
          Left = 552.000000000000000000
          Top = 40.000000000000000000
          Width = 68.000000000000000000
          Height = 16.000000000000000000
          DataSet = frxCenPF
          DataSetName = 'frxCenPF'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ' '
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '09')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo60: TfrxMemoView
          Align = baLeft
          Left = 620.000000000000000000
          Top = 40.000000000000000000
          Width = 68.000000000000000000
          Height = 16.000000000000000000
          DataSet = frxCenPF
          DataSetName = 'frxCenPF'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ' '
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '10')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo61: TfrxMemoView
          Align = baLeft
          Left = 688.000000000000000000
          Top = 40.000000000000000000
          Width = 68.000000000000000000
          Height = 16.000000000000000000
          DataSet = frxCenPF
          DataSetName = 'frxCenPF'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ' '
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '11')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo62: TfrxMemoView
          Align = baLeft
          Left = 756.000000000000000000
          Top = 40.000000000000000000
          Width = 68.000000000000000000
          Height = 16.000000000000000000
          DataSet = frxCenPF
          DataSetName = 'frxCenPF'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ' '
          DisplayFormat.FormatStr = '%2.6n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '12')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo63: TfrxMemoView
          Align = baLeft
          Left = 824.000000000000000000
          Top = 40.000000000000000000
          Width = 68.000000000000000000
          Height = 16.000000000000000000
          DataSet = frxCenPF
          DataSetName = 'frxCenPF'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ' '
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '13')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo64: TfrxMemoView
          Align = baLeft
          Left = 892.000000000000000000
          Top = 40.000000000000000000
          Width = 68.000000000000000000
          Height = 16.000000000000000000
          DataSet = frxCenPF
          DataSetName = 'frxCenPF'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ' '
          DisplayFormat.FormatStr = '%2.6n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '14')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo65: TfrxMemoView
          Align = baLeft
          Left = 960.000000000000000000
          Top = 40.000000000000000000
          Width = 68.000000000000000000
          Height = 16.000000000000000000
          DataSet = frxCenPF
          DataSetName = 'frxCenPF'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ' '
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '15')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo66: TfrxMemoView
          Align = baLeft
          Width = 36.000000000000000000
          Height = 40.000000000000000000
          DataSet = frxCenPF
          DataSetName = 'frxCenPF'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1062#1077#1093)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo67: TfrxMemoView
          Align = baLeft
          Left = 80.000000000000000000
          Width = 88.000000000000000000
          Height = 40.000000000000000000
          DataSet = frxCenPF
          DataSetName = 'frxCenPF'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1044#1083#1080#1085#1085#1099#1081' '#1082#1086#1076' '#1087#1086#1083#1091#1092#1072#1073#1088#1080#1082#1072#1090#1072)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo68: TfrxMemoView
          Align = baLeft
          Left = 168.000000000000000000
          Width = 112.000000000000000000
          Height = 40.000000000000000000
          DataSet = frxCenPF
          DataSetName = 'frxCenPF'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1087#1086#1083#1091#1092#1072#1073#1088#1080#1082#1072#1090#1072)
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo69: TfrxMemoView
          Align = baLeft
          Left = 280.000000000000000000
          Width = 68.000000000000000000
          Height = 40.000000000000000000
          DataSet = frxCenPF
          DataSetName = 'frxCenPF'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1062#1077#1085#1072' '#1079#1072#1075#1088#1091#1079#1082#1080)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo70: TfrxMemoView
          Align = baLeft
          Left = 36.000000000000000000
          Width = 44.000000000000000000
          Height = 40.000000000000000000
          DataSet = frxCenPF
          DataSetName = 'frxCenPF'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1050#1086#1076' '#1087'/'#1092)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo71: TfrxMemoView
          Align = baLeft
          Left = 348.000000000000000000
          Top = 16.000000000000000000
          Width = 68.000000000000000000
          Height = 24.000000000000000000
          DataSet = frxCenPF
          DataSetName = 'frxCenPF'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ' '
          DisplayFormat.FormatStr = '%2.6n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1082#1086#1083#1080#1095#1077#1089#1090#1074#1086)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo72: TfrxMemoView
          Align = baLeft
          Left = 416.000000000000000000
          Top = 16.000000000000000000
          Width = 68.000000000000000000
          Height = 24.000000000000000000
          DataSet = frxCenPF
          DataSetName = 'frxCenPF'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ' '
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1089#1091#1084#1084#1072)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo73: TfrxMemoView
          Align = baLeft
          Left = 484.000000000000000000
          Top = 16.000000000000000000
          Width = 68.000000000000000000
          Height = 24.000000000000000000
          DataSet = frxCenPF
          DataSetName = 'frxCenPF'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ' '
          DisplayFormat.FormatStr = '%2.6n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1082#1086#1083#1080#1095#1077#1089#1090#1074#1086' ('#1074#1099#1087#1091#1089#1082')')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo74: TfrxMemoView
          Align = baLeft
          Left = 552.000000000000000000
          Top = 16.000000000000000000
          Width = 68.000000000000000000
          Height = 24.000000000000000000
          DataSet = frxCenPF
          DataSetName = 'frxCenPF'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ' '
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1089#1091#1084#1084#1072' '#1080#1079' '#1089#1074#1086#1076#1085#1086#1081)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo75: TfrxMemoView
          Align = baLeft
          Left = 620.000000000000000000
          Top = 16.000000000000000000
          Width = 68.000000000000000000
          Height = 24.000000000000000000
          DataSet = frxCenPF
          DataSetName = 'frxCenPF'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ' '
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1089#1091#1084#1084#1072' '#1080#1079' '#1092#1072#1082#1090'. '#1089#1077#1073'.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo76: TfrxMemoView
          Align = baLeft
          Left = 688.000000000000000000
          Top = 16.000000000000000000
          Width = 68.000000000000000000
          Height = 24.000000000000000000
          DataSet = frxCenPF
          DataSetName = 'frxCenPF'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ' '
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1089#1091#1084#1084#1072' ('#1074#1089#1077#1075#1086')')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo77: TfrxMemoView
          Align = baLeft
          Left = 756.000000000000000000
          Top = 16.000000000000000000
          Width = 68.000000000000000000
          Height = 24.000000000000000000
          DataSet = frxCenPF
          DataSetName = 'frxCenPF'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ' '
          DisplayFormat.FormatStr = '%2.6n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1082#1086#1083#1080#1095#1077#1089#1090#1074#1086)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo78: TfrxMemoView
          Align = baLeft
          Left = 824.000000000000000000
          Top = 16.000000000000000000
          Width = 68.000000000000000000
          Height = 24.000000000000000000
          DataSet = frxCenPF
          DataSetName = 'frxCenPF'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ' '
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1089#1091#1084#1084#1072)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo79: TfrxMemoView
          Align = baLeft
          Left = 892.000000000000000000
          Top = 16.000000000000000000
          Width = 68.000000000000000000
          Height = 24.000000000000000000
          DataSet = frxCenPF
          DataSetName = 'frxCenPF'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ' '
          DisplayFormat.FormatStr = '%2.6n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1082#1086#1083#1080#1095#1077#1089#1090#1074#1086)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo80: TfrxMemoView
          Align = baLeft
          Left = 960.000000000000000000
          Top = 16.000000000000000000
          Width = 68.000000000000000000
          Height = 24.000000000000000000
          DataSet = frxCenPF
          DataSetName = 'frxCenPF'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ' '
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1089#1091#1084#1084#1072)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo81: TfrxMemoView
          Align = baLeft
          Left = 348.000000000000000000
          Width = 136.000000000000000000
          Height = 16.000000000000000000
          DataSet = frxCenPF
          DataSetName = 'frxCenPF'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ' '
          DisplayFormat.FormatStr = '%2.6n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1054#1089#1090'. '#1085#1072' '#1085#1072#1095'. '#1084'-'#1094#1072' '#1085#1072' '#1089#1082#1083'.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo82: TfrxMemoView
          Align = baLeft
          Left = 484.000000000000000000
          Width = 272.000000000000000000
          Height = 16.000000000000000000
          DataSet = frxCenPF
          DataSetName = 'frxCenPF'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ' '
          DisplayFormat.FormatStr = '%2.6n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1055#1088#1080#1093#1086#1076' '#1085#1072' '#1089#1082#1083#1072#1076)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo83: TfrxMemoView
          Align = baLeft
          Left = 756.000000000000000000
          Width = 136.000000000000000000
          Height = 16.000000000000000000
          DataSet = frxCenPF
          DataSetName = 'frxCenPF'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ' '
          DisplayFormat.FormatStr = '%2.6n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1054#1089#1090'. '#1085#1072' '#1085#1072#1095'. '#1084'-'#1094#1072' '#1074' '#1094#1077#1093#1077)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo84: TfrxMemoView
          Align = baLeft
          Left = 892.000000000000000000
          Width = 136.000000000000000000
          Height = 16.000000000000000000
          DataSet = frxCenPF
          DataSetName = 'frxCenPF'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ' '
          DisplayFormat.FormatStr = '%2.6n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1055#1088#1080#1093#1086#1076' '#1074' '#1094#1077#1093)
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 16.000000000000000000
        Top = 396.000000000000000000
        Width = 1046.920361175000000000
        object Memo85: TfrxMemoView
          Align = baRight
          Left = 702.920361174999700000
          Width = 344.000000000000000000
          Height = 16.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            #1044#1086#1082#1091#1084#1077#1085#1090' '#1089#1092#1086#1088#1084#1080#1088#1086#1074#1072#1085' '#1087#1088#1086#1075#1088#1072#1084#1084#1085#1099#1084' '#1086#1073#1077#1089#1087#1077#1095#1077#1085#1080#1077#1084' '#1054#1048#1058)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo86: TfrxMemoView
          Align = baLeft
          Width = 80.000000000000000000
          Height = 16.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[<Page#>] / [<TotalPages>] ')
          ParentFont = False
          VAlign = vaCenter
          Formats = <
            item
            end
            item
            end>
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 16.000000000000000000
        Top = 280.000000000000000000
        Width = 1046.920361175000000000
        DataSet = frxCenPF
        DataSetName = 'frxCenPF'
        RowCount = 0
        object Memo2: TfrxMemoView
          Align = baLeft
          Width = 36.000000000000000000
          Height = 16.000000000000000000
          DataField = 'OTSTRK'
          DataSet = frxCenPF
          DataSetName = 'frxCenPF'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxCenPF."OTSTRK"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Align = baLeft
          Left = 80.000000000000000000
          Width = 88.000000000000000000
          Height = 16.000000000000000000
          DataField = 'KOD_PROD'
          DataSet = frxCenPF
          DataSetName = 'frxCenPF'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxCenPF."KOD_PROD"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Align = baLeft
          Left = 168.000000000000000000
          Width = 112.000000000000000000
          Height = 16.000000000000000000
          DataField = 'NMAT'
          DataSet = frxCenPF
          DataSetName = 'frxCenPF'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxCenPF."NMAT"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Align = baLeft
          Left = 280.000000000000000000
          Width = 68.000000000000000000
          Height = 16.000000000000000000
          DataSet = frxCenPF
          DataSetName = 'frxCenPF'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[FloatToStr(<frxCenPF."CENA_ZA">)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Align = baLeft
          Left = 36.000000000000000000
          Width = 44.000000000000000000
          Height = 16.000000000000000000
          DataField = 'OTMATR'
          DataSet = frxCenPF
          DataSetName = 'frxCenPF'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxCenPF."OTMATR"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Align = baLeft
          Left = 348.000000000000000000
          Width = 68.000000000000000000
          Height = 16.000000000000000000
          DataSet = frxCenPF
          DataSetName = 'frxCenPF'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ' '
          DisplayFormat.FormatStr = '%2.6n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[FloatToStr(<frxCenPF."SKOL_SKL">)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Align = baLeft
          Left = 416.000000000000000000
          Width = 68.000000000000000000
          Height = 16.000000000000000000
          DataField = 'SSUM_SKL'
          DataSet = frxCenPF
          DataSetName = 'frxCenPF'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ' '
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxCenPF."SSUM_SKL"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Align = baLeft
          Left = 484.000000000000000000
          Width = 68.000000000000000000
          Height = 16.000000000000000000
          DataSet = frxCenPF
          DataSetName = 'frxCenPF'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ' '
          DisplayFormat.FormatStr = '%2.6n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[FloatToStr(<frxCenPF."VIPUSK">)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Align = baLeft
          Left = 552.000000000000000000
          Width = 68.000000000000000000
          Height = 16.000000000000000000
          DataField = 'SUM_SV'
          DataSet = frxCenPF
          DataSetName = 'frxCenPF'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ' '
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxCenPF."SUM_SV"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Align = baLeft
          Left = 620.000000000000000000
          Width = 68.000000000000000000
          Height = 16.000000000000000000
          DataField = 'SUM_FS'
          DataSet = frxCenPF
          DataSetName = 'frxCenPF'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ' '
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxCenPF."SUM_FS"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Align = baLeft
          Left = 688.000000000000000000
          Width = 68.000000000000000000
          Height = 16.000000000000000000
          DataField = 'SUM_PRI_C'
          DataSet = frxCenPF
          DataSetName = 'frxCenPF'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ' '
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxCenPF."SUM_PRI_C"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Align = baLeft
          Left = 756.000000000000000000
          Width = 68.000000000000000000
          Height = 16.000000000000000000
          DataSet = frxCenPF
          DataSetName = 'frxCenPF'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ' '
          DisplayFormat.FormatStr = '%2.6n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[FloatToStr(<frxCenPF."SKOL_CEH">)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Align = baLeft
          Left = 824.000000000000000000
          Width = 68.000000000000000000
          Height = 16.000000000000000000
          DataField = 'SSUM_CEH'
          DataSet = frxCenPF
          DataSetName = 'frxCenPF'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ' '
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxCenPF."SSUM_CEH"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          Align = baLeft
          Left = 892.000000000000000000
          Width = 68.000000000000000000
          Height = 16.000000000000000000
          DataSet = frxCenPF
          DataSetName = 'frxCenPF'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ' '
          DisplayFormat.FormatStr = '%2.6n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[FloatToStr(<frxCenPF."KPRI_CEH">)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Align = baLeft
          Left = 960.000000000000000000
          Width = 68.000000000000000000
          Height = 16.000000000000000000
          DataField = 'SPRI_CEH'
          DataSet = frxCenPF
          DataSetName = 'frxCenPF'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ' '
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxCenPF."SPRI_CEH"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Height = 56.000000000000000000
        Top = 204.000000000000000000
        Width = 1046.920361175000000000
        object Memo17: TfrxMemoView
          Align = baLeft
          Top = 40.000000000000000000
          Width = 36.000000000000000000
          Height = 16.000000000000000000
          DataSet = frxCenPF
          DataSetName = 'frxCenPF'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '01')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          Align = baLeft
          Left = 80.000000000000000000
          Top = 40.000000000000000000
          Width = 88.000000000000000000
          Height = 16.000000000000000000
          DataSet = frxCenPF
          DataSetName = 'frxCenPF'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '03')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          Align = baLeft
          Left = 168.000000000000000000
          Top = 40.000000000000000000
          Width = 112.000000000000000000
          Height = 16.000000000000000000
          DataSet = frxCenPF
          DataSetName = 'frxCenPF'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '04')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          Align = baLeft
          Left = 280.000000000000000000
          Top = 40.000000000000000000
          Width = 68.000000000000000000
          Height = 16.000000000000000000
          DataSet = frxCenPF
          DataSetName = 'frxCenPF'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '05')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo21: TfrxMemoView
          Align = baLeft
          Left = 36.000000000000000000
          Top = 40.000000000000000000
          Width = 44.000000000000000000
          Height = 16.000000000000000000
          DataSet = frxCenPF
          DataSetName = 'frxCenPF'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '02')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          Align = baLeft
          Left = 348.000000000000000000
          Top = 40.000000000000000000
          Width = 68.000000000000000000
          Height = 16.000000000000000000
          DataSet = frxCenPF
          DataSetName = 'frxCenPF'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ' '
          DisplayFormat.FormatStr = '%2.6n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '06')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          Align = baLeft
          Left = 416.000000000000000000
          Top = 40.000000000000000000
          Width = 68.000000000000000000
          Height = 16.000000000000000000
          DataSet = frxCenPF
          DataSetName = 'frxCenPF'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ' '
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '07')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo24: TfrxMemoView
          Align = baLeft
          Left = 484.000000000000000000
          Top = 40.000000000000000000
          Width = 68.000000000000000000
          Height = 16.000000000000000000
          DataSet = frxCenPF
          DataSetName = 'frxCenPF'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ' '
          DisplayFormat.FormatStr = '%2.6n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '08')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo25: TfrxMemoView
          Align = baLeft
          Left = 552.000000000000000000
          Top = 40.000000000000000000
          Width = 68.000000000000000000
          Height = 16.000000000000000000
          DataSet = frxCenPF
          DataSetName = 'frxCenPF'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ' '
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '09')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo26: TfrxMemoView
          Align = baLeft
          Left = 620.000000000000000000
          Top = 40.000000000000000000
          Width = 68.000000000000000000
          Height = 16.000000000000000000
          DataSet = frxCenPF
          DataSetName = 'frxCenPF'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ' '
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '10')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo27: TfrxMemoView
          Align = baLeft
          Left = 688.000000000000000000
          Top = 40.000000000000000000
          Width = 68.000000000000000000
          Height = 16.000000000000000000
          DataSet = frxCenPF
          DataSetName = 'frxCenPF'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ' '
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '11')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo28: TfrxMemoView
          Align = baLeft
          Left = 756.000000000000000000
          Top = 40.000000000000000000
          Width = 68.000000000000000000
          Height = 16.000000000000000000
          DataSet = frxCenPF
          DataSetName = 'frxCenPF'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ' '
          DisplayFormat.FormatStr = '%2.6n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '12')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo29: TfrxMemoView
          Align = baLeft
          Left = 824.000000000000000000
          Top = 40.000000000000000000
          Width = 68.000000000000000000
          Height = 16.000000000000000000
          DataSet = frxCenPF
          DataSetName = 'frxCenPF'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ' '
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '13')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo30: TfrxMemoView
          Align = baLeft
          Left = 892.000000000000000000
          Top = 40.000000000000000000
          Width = 68.000000000000000000
          Height = 16.000000000000000000
          DataSet = frxCenPF
          DataSetName = 'frxCenPF'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ' '
          DisplayFormat.FormatStr = '%2.6n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '14')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo31: TfrxMemoView
          Align = baLeft
          Left = 960.000000000000000000
          Top = 40.000000000000000000
          Width = 68.000000000000000000
          Height = 16.000000000000000000
          DataSet = frxCenPF
          DataSetName = 'frxCenPF'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ' '
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '15')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo32: TfrxMemoView
          Align = baLeft
          Width = 36.000000000000000000
          Height = 40.000000000000000000
          DataSet = frxCenPF
          DataSetName = 'frxCenPF'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1062#1077#1093)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo33: TfrxMemoView
          Align = baLeft
          Left = 80.000000000000000000
          Width = 88.000000000000000000
          Height = 40.000000000000000000
          DataSet = frxCenPF
          DataSetName = 'frxCenPF'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1044#1083#1080#1085#1085#1099#1081' '#1082#1086#1076' '#1087#1086#1083#1091#1092#1072#1073#1088#1080#1082#1072#1090#1072)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo34: TfrxMemoView
          Align = baLeft
          Left = 168.000000000000000000
          Width = 112.000000000000000000
          Height = 40.000000000000000000
          DataSet = frxCenPF
          DataSetName = 'frxCenPF'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1087#1086#1083#1091#1092#1072#1073#1088#1080#1082#1072#1090#1072)
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo35: TfrxMemoView
          Align = baLeft
          Left = 280.000000000000000000
          Width = 68.000000000000000000
          Height = 40.000000000000000000
          DataSet = frxCenPF
          DataSetName = 'frxCenPF'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1062#1077#1085#1072' '#1079#1072#1075#1088#1091#1079#1082#1080)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo36: TfrxMemoView
          Align = baLeft
          Left = 36.000000000000000000
          Width = 44.000000000000000000
          Height = 40.000000000000000000
          DataSet = frxCenPF
          DataSetName = 'frxCenPF'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1050#1086#1076' '#1087'/'#1092)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo37: TfrxMemoView
          Align = baLeft
          Left = 348.000000000000000000
          Top = 16.000000000000000000
          Width = 68.000000000000000000
          Height = 24.000000000000000000
          DataSet = frxCenPF
          DataSetName = 'frxCenPF'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ' '
          DisplayFormat.FormatStr = '%2.6n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1082#1086#1083#1080#1095#1077#1089#1090#1074#1086)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo38: TfrxMemoView
          Align = baLeft
          Left = 416.000000000000000000
          Top = 16.000000000000000000
          Width = 68.000000000000000000
          Height = 24.000000000000000000
          DataSet = frxCenPF
          DataSetName = 'frxCenPF'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ' '
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1089#1091#1084#1084#1072)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo39: TfrxMemoView
          Align = baLeft
          Left = 484.000000000000000000
          Top = 16.000000000000000000
          Width = 68.000000000000000000
          Height = 24.000000000000000000
          DataSet = frxCenPF
          DataSetName = 'frxCenPF'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ' '
          DisplayFormat.FormatStr = '%2.6n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1082#1086#1083#1080#1095#1077#1089#1090#1074#1086' ('#1074#1099#1087#1091#1089#1082')')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo40: TfrxMemoView
          Align = baLeft
          Left = 552.000000000000000000
          Top = 16.000000000000000000
          Width = 68.000000000000000000
          Height = 24.000000000000000000
          DataSet = frxCenPF
          DataSetName = 'frxCenPF'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ' '
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1089#1091#1084#1084#1072' '#1080#1079' '#1089#1074#1086#1076#1085#1086#1081)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo41: TfrxMemoView
          Align = baLeft
          Left = 620.000000000000000000
          Top = 16.000000000000000000
          Width = 68.000000000000000000
          Height = 24.000000000000000000
          DataSet = frxCenPF
          DataSetName = 'frxCenPF'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ' '
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1089#1091#1084#1084#1072' '#1080#1079' '#1092#1072#1082#1090'. '#1089#1077#1073'.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo42: TfrxMemoView
          Align = baLeft
          Left = 688.000000000000000000
          Top = 16.000000000000000000
          Width = 68.000000000000000000
          Height = 24.000000000000000000
          DataSet = frxCenPF
          DataSetName = 'frxCenPF'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ' '
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1089#1091#1084#1084#1072' ('#1074#1089#1077#1075#1086')')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo43: TfrxMemoView
          Align = baLeft
          Left = 756.000000000000000000
          Top = 16.000000000000000000
          Width = 68.000000000000000000
          Height = 24.000000000000000000
          DataSet = frxCenPF
          DataSetName = 'frxCenPF'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ' '
          DisplayFormat.FormatStr = '%2.6n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1082#1086#1083#1080#1095#1077#1089#1090#1074#1086)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo44: TfrxMemoView
          Align = baLeft
          Left = 824.000000000000000000
          Top = 16.000000000000000000
          Width = 68.000000000000000000
          Height = 24.000000000000000000
          DataSet = frxCenPF
          DataSetName = 'frxCenPF'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ' '
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1089#1091#1084#1084#1072)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo45: TfrxMemoView
          Align = baLeft
          Left = 892.000000000000000000
          Top = 16.000000000000000000
          Width = 68.000000000000000000
          Height = 24.000000000000000000
          DataSet = frxCenPF
          DataSetName = 'frxCenPF'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ' '
          DisplayFormat.FormatStr = '%2.6n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1082#1086#1083#1080#1095#1077#1089#1090#1074#1086)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo46: TfrxMemoView
          Align = baLeft
          Left = 960.000000000000000000
          Top = 16.000000000000000000
          Width = 68.000000000000000000
          Height = 24.000000000000000000
          DataSet = frxCenPF
          DataSetName = 'frxCenPF'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ' '
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1089#1091#1084#1084#1072)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo47: TfrxMemoView
          Align = baLeft
          Left = 348.000000000000000000
          Width = 136.000000000000000000
          Height = 16.000000000000000000
          DataSet = frxCenPF
          DataSetName = 'frxCenPF'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ' '
          DisplayFormat.FormatStr = '%2.6n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1054#1089#1090'. '#1085#1072' '#1085#1072#1095'. '#1084'-'#1094#1072' '#1085#1072' '#1089#1082#1083'.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo48: TfrxMemoView
          Align = baLeft
          Left = 484.000000000000000000
          Width = 272.000000000000000000
          Height = 16.000000000000000000
          DataSet = frxCenPF
          DataSetName = 'frxCenPF'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ' '
          DisplayFormat.FormatStr = '%2.6n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1055#1088#1080#1093#1086#1076' '#1085#1072' '#1089#1082#1083#1072#1076)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo49: TfrxMemoView
          Align = baLeft
          Left = 756.000000000000000000
          Width = 136.000000000000000000
          Height = 16.000000000000000000
          DataSet = frxCenPF
          DataSetName = 'frxCenPF'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ' '
          DisplayFormat.FormatStr = '%2.6n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1054#1089#1090'. '#1085#1072' '#1085#1072#1095'. '#1084'-'#1094#1072' '#1074' '#1094#1077#1093#1077)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo50: TfrxMemoView
          Align = baLeft
          Left = 892.000000000000000000
          Width = 136.000000000000000000
          Height = 16.000000000000000000
          DataSet = frxCenPF
          DataSetName = 'frxCenPF'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.ThousandSeparator = ' '
          DisplayFormat.FormatStr = '%2.6n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1055#1088#1080#1093#1086#1076' '#1074' '#1094#1077#1093)
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Top = 316.000000000000000000
        Width = 1046.920361175000000000
      end
    end
  end
  object frxCenPF: TfrxDBDataset
    UserName = 'frxCenPF'
    CloseDataSource = False
    FieldAliases.Strings = (
      'GOD=GOD'
      'MES=MES'
      'OTSTRK=OTSTRK'
      'OTMATR=OTMATR'
      'CENA_ZA=CENA_ZA'
      'SKOL_SKL=SKOL_SKL'
      'SSUM_SKL=SSUM_SKL'
      'VIPUSK=VIPUSK'
      'SUM_SV=SUM_SV'
      'SUM_FS=SUM_FS'
      'SKOL_CEH=SKOL_CEH'
      'SSUM_CEH=SSUM_CEH'
      'KPRI_CEH=KPRI_CEH'
      'SPRI_CEH=SPRI_CEH'
      'SUM_PRI_C=SUM_PRI_C'
      'KOD_PROD=KOD_PROD'
      'NMAT=NMAT'
      'KSM_ID=KSM_ID')
    DataSet = mem_cenPf
    BCDToCurrency = False
    Left = 280
    Top = 128
  end
end
