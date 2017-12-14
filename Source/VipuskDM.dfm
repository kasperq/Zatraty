object vipDM: TvipDM
  OldCreateOrder = False
  OnDestroy = DataModuleDestroy
  Height = 558
  Width = 761
  object q_vipusk: TRxIBQuery
    Database = dDM.db
    Transaction = dDM.trans_read
    AfterScroll = q_vipuskAfterScroll
    BufferChunks = 1000
    CachedUpdates = True
    ParamCheck = True
    SQL.Strings = (
      
        'select kartv.ksm_id, kartv.kol_prih, spprod.nmat, spprod.kod_pro' +
        'd, ediz.neis,'
      'spprod.sprod_id, cast(0 as integer) checked,'
      'iif(coalesce(docOt.doc_id,0) > 0, 1, 0) copied,'
      'iif(coalesce(docZ.doc_id,0) > 0, 1, 0) calculated,'
      'spprod.spprn'
      'from kartv'
      'inner join document on document.doc_id = kartv.doc_id'
      'left join spprod on spprod.ksm_id = kartv.ksm_id'
      'left join ediz on ediz.kei_id = spprod.kei_id'
      'left join document docOt on docOt.klient_id = kartv.ksm_id'
      '                    and docOt.date_op between :date1 and :date2'
      '                    and docOt.tip_op_id = 163'
      '                    and docOt.tip_dok_id = 237'
      'left join document docZ on docZ.klient_id = kartv.ksm_id'
      '                    and docZ.date_op between :date1 and :date2'
      '                    and docZ.tip_op_id = 163'
      '                    and docZ.tip_dok_id = 238'
      'where document.tip_op_id = 36 and document.tip_dok_id = 74'
      'and document.struk_id = :struk_id'
      'and document.klient_id = :struk_id'
      'and document.date_op between :date1 and :date2'
      'order by spprod.kod_prod')
    UpdateObject = upd_vipusk
    Macros = <>
    Left = 48
    Top = 32
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'date1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'date2'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'date1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'date2'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'struk_id'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'struk_id'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'date1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'date2'
        ParamType = ptUnknown
      end>
    object q_vipuskKSM_ID: TIntegerField
      FieldName = 'KSM_ID'
      Origin = '"KARTV"."KSM_ID"'
      Required = True
    end
    object q_vipuskKOL_PRIH: TFMTBCDField
      FieldName = 'KOL_PRIH'
      Origin = '"KARTV"."KOL_PRIH"'
      Precision = 18
      Size = 6
    end
    object q_vipuskNMAT: TIBStringField
      FieldName = 'NMAT'
      Origin = '"SPPROD"."NMAT"'
      Size = 60
    end
    object q_vipuskKOD_PROD: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'KOD_PROD'
      Origin = '"SPPROD"."KOD_PROD"'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 18
    end
    object q_vipuskNEIS: TIBStringField
      FieldName = 'NEIS'
      Origin = '"EDIZ"."NEIS"'
      FixedChar = True
      Size = 10
    end
    object q_vipuskSPROD_ID: TIntegerField
      FieldName = 'SPROD_ID'
      Origin = '"SPPROD"."SPROD_ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object q_vipuskCHECKED: TIntegerField
      DefaultExpression = '0'
      FieldName = 'CHECKED'
      ProviderFlags = []
      OnChange = q_vipuskCHECKEDChange
      MaxValue = 1
    end
    object q_vipuskCOPIED: TIntegerField
      FieldName = 'COPIED'
      ProviderFlags = []
      ReadOnly = True
    end
    object q_vipuskCALCULATED: TIntegerField
      FieldName = 'CALCULATED'
      ProviderFlags = []
      ReadOnly = True
    end
    object q_vipuskSPPRN: TSmallintField
      FieldName = 'SPPRN'
      Origin = '"SPPROD"."SPPRN"'
    end
  end
  object upd_vipusk: TIBUpdateSQLW
    RefreshSQL.Strings = (
      'select *'
      'from spprod'
      'whee ksm_id = :ksm_id')
    ModifySQL.Strings = (
      'select *'
      'from spprod'
      'whee ksm_id = :ksm_id')
    InsertSQL.Strings = (
      'select *'
      'from spprod'
      'whee ksm_id = :ksm_id')
    DeleteSQL.Strings = (
      'select *'
      'from spprod'
      'whee ksm_id = :ksm_id')
    AutoCommit = False
    UpdateTransaction = dDM.trans_write
    Left = 48
    Top = 88
  end
  object mem_checkedVipusk: TkbmMemTable
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
    Left = 168
    Top = 40
  end
end
