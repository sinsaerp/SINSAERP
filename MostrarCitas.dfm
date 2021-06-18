object citaPacienteF: TcitaPacienteF
  Left = 0
  Top = 0
  ClientHeight = 597
  ClientWidth = 930
  Caption = 'Cita Paciente'
  OnShow = UniFormShow
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  PixelsPerInch = 96
  TextHeight = 13
  object UniToolBar1: TUniToolBar
    Left = 0
    Top = 0
    Width = 930
    Height = 73
    Hint = ''
    TabOrder = 0
    ParentColor = False
    Color = 11169097
    ExplicitLeft = 8
    ExplicitWidth = 910
    object ubVerCita: TUniSpeedButton
      Left = 792
      Top = 0
      Width = 138
      Height = 73
      Hint = ''
      Caption = 'Ver Cita'
      Align = alRight
      ParentColor = False
      Color = clMenuHighlight
      TabOrder = 1
      ExplicitTop = 3
      ExplicitHeight = 70
    end
    object UniLabel1: TUniLabel
      Left = 296
      Top = 11
      Width = 258
      Height = 29
      Hint = ''
      Alignment = taCenter
      Caption = 'HISTORIAL DE CITAS'
      ParentFont = False
      Font.Color = clWhite
      Font.Height = -24
      Font.Style = [fsBold]
      TabOrder = 2
    end
  end
  object UniDBGrid1: TUniDBGrid
    Left = 0
    Top = 73
    Width = 930
    Height = 524
    Hint = ''
    DataSource = DataSource1
    LoadMask.Message = 'Loading data...'
    Align = alClient
    TabOrder = 1
    Columns = <
      item
        FieldName = 'Nombre'
        Title.Alignment = taCenter
        Title.Caption = 'Medico'
        Width = 300
        Sortable = True
      end
      item
        FieldName = 'Rips'
        Title.Alignment = taCenter
        Title.Caption = 'Rips'
        Width = 70
      end
      item
        FieldName = 'Servicio'
        Title.Alignment = taCenter
        Title.Caption = 'Servicio'
        Width = 400
      end
      item
        FieldName = 'Fecha'
        Title.Alignment = taCenter
        Title.Caption = 'Fecha'
        Width = 70
      end
      item
        FieldName = 'hora'
        Title.Alignment = taCenter
        Title.Caption = 'Hora'
        Width = 70
        Sortable = True
      end>
  end
  object DataSource1: TDataSource
    DataSet = UniMainModule.Query
    Left = 488
    Top = 248
  end
end
