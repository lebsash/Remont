object Form16: TForm16
  Left = 589
  Top = 107
  Width = 635
  Height = 480
  Caption = #1055#1088#1072#1081#1089'-'#1083#1080#1089#1090
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnMouseDown = FormMouseDown
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 619
    Height = 41
    Align = alTop
    TabOrder = 0
    OnMouseDown = Panel1MouseDown
    object SpeedButton1: TSpeedButton
      Left = 333
      Top = 7
      Width = 23
      Height = 22
      Flat = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333333333333333333FFF333333333333000333333333
        3333777FFF3FFFFF33330B000300000333337F777F777773F333000E00BFBFB0
        3333777F773333F7F333000E0BFBF0003333777F7F3337773F33000E0FBFBFBF
        0333777F7F3333FF7FFF000E0BFBF0000003777F7F3337777773000E0FBFBFBF
        BFB0777F7F33FFFFFFF7000E0BF000000003777F7FF777777773000000BFB033
        33337777773FF733333333333300033333333333337773333333333333333333
        3333333333333333333333333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333333333333}
      NumGlyphs = 2
      OnClick = SpeedButton1Click
    end
    object SpeedButton2: TSpeedButton
      Left = 568
      Top = 0
      Width = 23
      Height = 22
      Visible = False
      OnClick = SpeedButton2Click
    end
    object Label1: TLabel
      Left = 576
      Top = 64
      Width = 32
      Height = 13
      Caption = 'Label1'
    end
    object Edit1: TEdit
      Left = 8
      Top = 8
      Width = 321
      Height = 21
      TabOrder = 0
      OnChange = Edit1Change
      OnKeyDown = Edit1KeyDown
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 423
    Width = 619
    Height = 19
    Panels = <>
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 41
    Width = 185
    Height = 382
    Align = alLeft
    DataSource = DataSource1
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
    OnMouseDown = DBGrid1MouseDown
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
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ABOUT'
        Visible = False
      end>
  end
  object DBGrid2: TDBGrid
    Left = 185
    Top = 41
    Width = 434
    Height = 382
    Align = alClient
    DataSource = DataSource2
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGrid2DblClick
    OnMouseDown = DBGrid2MouseDown
    OnMouseMove = DBGrid2MouseMove
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
        Visible = False
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
  object IBQuery1: TIBQuery
    Database = DataModule2.IBDatabase1
    Transaction = DataModule2.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from PRICE_RAZD ORDER BY RAZDEL')
    Left = 176
    Top = 168
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
      
        'select * from PRICE WHERE ID_RAZDEL=:ID_RAZDEL AND NAME like :NA' +
        'ME ORDER BY NAME')
    Left = 216
    Top = 168
    ParamData = <
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
    object IBQuery2ID: TIntegerField
      FieldName = 'ID'
      Origin = 'PRICE.ID'
    end
    object IBQuery2ID_RAZDEL: TIntegerField
      FieldName = 'ID_RAZDEL'
      Origin = 'PRICE.ID_RAZDEL'
    end
    object IBQuery2ARTICUL: TIBStringField
      FieldName = 'ARTICUL'
      Origin = 'PRICE.ARTICUL'
      Size = 100
    end
    object IBQuery2NAME: TIBStringField
      FieldName = 'NAME'
      Origin = 'PRICE.NAME'
      Size = 2048
    end
    object IBQuery2COST: TFloatField
      FieldName = 'COST'
      Origin = 'PRICE.COST'
    end
    object IBQuery2ABOUT: TIBStringField
      FieldName = 'ABOUT'
      Origin = 'PRICE.ABOUT'
      Size = 8096
    end
    object IBQuery2LONG_TIME: TIBStringField
      FieldName = 'LONG_TIME'
      Origin = 'PRICE.LONG_TIME'
      Size = 120
    end
    object IBQuery2US_MASTER_ID: TIntegerField
      FieldName = 'US_MASTER_ID'
      Origin = 'PRICE.US_MASTER_ID'
    end
  end
  object DataSource1: TDataSource
    DataSet = IBQuery1
    Left = 176
    Top = 136
  end
  object DataSource2: TDataSource
    DataSet = IBQuery2
    Left = 216
    Top = 136
  end
end
