object DataModule3: TDataModule3
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 850
  Top = 322
  Height = 150
  Width = 215
  object IBDatabase1: TIBDatabase
    Connected = True
    DatabaseName = '127.0.0.1:D:\work\Soft Develop\REMONT\remont.fdb'
    Params.Strings = (
      'user_name=SYSDBA'
      'password=masterkey')
    LoginPrompt = False
    IdleTimer = 0
    SQLDialect = 1
    TraceFlags = []
    AfterConnect = IBDatabase1AfterConnect
    AfterDisconnect = IBDatabase1AfterDisconnect
    Left = 24
    Top = 8
  end
  object IBTransaction1: TIBTransaction
    Active = True
    DefaultDatabase = IBDatabase1
    AutoStopAction = saNone
    Left = 104
    Top = 8
  end
  object IBDatabase2: TIBDatabase
    Connected = True
    DatabaseName = '127.0.0.1:D:\Work\Soft Develop\REMONT\Spider\spider.fdb'
    Params.Strings = (
      'user_name=SYSDBA'
      'password=masterkey')
    LoginPrompt = False
    IdleTimer = 0
    SQLDialect = 1
    TraceFlags = []
    AfterConnect = IBDatabase2AfterConnect
    AfterDisconnect = IBDatabase2AfterDisconnect
    Left = 24
    Top = 64
  end
  object IBTransaction2: TIBTransaction
    Active = True
    DefaultDatabase = IBDatabase2
    AutoStopAction = saNone
    Left = 112
    Top = 64
  end
end
