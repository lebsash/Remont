object Form15: TForm15
  Left = 469
  Top = 130
  Width = 822
  Height = 499
  Caption = 'WorkDESK - '#1087#1088#1072#1081#1089'-'#1083#1080#1089#1090
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object StatusBar1: TStatusBar
    Left = 0
    Top = 442
    Width = 806
    Height = 19
    Panels = <>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 806
    Height = 65
    Align = alTop
    TabOrder = 1
    object SpeedButton1: TSpeedButton
      Left = 211
      Top = 7
      Width = 23
      Height = 22
      Flat = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333FF3333333333333C0C333333333333F777F3333333333CC0F0C3
        333333333777377F33333333C30F0F0C333333337F737377F333333C00FFF0F0
        C33333F7773337377F333CC0FFFFFF0F0C3337773F33337377F3C30F0FFFFFF0
        F0C37F7373F33337377F00FFF0FFFFFF0F0C7733373F333373770FFFFF0FFFFF
        F0F073F33373F333373730FFFFF0FFFFFF03373F33373F333F73330FFFFF0FFF
        00333373F33373FF77333330FFFFF000333333373F333777333333330FFF0333
        3333333373FF7333333333333000333333333333377733333333333333333333
        3333333333333333333333333333333333333333333333333333}
      NumGlyphs = 2
      OnClick = SpeedButton1Click
    end
    object SpeedButton2: TSpeedButton
      Left = 240
      Top = 8
      Width = 216
      Height = 41
      Caption = #1057#1058#1040#1056#1058' '#1047#1040#1043#1056#1059#1047#1050#1048' '#1055#1056#1040#1049#1057#1040
      Flat = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300130000031
        00333773F77777FF7733331000909000133333377737F777FF33330098F0F890
        0333337733F733F77F33370980FFF08907333373373F373373F33099FFFFFFF9
        903337F3F373F33FF7F33090F000FF00903337F73337F37737F3B099FFF0FFF9
        90B3373F33F7F3F33733070980F0F0890703337FF737F7337F33BB0098F0F890
        0BB33F77FF3733377FFF000009999900000377777FFFFF77777F088700000008
        77037F3377777773337F088887707888870373F3337773F33373B078800B0088
        70B3373FF733373FF73303700BBBBB007303337773F3F3777F33330BB0B0B0BB
        033333733737F73F73F330BB03B0B30BB0333733733733733733}
      NumGlyphs = 2
      OnClick = SpeedButton2Click
    end
    object SpeedButton3: TSpeedButton
      Left = 752
      Top = 8
      Width = 23
      Height = 22
      ParentShowHint = False
      ShowHint = True
      Visible = False
      OnClick = SpeedButton3Click
    end
    object SpeedButton4: TSpeedButton
      Left = 776
      Top = 8
      Width = 23
      Height = 22
      Visible = False
      OnClick = SpeedButton4Click
    end
    object Edit1: TEdit
      Left = 16
      Top = 8
      Width = 193
      Height = 21
      TabOrder = 0
    end
    object ComboBox1: TComboBox
      Left = 16
      Top = 32
      Width = 217
      Height = 21
      ItemHeight = 13
      TabOrder = 1
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 351
    Width = 806
    Height = 91
    Align = alBottom
    TabOrder = 2
    object Memo1: TMemo
      Left = 1
      Top = 1
      Width = 804
      Height = 89
      Align = alClient
      TabOrder = 0
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 65
    Width = 265
    Height = 286
    Align = alLeft
    DataSource = DataSource1
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
    Columns = <
      item
        Expanded = False
        FieldName = 'ID'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'RAZDEL'
        Title.Caption = #1056#1072#1079#1076#1077#1083
        Width = 250
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ABOUT'
        Visible = False
      end>
  end
  object DBGrid2: TDBGrid
    Left = 265
    Top = 65
    Width = 541
    Height = 286
    Align = alClient
    DataSource = DataSource2
    PopupMenu = PopupMenu1
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'ID'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'ID_RAZDEL'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'ARTICUL'
        Title.Caption = #1040#1088#1090'.'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NAME'
        Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
        Width = 350
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'COST'
        Title.Caption = #1062#1077#1085#1072
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ABOUT'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'LONG_TIME'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'US_MASTER_ID'
        Visible = False
      end>
  end
  object OpenDialog1: TOpenDialog
    Left = 312
    Top = 224
  end
  object IBQuery1: TIBQuery
    Database = DataModule2.IBDatabase1
    Transaction = DataModule2.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from PRICE_RAZD ORDER BY RAZDEL')
    Left = 368
    Top = 240
    object IBQuery1ID: TIntegerField
      FieldName = 'ID'
      Origin = 'PRICE_RAZD.ID'
    end
    object IBQuery1RAZDEL: TIBStringField
      FieldName = 'RAZDEL'
      Origin = 'PRICE_RAZD.RAZDEL'
      Size = 500
    end
    object IBQuery1ABOUT: TIBStringField
      FieldName = 'ABOUT'
      Origin = 'PRICE_RAZD.ABOUT'
      Size = 2048
    end
  end
  object IBQuery2: TIBQuery
    Database = DataModule2.IBDatabase1
    Transaction = DataModule2.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from PRICE_RAZD WHERE RAZDEL=:RAZDEL')
    Left = 400
    Top = 240
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'RAZDEL'
        ParamType = ptUnknown
      end>
    object IBQuery2ID: TIntegerField
      FieldName = 'ID'
      Origin = 'PRICE_RAZD.ID'
    end
    object IBQuery2RAZDEL: TIBStringField
      FieldName = 'RAZDEL'
      Origin = 'PRICE_RAZD.RAZDEL'
      Size = 500
    end
    object IBQuery2ABOUT: TIBStringField
      FieldName = 'ABOUT'
      Origin = 'PRICE_RAZD.ABOUT'
      Size = 2048
    end
  end
  object IBQuery3: TIBQuery
    Database = DataModule2.IBDatabase1
    Transaction = DataModule2.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'INSERT INTO PRICE_RAZD (ABOUT, RAZDEL) VALUES (:ABOUT, :RAZDEL)')
    Left = 432
    Top = 240
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ABOUT'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'RAZDEL'
        ParamType = ptUnknown
      end>
  end
  object IBQuery4: TIBQuery
    Database = DataModule2.IBDatabase1
    Transaction = DataModule2.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from PRICE WHERE NAME=:NAME AND ID_RAZDEL=:ID_RAZDEL')
    Left = 336
    Top = 256
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NAME'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ID_RAZDEL'
        ParamType = ptUnknown
      end>
    object IBQuery4ID: TIntegerField
      FieldName = 'ID'
      Origin = 'PRICE.ID'
    end
    object IBQuery4ID_RAZDEL: TIntegerField
      FieldName = 'ID_RAZDEL'
      Origin = 'PRICE.ID_RAZDEL'
    end
    object IBQuery4ARTICUL: TIBStringField
      FieldName = 'ARTICUL'
      Origin = 'PRICE.ARTICUL'
      Size = 100
    end
    object IBQuery4NAME: TIBStringField
      FieldName = 'NAME'
      Origin = 'PRICE.NAME'
      Size = 2048
    end
    object IBQuery4COST: TFloatField
      FieldName = 'COST'
      Origin = 'PRICE.COST'
    end
    object IBQuery4ABOUT: TIBStringField
      FieldName = 'ABOUT'
      Origin = 'PRICE.ABOUT'
      Size = 8096
    end
    object IBQuery4LONG_TIME: TIBStringField
      FieldName = 'LONG_TIME'
      Origin = 'PRICE.LONG_TIME'
      Size = 120
    end
    object IBQuery4US_MASTER_ID: TIntegerField
      FieldName = 'US_MASTER_ID'
      Origin = 'PRICE.US_MASTER_ID'
    end
  end
  object IBQuery5: TIBQuery
    Database = DataModule2.IBDatabase1
    Transaction = DataModule2.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'INSERT INTO PRICE (ABOUT, COST, ID_RAZDEL, NAME) VALUES (:ABOUT,' +
        ' :COST, :ID_RAZDEL, :NAME)')
    Left = 304
    Top = 256
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ABOUT'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'COST'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ID_RAZDEL'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NAME'
        ParamType = ptUnknown
      end>
  end
  object IBQuery6: TIBQuery
    Database = DataModule2.IBDatabase1
    Transaction = DataModule2.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'UPDATE PRICE SET COST=:COST WHERE ID=:ID')
    Left = 304
    Top = 280
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'COST'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ID'
        ParamType = ptUnknown
      end>
  end
  object DataSource1: TDataSource
    DataSet = IBQuery7
    Left = 88
    Top = 112
  end
  object DataSource2: TDataSource
    DataSet = IBQuery8
    Left = 296
    Top = 144
  end
  object IBQuery7: TIBQuery
    Database = DataModule2.IBDatabase1
    Transaction = DataModule2.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from PRICE_RAZD ORDER BY RAZDEL')
    Left = 192
    Top = 112
    object IBQuery7ID: TIntegerField
      FieldName = 'ID'
      Origin = 'PRICE_RAZD.ID'
    end
    object IBQuery7RAZDEL: TIBStringField
      FieldName = 'RAZDEL'
      Origin = 'PRICE_RAZD.RAZDEL'
      Size = 500
    end
    object IBQuery7ABOUT: TIBStringField
      FieldName = 'ABOUT'
      Origin = 'PRICE_RAZD.ABOUT'
      Size = 2048
    end
  end
  object IBQuery8: TIBQuery
    Database = DataModule2.IBDatabase1
    Transaction = DataModule2.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from PRICE WHERE ID_RAZDEL=:ID_RAZDEL')
    Left = 296
    Top = 120
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID_RAZDEL'
        ParamType = ptUnknown
      end>
    object IBQuery8ID: TIntegerField
      FieldName = 'ID'
      Origin = 'PRICE.ID'
    end
    object IBQuery8ID_RAZDEL: TIntegerField
      FieldName = 'ID_RAZDEL'
      Origin = 'PRICE.ID_RAZDEL'
    end
    object IBQuery8ARTICUL: TIBStringField
      FieldName = 'ARTICUL'
      Origin = 'PRICE.ARTICUL'
      Size = 100
    end
    object IBQuery8NAME: TIBStringField
      FieldName = 'NAME'
      Origin = 'PRICE.NAME'
      Size = 2048
    end
    object IBQuery8COST: TFloatField
      FieldName = 'COST'
      Origin = 'PRICE.COST'
    end
    object IBQuery8ABOUT: TIBStringField
      FieldName = 'ABOUT'
      Origin = 'PRICE.ABOUT'
      Size = 8096
    end
    object IBQuery8LONG_TIME: TIBStringField
      FieldName = 'LONG_TIME'
      Origin = 'PRICE.LONG_TIME'
      Size = 120
    end
    object IBQuery8US_MASTER_ID: TIntegerField
      FieldName = 'US_MASTER_ID'
      Origin = 'PRICE.US_MASTER_ID'
    end
  end
  object IBQuery9: TIBQuery
    Database = DataModule2.IBDatabase1
    Transaction = DataModule2.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from PRICE')
    Left = 512
    Top = 32
    object IBQuery9ID: TIntegerField
      FieldName = 'ID'
      Origin = 'PRICE.ID'
    end
    object IBQuery9ID_RAZDEL: TIntegerField
      FieldName = 'ID_RAZDEL'
      Origin = 'PRICE.ID_RAZDEL'
    end
    object IBQuery9ARTICUL: TIBStringField
      FieldName = 'ARTICUL'
      Origin = 'PRICE.ARTICUL'
      Size = 100
    end
    object IBQuery9NAME: TIBStringField
      FieldName = 'NAME'
      Origin = 'PRICE.NAME'
      Size = 2048
    end
    object IBQuery9COST: TFloatField
      FieldName = 'COST'
      Origin = 'PRICE.COST'
    end
    object IBQuery9ABOUT: TIBStringField
      FieldName = 'ABOUT'
      Origin = 'PRICE.ABOUT'
      Size = 8096
    end
    object IBQuery9LONG_TIME: TIBStringField
      FieldName = 'LONG_TIME'
      Origin = 'PRICE.LONG_TIME'
      Size = 120
    end
    object IBQuery9US_MASTER_ID: TIntegerField
      FieldName = 'US_MASTER_ID'
      Origin = 'PRICE.US_MASTER_ID'
    end
  end
  object IBQuery10: TIBQuery
    Database = DataModule2.IBDatabase1
    Transaction = DataModule2.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'UPDATE PRICE SET NAME=:NAME WHERE ID=:ID')
    Left = 544
    Top = 32
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
  object PopupMenu1: TPopupMenu
    Left = 368
    Top = 168
    object N1: TMenuItem
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1094#1077#1085#1091
      OnClick = N1Click
    end
  end
  object IBQuery11: TIBQuery
    Database = DataModule2.IBDatabase1
    Transaction = DataModule2.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'UPDATE PRICE SET COST=:COST WHERE ID=:ID')
    Left = 640
    Top = 72
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'COST'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ID'
        ParamType = ptUnknown
      end>
  end
end
