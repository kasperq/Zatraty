object depDM: TdepDM
  OldCreateOrder = False
  Height = 624
  Width = 832
  object q_struk: TRxIBQuery
    Database = dDM.db
    Transaction = dDM.trans_read
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT iif((configumc.rela_struk_id = 540) '
      
        '                  and (configumc.struk_id not in (540, 546, 708)' +
        '),'
      
        '                 rtrim(relaStr.stname) || '#39'.'#39' || configumc.stnam' +
        'e,'
      '                 configumc.stname) stnam,'
      'configumc.*'
      'FROM ConfigUMC'
      
        'left join configumc relaStr on relaStr.struk_id = configumc.rela' +
        '_struk_id'
      'WHERE %USL'
      'Order by configumc.stkod')
    Macros = <
      item
        DataType = ftString
        Name = 'USL'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 152
    Top = 48
    object q_strukMES: TSmallintField
      DisplayLabel = #1052#1077#1089#1103#1094' '#1086#1073#1088#1072#1073#1086#1090#1082#1080
      FieldName = 'MES'
      Origin = '"CONFIGUMC"."MES"'
      Required = True
    end
    object q_strukGOD: TSmallintField
      DisplayLabel = #1043#1086#1076' '#1086#1073#1088#1072#1073#1086#1090#1082#1080
      FieldName = 'GOD'
      Origin = '"CONFIGUMC"."GOD"'
      Required = True
    end
    object q_strukSTNAME: TIBStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FieldName = 'STNAME'
      Origin = '"CONFIGUMC"."STNAME"'
      FixedChar = True
    end
    object q_strukSTRUK_ID: TSmallintField
      DisplayLabel = #1050#1086#1076
      FieldName = 'STRUK_ID'
      Origin = '"CONFIGUMC"."STRUK_ID"'
    end
    object q_strukTIP_SKLAD_ID: TSmallintField
      FieldName = 'TIP_SKLAD_ID'
      Origin = '"CONFIGUMC"."TIP_SKLAD_ID"'
    end
    object q_strukOTTISK: TIBStringField
      FieldName = 'OTTISK'
      Origin = '"CONFIGUMC"."OTTISK"'
      Size = 15
    end
    object q_strukPUNKT_POGR: TIBStringField
      FieldName = 'PUNKT_POGR'
      Origin = '"CONFIGUMC"."PUNKT_POGR"'
      Size = 40
    end
    object q_strukOTP_RAZR: TIBStringField
      FieldName = 'OTP_RAZR'
      Origin = '"CONFIGUMC"."OTP_RAZR"'
      Size = 40
    end
    object q_strukACTIVE_SKLAD: TSmallintField
      FieldName = 'ACTIVE_SKLAD'
      Origin = '"CONFIGUMC"."ACTIVE_SKLAD"'
    end
    object q_strukSTKOD: TIBStringField
      FieldName = 'STKOD'
      Origin = '"CONFIGUMC"."STKOD"'
      FixedChar = True
      Size = 4
    end
    object q_strukPRECISION: TSmallintField
      FieldName = 'PRECISION'
      Origin = '"CONFIGUMC"."PRECISION"'
    end
    object q_strukOTP_PROIZV: TIBStringField
      FieldName = 'OTP_PROIZV'
      Origin = '"CONFIGUMC"."OTP_PROIZV"'
      Size = 40
    end
    object q_strukSTNAM: TIBStringField
      FieldName = 'STNAM'
      ProviderFlags = []
      Size = 277
    end
    object q_strukRELA_STRUK_ID: TSmallintField
      FieldName = 'RELA_STRUK_ID'
      Origin = '"CONFIGUMC"."RELA_STRUK_ID"'
    end
  end
  object mem_struk: TkbmMemTable
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
    AfterScroll = mem_strukAfterScroll
    Left = 160
    Top = 112
    object mem_strukSTRUK_ID: TSmallintField
      DisplayLabel = #1050#1086#1076
      FieldName = 'STRUK_ID'
      Origin = '"CONFIGUMC"."STRUK_ID"'
    end
    object mem_strukRELA_STRUK_ID: TSmallintField
      FieldName = 'RELA_STRUK_ID'
      Origin = '"CONFIGUMC"."RELA_STRUK_ID"'
    end
    object mem_strukSTNAME: TStringField
      FieldName = 'STNAME'
    end
    object mem_strukSTKOD: TStringField
      FieldName = 'STKOD'
      Size = 4
    end
    object mem_strukSTNAM: TStringField
      FieldName = 'STNAM'
      Size = 277
    end
    object mem_strukVIB: TIntegerField
      DefaultExpression = '0'
      FieldName = 'VIB'
      MaxValue = 1
    end
  end
  object ds_struk: TDataSource
    DataSet = mem_struk
    Left = 248
    Top = 112
  end
end
