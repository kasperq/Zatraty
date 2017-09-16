object FDocumentDM: TFDocumentDM
  OldCreateOrder = False
  Height = 632
  Width = 860
  object q_document: TRxIBQuery
    Database = dDM.db
    Transaction = dDM.trans_read
    BeforeInsert = q_documentBeforeInsert
    OnNewRecord = q_documentNewRecord
    BufferChunks = 1000
    CachedUpdates = True
    ParamCheck = True
    SQL.Strings = (
      'select *'
      'from document'
      'where document.struk_id = :struk_id'
      'and document.klient_id = :klient_id'
      'and document.tip_op_id = :tip_op_id'
      'and document.tip_dok_id = :tip_dok_id'
      'and %usl')
    UpdateObject = upd_document
    Macros = <
      item
        DataType = ftString
        Name = 'usl'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 96
    Top = 72
    ParamData = <
      item
        DataType = ftInteger
        Name = 'struk_id'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'klient_id'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'tip_op_id'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'tip_dok_id'
        ParamType = ptInput
      end>
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
    object q_documentPRIZ_ID: TSmallintField
      FieldName = 'PRIZ_ID'
      Origin = '"DOCUMENT"."PRIZ_ID"'
    end
    object q_documentTIP_OP_ID: TSmallintField
      FieldName = 'TIP_OP_ID'
      Origin = '"DOCUMENT"."TIP_OP_ID"'
      Required = True
    end
    object q_documentTIP_DOK_ID: TSmallintField
      FieldName = 'TIP_DOK_ID'
      Origin = '"DOCUMENT"."TIP_DOK_ID"'
      Required = True
    end
    object q_documentDATE_DOK: TDateField
      FieldName = 'DATE_DOK'
      Origin = '"DOCUMENT"."DATE_DOK"'
    end
    object q_documentDOK_OSN_ID: TIntegerField
      FieldName = 'DOK_OSN_ID'
      Origin = '"DOCUMENT"."DOK_OSN_ID"'
    end
    object q_documentSTRUK_ID: TSmallintField
      FieldName = 'STRUK_ID'
      Origin = '"DOCUMENT"."STRUK_ID"'
      Required = True
    end
    object q_documentVP_ID: TSmallintField
      FieldName = 'VP_ID'
      Origin = '"DOCUMENT"."VP_ID"'
    end
    object q_documentKPV: TFMTBCDField
      FieldName = 'KPV'
      Origin = '"DOCUMENT"."KPV"'
      Precision = 18
      Size = 6
    end
    object q_documentKLIENT_ID: TIntegerField
      FieldName = 'KLIENT_ID'
      Origin = '"DOCUMENT"."KLIENT_ID"'
      Required = True
    end
    object q_documentSUM_BRB: TIBBCDField
      FieldName = 'SUM_BRB'
      Origin = '"DOCUMENT"."SUM_BRB"'
      Precision = 18
      Size = 2
    end
    object q_documentSUM_ISP1: TIBBCDField
      FieldName = 'SUM_ISP1'
      Origin = '"DOCUMENT"."SUM_ISP1"'
      Precision = 18
      Size = 2
    end
    object q_documentSUM_ISP2: TIBBCDField
      FieldName = 'SUM_ISP2'
      Origin = '"DOCUMENT"."SUM_ISP2"'
      Precision = 18
      Size = 2
    end
    object q_documentSUM_VP: TIBBCDField
      FieldName = 'SUM_VP'
      Origin = '"DOCUMENT"."SUM_VP"'
      Precision = 18
      Size = 2
    end
    object q_documentSUM_ISP1_VP: TIBBCDField
      FieldName = 'SUM_ISP1_VP'
      Origin = '"DOCUMENT"."SUM_ISP1_VP"'
      Precision = 18
      Size = 2
    end
    object q_documentSUM_ISP2_VP: TIBBCDField
      FieldName = 'SUM_ISP2_VP'
      Origin = '"DOCUMENT"."SUM_ISP2_VP"'
      Precision = 18
      Size = 2
    end
    object q_documentNDS: TIBBCDField
      FieldName = 'NDS'
      Origin = '"DOCUMENT"."NDS"'
      Precision = 9
      Size = 2
    end
    object q_documentSUM_NDS: TIBBCDField
      FieldName = 'SUM_NDS'
      Origin = '"DOCUMENT"."SUM_NDS"'
      Precision = 18
      Size = 2
    end
    object q_documentSUM_NDS_VP: TIBBCDField
      FieldName = 'SUM_NDS_VP'
      Origin = '"DOCUMENT"."SUM_NDS_VP"'
      Precision = 18
      Size = 2
    end
    object q_documentDATE_OP: TDateField
      FieldName = 'DATE_OP'
      Origin = '"DOCUMENT"."DATE_OP"'
    end
    object q_documentDATE_VVOD: TDateTimeField
      FieldName = 'DATE_VVOD'
      Origin = '"DOCUMENT"."DATE_VVOD"'
    end
    object q_documentZADACHA_ID: TIBStringField
      FieldName = 'ZADACHA_ID'
      Origin = '"DOCUMENT"."ZADACHA_ID"'
      FixedChar = True
      Size = 10
    end
    object q_documentUSER_NAME: TIBStringField
      FieldName = 'USER_NAME'
      Origin = '"DOCUMENT"."USER_NAME"'
      FixedChar = True
      Size = 10
    end
    object q_documentDOV: TIntegerField
      FieldName = 'DOV'
      Origin = '"DOCUMENT"."DOV"'
    end
    object q_documentDATE_TIME_UPDATE: TDateTimeField
      FieldName = 'DATE_TIME_UPDATE'
      Origin = '"DOCUMENT"."DATE_TIME_UPDATE"'
    end
    object q_documentJORN_ID: TSmallintField
      FieldName = 'JORN_ID'
      Origin = '"DOCUMENT"."JORN_ID"'
    end
    object q_documentRCHET_ID: TIntegerField
      FieldName = 'RCHET_ID'
      Origin = '"DOCUMENT"."RCHET_ID"'
    end
    object q_documentTAG: TIntegerField
      FieldName = 'TAG'
      Origin = '"DOCUMENT"."TAG"'
    end
    object q_documentKPV_OLD: TFMTBCDField
      FieldName = 'KPV_OLD'
      Origin = '"DOCUMENT"."KPV_OLD"'
      Precision = 18
      Size = 6
    end
    object q_documentTTN: TIBStringField
      FieldName = 'TTN'
      Origin = '"DOCUMENT"."TTN"'
      FixedChar = True
      Size = 10
    end
  end
  object upd_document: TIBUpdateSQLW
    RefreshSQL.Strings = (
      'Select '
      'from document '
      'where'
      '  DOC_ID = :DOC_ID')
    ModifySQL.Strings = (
      'update document'
      'set'
      '  DATE_DOK = :DATE_DOK,'
      '  DATE_OP = :DATE_OP,'
      '  DOC_ID = :DOC_ID,'
      '  KLIENT_ID = :KLIENT_ID,'
      '  NDOK = :NDOK,'
      '  STRUK_ID = :STRUK_ID,'
      '  TIP_DOK_ID = :TIP_DOK_ID,'
      '  TIP_OP_ID = :TIP_OP_ID'
      'where'
      '  DOC_ID = :OLD_DOC_ID')
    InsertSQL.Strings = (
      'insert into document'
      
        '  (DATE_DOK, DATE_OP, DOC_ID, KLIENT_ID, NDOK, STRUK_ID, TIP_DOK' +
        '_ID, TIP_OP_ID)'
      'values'
      
        '  (:DATE_DOK, :DATE_OP, :DOC_ID, :KLIENT_ID, :NDOK, :STRUK_ID, :' +
        'TIP_DOK_ID, '
      '   :TIP_OP_ID)')
    DeleteSQL.Strings = (
      'delete from document'
      'where'
      '  DOC_ID = :OLD_DOC_ID')
    AutoCommit = False
    UpdateTransaction = dDM.trans_write
    Left = 96
    Top = 120
  end
  object proc_addDoc: TIBStoredProc
    Database = dDM.db
    Transaction = dDM.trans_read
    StoredProcName = 'ADD_DOCUMENT'
    Left = 32
    Top = 24
  end
end
