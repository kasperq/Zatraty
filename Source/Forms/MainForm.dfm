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
  WindowState = wsMaximized
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 387
    Top = 81
    Height = 656
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
  end
  object panel_main: TPanel
    Left = 390
    Top = 81
    Width = 690
    Height = 656
    Align = alClient
    TabOrder = 1
  end
  object panel_openedWnd: TPanel
    Left = 226
    Top = 81
    Width = 161
    Height = 656
    Align = alLeft
    Caption = 'panel_openedWnd'
    TabOrder = 2
    Visible = False
    object DBGridEh1: TDBGridEh
      Left = 1
      Top = 1
      Width = 159
      Height = 654
      Align = alClient
      DataSource = ds_openedWnds
      DynProps = <>
      HorzScrollBar.VisibleMode = sbNeverShowEh
      IndicatorOptions = []
      Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghRowHighlight, dghDialogFind, dghColumnResize, dghColumnMove, dghAutoFitRowHeight, dghExtendVertLines]
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      VertScrollBar.VisibleMode = sbNeverShowEh
      Columns = <
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'WND_NAME'
          Footers = <>
          Title.Caption = #1054#1090#1082#1088#1099#1090#1099#1077' '#1076#1086#1082#1091#1084#1077#1085#1090#1099
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
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
      Top = 1
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
      OnChange = curYearEditChange
    end
  end
  object pnl_left: TPanel
    Left = 0
    Top = 81
    Width = 41
    Height = 656
    Align = alLeft
    TabOrder = 4
    Visible = False
    object Button1: TButton
      Left = 4
      Top = 6
      Width = 29
      Height = 43
      Caption = #1054#1090#1082#1088#1099#1090#1099#1077'   '#1076#1086#1082#1091#1084#1077#1085#1090#1099
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      WordWrap = True
      OnMouseEnter = Button1MouseEnter
    end
  end
  object panel_menu: TPanel
    Left = 0
    Top = 26
    Width = 1080
    Height = 55
    Align = alTop
    ParentBackground = False
    TabOrder = 5
    object btn_printCenPf: TSpeedButton
      Left = 946
      Top = 1
      Width = 133
      Height = 53
      Align = alRight
      GroupIndex = 3
      Caption = #1055#1077#1095#1072#1090#1100' '#1094#1077#1085' '#1085#1072' '#1087'/'#1092
      OnClick = btn_printCenPfClick
      ExplicitLeft = 633
    end
    object pc_menu: TPageControl
      Left = 1
      Top = 1
      Width = 945
      Height = 53
      ActivePage = tab_start
      Align = alClient
      MultiLine = True
      Style = tsFlatButtons
      TabHeight = 53
      TabOrder = 0
      TabWidth = 105
      OnChange = pc_menuChange
      object tab_reports: TTabSheet
        Caption = #1054#1090#1095#1077#1090#1099
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
      end
      object tab_zatras: TTabSheet
        Caption = #1047#1072#1090#1088#1072#1090#1099
        ImageIndex = 1
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
      end
      object tab_svod: TTabSheet
        Caption = #1057#1074#1086#1076#1099
        ImageIndex = 2
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
      end
      object tab_cen: TTabSheet
        Caption = #1062#1077#1085#1099
        ImageIndex = 3
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
      end
      object tab_start: TTabSheet
        Caption = #1057#1090#1072#1088#1090#1086#1088#1074#1099#1081' '#1088#1077#1078#1080#1084
        ImageIndex = 4
      end
    end
  end
  object Panel3: TPanel
    Left = 41
    Top = 81
    Width = 185
    Height = 656
    Align = alLeft
    Caption = 'Panel3'
    TabOrder = 6
    object grid_departments: TDBGridEh
      Left = 1
      Top = 1
      Width = 183
      Height = 654
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
  object MainMenu1: TMainMenu
    Left = 304
    Top = 24
    object N4: TMenuItem
      Caption = #1056#1072#1089#1095#1077#1090
      object N2: TMenuItem
        Caption = #1047#1072#1090#1088#1072#1090#1099
      end
      object mi_cenaZagrPf: TMenuItem
        Caption = #1062#1077#1085' '#1079#1072#1075#1088#1091#1079#1082#1080' '#1085#1072' '#1087'/'#1092
        Visible = False
        OnClick = mi_cenaZagrPfClick
      end
    end
    object N1: TMenuItem
      Caption = #1042#1099#1093#1086#1076
      OnClick = N1Click
    end
  end
  object mem_openedWnds: TkbmMemTable
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
    Left = 64
    Top = 392
    object mem_openedWndsWND_NAME: TStringField
      FieldName = 'WND_NAME'
      Size = 100
    end
  end
  object ds_openedWnds: TDataSource
    DataSet = mem_openedWnds
    Left = 56
    Top = 448
  end
  object Timer1: TTimer
    Interval = 10
    OnTimer = Timer1Timer
    Left = 114
    Top = 292
  end
  object ActionList1: TActionList
    Left = 741
    Top = 444
    object openDoc: TAction
      Caption = #1054#1090#1082#1088#1099#1090#1100' '#1076#1086#1082#1091#1084#1077#1085#1090
    end
  end
  object ds_struk: TDataSource
    Left = 728
  end
  object menu_svod: TPopupMenu
    Left = 232
    Top = 32
    object MenuItem1: TMenuItem
      Caption = #1057#1074#1086#1076#1085#1072#1103' '#1074#1077#1076#1086#1084#1086#1089#1090#1100
      object menuIt_svodMed: TMenuItem
        Caption = #1052#1077#1076#1087#1088#1077#1087#1072#1088#1072#1090#1099
        OnClick = menuIt_svodMedClick
      end
      object menuIt_svodEnd: TMenuItem
        Caption = #1069#1085#1076#1086#1082#1088#1080#1085#1085#1086#1077
        OnClick = menuIt_svodEndClick
      end
    end
    object MenuItem2: TMenuItem
      Caption = #1048#1090#1086#1075#1086#1074#1072#1103' '#1085#1077#1079#1072#1074#1077#1088#1096#1077#1085#1082#1072
      object menuIt_nezMed: TMenuItem
        Caption = #1052#1077#1076#1087#1088#1077#1087#1072#1088#1072#1090#1099
        OnClick = menuIt_nezMedClick
      end
      object menuIt_nezEnd: TMenuItem
        Caption = #1069#1085#1076#1086#1082#1088#1080#1085#1085#1086#1077
        OnClick = menuIt_nezEndClick
      end
    end
    object N3: TMenuItem
      Caption = #1056#1072#1089#1093#1086#1076' '#1085#1072' '#1090#1086#1074#1072#1088#1085#1091#1102' '#1087#1088#1086#1076#1091#1082#1094#1080#1102
      object menuIt_tovarMed: TMenuItem
        Caption = #1052#1077#1076#1087#1088#1077#1087#1072#1088#1072#1090#1099
        OnClick = menuIt_tovarMedClick
      end
      object menuIt_tovarEnd: TMenuItem
        Caption = #1069#1085#1076#1086#1082#1088#1080#1085#1085#1086#1077
        OnClick = menuIt_tovarEndClick
      end
    end
  end
  object ds_departments: TDataSource
    Left = 80
    Top = 224
  end
end
