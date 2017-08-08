object Form11: TForm11
  Left = 471
  Top = 166
  Width = 439
  Height = 355
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082' '#1082#1086#1085#1090#1088#1072#1075#1077#1085#1090#1072
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 16
    Width = 76
    Height = 13
    Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
  end
  object Label5: TLabel
    Left = 288
    Top = 40
    Width = 32
    Height = 13
    Caption = 'Label5'
    Visible = False
  end
  object Label4: TLabel
    Left = 328
    Top = 40
    Width = 32
    Height = 13
    Caption = 'Label4'
    Visible = False
  end
  object Label2: TLabel
    Left = 8
    Top = 48
    Width = 132
    Height = 13
    Caption = #1050#1086#1085#1090#1072#1082#1090#1085#1072#1103'  '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1103':'
  end
  object SpeedButton1: TSpeedButton
    Left = 8
    Top = 256
    Width = 401
    Height = 33
    Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
    Flat = True
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
      555555555555555555555555555555555555555555FF55555555555559055555
      55555555577FF5555555555599905555555555557777F5555555555599905555
      555555557777FF5555555559999905555555555777777F555555559999990555
      5555557777777FF5555557990599905555555777757777F55555790555599055
      55557775555777FF5555555555599905555555555557777F5555555555559905
      555555555555777FF5555555555559905555555555555777FF55555555555579
      05555555555555777FF5555555555557905555555555555777FF555555555555
      5990555555555555577755555555555555555555555555555555}
    NumGlyphs = 2
    OnClick = SpeedButton1Click
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 298
    Width = 423
    Height = 19
    Panels = <>
  end
  object Edit1: TEdit
    Left = 87
    Top = 13
    Width = 322
    Height = 21
    MaxLength = 499
    TabOrder = 1
    Text = 'Edit1'
  end
  object Memo1: TMemo
    Left = 8
    Top = 64
    Width = 401
    Height = 49
    Lines.Strings = (
      'Memo1')
    MaxLength = 499
    TabOrder = 2
  end
  object Memo2: TMemo
    Left = 8
    Top = 144
    Width = 401
    Height = 105
    Lines.Strings = (
      'Memo2')
    MaxLength = 2047
    TabOrder = 3
  end
  object IBQuery1: TIBQuery
    Database = DataModule2.IBDatabase1
    Transaction = DataModule2.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from SERV WHERE NAME=:NAME AND ID<>:ID')
    Left = 248
    Top = 72
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NAME'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ID'
        ParamType = ptUnknown
      end>
  end
  object IBQuery2: TIBQuery
    Database = DataModule2.IBDatabase1
    Transaction = DataModule2.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'INSERT INTO SERV (ABOUT, CONTACT, NAME) VALUES (:ABOUT, :CONTACT' +
        ', :NAME)')
    Left = 280
    Top = 72
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ABOUT'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CONTACT'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NAME'
        ParamType = ptUnknown
      end>
  end
  object IBQuery3: TIBQuery
    Database = DataModule2.IBDatabase1
    Transaction = DataModule2.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'UPDATE SERV SET ABOUT=:ABOUT, CONTACT=:CONTACT, NAME=:NAME WHERE' +
        ' ID=:ID')
    Left = 312
    Top = 72
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ABOUT'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CONTACT'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NAME'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ID'
        ParamType = ptUnknown
      end>
  end
end
