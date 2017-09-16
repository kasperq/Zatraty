object FCalcZatrForm: TFCalcZatrForm
  Left = 0
  Top = 0
  Align = alClient
  AutoSize = True
  BorderStyle = bsNone
  Caption = 'FCalcZatrForm'
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
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1022
    Height = 49
    Align = alTop
    TabOrder = 0
    object btn_showCurZatr: TBitBtn
      Left = 476
      Top = 1
      Width = 85
      Height = 47
      Align = alLeft
      Caption = #1055#1088#1086#1089#1084#1086#1090#1088' '#1090#1077#1082#1091#1097#1077#1075#1086' '#1087#1088'.'
      TabOrder = 0
      Visible = False
      WordWrap = True
      OnClick = btn_showCurZatrClick
    end
    object btn_calcZatr: TBitBtn
      Left = 321
      Top = 1
      Width = 75
      Height = 47
      Align = alLeft
      Caption = #1056#1072#1089#1089#1095#1080#1090#1072#1090#1100' '#1079#1072#1090#1088#1072#1090#1099
      TabOrder = 1
      Visible = False
      WordWrap = True
    end
    object btn_printCurZatra: TBitBtn
      Left = 241
      Top = 1
      Width = 80
      Height = 47
      Align = alLeft
      Caption = #1055#1077#1095#1072#1090#1100' '#1079#1072#1090#1088#1072#1090' '#1090#1077#1082#1091#1097#1077#1075#1086' '#1087#1088'.'
      PopupMenu = menu_printCur
      TabOrder = 2
      WordWrap = True
      OnClick = btn_printCurZatraClick
    end
    object btn_printChecked: TBitBtn
      Left = 161
      Top = 1
      Width = 80
      Height = 47
      Align = alLeft
      BiDiMode = bdLeftToRight
      Caption = #1055#1077#1095#1072#1090#1100' '#1079#1072#1090#1088#1072#1090' '#1086#1090#1084#1077#1095#1077#1085#1085#1086#1075#1086' '#1087#1088#1077#1087'.'
      Constraints.MaxWidth = 80
      Layout = blGlyphTop
      ParentBiDiMode = False
      PopupMenu = menu_print
      TabOrder = 3
      WordWrap = True
      OnClick = btn_printCheckedClick
    end
    object btn_deselectAll: TBitBtn
      Left = 81
      Top = 1
      Width = 80
      Height = 47
      Align = alLeft
      Caption = #1054#1090#1084#1077#1085#1080#1090#1100' '#1074#1099#1073#1086#1088
      TabOrder = 4
      WordWrap = True
      OnClick = btn_deselectAllClick
    end
    object btn_selectAll: TBitBtn
      Left = 1
      Top = 1
      Width = 80
      Height = 47
      Align = alLeft
      Caption = #1042#1099#1073#1088#1072#1090#1100' '#1074#1089#1077
      TabOrder = 5
      WordWrap = True
      OnClick = btn_selectAllClick
    end
    object btn_viewChecked: TBitBtn
      Left = 396
      Top = 1
      Width = 80
      Height = 47
      Align = alLeft
      Caption = #1055#1088#1086#1089#1084#1086#1090#1088' '#1074#1099#1073#1088#1072#1085#1085#1086#1075#1086
      TabOrder = 6
      Visible = False
      WordWrap = True
      OnClick = btn_viewCheckedClick
    end
  end
  object pc_zatraty: TPageControl
    Left = 0
    Top = 49
    Width = 1022
    Height = 640
    ActivePage = vipuskPage
    Align = alClient
    TabOrder = 1
    object vipuskPage: TTabSheet
      Caption = #1057#1087#1080#1089#1086#1082' '#1087#1088#1077#1087#1072#1088#1072#1090#1086#1074
      object Splitter1: TSplitter
        Left = 185
        Top = 0
        Height = 612
        ResizeStyle = rsUpdate
        ExplicitLeft = 193
        ExplicitTop = 24
        ExplicitHeight = 596
      end
      object Panel2: TPanel
        Left = 188
        Top = 0
        Width = 826
        Height = 612
        Align = alClient
        Caption = 'Panel2'
        TabOrder = 0
        object grid_vipusk: TDBGridEh
          Left = 1
          Top = 1
          Width = 824
          Height = 610
          Align = alClient
          AutoFitColWidths = True
          DataSource = ds_vipusk
          DynProps = <>
          FooterParams.Color = clWindow
          GridLineParams.VertEmptySpaceStyle = dessNonEh
          IndicatorOptions = [gioShowRowIndicatorEh]
          OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghRowHighlight, dghDialogFind, dghColumnResize, dghColumnMove]
          TabOrder = 0
          OnDblClick = grid_vipuskDblClick
          Columns = <
            item
              Checkboxes = True
              DynProps = <>
              EditButtons = <>
              FieldName = 'CHECKED'
              Footers = <>
              KeyList.Strings = (
                '1'
                '0')
              MaxWidth = 40
              MinWidth = 40
              PickList.Strings = (
                '0'
                '1')
              Title.Caption = #1042#1099#1073#1086#1088
              Width = 40
            end
            item
              DynProps = <>
              EditButtons = <>
              FieldName = 'KOD_PROD'
              Footers = <>
              MaxWidth = 150
              MinWidth = 150
              Title.Caption = #1050#1086#1076
              Width = 150
            end
            item
              DynProps = <>
              EditButtons = <>
              FieldName = 'NMAT'
              Footers = <>
              Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
              Width = 50
            end
            item
              DynProps = <>
              EditButtons = <>
              FieldName = 'KOL_PRIH'
              Footers = <>
              MaxWidth = 80
              Title.Caption = #1042#1099#1087#1091#1089#1082
              Width = 80
            end
            item
              DynProps = <>
              EditButtons = <>
              FieldName = 'KSM_ID'
              Footers = <>
            end>
          object RowDetailData: TRowDetailPanelControlEh
          end
        end
      end
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 185
        Height = 612
        Align = alLeft
        Caption = 'Panel3'
        TabOrder = 1
        object grid_departments: TDBGridEh
          Left = 1
          Top = 1
          Width = 183
          Height = 610
          Align = alClient
          AutoFitColWidths = True
          DataSource = ds_departments
          DynProps = <>
          FooterParams.Color = clWindow
          GridLineParams.VertEmptySpaceStyle = dessNonEh
          IndicatorOptions = [gioShowRowIndicatorEh]
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghRowHighlight, dghDialogFind, dghColumnResize, dghColumnMove]
          TabOrder = 0
          Columns = <
            item
              DynProps = <>
              EditButtons = <>
              FieldName = 'STNAM'
              Footers = <>
              Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
            end
            item
              Checkboxes = True
              DynProps = <>
              EditButtons = <>
              FieldName = 'VIB'
              Footers = <>
              KeyList.Strings = (
                '1'
                '0')
              MaxWidth = 40
              MinWidth = 40
              PickList.Strings = (
                '0'
                '1')
              Title.Caption = #1042#1099#1073#1086#1088
              Width = 40
            end>
          object RowDetailData: TRowDetailPanelControlEh
          end
        end
      end
    end
    object viewPage: TTabSheet
      Caption = #1055#1088#1086#1089#1084#1086#1090#1088' '#1079#1072#1090#1088#1072#1090
      ImageIndex = 1
      object Splitter2: TSplitter
        Left = 0
        Top = 309
        Width = 1014
        Height = 3
        Cursor = crVSplit
        Align = alBottom
        ResizeStyle = rsUpdate
        ExplicitTop = 0
        ExplicitWidth = 579
      end
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 1014
        Height = 309
        Align = alClient
        TabOrder = 0
        object grid_zatra: TDBGridEh
          Left = 1
          Top = 1
          Width = 1012
          Height = 307
          Align = alClient
          AutoFitColWidths = True
          DataSource = ds_zatra
          DynProps = <>
          FooterParams.Color = clWindow
          IndicatorOptions = [gioShowRowIndicatorEh]
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghRowHighlight, dghDialogFind, dghColumnResize, dghColumnMove, dghExtendVertLines]
          TabOrder = 0
          OnDrawColumnCell = grid_zatraDrawColumnCell
          Columns = <
            item
              DynProps = <>
              EditButtons = <>
              FieldName = 'STRUK_ID'
              Footers = <>
              Visible = False
            end
            item
              DynProps = <>
              EditButtons = <>
              FieldName = 'STNAME'
              Footers = <>
              Visible = False
            end
            item
              DynProps = <>
              EditButtons = <>
              FieldName = 'NMAT_PREP'
              Footers = <>
            end
            item
              DynProps = <>
              EditButtons = <>
              FieldName = 'RAZD'
              Footers = <>
            end
            item
              DynProps = <>
              EditButtons = <>
              FieldName = 'IT_RAZD'
              Footers = <>
            end
            item
              DynProps = <>
              EditButtons = <>
              FieldName = 'NAMRAZ'
              Footers = <>
            end
            item
              DynProps = <>
              EditButtons = <>
              FieldName = 'BAL'
              Footers = <>
            end
            item
              DynProps = <>
              EditButtons = <>
              FieldName = 'IT_BAL'
              Footers = <>
            end
            item
              DynProps = <>
              EditButtons = <>
              FieldName = 'KOMATR'
              Footers = <>
            end
            item
              DynProps = <>
              EditButtons = <>
              FieldName = 'IT_NAME'
              Footers = <>
            end
            item
              DynProps = <>
              EditButtons = <>
              FieldName = 'NMAT'
              Footers = <>
            end
            item
              DynProps = <>
              EditButtons = <>
              FieldName = 'EDIZ'
              Footers = <>
            end
            item
              DynProps = <>
              EditButtons = <>
              FieldName = 'CENAZA'
              Footers = <>
            end
            item
              DynProps = <>
              EditButtons = <>
              FieldName = 'OST_BEG'
              Footers = <>
            end
            item
              DynProps = <>
              EditButtons = <>
              FieldName = 'OST_BEG_S'
              Footers = <>
            end
            item
              DynProps = <>
              EditButtons = <>
              FieldName = 'ZAGR'
              Footers = <>
            end
            item
              DynProps = <>
              EditButtons = <>
              FieldName = 'ZAGR_S'
              Footers = <>
            end
            item
              DynProps = <>
              EditButtons = <>
              FieldName = 'RASH'
              Footers = <>
            end
            item
              DynProps = <>
              EditButtons = <>
              FieldName = 'RASH_S'
              Footers = <>
            end
            item
              DynProps = <>
              EditButtons = <>
              FieldName = 'PEREDANO'
              Footers = <>
            end
            item
              DynProps = <>
              EditButtons = <>
              FieldName = 'OST_END'
              Footers = <>
            end
            item
              DynProps = <>
              EditButtons = <>
              FieldName = 'OST_END_S'
              Footers = <>
            end
            item
              DynProps = <>
              EditButtons = <>
              FieldName = 'OTKLON'
              Footers = <>
            end
            item
              DynProps = <>
              EditButtons = <>
              FieldName = 'LAST_REC'
              Footers = <>
            end>
          object RowDetailData: TRowDetailPanelControlEh
          end
        end
      end
      object Panel5: TPanel
        Left = 0
        Top = 312
        Width = 1014
        Height = 300
        Align = alBottom
        Caption = 'Panel5'
        TabOrder = 1
        object DBGridEh1: TDBGridEh
          Left = 1
          Top = 1
          Width = 1012
          Height = 298
          Align = alClient
          AutoFitColWidths = True
          DataSource = ds_zatraItogi
          DynProps = <>
          IndicatorOptions = [gioShowRowIndicatorEh]
          OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghRowHighlight, dghDialogFind, dghColumnResize, dghColumnMove, dghExtendVertLines]
          TabOrder = 0
          Columns = <
            item
              DynProps = <>
              EditButtons = <>
              FieldName = 'STRUK_ID'
              Footers = <>
            end
            item
              DynProps = <>
              EditButtons = <>
              FieldName = 'STNAME'
              Footers = <>
            end
            item
              DynProps = <>
              EditButtons = <>
              FieldName = 'NMAT_PREP'
              Footers = <>
            end
            item
              DynProps = <>
              EditButtons = <>
              FieldName = 'KOMATR'
              Footers = <>
            end
            item
              DynProps = <>
              EditButtons = <>
              FieldName = 'NMAT'
              Footers = <>
            end
            item
              DynProps = <>
              EditButtons = <>
              FieldName = 'RAZD'
              Footers = <>
            end
            item
              DynProps = <>
              EditButtons = <>
              FieldName = 'BAL'
              Footers = <>
            end
            item
              DynProps = <>
              EditButtons = <>
              FieldName = 'IT_NAME'
              Footers = <>
            end
            item
              DisplayFormat = '### ### ### ### ##0.00'
              DynProps = <>
              EditButtons = <>
              FieldName = 'OST_BEG_S'
              Footers = <>
            end
            item
              DisplayFormat = '### ### ### ### ##0.00'
              DynProps = <>
              EditButtons = <>
              FieldName = 'ZAGR_S'
              Footers = <>
            end
            item
              DisplayFormat = '### ### ### ### ##0.00'
              DynProps = <>
              EditButtons = <>
              FieldName = 'RASH_S'
              Footers = <>
            end
            item
              DisplayFormat = '### ### ### ### ##0.00'
              DynProps = <>
              EditButtons = <>
              FieldName = 'OST_END_S'
              Footers = <>
            end
            item
              DisplayFormat = '### ### ### ### ##0.00'
              DynProps = <>
              EditButtons = <>
              FieldName = 'RASH_GOD_S'
              Footers = <>
            end
            item
              DisplayFormat = '### ### ### ### ##0.00'
              DynProps = <>
              EditButtons = <>
              FieldName = 'RASH_KV_S'
              Footers = <>
            end
            item
              DisplayFormat = '### ### ### ### ##0.00'
              DynProps = <>
              EditButtons = <>
              FieldName = 'OTKLON'
              Footers = <>
            end>
          object RowDetailData: TRowDetailPanelControlEh
          end
        end
      end
    end
  end
  object ds_departments: TDataSource
    Left = 80
    Top = 224
  end
  object ds_vipusk: TDataSource
    DataSet = vipDM.q_vipusk
    Left = 432
    Top = 344
  end
  object ds_zatra: TDataSource
    DataSet = zatrViewDM.mem_zatra
    Left = 680
    Top = 448
  end
  object ds_zatraItogi: TDataSource
    Left = 520
    Top = 544
  end
  object menu_print: TPopupMenu
    Left = 192
    Top = 40
    object N11: TMenuItem
      Caption = #1042#1072#1088#1080#1072#1085#1090' 1'
      OnClick = N11Click
    end
    object N21: TMenuItem
      Caption = #1042#1072#1088#1080#1072#1085#1090' 2'
      OnClick = N21Click
    end
  end
  object menu_printCur: TPopupMenu
    Left = 272
    Top = 40
    object MenuItem1: TMenuItem
      Caption = #1042#1072#1088#1080#1072#1085#1090' 1'
      OnClick = MenuItem1Click
    end
    object MenuItem2: TMenuItem
      Caption = #1042#1072#1088#1080#1072#1085#1090' 2'
      OnClick = MenuItem2Click
    end
  end
end
