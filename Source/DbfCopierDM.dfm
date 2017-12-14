object dbfCopyDM: TdbfCopyDM
  OldCreateOrder = False
  Height = 790
  Width = 886
  object q_zatraDbf: TERxQuery
    SQL.Strings = (
      'select *'
      'from '#39'f:\pc2\otchbas\zatras.dbf'#39' zatras'
      
        'where zatras.komatr not in ('#39'ITOGO'#39','#39'ITOGP'#39','#39'ITOGS'#39','#39'ITOGR'#39','#39'VSE' +
        'GR'#39','#39'VSE'#39','#39'VSEGS'#39','#39'VSEGO'#39','#39'VSEGP'#39')')
    EhSQL.Strings = (
      'select *'
      'from '#39'f:\pc2\otchbas\zatras.dbf'#39' zatras'
      
        'where zatras.komatr not in ('#39'ITOGO'#39','#39'ITOGP'#39','#39'ITOGS'#39','#39'ITOGR'#39','#39'VSE' +
        'GR'#39','#39'VSE'#39','#39'VSEGS'#39','#39'VSEGO'#39','#39'VSEGP'#39')')
    EhMacros = <>
    Left = 40
    Top = 32
    object q_zatraDbfMES: TSmallintField
      FieldName = 'MES'
    end
    object q_zatraDbfSTRK: TStringField
      FieldName = 'STRK'
      Size = 4
    end
    object q_zatraDbfKOPREP: TStringField
      FieldName = 'KOPREP'
      Size = 6
    end
    object q_zatraDbfKOMATR: TStringField
      FieldName = 'KOMATR'
      Size = 6
    end
    object q_zatraDbfNMAT: TStringField
      FieldName = 'NMAT'
      Size = 25
    end
    object q_zatraDbfRAZD: TStringField
      FieldName = 'RAZD'
      Size = 2
    end
    object q_zatraDbfCENA: TFloatField
      FieldName = 'CENA'
    end
    object q_zatraDbfCENA1: TFloatField
      FieldName = 'CENA1'
    end
    object q_zatraDbfCENOS: TFloatField
      FieldName = 'CENOS'
    end
    object q_zatraDbfCENON: TFloatField
      FieldName = 'CENON'
    end
    object q_zatraDbfCENAZA: TFloatField
      FieldName = 'CENAZA'
    end
    object q_zatraDbfCENVY: TFloatField
      FieldName = 'CENVY'
    end
    object q_zatraDbfEDIZ: TStringField
      FieldName = 'EDIZ'
      Size = 6
    end
    object q_zatraDbfBAL: TStringField
      FieldName = 'BAL'
      Size = 3
    end
    object q_zatraDbfT: TStringField
      FieldName = 'T'
      Size = 16
    end
    object q_zatraDbfG5: TFloatField
      FieldName = 'G5'
    end
    object q_zatraDbfG6: TFloatField
      FieldName = 'G6'
    end
    object q_zatraDbfG7: TFloatField
      FieldName = 'G7'
    end
    object q_zatraDbfG8A: TFloatField
      FieldName = 'G8A'
    end
    object q_zatraDbfG8: TFloatField
      FieldName = 'G8'
    end
    object q_zatraDbfG9A: TFloatField
      FieldName = 'G9A'
    end
    object q_zatraDbfREALOSTK: TFloatField
      FieldName = 'REALOSTK'
    end
    object q_zatraDbfG9: TFloatField
      FieldName = 'G9'
    end
    object q_zatraDbfG10: TFloatField
      FieldName = 'G10'
    end
    object q_zatraDbfG11: TFloatField
      FieldName = 'G11'
    end
    object q_zatraDbfG12: TFloatField
      FieldName = 'G12'
    end
    object q_zatraDbfG13: TFloatField
      FieldName = 'G13'
    end
    object q_zatraDbfG14: TFloatField
      FieldName = 'G14'
    end
    object q_zatraDbfG15: TFloatField
      FieldName = 'G15'
    end
    object q_zatraDbfG16: TFloatField
      FieldName = 'G16'
    end
    object q_zatraDbfG17: TFloatField
      FieldName = 'G17'
    end
    object q_zatraDbfG18: TFloatField
      FieldName = 'G18'
    end
    object q_zatraDbfG19: TFloatField
      FieldName = 'G19'
    end
    object q_zatraDbfG20: TFloatField
      FieldName = 'G20'
    end
    object q_zatraDbfOTKLON: TFloatField
      FieldName = 'OTKLON'
    end
    object q_zatraDbfOTKL: TFloatField
      FieldName = 'OTKL'
    end
    object q_zatraDbfG9_NDS: TFloatField
      FieldName = 'G9_NDS'
    end
    object q_zatraDbfCENON_NDS: TFloatField
      FieldName = 'CENON_NDS'
    end
    object q_zatraDbfNDS: TFloatField
      FieldName = 'NDS'
    end
    object q_zatraDbfPNDS: TFloatField
      FieldName = 'PNDS'
    end
    object q_zatraDbfSUM_NDS: TFloatField
      FieldName = 'SUM_NDS'
    end
    object q_zatraDbfNOM_ID: TFloatField
      FieldName = 'NOM_ID'
    end
    object q_zatraDbfCENON_OLD: TFloatField
      FieldName = 'CENON_OLD'
    end
    object q_zatraDbfG9_OLD: TFloatField
      FieldName = 'G9_OLD'
    end
    object q_zatraDbfKSM_ID: TFloatField
      FieldName = 'KSM_ID'
    end
    object q_zatraDbfKOPREP_S: TStringField
      FieldName = 'KOPREP_S'
      Size = 6
    end
    object q_zatraDbfKSM_ID_S: TFloatField
      FieldName = 'KSM_ID_S'
    end
  end
end
