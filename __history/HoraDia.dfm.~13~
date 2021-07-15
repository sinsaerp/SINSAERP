object HorasAsignada: THorasAsignada
  Left = 0
  Top = 0
  ClientHeight = 658
  ClientWidth = 607
  Caption = 'Horas Asignadas'
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  PixelsPerInch = 96
  TextHeight = 13
  object UniToolBar1: TUniToolBar
    Left = 0
    Top = 0
    Width = 607
    Height = 49
    Hint = ''
    TabOrder = 0
    ParentColor = False
    Color = clBtnFace
    ExplicitTop = -6
    ExplicitWidth = 604
    object UniLabel1: TUniLabel
      Left = 0
      Top = 0
      Width = 292
      Height = 23
      Hint = ''
      Caption = 'Seleccione Hora de Asignaci'#243'n'
      Align = alLeft
      ParentFont = False
      Font.Height = -19
      Font.Style = [fsBold]
      TabOrder = 1
    end
    object ubConfirmarHoras: TUniSpeedButton
      Left = 480
      Top = 10
      Width = 111
      Height = 33
      Hint = ''
      Caption = 'Confirmas Horas'
      ParentColor = False
      Color = clWindow
      TabOrder = 2
      OnClick = ubConfirmarHorasClick
    end
  end
  object UniDBGrid1: TUniDBGrid
    Left = 0
    Top = 49
    Width = 607
    Height = 609
    Hint = ''
    DataSource = DataSource1
    LoadMask.Message = 'Loading data...'
    Align = alClient
    TabOrder = 1
    Columns = <
      item
        FieldName = 'hora'
        Title.Caption = 'Hora Cita'
        Width = 64
      end
      item
        FieldName = 'Paciente'
        Title.Caption = 'Paciente'
        Width = 71
      end
      item
        FieldName = 'Nombre'
        Title.Caption = 'Nombre'
        Width = 169
      end
      item
        FieldName = 'Fecha'
        Title.Caption = 'Fecha'
        Width = 96
      end
      item
        FieldName = 'medico'
        Title.Caption = 'medico'
        Width = 109
      end
      item
        FieldName = 'web'
        Title.Caption = 'Asignar Web'
        Width = 77
        Expanded = True
      end>
  end
  object DataSource1: TDataSource
    DataSet = UniMainModule.QueryAgenda
    Left = 352
    Top = 152
  end
end
