object citaPacienteF: TcitaPacienteF
  Left = 0
  Top = 0
  ClientHeight = 607
  ClientWidth = 961
  Caption = 'Cita Paciente'
  OnShow = UniFormShow
  BorderStyle = bsDialog
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  PixelsPerInch = 96
  TextHeight = 13
  object UniDBGrid1: TUniDBGrid
    Left = 0
    Top = 61
    Width = 961
    Height = 546
    Hint = ''
    DataSource = DataSource1
    LoadMask.Message = 'Loading data...'
    Align = alClient
    TabOrder = 0
    OnBodyDblClick = UniDBGrid1BodyDblClick
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
        Width = 98
        Sortable = True
      end>
  end
  object UniPanel1: TUniPanel
    Left = 0
    Top = 0
    Width = 961
    Height = 61
    Hint = ''
    Align = alTop
    TabOrder = 1
    Caption = ''
    Color = 11169097
    object UniLabel1: TUniLabel
      Left = 336
      Top = 19
      Width = 258
      Height = 29
      Hint = ''
      Alignment = taCenter
      Caption = 'HISTORIAL DE CITAS'
      ParentFont = False
      Font.Color = clWhite
      Font.Height = -24
      Font.Style = [fsBold]
      TabOrder = 1
    end
    object ubVerCita: TUniSpeedButton
      Left = 844
      Top = 19
      Width = 106
      Height = 29
      Hint = ''
      Caption = 'Ver Cita'
      Align = alCustom
      ParentFont = False
      Font.Height = -12
      Font.Style = [fsBold]
      ParentColor = False
      Color = clWindow
      TabOrder = 2
      OnClick = ubVerCitaClick
    end
  end
  object DataSource1: TDataSource
    DataSet = UniMainModule.Query
    Left = 488
    Top = 248
  end
end
