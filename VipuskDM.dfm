object VipDM: TVipDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 588
  Width = 1018
  object Belmed: TIBDatabase
    Connected = True
    DatabaseName = '192.168.13.13:D:\IBData\Belmed.gdb'
    Params.Strings = (
      'user_name=IGOR'
      'password=igor'
      'sql_role_name=system'
      'lc_ctype=WIN1251')
    LoginPrompt = False
    Left = 24
    Top = 16
  end
  object trans_read: TIBTransaction
    Active = True
    DefaultDatabase = Belmed
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 24
    Top = 72
  end
  object q_document: TRxIBQuery
    Database = Belmed
    Transaction = trans_read
    CachedUpdates = True
    SQL.Strings = (
      
        'SELECT DOCUMENT.TIP_DOK_ID, DOCUMENT.NDOK, DOCUMENT.DOC_ID, DOCU' +
        'MENT. DATE_OP,'
      'DOCUMENT.DATE_DOK, DOCUMENT.KLIENT_ID,'
      
        'DOCUMENT.TIP_OP_ID, DOCUMENT. DATE_VVOD,  DOCUMENT.STRUK_ID, DOC' +
        'UMENT.ZADACHA_ID,'
      'configumc.stname klient_stname'
      'FROM DOCUMENT'
      'inner join configumc on document.klient_id = configumc.struk_id'
      'WHERE DOcUMENT.STRUK_ID=:struk_id'
      'and document.klient_id = document.struk_id'
      'AND DOCUMENT.TIP_OP_ID=36 and document.tip_dok_id=74'
      ' AND Document.Date_op between :dat1 and :dat2'
      ' ORDER BY DOCUMENT.DATE_DOK')
    Macros = <>
    Left = 88
    Top = 16
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'struk_id'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dat1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dat2'
        ParamType = ptUnknown
      end>
    object q_documentTIP_DOK_ID: TSmallintField
      FieldName = 'TIP_DOK_ID'
      Origin = '"DOCUMENT"."TIP_DOK_ID"'
      Required = True
    end
    object q_documentNDOK: TIBStringField
      FieldName = 'NDOK'
      Origin = '"DOCUMENT"."NDOK"'
    end
    object q_documentDOC_ID: TIntegerField
      FieldName = 'DOC_ID'
      Origin = '"DOCUMENT"."DOC_ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object q_documentDATE_OP: TDateField
      FieldName = 'DATE_OP'
      Origin = '"DOCUMENT"."DATE_OP"'
    end
    object q_documentDATE_DOK: TDateField
      FieldName = 'DATE_DOK'
      Origin = '"DOCUMENT"."DATE_DOK"'
    end
    object q_documentKLIENT_ID: TIntegerField
      FieldName = 'KLIENT_ID'
      Origin = '"DOCUMENT"."KLIENT_ID"'
      Required = True
    end
    object q_documentTIP_OP_ID: TSmallintField
      FieldName = 'TIP_OP_ID'
      Origin = '"DOCUMENT"."TIP_OP_ID"'
      Required = True
    end
    object q_documentDATE_VVOD: TDateTimeField
      FieldName = 'DATE_VVOD'
      Origin = '"DOCUMENT"."DATE_VVOD"'
    end
    object q_documentSTRUK_ID: TSmallintField
      FieldName = 'STRUK_ID'
      Origin = '"DOCUMENT"."STRUK_ID"'
      Required = True
    end
    object q_documentZADACHA_ID: TIBStringField
      FieldName = 'ZADACHA_ID'
      Origin = '"DOCUMENT"."ZADACHA_ID"'
      FixedChar = True
      Size = 10
    end
    object q_documentKLIENT_STNAME: TIBStringField
      FieldName = 'KLIENT_STNAME'
      Origin = '"CONFIGUMC"."STNAME"'
      FixedChar = True
    end
  end
  object q_kartv: TRxIBQuery
    Database = Belmed
    Transaction = trans_read
    CachedUpdates = True
    SQL.Strings = (
      
        'SELECT KARTV.DOC_ID, KARTV.STROKA_ID, KARTV.KSM_ID,  KARTV. KOL_' +
        'PRIH,'
      
        'document.struk_id, document.klient_id, spprod.kod_prod, spprod.n' +
        'mat'
      ''
      'FROM KARTV'
      'inner join document on document.doc_id = kartv.doc_id'
      'inner join spprod on spprod.ksm_id = kartv.ksm_id'
      'where kartv.doc_id = :doc_id'
      'order by spprod.kod_prod, document.struk_id')
    Macros = <>
    Left = 144
    Top = 16
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'doc_id'
        ParamType = ptUnknown
      end>
    object q_kartvDOC_ID: TIntegerField
      FieldName = 'DOC_ID'
      Origin = '"KARTV"."DOC_ID"'
      Required = True
    end
    object q_kartvSTROKA_ID: TIntegerField
      FieldName = 'STROKA_ID'
      Origin = '"KARTV"."STROKA_ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object q_kartvKSM_ID: TIntegerField
      FieldName = 'KSM_ID'
      Origin = '"KARTV"."KSM_ID"'
      Required = True
    end
    object q_kartvKOL_PRIH: TFMTBCDField
      FieldName = 'KOL_PRIH'
      Origin = '"KARTV"."KOL_PRIH"'
      Precision = 18
      Size = 6
    end
    object q_kartvSTRUK_ID: TSmallintField
      FieldName = 'STRUK_ID'
      Origin = '"DOCUMENT"."STRUK_ID"'
      Required = True
    end
    object q_kartvKLIENT_ID: TIntegerField
      FieldName = 'KLIENT_ID'
      Origin = '"DOCUMENT"."KLIENT_ID"'
      Required = True
    end
    object q_kartvKOD_PROD: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'KOD_PROD'
      Origin = '"SPPROD"."KOD_PROD"'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 18
    end
    object q_kartvNMAT: TIBStringField
      FieldName = 'NMAT'
      Origin = '"SPPROD"."NMAT"'
      Size = 60
    end
  end
  object mem_vipusk: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <>
    IndexDefs = <>
    SortOptions = []
    AllDataOptions = [mtfSaveData, mtfSaveNonVisible, mtfSaveBlobs, mtfSaveFiltered, mtfSaveIgnoreRange, mtfSaveIgnoreMasterDetail, mtfSaveDeltas]
    CommaTextOptions = [mtfSaveData]
    CSVQuote = '"'
    CSVFieldDelimiter = ','
    CSVRecordDelimiter = ','
    CSVTrueString = 'True'
    CSVFalseString = 'False'
    PersistentSaveOptions = [mtfSaveData, mtfSaveNonVisible, mtfSaveIgnoreRange, mtfSaveIgnoreMasterDetail]
    PersistentBackup = False
    ProgressFlags = [mtpcLoad, mtpcSave, mtpcCopy]
    FilterOptions = []
    Version = '2.53g'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    Left = 240
    Top = 16
    object mem_vipuskDOC_ID: TIntegerField
      FieldName = 'DOC_ID'
      Origin = '"KARTV"."DOC_ID"'
      Required = True
    end
    object mem_vipuskSTROKA_ID: TIntegerField
      FieldName = 'STROKA_ID'
      Origin = '"KARTV"."STROKA_ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object mem_vipuskKSM_ID: TIntegerField
      FieldName = 'KSM_ID'
      Origin = '"KARTV"."KSM_ID"'
      Required = True
    end
    object mem_vipuskSTRUK_ID: TSmallintField
      FieldName = 'STRUK_ID'
      Origin = '"DOCUMENT"."STRUK_ID"'
      Required = True
    end
    object mem_vipuskKLIENT_ID: TIntegerField
      FieldName = 'KLIENT_ID'
      Origin = '"DOCUMENT"."KLIENT_ID"'
      Required = True
    end
    object mem_vipuskKOL_PRIH: TFloatField
      FieldName = 'KOL_PRIH'
    end
    object mem_vipuskKOD_PROD: TStringField
      FieldName = 'KOD_PROD'
      Size = 18
    end
    object mem_vipuskNMAT: TStringField
      FieldName = 'NMAT'
      Size = 60
    end
    object mem_vipuskCHECKED: TBooleanField
      AutoGenerateValue = arDefault
      DefaultExpression = '0'
      FieldName = 'CHECKED'
    end
  end
end
