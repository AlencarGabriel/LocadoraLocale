object DM: TDM
  OldCreateOrder = False
  Left = 326
  Top = 206
  Height = 210
  Width = 304
  object ZConnection1: TZConnection
    ControlsCodePage = cGET_ACP
    AutoEncodeStrings = False
    Connected = True
    HostName = 'localhost'
    Port = 0
    Database = 'locadora'
    User = 'root'
    Protocol = 'mysql-5'
    LibraryLocation = 'libmysql.dll'
    Left = 120
    Top = 8
  end
  object ZQuery1: TZQuery
    Connection = ZConnection1
    Params = <>
    Left = 32
    Top = 56
  end
end
