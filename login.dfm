object Form3: TForm3
  Left = 467
  Top = 206
  BorderIcons = [biSystemMenu]
  BorderStyle = bsNone
  Caption = 'Help_DESK - '#1040#1074#1090#1086#1088#1080#1079#1072#1094#1080#1103
  ClientHeight = 237
  ClientWidth = 387
  Color = clGreen
  TransparentColor = True
  TransparentColorValue = clGreen
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object SpeedButton1: TSpeedButton
    Left = 96
    Top = 104
    Width = 169
    Height = 22
    Caption = #1042#1093#1086#1076
    Flat = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
      5000555555555555577755555555555550B0555555555555F7F7555555555550
      00B05555555555577757555555555550B3B05555555555F7F557555555555000
      3B0555555555577755755555555500B3B0555555555577555755555555550B3B
      055555FFFF5F7F5575555700050003B05555577775777557555570BBB00B3B05
      555577555775557555550BBBBBB3B05555557F555555575555550BBBBBBB0555
      55557F55FF557F5555550BB003BB075555557F577F5575F5555577B003BBB055
      555575F7755557F5555550BB33BBB0555555575F555557F555555507BBBB0755
      55555575FFFF7755555555570000755555555557777775555555}
    NumGlyphs = 2
    ParentFont = False
    Visible = False
    OnClick = SpeedButton1Click
  end
  object Label3: TLabel
    Left = 304
    Top = 40
    Width = 32
    Height = 13
    Caption = 'Label3'
    Visible = False
  end
  object Label4: TLabel
    Left = 296
    Top = 64
    Width = 32
    Height = 13
    Caption = 'Label4'
    Visible = False
  end
  object Label6: TLabel
    Left = 312
    Top = 80
    Width = 32
    Height = 13
    Caption = 'Label6'
    Visible = False
  end
  object SpeedButton2: TSpeedButton
    Left = 8
    Top = 104
    Width = 23
    Height = 22
    Hint = #1053#1072#1089#1090#1088#1086#1081#1082#1072' '#1076#1086#1089#1090#1091#1087#1072' '#1082' '#1041#1044
    Flat = True
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
      003337777777777777F330FFFFFFFFFFF033373F3F3F3F3F3733330F0F0F0F0F
      03333F7F737373737FFF0000FFFFFFF0000377773FFFFFF7777F0FF800000008
      FF037F3F77777773FF7F0F9FFFFFFFF000037F7333333337777F0FFFFFFFFFFF
      FF0373FFFFFFFFFFFF7330000000000000333777777777777733333000000000
      3333333777777777F3333330FFFFFFF033333337F3FFFFF7F3333330F00000F0
      33333337F77777F7F3333330F0AAE0F033333337F7F337F7F3333330F0DAD0F0
      33333337F7FFF7F7F3333330F00000F033333337F7777737F3333330FFFFFFF0
      33333337FFFFFFF7F33333300000000033333337777777773333}
    NumGlyphs = 2
    ParentShowHint = False
    ShowHint = True
    Visible = False
    OnClick = SpeedButton2Click
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 218
    Width = 387
    Height = 19
    Panels = <
      item
        Width = 50
      end>
    Visible = False
  end
  object CurvyPanel1: TCurvyPanel
    Left = 40
    Top = 32
    Width = 321
    Height = 161
    Color = 15724527
    Rounding = 5
    TabOrder = 0
    OnMouseMove = CurvyPanel1MouseMove
    object RTFLabel1: TRTFLabel
      Left = 73
      Top = 45
      Width = 39
      Height = 17
      RichText = 
        '{\rtf1\ansi\ansicpg1251\deff0{\fonttbl{\f0\fnil\fcharset204{\*\f' +
        'name Arial;}Arial CYR;}{\f1\fnil Arial;}}'#13#10'\viewkind4\uc1\pard\l' +
        'ang1049\f0\fs18\'#39'cb\'#39'ee\'#39'e3\'#39'e8\'#39'ed\f1\fs16 '#13#10'\par }'#13#10#0
      Transparent = True
      OnMouseMove = RTFLabel1MouseMove
      WordWrap = False
      Version = '1.3.1.0'
    end
    object AdvSmoothLabel1: TAdvSmoothLabel
      Left = 0
      Top = 0
      Width = 145
      Height = 33
      Fill.ColorMirror = clNone
      Fill.ColorMirrorTo = clNone
      Fill.GradientType = gtVertical
      Fill.GradientMirrorType = gtSolid
      Fill.BorderColor = clNone
      Fill.Rounding = 0
      Fill.ShadowOffset = 0
      Fill.Glow = gmNone
      Caption.Text = 'WorkDESK'
      Caption.Font.Charset = DEFAULT_CHARSET
      Caption.Font.Color = clWindowText
      Caption.Font.Height = -27
      Caption.Font.Name = 'Tahoma'
      Caption.Font.Style = []
      CaptionShadow.Text = 'AdvSmoothLabel'
      CaptionShadow.Font.Charset = DEFAULT_CHARSET
      CaptionShadow.Font.Color = clWindowText
      CaptionShadow.Font.Height = -16
      CaptionShadow.Font.Name = 'Tahoma'
      CaptionShadow.Font.Style = []
      Version = '1.5.0.1'
      OnMouseMove = AdvSmoothLabel1MouseMove
    end
    object Edit1: TCurvyEdit
      Left = 116
      Top = 41
      Width = 139
      Height = 24
      Rounding = 5
      TabOrder = 0
      TabStop = True
      OnMouseMove = Edit1MouseMove
      Version = '1.1.0.1'
      Controls = <>
      OnKeyDown = Edit1KeyDown
    end
    object AdvGlassButton2: TAdvGlassButton
      Left = 254
      Top = 0
      Width = 33
      Height = 32
      BackColor = clBlack
      BackGroundSymbolColor = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ForeColor = clWhite
      ForceTransparent = True
      GlowColor = 16760205
      InnerBorderColor = clBlack
      OuterBorderColor = 15724527
      Picture.Data = {
        424D380300000000000036000000280000000F00000010000000010018000000
        000002030000120B0000120B0000000000000000000000808000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        008080000000008080000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFF000000008080000000008080008080000000FF
        FFFF000000FFFFFF000000FFFFFF000000FFFFFF000000FFFFFF000000008080
        008080000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF000000000000000000000000000000000000FFFFFFFFFFFFBF
        BFBF000000000000000000000000000000000000000000BFBFBFFFFFFFFFFFFF
        000000000000000000FFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF000000000000000000000000000000000000FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        0000000000000080800000000000000000000000000000000000000000000000
        0000000000000000000000000000000000808000000000808000808000808000
        0000000000000000000000000000000000000000000000000000008080008080
        008080000000008080008080008080000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF00000000808000808000808000000000808000808000808000
        0000FFFFFF000000000000000000000000000000FFFFFF000000008080008080
        008080000000008080008080008080000000FFFFFF00000000FF0000FF00FFFF
        00000000FFFFFF00000000808000808000808000000000808000808000808000
        0000FFFFFF000000FF00FF00FF00FF00FF000000FFFFFF000000008080008080
        008080000000008080008080008080000000FFFFFF0000000000000000000000
        00000000FFFFFF00000000808000808000808000000000808000808000808000
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000008080008080
        0080800000000080800080800080800000000000000000000000000000000000
        000000000000000000000080800080800080800000000000}
      ParentFont = False
      ShineColor = clWhite
      TabOrder = 2
      Version = '1.3.0.0'
      OnClick = AdvGlassButton2Click
      OnMouseMove = AdvGlassButton2MouseMove
    end
    object AdvGlassButton3: TAdvGlassButton
      Left = 287
      Top = 0
      Width = 33
      Height = 32
      BackColor = clMaroon
      Caption = 'X'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ForeColor = clWhite
      GlowColor = 16760205
      InnerBorderColor = clBlack
      OuterBorderColor = 15724527
      ParentFont = False
      ShineColor = clWhite
      TabOrder = 3
      Version = '1.3.0.0'
      OnClick = AdvGlassButton3Click
      OnMouseMove = AdvGlassButton3MouseMove
    end
    object CurvyPanel2: TCurvyPanel
      Left = 0
      Top = 67
      Width = 321
      Height = 94
      Align = alBottom
      BorderColor = 13816530
      Color = clMenuHighlight
      Rounding = 5
      TabOrder = 1
      OnMouseMove = CurvyPanel2MouseMove
      object RTFLabel2: TRTFLabel
        Left = 63
        Top = 8
        Width = 49
        Height = 17
        RichText = 
          '{\rtf1\ansi\ansicpg1251\deff0{\fonttbl{\f0\fnil\fcharset204{\*\f' +
          'name Arial;}Arial CYR;}{\f1\fnil Arial;}}'#13#10'\viewkind4\uc1\pard\l' +
          'ang1049\f0\fs18\'#39'cf\'#39'e0\'#39'f0\'#39'ee\'#39'eb\'#39'fc\f1\fs16 '#13#10'\par }'#13#10#0
        Transparent = True
        OnMouseMove = RTFLabel2MouseMove
        WordWrap = False
        Version = '1.3.1.0'
      end
      object AdvSmoothLabel2: TAdvSmoothLabel
        Left = 3
        Top = 70
        Width = 289
        Height = 26
        Fill.ColorMirror = clNone
        Fill.ColorMirrorTo = clNone
        Fill.GradientType = gtVertical
        Fill.GradientMirrorType = gtSolid
        Fill.BorderColor = clNone
        Fill.Rounding = 0
        Fill.ShadowOffset = 0
        Fill.Glow = gmNone
        Caption.Text = 'AdvSmoothLabel'
        Caption.Location = plBottomLeft
        Caption.Font.Charset = DEFAULT_CHARSET
        Caption.Font.Color = clWindowText
        Caption.Font.Height = -16
        Caption.Font.Name = 'Tahoma'
        Caption.Font.Style = []
        Caption.ColorStart = 16749459
        Caption.ColorEnd = 15724527
        CaptionShadow.Text = 'AdvSmoothLabel'
        CaptionShadow.Location = plBottomLeft
        CaptionShadow.Font.Charset = DEFAULT_CHARSET
        CaptionShadow.Font.Color = clWindowText
        CaptionShadow.Font.Height = -16
        CaptionShadow.Font.Name = 'Tahoma'
        CaptionShadow.Font.Style = []
        Version = '1.5.0.1'
        TextRendering = tClearType
        OnMouseMove = AdvSmoothLabel2MouseMove
      end
      object MaskEdit1: TCurvyEdit
        Left = 116
        Top = 6
        Width = 140
        Height = 24
        Color = clWhite
        Rounding = 5
        TabOrder = 0
        TabStop = True
        OnMouseMove = MaskEdit1MouseMove
        Version = '1.1.0.1'
        Controls = <>
        PasswordChar = '*'
        OnKeyDown = MaskEdit1KeyDown
      end
      object AdvGlassButton1: TAdvGlassButton
        Left = 114
        Top = 33
        Width = 142
        Height = 32
        BackColor = clSkyBlue
        BackGroundSymbolColor = clMenu
        Caption = #1040#1074#1090#1086#1088#1080#1079#1072#1094#1080#1103
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ForeColor = clMenu
        GlowColor = 16760205
        InnerBorderColor = clBlack
        OfficeHint.Picture.Data = {
          424D780100000000000076000000280000002000000010000000010004000000
          000000000000120B0000120B0000000000000000000000000000000080000080
          0000008080008000000080008000808000007F7F7F00BFBFBF000000FF0000FF
          000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0055555555555550005555
          55555555577755555555555550B0555555555555F7F755555555555000B05555
          555555577757555555555550B3B05555555555F7F5575555555550003B055555
          5555577755755555555500B3B0555555555577555755555555550B3B055555FF
          FF5F7F5575555700050003B05555577775777557555570BBB00B3B0555557755
          5775557555550BBBBBB3B05555557F555555575555550BBBBBBB055555557F55
          FF557F5555550BB003BB075555557F577F5575F5555577B003BBB055555575F7
          755557F5555550BB33BBB0555555575F555557F555555507BBBB075555555575
          FFFF77555555555700007555555555577777755555550000}
        OuterBorderColor = clMenuHighlight
        Picture.Data = {
          424D380300000000000036000000280000001000000010000000010018000000
          000002030000120B0000120B0000000000000000000080008080008080008080
          0080800080800080800080800080800080800080800080800080800080000000
          0000000000008000808000808000808000808000808000808000808000808000
          8080008080008080008080008000000000FFFF00000080008080008080008080
          0080800080800080800080800080800080800080800080000000000000000000
          00FFFF0000008000808000808000808000808000808000808000808000808000
          8080008080008000000000FFFF00808000FFFF00000080008080008080008080
          008080008080008080008080008080008000000000000000000000808000FFFF
          0000008000808000808000808000808000808000808000808000808000800000
          0000000000FFFF00808000FFFF00000080008080008080008080008080008080
          008080008080008080008080008000000000FFFF00808000FFFF000000800080
          8000808000808000807F7F7F0000000000000000008000800000000000000000
          0000808000FFFF0000008000808000808000808000807F7F7F00000000FFFF00
          FFFF00FFFF00000000000000FFFF00808000FFFF000000800080800080800080
          80008080008000000000FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00808000FF
          FF00000080008080008080008080008080008080008000000000FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF000000800080800080800080800080800080
          80008080008000000000FFFF00FFFF00000000000000808000FFFF00FFFF0000
          007F7F7F8000808000808000808000808000808000807F7F7F7F7F7F00FFFF00
          000000000000808000FFFF00FFFF00FFFF000000800080800080800080800080
          80008080008080008000000000FFFF00FFFF00808000808000FFFF00FFFF00FF
          FF0000008000808000808000808000808000808000808000808000800000007F
          7F7F00FFFF00FFFF00FFFF00FFFF0000007F7F7F800080800080800080800080
          8000808000808000808000808000807F7F7F0000000000000000000000007F7F
          7F8000808000808000808000808000808000808000800000}
        ParentFont = False
        ShineColor = clWhite
        TabOrder = 1
        Version = '1.3.0.0'
        OnClick = AdvGlassButton1Click
        OnMouseMove = AdvGlassButton1MouseMove
      end
    end
  end
  object Button1: TButton
    Left = -8
    Top = 128
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 2
    Visible = False
    OnClick = Button1Click
  end
  object IBQuery1: TIBQuery
    Database = DataModule2.IBDatabase2
    Transaction = DataModule2.IBTransaction2
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from USERS WHERE NAME=:NAME and FAMILY=:FAMILY')
    Left = 304
    Top = 8
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
      end>
    object IBQuery1PASS: TIBStringField
      FieldName = 'PASS'
      Origin = 'USERS.PASS'
      Size = 200
    end
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
    object IBQuery1ROLE: TIBStringField
      FieldName = 'ROLE'
      Origin = 'USERS.ROLE'
      Size = 200
    end
  end
  object IBQuery4: TIBQuery
    Database = DataModule2.IBDatabase2
    Transaction = DataModule2.IBTransaction2
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from USERS ORDER BY FAMILY')
    Left = 336
    Top = 8
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
  end
  object IBQuery5: TIBQuery
    Database = DataModule2.IBDatabase2
    Transaction = DataModule2.IBTransaction2
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'INSERT INTO ACTIONS (ACT_TYPE, DATE_GET, FIO, ID_USER, TEXT)')
    Left = 40
  end
  object STARTFB: TTimer
    Interval = 50
    OnTimer = STARTFBTimer
    Left = 8
  end
  object IBQuery2: TIBQuery
    Database = DataModule2.IBDatabase1
    Transaction = DataModule2.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from SERV1')
    Left = 72
    object IBQuery2NAME: TIBStringField
      FieldName = 'NAME'
      Origin = 'SERV1.NAME'
      Size = 500
    end
    object IBQuery2ADRESS: TIBStringField
      FieldName = 'ADRESS'
      Origin = 'SERV1.ADRESS'
      Size = 1000
    end
    object IBQuery2PHONE: TIBStringField
      FieldName = 'PHONE'
      Origin = 'SERV1.PHONE'
      Size = 100
    end
    object IBQuery2SITE: TIBStringField
      FieldName = 'SITE'
      Origin = 'SERV1.SITE'
      Size = 200
    end
    object IBQuery2EMAIL: TIBStringField
      FieldName = 'EMAIL'
      Origin = 'SERV1.EMAIL'
      Size = 50
    end
    object IBQuery2INN: TIBStringField
      FieldName = 'INN'
      Origin = 'SERV1.INN'
      Size = 50
    end
    object IBQuery2KPP: TIBStringField
      FieldName = 'KPP'
      Origin = 'SERV1.KPP'
      Size = 50
    end
    object IBQuery2RS: TIBStringField
      FieldName = 'RS'
      Origin = 'SERV1.RS'
      Size = 50
    end
    object IBQuery2BIK: TIBStringField
      FieldName = 'BIK'
      Origin = 'SERV1.BIK'
      Size = 25
    end
    object IBQuery2KS: TIBStringField
      FieldName = 'KS'
      Origin = 'SERV1.KS'
      Size = 50
    end
    object IBQuery2BANK: TIBStringField
      FieldName = 'BANK'
      Origin = 'SERV1.BANK'
      Size = 200
    end
    object IBQuery2OTHER: TIBStringField
      FieldName = 'OTHER'
      Origin = 'SERV1.OTHER'
      Size = 2000
    end
    object IBQuery2MAINFIRM: TIBStringField
      FieldName = 'MAINFIRM'
      Origin = 'SERV1.MAINFIRM'
      Size = 200
    end
  end
end
