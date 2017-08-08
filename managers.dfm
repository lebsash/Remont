object Form10: TForm10
  Left = 719
  Top = 164
  Width = 485
  Height = 480
  Caption = #1042#1099#1073#1086#1088' '#1080#1089#1087#1086#1083#1085#1080#1090#1077#1083#1103
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
    Top = 423
    Width = 469
    Height = 19
    Panels = <>
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 469
    Height = 423
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = #1056#1072#1073#1086#1090#1085#1080#1082#1080' '#1087#1088#1077#1076#1087#1088#1080#1103#1090#1080#1103
      object DBGrid2: TDBGrid
        Left = 0
        Top = 0
        Width = 461
        Height = 395
        Align = alClient
        DataSource = DataSource2
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDrawDataCell = DBGrid2DrawDataCell
        OnDrawColumnCell = DBGrid2DrawColumnCell
        OnDblClick = DBGrid2DblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'FAMILY'
            Title.Caption = #1060#1072#1084#1080#1083#1080#1103
            Visible = True
          end
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
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'PASS'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'ROLE'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'DOLGNOST'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'OTDEL'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'ID_FIRM'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'USLOGIN'
            Visible = False
          end>
      end
    end
    object TabSheet2: TTabSheet
      Caption = #1057#1090#1086#1088#1086#1085#1085#1080#1077' '#1082#1086#1085#1090#1088#1072#1075#1077#1085#1090#1099
      ImageIndex = 1
      object SpeedButton1: TSpeedButton
        Left = 416
        Top = 48
        Width = 23
        Height = 22
        OnClick = SpeedButton1Click
      end
      object DBGrid1: TDBGrid
        Left = 0
        Top = 41
        Width = 461
        Height = 354
        Align = alClient
        DataSource = DataSource1
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        PopupMenu = PopupMenu1
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDrawDataCell = DBGrid1DrawDataCell
        OnDrawColumnCell = DBGrid1DrawColumnCell
        OnDblClick = DBGrid1DblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'ID'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'NAME'
            Title.Caption = #1057#1077#1088#1074#1080#1089'-'#1094#1077#1085#1090#1088
            Width = 250
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CONTACT'
            Title.Caption = #1050#1086#1085#1090#1072#1082#1090#1099
            Width = 250
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ABOUT'
            Visible = False
          end>
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 461
        Height = 41
        Align = alTop
        TabOrder = 1
        object SpeedButton2: TSpeedButton
          Left = 269
          Top = 6
          Width = 23
          Height = 22
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
          OnClick = SpeedButton2Click
        end
        object Edit1: TEdit
          Left = 5
          Top = 8
          Width = 261
          Height = 21
          TabOrder = 0
          OnChange = Edit1Change
        end
      end
    end
  end
  object IBQuery1: TIBQuery
    Database = DataModule2.IBDatabase2
    Transaction = DataModule2.IBTransaction2
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from USERS ORDER BY FAMILY')
    Left = 408
    Top = 168
    object IBQuery1ID: TIntegerField
      FieldName = 'ID'
      Origin = 'USERS.ID'
    end
    object IBQuery1NAME: TIBStringField
      FieldName = 'NAME'
      Origin = 'USERS.NAME'
      Size = 25
    end
    object IBQuery1SECOND_NAME: TIBStringField
      FieldName = 'SECOND_NAME'
      Origin = 'USERS.SECOND_NAME'
      Size = 25
    end
    object IBQuery1FAMILY: TIBStringField
      FieldName = 'FAMILY'
      Origin = 'USERS.FAMILY'
      Size = 25
    end
    object IBQuery1PASS: TIBStringField
      FieldName = 'PASS'
      Origin = 'USERS.PASS'
      Size = 200
    end
    object IBQuery1ROLE: TIBStringField
      FieldName = 'ROLE'
      Origin = 'USERS.ROLE'
      Size = 200
    end
    object IBQuery1DOLGNOST: TIBStringField
      FieldName = 'DOLGNOST'
      Origin = 'USERS.DOLGNOST'
      Size = 50
    end
    object IBQuery1OTDEL: TIBStringField
      FieldName = 'OTDEL'
      Origin = 'USERS.OTDEL'
      Size = 60
    end
    object IBQuery1ID_FIRM: TIntegerField
      FieldName = 'ID_FIRM'
      Origin = 'USERS.ID_FIRM'
    end
    object IBQuery1USLOGIN: TIBStringField
      FieldName = 'USLOGIN'
      Origin = 'USERS.USLOGIN'
      Size = 45
    end
  end
  object IBQuery2: TIBQuery
    Database = DataModule2.IBDatabase1
    Transaction = DataModule2.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from SERV WHERE NAME like :NAME ORDER BY NAME')
    Left = 380
    Top = 64
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NAME'
        ParamType = ptUnknown
      end>
    object IBQuery2ID: TIntegerField
      FieldName = 'ID'
      Origin = 'SERV.ID'
    end
    object IBQuery2NAME: TIBStringField
      FieldName = 'NAME'
      Origin = 'SERV.NAME'
      Size = 500
    end
    object IBQuery2CONTACT: TIBStringField
      FieldName = 'CONTACT'
      Origin = 'SERV.CONTACT'
      Size = 500
    end
    object IBQuery2ABOUT: TIBStringField
      FieldName = 'ABOUT'
      Origin = 'SERV.ABOUT'
      Size = 2048
    end
  end
  object DataSource1: TDataSource
    DataSet = IBQuery2
    Left = 348
    Top = 64
  end
  object PopupMenu1: TPopupMenu
    Left = 348
    Top = 96
    object N1: TMenuItem
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1082#1086#1085#1090#1088#1072#1075#1077#1085#1090#1072
      OnClick = N1Click
    end
    object N2: TMenuItem
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1082#1086#1085#1090#1088#1072#1075#1077#1085#1090#1072
      OnClick = N2Click
    end
    object N3: TMenuItem
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1082#1086#1085#1090#1088#1072#1075#1077#1085#1090#1072
      OnClick = N3Click
    end
  end
  object IBQuery3: TIBQuery
    Database = DataModule2.IBDatabase1
    Transaction = DataModule2.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'DELETE FROM SERV WHERE ID=:ID')
    Left = 380
    Top = 96
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID'
        ParamType = ptUnknown
      end>
  end
  object DataSource2: TDataSource
    DataSet = IBQuery1
    Left = 380
    Top = 168
  end
end
