object FMoneyCopierDM: TFMoneyCopierDM
  OldCreateOrder = False
  Height = 629
  Width = 796
  object q_nomenDbf: TERxQuery
    SQL.Strings = (
      'select nomen.numkcu, nomen.sklad, nomen.kei,'
      'nomen."money", nomen.ksm_id, nomen.bals'
      'from '#39'f:\bm3\zerno1\nomen.dbf'#39' nomen'
      'where nomen.sklad = :stkod')
    EhSQL.Strings = (
      'select nomen.numkcu, nomen.sklad, nomen.kei,'
      'nomen."money", nomen.ksm_id, nomen.bals'
      'from '#39'f:\bm3\zerno1\nomen.dbf'#39' nomen'
      'where nomen.sklad = :stkod')
    EhMacros = <>
    Left = 240
    Top = 48
    ParamData = <
      item
        DataType = ftString
        Name = 'stkod'
        ParamType = ptInput
      end>
    object q_nomenDbfNUMKCU: TStringField
      FieldName = 'NUMKCU'
      Size = 7
    end
    object q_nomenDbfSKLAD: TStringField
      FieldName = 'SKLAD'
      Size = 4
    end
    object q_nomenDbfKEI: TStringField
      FieldName = 'KEI'
      Size = 4
    end
    object q_nomenDbfMONEY: TFloatField
      FieldName = 'MONEY'
    end
    object q_nomenDbfKSM_ID: TFloatField
      FieldName = 'KSM_ID'
    end
    object q_nomenDbfBALS: TStringField
      FieldName = 'BALS'
      Size = 5
    end
  end
  object q_bmPath: TRxIBQuery
    Database = dDM.db
    Transaction = dDM.trans_read
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select *'
      'from zatr_bm_path'
      'where zatr_bm_path.stkod = :stkod')
    Macros = <>
    Left = 40
    Top = 32
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'stkod'
        ParamType = ptUnknown
      end>
  end
end
