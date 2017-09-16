object FPrReports: TFPrReports
  Left = 0
  Top = 0
  Align = alClient
  BorderStyle = bsNone
  Caption = #1055#1088#1086#1080#1079#1074#1086#1076#1089#1090#1074#1077#1085#1085#1086'-'#1090#1077#1093#1085#1080#1095#1077#1089#1082#1080#1081' '#1086#1090#1095#1077#1090
  ClientHeight = 660
  ClientWidth = 975
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object panel_toolbar: TPanel
    Left = 0
    Top = 0
    Width = 975
    Height = 41
    Align = alTop
    TabOrder = 0
    object btn_copy: TSpeedButton
      Left = 1
      Top = 1
      Width = 113
      Height = 39
      Hint = #1050#1086#1087#1080#1088#1086#1074#1072#1090#1100' '#1074#1099#1073#1088#1072#1085#1085#1099#1077' '#1086#1090#1095#1077#1090#1099' '#1076#1083#1103' '#1076#1072#1083#1100#1085#1077#1081#1096#1080#1093' '#1088#1072#1089#1095#1077#1090#1086#1074
      Align = alLeft
      Caption = #1050#1086#1087#1080#1088#1086#1074#1072#1090#1100
      ParentShowHint = False
      ShowHint = True
      OnClick = btn_copyClick
      ExplicitLeft = 40
      ExplicitTop = 0
      ExplicitHeight = 22
    end
    object btn_faspPrint: TSpeedButton
      Left = 114
      Top = 1
      Width = 103
      Height = 39
      Hint = #1055#1077#1095#1072#1090#1100' '#1074#1099#1073#1088#1072#1085#1085#1099#1093' '#1086#1090#1095#1077#1090#1086#1074
      Align = alLeft
      Caption = #1041#1099#1089#1090#1088#1072#1103' '#1087#1077#1095#1072#1090#1100
      ParentShowHint = False
      ShowHint = True
    end
    object btn_viewReps: TBitBtn
      Left = 217
      Top = 1
      Width = 112
      Height = 39
      Hint = #1055#1088#1077#1076#1074#1072#1088#1080#1090#1077#1083#1100#1085#1099#1081' '#1087#1088#1086#1089#1084#1086#1090#1088' '#1074#1099#1073#1088#1072#1085#1085#1099#1093' '#1086#1090#1095#1077#1090#1086#1074
      Align = alLeft
      Caption = #1055#1088#1077#1076#1074#1072#1088#1080#1090#1077#1083#1100#1085#1099#1081' '#1087#1088#1086#1089#1084#1086#1090#1088
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      WordWrap = True
    end
  end
  object panel_main: TPanel
    Left = 0
    Top = 41
    Width = 975
    Height = 619
    Align = alClient
    TabOrder = 1
    object pc_reports: TPageControl
      Left = 1
      Top = 1
      Width = 973
      Height = 617
      ActivePage = tab_preps
      Align = alClient
      TabOrder = 0
      object tab_preps: TTabSheet
        Caption = #1057#1087#1080#1089#1086#1082' '#1087#1088#1077#1087#1072#1088#1072#1090#1086#1074
        object Panel1: TPanel
          Left = 0
          Top = 0
          Width = 965
          Height = 25
          Align = alTop
          TabOrder = 0
          object cb_selectAll: TCheckBox
            Left = 1
            Top = 1
            Width = 152
            Height = 23
            Align = alLeft
            Caption = #1042#1099#1073#1088#1072#1090#1100'/'#1086#1090#1084#1077#1085#1080#1090#1100' '#1074#1089#1077
            TabOrder = 0
            OnClick = cb_selectAllClick
          end
        end
        object panel_prepsMain: TPanel
          Left = 0
          Top = 25
          Width = 965
          Height = 564
          Align = alClient
          TabOrder = 1
          object grid_vipusk: TDBGridEh
            Left = 1
            Top = 1
            Width = 963
            Height = 562
            Align = alClient
            AutoFitColWidths = True
            DataSource = ds_vipusk
            DynProps = <>
            FooterParams.Color = clWindow
            GridLineParams.VertEmptySpaceStyle = dessNonEh
            IndicatorOptions = [gioShowRowIndicatorEh, gioShowRecNoEh]
            OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghRowHighlight, dghDialogFind, dghShowRecNo, dghColumnResize, dghColumnMove]
            TabOrder = 0
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
              end
              item
                Checkboxes = True
                DynProps = <>
                EditButtons = <>
                FieldName = 'COPIED'
                Footers = <>
                KeyList.Strings = (
                  '1'
                  '0')
                Title.Caption = #1057#1082#1086#1087#1080#1088#1086#1074#1072#1085
              end>
            object RowDetailData: TRowDetailPanelControlEh
            end
          end
        end
      end
      object tab_view: TTabSheet
        Caption = #1055#1088#1086#1089#1084#1086#1090#1088
        ImageIndex = 1
      end
    end
  end
  object ds_vipusk: TDataSource
    DataSet = vipDM.q_vipusk
    Left = 168
    Top = 352
  end
end
