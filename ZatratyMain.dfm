object FZatratyMain: TFZatratyMain
  Left = 0
  Top = 0
  Caption = #1056#1072#1089#1095#1077#1090' '#1079#1072#1090#1088#1072#1090' '#1085#1072' '#1087#1088#1086#1080#1079#1074#1086#1076#1089#1090#1074#1086
  ClientHeight = 756
  ClientWidth = 1080
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 161
    Top = 108
    Height = 629
    ResizeStyle = rsUpdate
    ExplicitLeft = 0
    ExplicitTop = 256
    ExplicitHeight = 100
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 737
    Width = 1080
    Height = 19
    Panels = <>
    ExplicitLeft = 560
    ExplicitTop = 296
    ExplicitWidth = 0
  end
  object panel_main: TPanel
    Left = 164
    Top = 108
    Width = 916
    Height = 629
    Align = alClient
    TabOrder = 1
    ExplicitLeft = 440
    ExplicitTop = 160
    ExplicitWidth = 185
    ExplicitHeight = 41
  end
  object panel_openedWnd: TPanel
    Left = 0
    Top = 108
    Width = 161
    Height = 629
    Align = alLeft
    Caption = 'panel_openedWnd'
    TabOrder = 2
    Visible = False
    ExplicitTop = 0
    ExplicitHeight = 300
  end
  object Panel1: TPanel
    Left = 0
    Top = 82
    Width = 1080
    Height = 26
    Align = alTop
    TabOrder = 3
    object Label1: TLabel
      Left = 16
      Top = 5
      Width = 122
      Height = 13
      Margins.Bottom = 0
      Caption = #1052#1077#1089#1103#1094' '#1080' '#1075#1086#1076' '#1086#1073#1088#1072#1073#1086#1090#1082#1080':'
    end
    object curMonthCombo: TComboBox
      Left = 144
      Top = 0
      Width = 145
      Height = 24
      Style = csDropDownList
      DropDownCount = 12
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ItemHeight = 16
      ItemIndex = 0
      ParentFont = False
      TabOrder = 0
      Text = #1103#1085#1074#1072#1088#1100
      OnChange = curMonthComboChange
      Items.Strings = (
        #1103#1085#1074#1072#1088#1100
        #1092#1077#1074#1088#1072#1083#1100
        #1084#1072#1088#1090
        #1072#1087#1088#1077#1083#1100
        #1084#1072#1081
        #1080#1102#1085#1100
        #1080#1102#1083#1100
        #1072#1074#1075#1091#1089#1090
        #1089#1077#1085#1090#1103#1073#1088#1100
        #1086#1082#1090#1103#1073#1088#1100
        #1085#1086#1103#1073#1088#1100
        #1076#1077#1082#1072#1073#1088#1100)
    end
    object SpinButton1: TSpinButton
      Left = 289
      Top = 1
      Width = 16
      Height = 22
      Hint = #1055#1088#1086#1083#1080#1089#1090#1099#1074#1072#1085#1080#1077' '#1089#1087#1080#1089#1082#1072' '#1084#1077#1089#1103#1094#1077#1074
      DownGlyph.Data = {
        0E010000424D0E01000000000000360000002800000009000000060000000100
        200000000000D800000000000000000000000000000000000000008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        8000008080000080800000808000000000000080800000808000008080000080
        8000008080000080800000808000000000000000000000000000008080000080
        8000008080000080800000808000000000000000000000000000000000000000
        0000008080000080800000808000000000000000000000000000000000000000
        0000000000000000000000808000008080000080800000808000008080000080
        800000808000008080000080800000808000}
      FocusControl = curMonthCombo
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      UpGlyph.Data = {
        0E010000424D0E01000000000000360000002800000009000000060000000100
        200000000000D800000000000000000000000000000000000000008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        8000000000000000000000000000000000000000000000000000000000000080
        8000008080000080800000000000000000000000000000000000000000000080
        8000008080000080800000808000008080000000000000000000000000000080
        8000008080000080800000808000008080000080800000808000000000000080
        8000008080000080800000808000008080000080800000808000008080000080
        800000808000008080000080800000808000}
      OnDownClick = SpinButton1DownClick
      OnUpClick = SpinButton1UpClick
    end
    object curYearEdit: TSpinEdit
      Left = 320
      Top = 0
      Width = 73
      Height = 23
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxValue = 0
      MinValue = 0
      ParentFont = False
      TabOrder = 2
      Value = 2012
    end
  end
  object pc_mainMenu: TPageControl
    Left = 0
    Top = 0
    Width = 1080
    Height = 82
    ActivePage = calcPage
    Align = alTop
    TabOrder = 4
    object calcPage: TTabSheet
      Caption = #1056#1072#1089#1095#1077#1090
      ExplicitHeight = 29
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 1072
        Height = 54
        Align = alClient
        TabOrder = 0
        ExplicitLeft = 232
        ExplicitTop = -12
        ExplicitWidth = 185
        ExplicitHeight = 41
        object SpeedButton1: TSpeedButton
          Left = 12
          Top = 0
          Width = 133
          Height = 52
          Caption = #1062#1077#1085' '#1079#1072#1075#1088#1091#1079#1082#1080' '#1085#1072' '#1087'/'#1092
          OnClick = SpeedButton1Click
        end
      end
    end
  end
  object MainMenu1: TMainMenu
    Left = 304
    Top = 24
    object N4: TMenuItem
      Caption = #1056#1072#1089#1095#1077#1090
      object mi_cenaZagrPf: TMenuItem
        Caption = #1062#1077#1085' '#1079#1072#1075#1088#1091#1079#1082#1080' '#1085#1072' '#1087'/'#1092
        OnClick = mi_cenaZagrPfClick
      end
    end
    object N1: TMenuItem
      Caption = #1042#1099#1093#1086#1076
      OnClick = N1Click
    end
  end
end
