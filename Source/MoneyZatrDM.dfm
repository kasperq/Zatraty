object FMoneyZatrDM: TFMoneyZatrDM
  OldCreateOrder = False
  Height = 663
  Width = 870
  object upd_money: TIBUpdateSQLW
    RefreshSQL.Strings = (
      'Select '
      'from zatr_money '
      'where'
      '  MONEY_ID = :MONEY_ID')
    ModifySQL.Strings = (
      'update zatr_money'
      'set'
      '  ACCOUNT = :ACCOUNT,'
      '  GOD = :GOD,'
      '  KEI_ID = :KEI_ID,'
      '  KSM_ID = :KSM_ID,'
      '  KSM_IDPR = :KSM_IDPR,'
      '  MES = :MES,'
      '  MONEY_ID = :MONEY_ID,'
      '  NOMEN_MONEY = :NOMEN_MONEY,'
      '  OST_BEG_MONEY = :OST_BEG_MONEY,'
      '  OST_END_MONEY = :OST_END_MONEY,'
      '  PF = :PF,'
      '  RASH_MONEY = :RASH_MONEY,'
      '  RAZDEL_ID = :RAZDEL_ID,'
      '  STRUK_ID = :STRUK_ID,'
      '  ZAGR_MONEY = :ZAGR_MONEY'
      'where'
      '  MONEY_ID = :OLD_MONEY_ID')
    InsertSQL.Strings = (
      'insert into zatr_money'
      
        '  (ACCOUNT, GOD, KEI_ID, KSM_ID, KSM_IDPR, MES, MONEY_ID, NOMEN_' +
        'MONEY, '
      
        '   OST_BEG_MONEY, OST_END_MONEY, PF, RASH_MONEY, RAZDEL_ID, STRU' +
        'K_ID, ZAGR_MONEY)'
      'values'
      
        '  (:ACCOUNT, :GOD, :KEI_ID, :KSM_ID, :KSM_IDPR, :MES, :MONEY_ID,' +
        ' :NOMEN_MONEY, '
      
        '   :OST_BEG_MONEY, :OST_END_MONEY, :PF, :RASH_MONEY, :RAZDEL_ID,' +
        ' :STRUK_ID, '
      '   :ZAGR_MONEY)')
    DeleteSQL.Strings = (
      'delete from zatr_money'
      'where'
      '  MONEY_ID = :OLD_MONEY_ID')
    AutoCommit = False
    UpdateTransaction = dDM.trans_write
    Left = 40
    Top = 88
  end
  object proc_addMoneyId: TIBStoredProc
    Database = dDM.db
    Transaction = dDM.trans_read
    StoredProcName = 'ADD_ZATR_MONEY'
    Left = 40
    Top = 152
  end
  object q_prevZatrDoc: TRxIBQuery
    Database = dDM.db
    Transaction = dDM.trans_read
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select extractyear(cast(max(document.date_op) as date)) god,'
      'extractmonth(cast(max(document.date_op) as date)) mes,'
      'document.struk_id, document.klient_id'
      'from document'
      'where document.tip_op_id = 163 and document.tip_dok_id = 237'
      'and document.date_op < :date_op'
      'and document.klient_id = :ksm_idpr'
      'and document.struk_id = :struk_id'
      'group by document.struk_id, document.klient_id')
    Macros = <>
    Left = 144
    Top = 32
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'date_op'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ksm_idpr'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'struk_id'
        ParamType = ptUnknown
      end>
    object q_prevZatrDocGOD: TIntegerField
      FieldName = 'GOD'
      ProviderFlags = []
      ReadOnly = True
    end
    object q_prevZatrDocMES: TIntegerField
      FieldName = 'MES'
      ProviderFlags = []
      ReadOnly = True
    end
    object q_prevZatrDocSTRUK_ID: TSmallintField
      FieldName = 'STRUK_ID'
      Origin = '"DOCUMENT"."STRUK_ID"'
      Required = True
    end
    object q_prevZatrDocKLIENT_ID: TIntegerField
      FieldName = 'KLIENT_ID'
      Origin = '"DOCUMENT"."KLIENT_ID"'
      Required = True
    end
  end
  object q_money: TRxIBQuery
    Database = dDM.db
    Transaction = dDM.trans_read
    BeforeInsert = q_moneyBeforeInsert
    BufferChunks = 1000
    CachedUpdates = True
    ParamCheck = True
    SQL.Strings = (
      
        'select zatr_money.money_id, zatr_money.struk_id, zatr_money.ksm_' +
        'id,'
      'zatr_money.kei_id, zatr_money.ksm_idpr, '
      'cast(zatr_money.nomen_money as double precision) nomen_money, '
      'cast(zatr_money.zagr_money as double precision) zagr_money, '
      'cast(zatr_money.rash_money as double precision) rash_money,'
      
        'cast(zatr_money.ost_beg_money as double precision) ost_beg_money' +
        ','
      
        'cast(zatr_money.ost_end_money as double precision) ost_end_money' +
        ', '
      'zatr_money.mes, zatr_money.god, zatr_money.pf,'
      'zatr_money.razdel_id, zatr_money.account'
      'from zatr_money'
      'where zatr_money.struk_id = :struk_id '
      'and zatr_money.mes = :month'
      'and zatr_money.god = :year'
      'and %ksmIdPrep')
    UpdateObject = upd_money
    Macros = <
      item
        DataType = ftWideString
        Name = 'ksmIdPrep'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 40
    Top = 32
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'struk_id'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'month'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'year'
        ParamType = ptUnknown
      end>
    object q_moneyMONEY_ID: TIntegerField
      FieldName = 'MONEY_ID'
      Origin = '"ZATR_MONEY"."MONEY_ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object q_moneySTRUK_ID: TIntegerField
      FieldName = 'STRUK_ID'
      Origin = '"ZATR_MONEY"."STRUK_ID"'
    end
    object q_moneyKSM_ID: TIntegerField
      FieldName = 'KSM_ID'
      Origin = '"ZATR_MONEY"."KSM_ID"'
    end
    object q_moneyKEI_ID: TIntegerField
      FieldName = 'KEI_ID'
      Origin = '"ZATR_MONEY"."KEI_ID"'
    end
    object q_moneyKSM_IDPR: TIntegerField
      FieldName = 'KSM_IDPR'
      Origin = '"ZATR_MONEY"."KSM_IDPR"'
    end
    object q_moneyMES: TIntegerField
      FieldName = 'MES'
      Origin = '"ZATR_MONEY"."MES"'
    end
    object q_moneyGOD: TIntegerField
      FieldName = 'GOD'
      Origin = '"ZATR_MONEY"."GOD"'
    end
    object q_moneyPF: TIntegerField
      FieldName = 'PF'
      Origin = '"ZATR_MONEY"."PF"'
    end
    object q_moneyRAZDEL_ID: TIntegerField
      FieldName = 'RAZDEL_ID'
      Origin = '"ZATR_MONEY"."RAZDEL_ID"'
    end
    object q_moneyACCOUNT: TIBStringField
      FieldName = 'ACCOUNT'
      Origin = '"ZATR_MONEY"."ACCOUNT"'
      FixedChar = True
      Size = 5
    end
    object q_moneyZAGR_MONEY: TFloatField
      FieldName = 'ZAGR_MONEY'
      ProviderFlags = []
      ReadOnly = True
    end
    object q_moneyOST_BEG_MONEY: TFloatField
      FieldName = 'OST_BEG_MONEY'
      ProviderFlags = []
      ReadOnly = True
    end
    object q_moneyOST_END_MONEY: TFloatField
      FieldName = 'OST_END_MONEY'
      ProviderFlags = []
      ReadOnly = True
    end
    object q_moneyNOMEN_MONEY: TFloatField
      FieldName = 'NOMEN_MONEY'
      ProviderFlags = []
      ReadOnly = True
    end
    object q_moneyRASH_MONEY: TFloatField
      FieldName = 'RASH_MONEY'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object q_ksmDvig: TRxIBQuery
    Database = dDM.db
    Transaction = dDM.trans_read
    BufferChunks = 1000
    CachedUpdates = True
    ParamCheck = True
    SQL.Strings = (
      'select zatr_money.ksm_id, zatr_money.account,'
      
        'cast(coalesce(zatr_money.zagr_money,0) as numeric(18,6)) zagr_mo' +
        'ney,'
      
        'cast(coalesce(zatr_money.ost_beg_money,0) as numeric(18,6)) ost_' +
        'beg_money,'
      
        'cast(coalesce(zatr_money.ost_end_money,0) as numeric(18,6)) ost_' +
        'end_money,'
      
        'spprod.kod_prod, spprod.nmat, ediz.neis, razdel.kraz, spprod.ksm' +
        '_id ksm_idpr,'
      'cast(0 as integer) vib,'
      'zatr_money.kei_id, zatr_money.razdel_id'
      'from zatr_money'
      'left join spprod on spprod.ksm_id = zatr_money.ksm_idpr'
      'left join ediz on ediz.kei_id = zatr_money.kei_id'
      'left join razdel on razdel.razdel_id = zatr_money.razdel_id'
      'where zatr_money.struk_id = :struk_id'
      'and zatr_money.ksm_id = :ksm_id'
      'and zatr_money.god = :year'
      'and zatr_money.mes = :month')
    UpdateObject = upd_ksmDvig
    Macros = <>
    Left = 248
    Top = 32
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'struk_id'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ksm_id'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'year'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'month'
        ParamType = ptUnknown
      end>
    object q_ksmDvigKSM_ID: TIntegerField
      FieldName = 'KSM_ID'
      Origin = '"ZATR_MONEY"."KSM_ID"'
    end
    object q_ksmDvigACCOUNT: TIBStringField
      FieldName = 'ACCOUNT'
      Origin = '"ZATR_MONEY"."ACCOUNT"'
      FixedChar = True
      Size = 5
    end
    object q_ksmDvigZAGR_MONEY: TFMTBCDField
      FieldName = 'ZAGR_MONEY'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 6
    end
    object q_ksmDvigOST_BEG_MONEY: TFMTBCDField
      FieldName = 'OST_BEG_MONEY'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 6
    end
    object q_ksmDvigOST_END_MONEY: TFMTBCDField
      FieldName = 'OST_END_MONEY'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 6
    end
    object q_ksmDvigKOD_PROD: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'KOD_PROD'
      Origin = '"SPPROD"."KOD_PROD"'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 18
    end
    object q_ksmDvigNMAT: TIBStringField
      FieldName = 'NMAT'
      Origin = '"SPPROD"."NMAT"'
      Size = 60
    end
    object q_ksmDvigNEIS: TIBStringField
      FieldName = 'NEIS'
      Origin = '"EDIZ"."NEIS"'
      FixedChar = True
      Size = 10
    end
    object q_ksmDvigKRAZ: TSmallintField
      FieldName = 'KRAZ'
      Origin = '"RAZDEL"."KRAZ"'
    end
    object q_ksmDvigVIB: TIntegerField
      FieldName = 'VIB'
      ProviderFlags = []
    end
    object q_ksmDvigKSM_IDPR: TIntegerField
      FieldName = 'KSM_IDPR'
      Origin = '"SPPROD"."KSM_ID"'
    end
    object q_ksmDvigKEI_ID: TIntegerField
      FieldName = 'KEI_ID'
      Origin = '"ZATR_MONEY"."KEI_ID"'
    end
    object q_ksmDvigRAZDEL_ID: TIntegerField
      FieldName = 'RAZDEL_ID'
      Origin = '"ZATR_MONEY"."RAZDEL_ID"'
    end
  end
  object upd_ksmDvig: TIBUpdateSQLW
    RefreshSQL.Strings = (
      'Select '
      'from zatr_money '
      'where'
      '  KSM_ID = :KSM_ID')
    ModifySQL.Strings = (
      'update zatr_money'
      'set'
      '  ACCOUNT = :ACCOUNT,'
      '  KRAZ = :KRAZ,'
      '  KSM_ID = :KSM_ID,'
      '  NEIS = :NEIS,'
      '  NMAT = :NMAT,'
      '  OST_BEG_MONEY = :OST_BEG_MONEY,'
      '  OST_END_MONEY = :OST_END_MONEY,'
      '  VIB = :VIB,'
      '  ZAGR_MONEY = :ZAGR_MONEY'
      'where'
      '  KSM_ID = :OLD_KSM_ID')
    InsertSQL.Strings = (
      'insert into zatr_money'
      
        '  (ACCOUNT, KRAZ, KSM_ID, NEIS, NMAT, OST_BEG_MONEY, OST_END_MON' +
        'EY, VIB, '
      '   ZAGR_MONEY)'
      'values'
      
        '  (:ACCOUNT, :KRAZ, :KSM_ID, :NEIS, :NMAT, :OST_BEG_MONEY, :OST_' +
        'END_MONEY, '
      '   :VIB, :ZAGR_MONEY)')
    DeleteSQL.Strings = (
      'delete from zatr_money'
      'where'
      '  KSM_ID = :OLD_KSM_ID')
    AutoCommit = False
    UpdateTransaction = dDM.trans_write
    Left = 256
    Top = 104
  end
end
