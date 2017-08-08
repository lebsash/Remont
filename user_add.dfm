object Form6: TForm6
  Left = 709
  Top = 154
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'WorkDESK - '#1055#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1080' '#1089#1080#1089#1090#1077#1084#1099
  ClientHeight = 319
  ClientWidth = 367
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel
    Left = 55
    Top = 16
    Width = 25
    Height = 13
    Caption = #1048#1084#1103':'
  end
  object Label4: TLabel
    Left = 31
    Top = 41
    Width = 50
    Height = 13
    Caption = #1054#1090#1095#1077#1089#1090#1074#1086':'
  end
  object Label5: TLabel
    Left = 30
    Top = 64
    Width = 52
    Height = 13
    Caption = #1060#1072#1084#1080#1083#1080#1103':'
  end
  object Label6: TLabel
    Left = 48
    Top = 108
    Width = 41
    Height = 13
    Caption = #1055#1072#1088#1086#1083#1100':'
  end
  object Label7: TLabel
    Left = 11
    Top = 132
    Width = 79
    Height = 13
    Caption = #1057#1074#1077#1088#1082#1072' '#1087#1072#1088#1086#1083#1103':'
  end
  object Label8: TLabel
    Left = 28
    Top = 172
    Width = 61
    Height = 13
    Caption = #1044#1086#1083#1078#1085#1086#1089#1090#1100':'
  end
  object Label9: TLabel
    Left = 52
    Top = 196
    Width = 34
    Height = 13
    Caption = #1054#1090#1076#1077#1083':'
  end
  object Label10: TLabel
    Left = 58
    Top = 236
    Width = 28
    Height = 13
    Caption = #1056#1086#1083#1100':'
  end
  object SpeedButton1: TSpeedButton
    Left = 8
    Top = 272
    Width = 353
    Height = 41
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
  object Label11: TLabel
    Left = 312
    Top = 204
    Width = 38
    Height = 13
    Caption = 'Label11'
    Visible = False
  end
  object Label12: TLabel
    Left = 312
    Top = 220
    Width = 38
    Height = 13
    Caption = 'Label12'
    Visible = False
  end
  object Label13: TLabel
    Left = 312
    Top = 236
    Width = 38
    Height = 13
    Caption = 'Label13'
    Visible = False
  end
  object Label15: TLabel
    Left = 72
    Top = 0
    Width = 3
    Height = 13
  end
  object Edit1: TEdit
    Left = 88
    Top = 12
    Width = 265
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 88
    Top = 36
    Width = 265
    Height = 21
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 88
    Top = 60
    Width = 265
    Height = 21
    TabOrder = 2
  end
  object MaskEdit1: TMaskEdit
    Left = 95
    Top = 105
    Width = 170
    Height = 21
    MaxLength = 15
    PasswordChar = '*'
    TabOrder = 3
  end
  object MaskEdit2: TMaskEdit
    Left = 95
    Top = 129
    Width = 170
    Height = 21
    MaxLength = 15
    PasswordChar = '*'
    TabOrder = 4
  end
  object Edit4: TEdit
    Left = 95
    Top = 168
    Width = 249
    Height = 21
    TabOrder = 5
  end
  object Edit5: TEdit
    Left = 95
    Top = 192
    Width = 249
    Height = 21
    TabOrder = 6
  end
  object ComboBox1: TComboBox
    Left = 94
    Top = 233
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 7
    Text = #1052#1077#1085#1077#1076#1078#1077#1088
    Items.Strings = (
      #1040#1076#1084#1080#1085#1080#1089#1090#1088#1072#1090#1086#1088
      #1052#1077#1085#1077#1076#1078#1077#1088
      #1057#1077#1088#1074#1080#1089)
  end
  object IBQuery1: TIBQuery
    Database = DataModule2.IBDatabase2
    Transaction = DataModule2.IBTransaction2
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'INSERT INTO USERS (NAME, FAMILY, SECOND_NAME, ID_FIRM, OTDEL, DO' +
        'LGNOST, PASS, ROLE) VALUES (:NAME, :FAMILY, :SECOND_NAME, :ID_FI' +
        'RM, :OTDEL, :DOLGNOST, :PASS, :ROLE)')
    Left = 304
    Top = 92
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NAME'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FAMILY'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'SECOND_NAME'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ID_FIRM'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OTDEL'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DOLGNOST'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PASS'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ROLE'
        ParamType = ptUnknown
      end>
  end
  object IBQuery2: TIBQuery
    Database = DataModule2.IBDatabase2
    Transaction = DataModule2.IBTransaction2
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from USERS ORDER BY ID')
    Left = 304
    Top = 132
    object IBQuery2ID: TIntegerField
      FieldName = 'ID'
      Origin = 'USERS.ID'
    end
    object IBQuery2NAME: TIBStringField
      FieldName = 'NAME'
      Origin = 'USERS.NAME'
      Size = 25
    end
    object IBQuery2SECOND_NAME: TIBStringField
      FieldName = 'SECOND_NAME'
      Origin = 'USERS.SECOND_NAME'
      Size = 25
    end
    object IBQuery2FAMILY: TIBStringField
      FieldName = 'FAMILY'
      Origin = 'USERS.FAMILY'
      Size = 25
    end
    object IBQuery2PASS: TIBStringField
      FieldName = 'PASS'
      Origin = 'USERS.PASS'
      Size = 200
    end
    object IBQuery2ROLE: TIBStringField
      FieldName = 'ROLE'
      Origin = 'USERS.ROLE'
      Size = 200
    end
    object IBQuery2DOLGNOST: TIBStringField
      FieldName = 'DOLGNOST'
      Origin = 'USERS.DOLGNOST'
      Size = 50
    end
    object IBQuery2OTDEL: TIBStringField
      FieldName = 'OTDEL'
      Origin = 'USERS.OTDEL'
      Size = 60
    end
  end
  object IBQuery3: TIBQuery
    Database = DataModule2.IBDatabase2
    Transaction = DataModule2.IBTransaction2
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'UPDATE USERS SET DOLGNOST=:DOLGNOST, FAMILY=:FAMILY, NAME=:NAME,' +
        ' OTDEL=:OTDEL, PASS=:PASS, ROLE=:ROLE, SECOND_NAME=:SECOND_NAME ' +
        'WHERE ID=:ID')
    Left = 272
    Top = 92
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'DOLGNOST'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FAMILY'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NAME'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OTDEL'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PASS'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ROLE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'SECOND_NAME'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ID'
        ParamType = ptUnknown
      end>
  end
  object IBQuery4: TIBQuery
    Database = DataModule2.IBDatabase2
    Transaction = DataModule2.IBTransaction2
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select * from USERS WHERE FAMILY=:FAMILY AND NAME=:NAME AND ID_F' +
        'IRM=:ID_FIRM')
    Left = 272
    Top = 124
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'FAMILY'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NAME'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ID_FIRM'
        ParamType = ptUnknown
      end>
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
  end
  object IBQuery5: TIBQuery
    Database = DataModule2.IBDatabase2
    Transaction = DataModule2.IBTransaction2
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'UPDATE USERSGRAY SET DET=:DET WHERE NAME_LOGIN=:NAME_LOGIN')
    Left = 272
    Top = 276
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'DET'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NAME_LOGIN'
        ParamType = ptUnknown
      end>
  end
  object IBQuery6: TIBQuery
    Database = DataModule2.IBDatabase2
    Transaction = DataModule2.IBTransaction2
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'UPDATE USERS SET PASS=:PASS, ROLE=:ROLE WHERE ID=:ID')
    Left = 304
    Top = 276
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'PASS'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ROLE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ID'
        ParamType = ptUnknown
      end>
  end
end
