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
  PixelsPerInch = 96
  TextHeight = 13
  object panel_toolbtns: TPanel
    Left = 0
    Top = 0
    Width = 993
    Height = 41
    Align = alTop
    TabOrder = 0
    ExplicitLeft = 264
    ExplicitTop = 40
    ExplicitWidth = 185
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
    ExplicitLeft = 360
    ExplicitTop = 376
    ExplicitWidth = 185
    ExplicitHeight = 41
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
          Height = 80
          Align = alTop
          TabOrder = 0
          ExplicitTop = 8
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
            Width = 58
            Height = 13
            Caption = #1053#1086#1074#1072#1103' '#1094#1077#1085#1072
          end
          object edit_ksmId: TEdit
            Left = 72
            Top = 6
            Width = 73
            Height = 21
            TabOrder = 0
            Text = 'edit_ksmId'
          end
          object edit_newPrice: TEdit
            Left = 72
            Top = 38
            Width = 121
            Height = 21
            TabOrder = 1
            Text = 'edit_newPrice'
          end
        end
        object grid_ksmVipusk: TDBGridEh
          Left = 0
          Top = 80
          Width = 983
          Height = 586
          Align = alClient
          DynProps = <>
          IndicatorOptions = [gioShowRowIndicatorEh]
          TabOrder = 1
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
end
