object dDM: TdDM
  OldCreateOrder = False
  OnDestroy = DataModuleDestroy
  Height = 521
  Width = 728
  object db: TIBDatabase
    Connected = True
    DatabaseName = '192.168.13.13:D:\IBDATA\BELMED.GDB'
    Params.Strings = (
      'user_name=IGOR'
      'password=igor'
      'sql_role_name=SKLAD_CEH'
      'lc_ctype=WIN1251')
    LoginPrompt = False
    DefaultTransaction = trans_read
    ServerType = 'IBServer'
    Left = 32
    Top = 24
  end
  object trans_read: TIBTransaction
    Active = True
    DefaultDatabase = db
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 32
    Top = 80
  end
  object trans_write: TIBTransaction
    DefaultDatabase = db
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 32
    Top = 136
  end
end
