object FCenaPfForm: TFCenaPfForm
  Left = 0
  Top = 0
  Align = alClient
  AutoSize = True
  BorderStyle = bsNone
  Caption = 'FCenaPfForm'
  ClientHeight = 689
  ClientWidth = 1022
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 185
    Top = 65
    Height = 624
    ResizeStyle = rsUpdate
    ExplicitLeft = 250
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1022
    Height = 65
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 794
    object calcBtn: TSpeedButton
      Left = 8
      Top = 8
      Width = 81
      Height = 51
      Caption = #1056#1072#1089#1089#1095#1080#1090#1072#1090#1100
    end
  end
  object Panel2: TPanel
    Left = 188
    Top = 65
    Width = 834
    Height = 624
    Align = alClient
    Caption = 'Panel2'
    TabOrder = 1
    ExplicitLeft = 440
    ExplicitTop = 240
    ExplicitWidth = 185
    ExplicitHeight = 41
    object grid_vipusk: TDBGridEh
      Left = 1
      Top = 1
      Width = 832
      Height = 622
      Align = alClient
      AutoFitColWidths = True
      DataSource = ds_vipusk
      FooterColor = clWindow
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -11
      FooterFont.Name = 'Tahoma'
      FooterFont.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghRowHighlight, dghDialogFind]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          EditButtons = <>
          FieldName = 'KOD_PROD'
          Footers = <>
          MaxWidth = 150
          MinWidth = 150
          Title.Caption = #1050#1086#1076
          Width = 150
        end
        item
          EditButtons = <>
          FieldName = 'NMAT'
          Footers = <>
          Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
        end
        item
          EditButtons = <>
          FieldName = 'CHECKED'
          Footers = <>
          KeyList.Strings = (
            '0'
            '1')
          PickList.Strings = (
            '0'
            '1')
          Title.Caption = #1042#1099#1073#1086#1088
        end>
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 65
    Width = 185
    Height = 624
    Align = alLeft
    Caption = 'Panel3'
    TabOrder = 2
    ExplicitLeft = 296
    ExplicitTop = 64
    ExplicitHeight = 41
    object grid_departments: TDBGridEh
      Left = 1
      Top = 1
      Width = 183
      Height = 622
      Align = alClient
      AutoFitColWidths = True
      DataSource = ds_departments
      FooterColor = clWindow
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -11
      FooterFont.Name = 'Tahoma'
      FooterFont.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghRowHighlight, dghDialogFind]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          EditButtons = <>
          FieldName = 'STNAM'
          Footers = <>
          Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
        end
        item
          Checkboxes = True
          EditButtons = <>
          FieldName = 'CHECKED'
          Footers = <>
          KeyList.Strings = (
            '0'
            '1')
          MinWidth = 50
          PickList.Strings = (
            '0'
            '1')
          Title.Caption = #1042#1099#1073#1086#1088
          Width = 50
        end>
    end
  end
  object ds_departments: TDataSource
    DataSet = mem_vipusk
    Left = 80
    Top = 224
  end
  object ds_vipusk: TDataSource
    Left = 432
    Top = 344
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
    AfterScroll = mem_vipuskAfterScroll
    Left = 80
    Top = 336
    object mem_vipuskSTRUK_ID: TSmallintField
      FieldName = 'STRUK_ID'
      Origin = '"CONFIGUMC"."STRUK_ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object mem_vipuskRELA_STRUK_ID: TSmallintField
      FieldName = 'RELA_STRUK_ID'
      Origin = '"CONFIGUMC"."RELA_STRUK_ID"'
    end
    object mem_vipuskRELASTRUKID: TSmallintField
      FieldName = 'RELASTRUKID'
      ProviderFlags = []
    end
    object mem_vipuskSTNAM: TStringField
      FieldName = 'STNAM'
      Size = 277
    end
    object mem_vipuskSTKOD: TStringField
      FieldName = 'STKOD'
      Size = 4
    end
    object mem_vipuskCHECKED: TBooleanField
      AutoGenerateValue = arDefault
      DefaultExpression = '0'
      FieldName = 'CHECKED'
    end
  end
end
