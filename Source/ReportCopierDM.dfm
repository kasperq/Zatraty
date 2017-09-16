object FReportCopierDM: TFReportCopierDM
  OldCreateOrder = False
  Height = 767
  Width = 905
  object q_otchet: TRxIBQuery
    Database = dDM.db
    Transaction = dDM.trans_read
    OnCalcFields = q_otchetCalcFields
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      
        'SELECT DISTINCT OST.KART_ID, OST.KSM_ID, OST.OSTATOK_END_S, OST.' +
        'OSTATOK_END_NZ,'
      'OST.OSTATOK_BEGIN_NZ, OST.OSTATOK_BEGIN_S, OST.NMAT,'
      '(ost.zag_period+ost.peredano_prih_nz) as zag_period,'
      'ost.rash_virab_period,'
      '(ost.prix_period+ost.peredano_prih_nz) as prix_period,'
      'ost.rasx_period,'
      '(ost.peredano_rash_s) as pers, (ost.peredano_rash_nz) as pernz,'
      'razdel.KRAZ, matrop.kei_id, ost.razdel_id, matrop.account,'
      
        'iif(ceh_otchet.kol_rasx = 0, ost.rash_virab_period, ceh_otchet.k' +
        'ol_rasx) rash_god'
      ''
      'FROM select_ob_ved(:dat_beg_mes,:dat_end_mes,:kodp) OST'
      'left join'
      ' ('
      ' select ceh_otchet.kart_id, max(ceh_otchet.mes)'
      '  from ceh_otchet'
      '  inner join ostatki on ostatki.kart_id = ceh_otchet.kart_id'
      '                     and ostatki.ksm_idpr = :kodp'
      
        '  where ceh_otchet.mes <= extract(month from cast(:dat_beg_mes a' +
        's date))'
      
        '  and ceh_otchet.god = extract(year from cast(:dat_beg_mes as da' +
        'te))'
      '  group by ceh_otchet.kart_id'
      ' ) co(kart_id, mes) on (ost.kart_id = co.kart_id)'
      'inner join razdel on (OST.razdel_id = razdel.razdel_id)'
      'inner join kart on (OST.kart_id = kart.kart_id)'
      'inner join matrop on (ost.ksm_id = matrop.ksm_id)'
      'left join ceh_otchet on (ceh_otchet.kart_id = co.kart_id'
      
        '                        and ceh_otchet.god = extract(year from c' +
        'ast(:dat_beg_mes as date))'
      '                        and ceh_otchet.mes = co.mes)'
      ''
      
        'where z(zag_period) <> 0 or z(prix_period) <> 0 or z(OST.OSTATOK' +
        '_END_S) <> 0'
      
        'or z(OST.OSTATOK_END_NZ) <> 0 or z(rasx_period) <> 0 or z(rash_v' +
        'irab_period) <> 0'
      'or z(OST.OSTATOK_BEGIN_NZ) <> 0 or z(OST.OSTATOK_BEGIN_S) <> 0'
      'or z(ost.peredano_rash_s) <> 0 or z(ost.peredano_rash_nz) <> 0'
      'or z(ceh_otchet.kol_rasx) <> 0 or z(ceh_otchet.kol) <> 0')
    Macros = <>
    Left = 56
    Top = 21
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'dat_beg_mes'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dat_end_mes'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'KODP'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'kodp'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dat_beg_mes'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dat_beg_mes'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dat_beg_mes'
        ParamType = ptUnknown
      end>
    object q_otchetKSM_ID: TIntegerField
      FieldName = 'KSM_ID'
      Origin = '"SELECT_OB_VED"."KSM_ID"'
    end
    object q_otchetOSTATOK_END_S: TFMTBCDField
      FieldName = 'OSTATOK_END_S'
      Origin = '"SELECT_OB_VED"."OSTATOK_END_S"'
      Precision = 18
      Size = 6
    end
    object q_otchetOSTATOK_END_NZ: TFMTBCDField
      FieldName = 'OSTATOK_END_NZ'
      Origin = '"SELECT_OB_VED"."OSTATOK_END_NZ"'
      Precision = 18
      Size = 6
    end
    object q_otchetOSTATOK_BEGIN_NZ: TFMTBCDField
      FieldName = 'OSTATOK_BEGIN_NZ'
      Origin = '"SELECT_OB_VED"."OSTATOK_BEGIN_NZ"'
      Precision = 18
      Size = 6
    end
    object q_otchetOSTATOK_BEGIN_S: TFMTBCDField
      FieldName = 'OSTATOK_BEGIN_S'
      Origin = '"SELECT_OB_VED"."OSTATOK_BEGIN_S"'
      Precision = 18
      Size = 6
    end
    object q_otchetNMAT: TIBStringField
      FieldName = 'NMAT'
      Origin = '"SELECT_OB_VED"."NMAT"'
      Size = 60
    end
    object q_otchetZAG_PERIOD: TFMTBCDField
      FieldName = 'ZAG_PERIOD'
      ProviderFlags = []
      Precision = 18
      Size = 6
    end
    object q_otchetRASH_VIRAB_PERIOD: TFMTBCDField
      FieldName = 'RASH_VIRAB_PERIOD'
      Origin = '"SELECT_OB_VED"."RASH_VIRAB_PERIOD"'
      Precision = 18
      Size = 6
    end
    object q_otchetPRIX_PERIOD: TFMTBCDField
      FieldName = 'PRIX_PERIOD'
      ProviderFlags = []
      Precision = 18
      Size = 6
    end
    object q_otchetRASX_PERIOD: TFMTBCDField
      FieldName = 'RASX_PERIOD'
      Origin = '"SELECT_OB_VED"."RASX_PERIOD"'
      Precision = 18
      Size = 6
    end
    object q_otchetPERS: TFMTBCDField
      FieldName = 'PERS'
      Origin = '"SELECT_OB_VED"."PEREDANO_RASH_S"'
      Precision = 18
      Size = 6
    end
    object q_otchetPERNZ: TFMTBCDField
      FieldName = 'PERNZ'
      Origin = '"SELECT_OB_VED"."PEREDANO_RASH_NZ"'
      Precision = 18
      Size = 6
    end
    object q_otchetKRAZ: TSmallintField
      FieldName = 'KRAZ'
      Origin = '"RAZDEL"."KRAZ"'
    end
    object q_otchetKEI_ID: TSmallintField
      FieldName = 'KEI_ID'
      Origin = '"MATROP"."KEI_ID"'
    end
    object q_otchetRAZDEL_ID: TSmallintField
      FieldName = 'RAZDEL_ID'
      Origin = '"SELECT_OB_VED"."RAZDEL_ID"'
    end
    object q_otchetKART_ID: TIntegerField
      FieldName = 'KART_ID'
      Origin = '"SELECT_OB_VED"."KART_ID"'
    end
    object q_otchetACCOUNT: TIBStringField
      FieldName = 'ACCOUNT'
      Origin = '"MATROP"."ACCOUNT"'
      FixedChar = True
      Size = 5
    end
    object q_otchetRASH_GOD: TFloatField
      FieldName = 'RASH_GOD'
      Origin = '"CEH_OTCHET"."KOL_RASX"'
    end
    object q_otchetRASH_KV: TFloatField
      FieldKind = fkCalculated
      FieldName = 'RASH_KV'
      Calculated = True
    end
  end
  object q_rashKv: TRxIBQuery
    Database = dDM.db
    Transaction = dDM.trans_read
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT DISTINCT  SELECT_OB_VED.KART_ID, KART.KEI_ID,'
      'SELECT_OB_VED.rash_virab_period rash_kv'
      'FROM  SELECT_OB_VED (:dat_beg_kv,:dat_end_mes,:kodp)'
      'inner join kart on (SELECT_OB_VED.kart_id=kart.kart_id)')
    Macros = <>
    Left = 176
    Top = 48
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'dat_beg_kv'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dat_end_mes'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'kodp'
        ParamType = ptUnknown
      end>
    object q_rashKvKART_ID: TIntegerField
      FieldName = 'KART_ID'
      Origin = '"SELECT_OB_VED"."KART_ID"'
    end
    object q_rashKvKEI_ID: TSmallintField
      FieldName = 'KEI_ID'
      Origin = '"KART"."KEI_ID"'
    end
    object q_rashKvRASH_KV: TFMTBCDField
      FieldName = 'RASH_KV'
      Origin = '"SELECT_OB_VED"."RASH_VIRAB_PERIOD"'
      Precision = 18
      Size = 6
    end
  end
end
