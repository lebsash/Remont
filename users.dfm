object Form4: TForm4
  Left = 469
  Top = 242
  Width = 500
  Height = 437
  Caption = 'WorkDESK - '#1053#1072#1089#1090#1088#1086#1081#1082#1072' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1077#1081' '#1089#1080#1089#1090#1077#1084#1099
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormCreate
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid2: TDBGrid
    Left = 0
    Top = 32
    Width = 484
    Height = 367
    Align = alClient
    DataSource = DataSource2
    PopupMenu = PopupMenu2
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGrid2DblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'ID'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'NAME'
        Title.Caption = #1048#1084#1103
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SECOND_NAME'
        Title.Caption = #1054#1090#1095#1077#1089#1090#1074#1086
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FAMILY'
        Title.Caption = #1060#1072#1084#1080#1083#1080#1103
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PASS'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'ROLE'
        Title.Caption = #1056#1086#1083#1100
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'DOLGNOST'
        Title.Caption = #1044#1086#1083#1078#1085#1086#1089#1090#1100
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'OTDEL'
        Visible = False
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 484
    Height = 32
    Align = alTop
    TabOrder = 1
    object SpeedButton1: TSpeedButton
      Left = 277
      Top = 1
      Width = 33
      Height = 24
      Hint = #1055#1086#1080#1089#1082' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103' '#1087#1086' '#1092#1072#1084#1080#1083#1080#1080' '#1080#1083#1080' '#1087#1086' '#1077#1077' '#1095#1072#1089#1090#1080
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
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton1Click
    end
    object Label1: TLabel
      Left = 7
      Top = 8
      Width = 62
      Height = 13
      Caption = #1060#1040#1052#1048#1051#1048#1071':'
    end
    object Edit1: TEdit
      Left = 74
      Top = 2
      Width = 201
      Height = 21
      TabOrder = 0
    end
  end
  object IBQuery3: TIBQuery
    Database = DataModule2.IBDatabase2
    Transaction = DataModule2.IBTransaction2
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'DELETE FROM USERS')
    Left = 424
    Top = 64
  end
  object DataSource2: TDataSource
    DataSet = IBQuery4
    Left = 392
    Top = 104
  end
  object IBQuery4: TIBQuery
    Database = DataModule2.IBDatabase2
    Transaction = DataModule2.IBTransaction2
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from USERS')
    Left = 424
    Top = 96
    object IBQuery4ID: TIntegerField
      FieldName = 'ID'
      Origin = 'USERS.ID'
    end
    object IBQuery4NAME: TIBStringField
      FieldName = 'NAME'
      Origin = 'USERS.NAME'
      Size = 25
    end
    object IBQuery4SECOND_NAME: TIBStringField
      FieldName = 'SECOND_NAME'
      Origin = 'USERS.SECOND_NAME'
      Size = 25
    end
    object IBQuery4FAMILY: TIBStringField
      FieldName = 'FAMILY'
      Origin = 'USERS.FAMILY'
      Size = 25
    end
    object IBQuery4PASS: TIBStringField
      FieldName = 'PASS'
      Origin = 'USERS.PASS'
      Size = 200
    end
    object IBQuery4ROLE: TIBStringField
      FieldName = 'ROLE'
      Origin = 'USERS.ROLE'
      Size = 200
    end
    object IBQuery4DOLGNOST: TIBStringField
      FieldName = 'DOLGNOST'
      Origin = 'USERS.DOLGNOST'
      Size = 50
    end
    object IBQuery4OTDEL: TIBStringField
      FieldName = 'OTDEL'
      Origin = 'USERS.OTDEL'
      Size = 60
    end
    object IBQuery4ID_FIRM: TIntegerField
      FieldName = 'ID_FIRM'
      Origin = 'USERS.ID_FIRM'
    end
    object IBQuery4USLOGIN: TIBStringField
      FieldName = 'USLOGIN'
      Origin = 'USERS.USLOGIN'
      Size = 45
    end
  end
  object PopupMenu2: TPopupMenu
    Left = 392
    Top = 64
    object N4: TMenuItem
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103
      OnClick = N4Click
    end
    object N5: TMenuItem
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103
      OnClick = N5Click
    end
    object N6: TMenuItem
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103
      OnClick = N6Click
    end
  end
  object IBQuery5: TIBQuery
    Database = DataModule2.IBDatabase2
    Transaction = DataModule2.IBTransaction2
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'DELETE FROM USERS WHERE ID=:ID')
    Left = 424
    Top = 128
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID'
        ParamType = ptUnknown
      end>
  end
end
