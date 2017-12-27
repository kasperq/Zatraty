object FStartForm: TFStartForm
  Left = 0
  Top = 0
  Align = alClient
  BorderStyle = bsNone
  Caption = 'FStartForm'
  ClientHeight = 665
  ClientWidth = 868
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
  object panel_btns: TPanel
    Left = 0
    Top = 0
    Width = 868
    Height = 41
    Align = alTop
    Locked = True
    TabOrder = 0
    object SpeedButton1: TSpeedButton
      Left = 1
      Top = 1
      Width = 176
      Height = 39
      Align = alLeft
      Caption = #1055#1077#1088#1077#1085#1077#1089#1090#1080' '#1072#1088#1093#1080#1074' '#1079#1072' '#1084#1077#1089#1103#1094' '#1074' '#1073#1072#1079#1091
      OnClick = SpeedButton1Click
    end
    object lbl_fileName: TLabel
      Left = 183
      Top = 14
      Width = 49
      Height = 13
      Caption = 'fileName'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 41
    Width = 868
    Height = 624
    Align = alClient
    TabOrder = 1
    ExplicitTop = 49
    ExplicitHeight = 616
  end
  object dlg_openZatr: TOpenDialog
    Filter = '*.dbf|*.dbf'
    InitialDir = 'f:\pc1\otchbas'
    Left = 80
    Top = 48
  end
end
