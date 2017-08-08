object Form1: TForm1
  Left = 275
  Top = 114
  Width = 559
  Height = 510
  Caption = 'WorkDESK - SERIALS'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 48
    Top = 40
    Width = 70
    Height = 13
    Caption = #1050#1083#1102#1095' '#1082#1083#1080#1077#1085#1090#1072
  end
  object Label2: TLabel
    Left = 48
    Top = 112
    Width = 79
    Height = 13
    Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077':'
  end
  object Label3: TLabel
    Left = 48
    Top = 152
    Width = 25
    Height = 13
    Caption = #1058#1077#1083'.:'
  end
  object Label4: TLabel
    Left = 48
    Top = 192
    Width = 45
    Height = 13
    Caption = 'S/n HDD'
  end
  object Label5: TLabel
    Left = 48
    Top = 272
    Width = 66
    Height = 13
    Caption = #1050#1086#1076' '#1082#1083#1080#1077#1085#1090#1072':'
  end
  object Label6: TLabel
    Left = 48
    Top = 0
    Width = 36
    Height = 13
    Caption = #1050#1083#1080#1077#1085#1090
  end
  object Label7: TLabel
    Left = 48
    Top = 352
    Width = 71
    Height = 13
    Caption = #1056#1072#1089#1096#1080#1092#1088#1086#1074#1082#1072
  end
  object Label8: TLabel
    Left = 48
    Top = 232
    Width = 38
    Height = 13
    Caption = #1050#1086#1076' '#1055#1054
  end
  object SpeedButton1: TSpeedButton
    Left = 160
    Top = 424
    Width = 185
    Height = 33
    Caption = #1043#1077#1085#1077#1088#1080#1088#1086#1074#1072#1090#1100' '#1083#1080#1094#1077#1085#1079#1080#1102
    OnClick = Button1Click
  end
  object SpeedButton2: TSpeedButton
    Left = 8
    Top = 424
    Width = 153
    Height = 33
    Caption = #1047#1072#1075#1088#1091#1079#1080#1090#1100' '#1079#1072#1087#1088#1086#1089
    OnClick = SpeedButton2Click
  end
  object SpeedButton3: TSpeedButton
    Left = 344
    Top = 424
    Width = 153
    Height = 33
    Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1083#1080#1094#1077#1085#1079#1080#1102
    OnClick = SpeedButton3Click
  end
  object Memo1: TMemo
    Left = 48
    Top = 56
    Width = 449
    Height = 49
    Lines.Strings = (
      'Memo1')
    TabOrder = 0
  end
  object Edit1: TEdit
    Left = 48
    Top = 128
    Width = 449
    Height = 21
    TabOrder = 1
    Text = 'Edit1'
  end
  object Edit2: TEdit
    Left = 48
    Top = 168
    Width = 449
    Height = 21
    TabOrder = 2
    Text = 'Edit1'
  end
  object Edit3: TEdit
    Left = 48
    Top = 208
    Width = 449
    Height = 21
    TabOrder = 3
    Text = 'Edit1'
  end
  object Memo2: TMemo
    Left = 48
    Top = 368
    Width = 449
    Height = 41
    Lines.Strings = (
      'Memo2')
    TabOrder = 4
  end
  object Edit4: TEdit
    Left = 48
    Top = 16
    Width = 449
    Height = 21
    TabOrder = 5
    Text = 'Edit4'
  end
  object Memo3: TMemo
    Left = 48
    Top = 288
    Width = 449
    Height = 57
    Lines.Strings = (
      'Memo3')
    TabOrder = 6
  end
  object Button1: TButton
    Left = 624
    Top = 120
    Width = 177
    Height = 25
    Caption = #1043#1077#1085#1077#1088#1080#1088#1086#1074#1072#1090#1100' '#1083#1080#1094#1077#1085#1079#1080#1102
    TabOrder = 7
    Visible = False
    OnClick = Button1Click
  end
  object Edit5: TEdit
    Left = 48
    Top = 248
    Width = 449
    Height = 21
    TabOrder = 8
    Text = 'Edit5'
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = '*.lic'
    Filter = 'lic|*.lic'
    Left = 592
    Top = 120
  end
  object OpenDialog1: TOpenDialog
    DefaultExt = '*.zpr'
    Filter = '*.zpr|*.zpr'
    Left = 592
    Top = 152
  end
end
