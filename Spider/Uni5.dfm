object Form2: TForm2
  Left = 433
  Top = 156
  Width = 639
  Height = 364
  Caption = 'Spider - WORKDESK'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCloseQuery = FormCloseQuery
  PixelsPerInch = 96
  TextHeight = 13
  object SpeedButton3: TSpeedButton
    Left = 0
    Top = 296
    Width = 23
    Height = 22
    Visible = False
    OnClick = SpeedButton3Click
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 623
    Height = 97
    Align = alTop
    Caption = #1044#1086#1089#1090#1091#1087' '#1082' '#1041#1044
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 32
      Width = 142
      Height = 13
      Caption = #1054#1089#1085#1086#1074#1085#1072#1103' '#1073#1072#1079#1072' '#1087#1088#1086#1075#1088#1072#1084#1084#1099':'
    end
    object Label2: TLabel
      Left = 41
      Top = 55
      Width = 117
      Height = 13
      Caption = #1041#1072#1079#1072' '#1091#1095#1077#1090#1072' '#1080#1079#1084#1077#1085#1077#1085#1080#1081':'
    end
    object SpeedButton1: TSpeedButton
      Left = 547
      Top = 26
      Width = 23
      Height = 22
      Flat = True
      OnClick = SpeedButton1Click
    end
    object SpeedButton2: TSpeedButton
      Left = 547
      Top = 50
      Width = 23
      Height = 22
      Flat = True
      OnClick = SpeedButton2Click
    end
    object Edit1: TEdit
      Left = 164
      Top = 28
      Width = 381
      Height = 21
      TabOrder = 0
      OnChange = Edit1Change
    end
    object Edit2: TEdit
      Left = 164
      Top = 52
      Width = 381
      Height = 21
      TabOrder = 1
      OnChange = Edit2Change
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 307
    Width = 623
    Height = 19
    Panels = <>
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 97
    Width = 623
    Height = 137
    Align = alTop
    Caption = #1055#1072#1088#1072#1084#1077#1090#1088#1099' '#1076#1086#1089#1090#1091#1087#1072' '#1082' FTP '
    TabOrder = 2
    object Label3: TLabel
      Left = 8
      Top = 24
      Width = 83
      Height = 13
      Caption = #1060#1072#1081#1083' '#1074#1099#1075#1088#1091#1079#1082#1080':'
    end
    object Label4: TLabel
      Left = 33
      Top = 48
      Width = 57
      Height = 13
      Caption = 'FTP '#1051#1086#1075#1080#1085':'
    end
    object Label5: TLabel
      Left = 24
      Top = 72
      Width = 64
      Height = 13
      Caption = 'FTP '#1055#1072#1088#1086#1083#1100':'
    end
    object Label6: TLabel
      Left = 32
      Top = 96
      Width = 55
      Height = 13
      Caption = 'FTP '#1061#1054#1057#1058':'
    end
    object Edit3: TEdit
      Left = 95
      Top = 22
      Width = 266
      Height = 21
      TabOrder = 0
      Text = 'Edit3'
      OnChange = Edit5Change
    end
    object Edit4: TEdit
      Left = 96
      Top = 48
      Width = 265
      Height = 21
      TabOrder = 1
      Text = 'Edit4'
      OnChange = Edit5Change
    end
    object MaskEdit1: TMaskEdit
      Left = 96
      Top = 72
      Width = 265
      Height = 21
      TabOrder = 2
      Text = 'MaskEdit1'
      OnChange = Edit5Change
    end
    object Edit5: TEdit
      Left = 96
      Top = 96
      Width = 265
      Height = 21
      TabOrder = 3
      Text = 'Edit5'
      OnChange = Edit5Change
    end
  end
  object GroupBox3: TGroupBox
    Left = 0
    Top = 234
    Width = 623
    Height = 63
    Align = alTop
    Caption = #1055#1088#1086#1095#1080#1077' '#1085#1072#1089#1090#1088#1086#1081#1082#1080' '
    TabOrder = 3
    object Label7: TLabel
      Left = 16
      Top = 24
      Width = 146
      Height = 13
      Caption = #1063#1072#1089#1090#1086#1090#1072' '#1086#1073#1085#1086#1074#1083#1077#1085#1080#1081' ('#1074' '#1084#1080#1085'):'
    end
    object Edit6: TEdit
      Left = 168
      Top = 21
      Width = 121
      Height = 21
      TabOrder = 0
      OnChange = Edit5Change
      OnKeyPress = Edit6KeyPress
    end
  end
  object IBQuery1: TIBQuery
    Database = DataModule3.IBDatabase2
    Transaction = DataModule3.IBTransaction2
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from OPT')
    Left = 512
    Top = 328
    object IBQuery1TIMER: TIntegerField
      FieldName = 'TIMER'
      Origin = 'OPT.TIMER'
    end
    object IBQuery1FILE_SEND: TIBStringField
      FieldName = 'FILE_SEND'
      Origin = 'OPT.FILE_SEND'
      Size = 1024
    end
    object IBQuery1FTPHOST: TIBStringField
      FieldName = 'FTPHOST'
      Origin = 'OPT.FTPHOST'
      Size = 100
    end
    object IBQuery1FTPLOGIN: TIBStringField
      FieldName = 'FTPLOGIN'
      Origin = 'OPT.FTPLOGIN'
      Size = 100
    end
    object IBQuery1FTPPASSWORD: TIBStringField
      FieldName = 'FTPPASSWORD'
      Origin = 'OPT.FTPPASSWORD'
      Size = 100
    end
    object IBQuery1ABOUT: TIBStringField
      FieldName = 'ABOUT'
      Origin = 'OPT.ABOUT'
      Size = 2048
    end
    object IBQuery1FL1: TIntegerField
      FieldName = 'FL1'
      Origin = 'OPT.FL1'
    end
    object IBQuery1FL2: TIntegerField
      FieldName = 'FL2'
      Origin = 'OPT.FL2'
    end
    object IBQuery1FL3: TIntegerField
      FieldName = 'FL3'
      Origin = 'OPT.FL3'
    end
  end
  object IBQuery2: TIBQuery
    Database = DataModule3.IBDatabase2
    Transaction = DataModule3.IBTransaction2
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'UPDATE OPT SET FILE_SEND=:FILE_SEND, FTPHOST=:FTPHOST, FTPLOGIN=' +
        ':FTPLOGIN, FTPPASSWORD=:FTPPASSWORD, TIMER=:TIMER WHERE FL1=:FL1')
    Left = 544
    Top = 328
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'FILE_SEND'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FTPHOST'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FTPLOGIN'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FTPPASSWORD'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TIMER'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FL1'
        ParamType = ptUnknown
      end>
  end
  object OpenDialog1: TOpenDialog
    Left = 576
    Top = 24
  end
  object OpenDialog2: TOpenDialog
    Left = 576
    Top = 56
  end
end
