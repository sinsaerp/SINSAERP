object UniMainModule: TUniMainModule
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  Height = 207
  Width = 505
  object FDConnection: TFDConnection
    Params.Strings = (
      'Database=prueba'
      'User_Name=sa'
      'Password=12345'
      'Server=192.168.1.4\SQLEXPRESS'
      'DriverID=MSSQL')
    LoginPrompt = False
    Left = 312
    Top = 56
  end
  object Query: TFDQuery
    Connection = FDConnection
    Left = 376
    Top = 56
  end
  object QueryAgenda: TFDQuery
    Connection = FDConnection
    Left = 440
    Top = 56
  end
  object QueryGrid: TFDQuery
    Connection = FDConnection
    Left = 376
    Top = 120
  end
  object QueryWeb: TFDQuery
    Connection = FDConnection
    Left = 432
    Top = 120
  end
end
