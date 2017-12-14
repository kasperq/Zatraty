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
  PixelsPerInch = 96
  TextHeight = 13
  object panel_btns: TPanel
    Left = 0
    Top = 0
    Width = 868
    Height = 49
    Align = alTop
    TabOrder = 0
    object SpeedButton1: TSpeedButton
      Left = 1
      Top = 1
      Width = 136
      Height = 47
      Align = alLeft
      Caption = #1055#1077#1088#1077#1085#1077#1089#1090#1080' '#1072#1088#1093#1080#1074' '#1074' '#1073#1072#1079#1091
      OnClick = SpeedButton1Click
      ExplicitHeight = 48
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 49
    Width = 868
    Height = 616
    Align = alClient
    TabOrder = 1
  end
  object dlg_openZatr: TOpenDialog
    Filter = '*.dbf|*.dbf'
    InitialDir = 'f:\pc1\otchbas'
    Left = 168
    Top = 16
  end
end
