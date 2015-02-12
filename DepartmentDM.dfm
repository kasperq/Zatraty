object depDM: TdepDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 568
  Width = 922
  object q_configumc: TRxIBQuery
    Database = Belmed
    Transaction = trans_read
    SQL.Strings = (
      'SELECT iif((configumc.rela_struk_id = 540) '
      
        '                  and (configumc.struk_id not in (540, 546, 708)' +
        '),'
      
        '                 rtrim(relaStr.stname) || '#39'.'#39' || configumc.stnam' +
        'e,'
      '                 configumc.stname) stnam,'
      'configumc.*,'
      
        'iif(coalesce(configumc.rela_struk_id,0) = 0, configumc.struk_id,' +
        ' configumc.rela_struk_id) relaStrukId'
      'FROM ConfigUMC'
      
        'left join configumc relaStr on relaStr.struk_id = configumc.rela' +
        '_struk_id'
      
        'WHERE configumc.struk_id in (1, 645, 29, 37, 38, 39, 648, 43, 54' +
        '0, '
      
        '                                                541, 649, 106, 6' +
        '96)'
      'Order by configumc.stkod')
    Macros = <>
    Left = 136
    Top = 16
    object q_configumcSTNAM: TIBStringField
      FieldName = 'STNAM'
      ProviderFlags = []
      Size = 277
    end
    object q_configumcSTRUK_ID: TSmallintField
      FieldName = 'STRUK_ID'
      Origin = '"CONFIGUMC"."STRUK_ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object q_configumcSTKOD: TIBStringField
      FieldName = 'STKOD'
      Origin = '"CONFIGUMC"."STKOD"'
      FixedChar = True
      Size = 4
    end
    object q_configumcRELA_STRUK_ID: TSmallintField
      FieldName = 'RELA_STRUK_ID'
      Origin = '"CONFIGUMC"."RELA_STRUK_ID"'
    end
    object q_configumcRELASTRUKID: TSmallintField
      FieldName = 'RELASTRUKID'
      ProviderFlags = []
    end
  end
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
  object mem_department: TkbmMemTable
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
    object mem_departmentSTRUK_ID: TSmallintField
      FieldName = 'STRUK_ID'
      Origin = '"CONFIGUMC"."STRUK_ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object mem_departmentRELA_STRUK_ID: TSmallintField
      FieldName = 'RELA_STRUK_ID'
      Origin = '"CONFIGUMC"."RELA_STRUK_ID"'
    end
    object mem_departmentRELASTRUKID: TSmallintField
      FieldName = 'RELASTRUKID'
      ProviderFlags = []
    end
    object mem_departmentSTNAM: TStringField
      FieldName = 'STNAM'
      Size = 277
    end
    object mem_departmentSTKOD: TStringField
      FieldName = 'STKOD'
      Size = 4
    end
    object mem_departmentCHECKED: TBooleanField
      AutoGenerateValue = arDefault
      DefaultExpression = '0'
      FieldName = 'CHECKED'
    end
  end
end
