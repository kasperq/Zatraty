object FZatrReportDM: TFZatrReportDM
  OldCreateOrder = False
  Height = 729
  Width = 899
  object q_zatrReport: TRxIBQuery
    Database = dDM.db
    Transaction = dDM.trans_read
    BeforeInsert = q_zatrReportBeforeInsert
    BufferChunks = 1000
    CachedUpdates = True
    ParamCheck = True
    SQL.Strings = (
      'select *'
      'from zatr_otchet'
      'where zatr_otchet.doc_id = :doc_id')
    UpdateObject = upd_zatrReport
    Macros = <>
    Left = 88
    Top = 40
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'doc_id'
        ParamType = ptUnknown
      end>
    object q_zatrReportOTCHET_ID: TIntegerField
      FieldName = 'OTCHET_ID'
      Origin = '"ZATR_OTCHET"."OTCHET_ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object q_zatrReportDOC_ID: TIntegerField
      FieldName = 'DOC_ID'
      Origin = '"ZATR_OTCHET"."DOC_ID"'
      Required = True
    end
    object q_zatrReportKSM_ID: TIntegerField
      FieldName = 'KSM_ID'
      Origin = '"ZATR_OTCHET"."KSM_ID"'
    end
    object q_zatrReportRAZDEL_ID: TIntegerField
      FieldName = 'RAZDEL_ID'
      Origin = '"ZATR_OTCHET"."RAZDEL_ID"'
    end
    object q_zatrReportKEI_ID: TIntegerField
      FieldName = 'KEI_ID'
      Origin = '"ZATR_OTCHET"."KEI_ID"'
    end
    object q_zatrReportPARENT: TIntegerField
      FieldName = 'PARENT'
      Origin = '"ZATR_OTCHET"."PARENT"'
    end
    object q_zatrReportACCOUNT: TIBStringField
      FieldName = 'ACCOUNT'
      Origin = '"ZATR_OTCHET"."ACCOUNT"'
      FixedChar = True
      Size = 6
    end
    object q_zatrReportACTIVE_DOPR: TIntegerField
      FieldName = 'ACTIVE_DOPR'
      Origin = '"ZATR_OTCHET"."ACTIVE_DOPR"'
    end
    object q_zatrReportOST_BEG_S: TFMTBCDField
      FieldName = 'OST_BEG_S'
      Origin = '"ZATR_OTCHET"."OST_BEG_S"'
      Precision = 18
      Size = 6
    end
    object q_zatrReportOST_BEG_NZ: TFMTBCDField
      FieldName = 'OST_BEG_NZ'
      Origin = '"ZATR_OTCHET"."OST_BEG_NZ"'
      Precision = 18
      Size = 6
    end
    object q_zatrReportPRIHOD: TFMTBCDField
      FieldName = 'PRIHOD'
      Origin = '"ZATR_OTCHET"."PRIHOD"'
      Precision = 18
      Size = 6
    end
    object q_zatrReportZAGRUZ: TFMTBCDField
      FieldName = 'ZAGRUZ'
      Origin = '"ZATR_OTCHET"."ZAGRUZ"'
      Precision = 18
      Size = 6
    end
    object q_zatrReportRASHOD: TFMTBCDField
      FieldName = 'RASHOD'
      Origin = '"ZATR_OTCHET"."RASHOD"'
      Precision = 18
      Size = 6
    end
    object q_zatrReportPER_S: TFMTBCDField
      FieldName = 'PER_S'
      Origin = '"ZATR_OTCHET"."PER_S"'
      Precision = 18
      Size = 6
    end
    object q_zatrReportPER_NZ: TFMTBCDField
      FieldName = 'PER_NZ'
      Origin = '"ZATR_OTCHET"."PER_NZ"'
      Precision = 18
      Size = 6
    end
    object q_zatrReportOST_END_S: TFMTBCDField
      FieldName = 'OST_END_S'
      Origin = '"ZATR_OTCHET"."OST_END_S"'
      Precision = 18
      Size = 6
    end
    object q_zatrReportOST_END_NZ: TFMTBCDField
      FieldName = 'OST_END_NZ'
      Origin = '"ZATR_OTCHET"."OST_END_NZ"'
      Precision = 18
      Size = 6
    end
    object q_zatrReportPERERAS_M: TFMTBCDField
      FieldName = 'PERERAS_M'
      Origin = '"ZATR_OTCHET"."PERERAS_M"'
      Precision = 18
      Size = 6
    end
    object q_zatrReportPERERAS_G: TFMTBCDField
      FieldName = 'PERERAS_G'
      Origin = '"ZATR_OTCHET"."PERERAS_G"'
      Precision = 18
      Size = 6
    end
    object q_zatrReportDATE_TIME_UPDATE: TDateTimeField
      FieldName = 'DATE_TIME_UPDATE'
      Origin = '"ZATR_OTCHET"."DATE_TIME_UPDATE"'
    end
    object q_zatrReportUSER_NAME: TIBStringField
      FieldName = 'USER_NAME'
      Origin = '"ZATR_OTCHET"."USER_NAME"'
      FixedChar = True
      Size = 10
    end
    object q_zatrReportRASHOD_YEAR: TFMTBCDField
      FieldName = 'RASHOD_YEAR'
      Origin = '"ZATR_OTCHET"."RASHOD_YEAR"'
      Precision = 18
      Size = 6
    end
    object q_zatrReportRASHOD_QUAT: TFMTBCDField
      FieldName = 'RASHOD_QUAT'
      Origin = '"ZATR_OTCHET"."RASHOD_QUAT"'
      Precision = 18
      Size = 6
    end
  end
  object upd_zatrReport: TIBUpdateSQLW
    RefreshSQL.Strings = (
      'Select '
      'from zatr_otchet '
      'where'
      '  OTCHET_ID = :OTCHET_ID')
    ModifySQL.Strings = (
      'update zatr_otchet'
      'set'
      '  ACCOUNT = :ACCOUNT,'
      '  ACTIVE_DOPR = :ACTIVE_DOPR,'
      '  DOC_ID = :DOC_ID,'
      '  KEI_ID = :KEI_ID,'
      '  KSM_ID = :KSM_ID,'
      '  OST_BEG_NZ = :OST_BEG_NZ,'
      '  OST_BEG_S = :OST_BEG_S,'
      '  OST_END_NZ = :OST_END_NZ,'
      '  OST_END_S = :OST_END_S,'
      '  OTCHET_ID = :OTCHET_ID,'
      '  PARENT = :PARENT,'
      '  PER_NZ = :PER_NZ,'
      '  PER_S = :PER_S,'
      '  PERERAS_G = :PERERAS_G,'
      '  PERERAS_M = :PERERAS_M,'
      '  PRIHOD = :PRIHOD,'
      '  RASHOD = :RASHOD,'
      '  RASHOD_QUAT = :RASHOD_QUAT,'
      '  RASHOD_YEAR = :RASHOD_YEAR,'
      '  RAZDEL_ID = :RAZDEL_ID,'
      '  ZAGRUZ = :ZAGRUZ'
      'where'
      '  OTCHET_ID = :OLD_OTCHET_ID')
    InsertSQL.Strings = (
      'insert into zatr_otchet'
      
        '  (ACCOUNT, ACTIVE_DOPR, DOC_ID, KEI_ID, KSM_ID, OST_BEG_NZ, OST' +
        '_BEG_S, '
      
        '   OST_END_NZ, OST_END_S, OTCHET_ID, PARENT, PER_NZ, PER_S, PERE' +
        'RAS_G, '
      
        '   PERERAS_M, PRIHOD, RASHOD, RASHOD_QUAT, RASHOD_YEAR, RAZDEL_I' +
        'D, ZAGRUZ)'
      'values'
      
        '  (:ACCOUNT, :ACTIVE_DOPR, :DOC_ID, :KEI_ID, :KSM_ID, :OST_BEG_N' +
        'Z, :OST_BEG_S, '
      
        '   :OST_END_NZ, :OST_END_S, :OTCHET_ID, :PARENT, :PER_NZ, :PER_S' +
        ', :PERERAS_G, '
      
        '   :PERERAS_M, :PRIHOD, :RASHOD, :RASHOD_QUAT, :RASHOD_YEAR, :RA' +
        'ZDEL_ID, '
      '   :ZAGRUZ)')
    DeleteSQL.Strings = (
      'delete from zatr_otchet'
      'where'
      '  OTCHET_ID = :OLD_OTCHET_ID')
    AutoCommit = False
    UpdateTransaction = dDM.trans_write
    Left = 88
    Top = 96
  end
  object proc_addOtchetId: TIBStoredProc
    Database = dDM.db
    Transaction = dDM.trans_read
    StoredProcName = 'ADD_ZATR_OTCHET'
    Left = 96
    Top = 160
  end
end
