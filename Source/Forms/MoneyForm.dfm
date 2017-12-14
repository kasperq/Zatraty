object FMoneyForm: TFMoneyForm
  Left = 0
  Top = 0
  Align = alClient
  BorderStyle = bsNone
  Caption = #1062#1077#1085#1099
  ClientHeight = 737
  ClientWidth = 993
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object panel_toolbtns: TPanel
    Left = 0
    Top = 0
    Width = 993
    Height = 41
    Align = alTop
    TabOrder = 0
    object btn_copyAllStruk: TSpeedButton
      Left = 1
      Top = 1
      Width = 136
      Height = 39
      Hint = #1055#1077#1095#1072#1090#1100' '#1074#1099#1073#1088#1072#1085#1085#1099#1093' '#1086#1090#1095#1077#1090#1086#1074
      Align = alLeft
      Caption = #1040#1074#1090'. '#1087#1077#1088#1077#1085#1086#1089' '#1094#1077#1085' '#1094#1077#1093#1072
      ParentShowHint = False
      ShowHint = True
      OnClick = btn_copyAllStrukClick
    end
  end
  object panel_grid: TPanel
    Left = 0
    Top = 41
    Width = 993
    Height = 696
    Align = alClient
    TabOrder = 1
    object pc_cenAction: TPageControl
      Left = 1
      Top = 1
      Width = 991
      Height = 694
      ActivePage = tab_manualPriceSet
      Align = alClient
      TabOrder = 0
      object tab_manualPriceSet: TTabSheet
        Caption = #1056#1091#1095#1085#1086#1081' '#1074#1074#1086#1076' '#1094#1077#1085' '#1079#1072#1075#1088#1091#1079#1082#1080
        object panel_action: TPanel
          Left = 0
          Top = 0
          Width = 983
          Height = 161
          Align = alTop
          TabOrder = 0
          object Label1: TLabel
            Left = 12
            Top = 9
            Width = 54
            Height = 13
            Caption = #1050#1086#1076' '#1089#1099#1088#1100#1103
          end
          object Label2: TLabel
            Left = 8
            Top = 41
            Width = 74
            Height = 13
            Caption = #1062#1077#1085#1072' '#1079#1072#1075#1088#1091#1079#1082#1080
          end
          object Label3: TLabel
            Left = 8
            Top = 73
            Width = 75
            Height = 13
            Caption = #1062#1077#1085#1072' '#1086#1089#1090'. '#1085#1072#1095'.'
          end
          object Label4: TLabel
            Left = 9
            Top = 100
            Width = 75
            Height = 13
            Caption = #1062#1077#1085#1072' '#1086#1089#1090'. '#1082#1086#1085'.'
          end
          object edit_ksmId: TEdit
            Left = 88
            Top = 6
            Width = 73
            Height = 21
            TabOrder = 0
            OnChange = edit_ksmIdChange
            OnKeyDown = edit_ksmIdKeyDown
          end
          object edit_zagrMoney: TEdit
            Left = 88
            Top = 33
            Width = 121
            Height = 21
            Hint = #1042#1074#1077#1076#1080#1090#1077' '#1085#1086#1074#1091#1102' '#1094#1077#1085#1091' '#1080' '#1085#1072#1078#1084#1080#1090#1077' Enter '#1080#1083#1080' '#1085#1072' '#1082#1085#1086#1087#1082#1091' '#1088#1103#1076#1086#1084
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
            OnKeyDown = edit_zagrMoneyKeyDown
            OnKeyPress = edit_zagrMoneyKeyPress
          end
          object edit_ostBegMoney: TEdit
            Left = 88
            Top = 65
            Width = 121
            Height = 21
            Hint = #1042#1074#1077#1076#1080#1090#1077' '#1085#1086#1074#1091#1102' '#1094#1077#1085#1091' '#1080' '#1085#1072#1078#1084#1080#1090#1077' Enter '#1080#1083#1080' '#1085#1072' '#1082#1085#1086#1087#1082#1091' '#1088#1103#1076#1086#1084
            ParentShowHint = False
            ShowHint = True
            TabOrder = 2
            OnKeyDown = edit_ostBegMoneyKeyDown
            OnKeyPress = edit_zagrMoneyKeyPress
          end
          object btn_setZagrMoney: TBitBtn
            Left = 215
            Top = 31
            Width = 29
            Height = 25
            Hint = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1094#1077#1085#1091
            Caption = '>>'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 3
            OnClick = btn_setZagrMoneyClick
          end
          object btn_setOstBegMoney: TBitBtn
            Left = 215
            Top = 62
            Width = 29
            Height = 25
            Hint = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1094#1077#1085#1091
            Caption = '>>'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 4
            OnClick = btn_setOstBegMoneyClick
          end
          object edit_ostEndMoney: TEdit
            Left = 88
            Top = 93
            Width = 121
            Height = 21
            Hint = #1042#1074#1077#1076#1080#1090#1077' '#1085#1086#1074#1091#1102' '#1094#1077#1085#1091' '#1080' '#1085#1072#1078#1084#1080#1090#1077' Enter '#1080#1083#1080' '#1085#1072' '#1082#1085#1086#1087#1082#1091' '#1088#1103#1076#1086#1084
            ParentShowHint = False
            ShowHint = True
            TabOrder = 5
            OnKeyDown = edit_ostEndMoneyKeyDown
            OnKeyPress = edit_zagrMoneyKeyPress
          end
          object btn_setOstEndMoney: TBitBtn
            Left = 215
            Top = 93
            Width = 29
            Height = 25
            Hint = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1094#1077#1085#1091
            Caption = '>>'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 6
            OnClick = btn_setOstEndMoneyClick
          end
          object cb_selectAll: TCheckBox
            Left = 8
            Top = 136
            Width = 152
            Height = 25
            Caption = #1042#1099#1073#1088#1072#1090#1100'/'#1086#1090#1084#1077#1085#1080#1090#1100' '#1074#1089#1077
            TabOrder = 7
            OnClick = cb_selectAllClick
          end
        end
        object grid_ksmVipusk: TDBGridEh
          Left = 0
          Top = 161
          Width = 983
          Height = 505
          Align = alClient
          AutoFitColWidths = True
          DataSource = ds_ksmDvig
          DynProps = <>
          IndicatorOptions = [gioShowRowIndicatorEh]
          TabOrder = 1
          Columns = <
            item
              Checkboxes = True
              DynProps = <>
              EditButtons = <>
              FieldName = 'VIB'
              Footers = <>
              KeyList.Strings = (
                '1'
                '0')
              Title.Caption = #1042#1099#1073#1086#1088
            end
            item
              DynProps = <>
              EditButtons = <>
              FieldName = 'KSM_ID'
              Footers = <>
              Title.Caption = #1050#1086#1076' '#1089#1099#1088#1100#1103
            end
            item
              DynProps = <>
              EditButtons = <>
              FieldName = 'KOD_PROD'
              Footers = <>
              Title.Caption = #1050#1086#1076' '#1087#1088#1077#1087#1072#1088#1072#1090#1072
            end
            item
              DynProps = <>
              EditButtons = <>
              FieldName = 'NMAT'
              Footers = <>
              Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1087#1088#1077#1087#1072#1088#1072#1090#1072
            end
            item
              DynProps = <>
              EditButtons = <>
              FieldName = 'ACCOUNT'
              Footers = <>
              Title.Caption = #1057#1095#1077#1090
            end
            item
              DynProps = <>
              EditButtons = <>
              FieldName = 'NEIS'
              Footers = <>
              Title.Caption = #1045#1076'. '#1080#1079#1084'.'
            end
            item
              DynProps = <>
              EditButtons = <>
              FieldName = 'KRAZ'
              Footers = <>
              Title.Caption = #1056#1072#1079#1076'.'
            end
            item
              DynProps = <>
              EditButtons = <>
              FieldName = 'OST_BEG_MONEY'
              Footers = <>
              Title.Caption = #1062#1077#1085#1072' '#1086#1089#1090'. '#1085#1072' '#1085#1072#1095'.'
            end
            item
              DynProps = <>
              EditButtons = <>
              FieldName = 'ZAGR_MONEY'
              Footers = <>
              Title.Caption = #1062#1077#1085#1072' '#1079#1072#1075#1088'.'
            end
            item
              DynProps = <>
              EditButtons = <>
              FieldName = 'OST_END_MONEY'
              Footers = <>
              Title.Caption = #1062#1077#1085#1072' '#1086#1089#1090'. '#1085#1072' '#1082#1086#1085'.'
            end>
          object RowDetailData: TRowDetailPanelControlEh
          end
        end
      end
      object tab_cenPf: TTabSheet
        Caption = #1062#1077#1085#1099' '#1085#1072' '#1087#1086#1083#1091#1092#1072#1073#1088#1080#1082#1072#1090#1099
        ImageIndex = 1
      end
    end
  end
  object ds_ksmDvig: TDataSource
    DataSet = FMoneyZatrDM.q_ksmDvig
    Left = 224
    Top = 320
  end
end
