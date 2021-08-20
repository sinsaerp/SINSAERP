unit CitaReporte;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniButton, uniBitBtn, uniSpeedButton,
  uniDateTimePicker, uniEdit, uniLabel, uniBasicGrid, uniDBGrid, uniPanel,
  uniPageControl, uniGUIBaseClasses, Data.DB;

type
  TFCitaReporte = class(TUniForm)
    UniPageControl1: TUniPageControl;
    UniTabSheet1: TUniTabSheet;
    UniDBGrid1: TUniDBGrid;
    UniLabel1: TUniLabel;
    Medico: TUniEdit;
    UniLabel2: TUniLabel;
    fechaAsignacion: TUniDateTimePicker;
    UniLabel3: TUniLabel;
    TotalAgenda: TUniEdit;
    UniSpeedButton1: TUniSpeedButton;
    CodigoMedico: TUniEdit;
    UniSpeedButton2: TUniSpeedButton;
    UniSpeedButton3: TUniSpeedButton;
    UniEdit1: TUniEdit;
    UniEdit2: TUniEdit;
    UniEdit3: TUniEdit;
    UniEdit4: TUniEdit;
    UniEdit5: TUniEdit;
    ubVerCitas: TUniSpeedButton;
    DataSource: TDataSource;
    Total: TUniEdit;
    UniLabel4: TUniLabel;
    Disponibles: TUniEdit;
    UniLabel5: TUniLabel;
    procedure ubVerCitasClick(Sender: TObject);
    procedure UniFormShow(Sender: TObject);
    procedure coloresEstado();
    procedure UniDBGrid1CellClick(Column: TUniDBGridColumn);
    procedure UniDBGrid1DrawColumnCell(Sender: TObject; ACol, ARow: Integer;
      Column: TUniDBGridColumn; Attribs: TUniCellAttribs);
    procedure UniSpeedButton1Click(Sender: TObject);
    procedure UniSpeedButton3Click(Sender: TObject);
    procedure fechaAsignacionChangeValue(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    usuario__: string;
    ordenlistado: string;
    color1, color2, color3, color4, color5: TColor;
  end;

function FCitaReporte: TFCitaReporte;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, Citas, OpcionesCita, VentanaReporte;

function FCitaReporte: TFCitaReporte;
begin
  Result := TFCitaReporte(UniMainModule.GetFormInstance(TFCitaReporte));
end;

procedure TFCitaReporte.coloresEstado;
begin
UniMainModule.Query.SQL.Clear;
  UniMainModule.Query.SQL.Text := 'select * from coloresestado';
  UniMainModule.Query.Open();

  UniMainModule.Query.First;
  UniEdit1.Text := (UniMainModule.Query.FieldByName('estado').AsString);
  color1 := StringToColor(UniMainModule.Query.FieldByName('color').AsString);
  UniEdit1.Color := color1;

  UniMainModule.Query.Next;
  UniEdit2.Text := (UniMainModule.Query.FieldByName('estado').AsString);
  color2 := StringToColor(UniMainModule.Query.FieldByName('color').AsString);
  UniEdit2.Color := color2;

  UniMainModule.Query.Next;
  UniEdit3.Text := (UniMainModule.Query.FieldByName('estado').AsString);
  color3 := StringToColor(UniMainModule.Query.FieldByName('color').AsString);
  UniEdit3.Color := color3;

  UniMainModule.Query.Next;
  UniEdit4.Text := (UniMainModule.Query.FieldByName('estado').AsString);
  color4 := StringToColor(UniMainModule.Query.FieldByName('color').AsString);
  UniEdit4.Color := color4;

  UniMainModule.Query.Next;
  UniEdit5.Text := (UniMainModule.Query.FieldByName('estado').AsString);
  color5 := StringToColor(UniMainModule.Query.FieldByName('color').AsString);
  UniEdit5.Color := color5;
end;

procedure TFCitaReporte.fechaAsignacionChangeValue(Sender: TObject);
begin
OnShow(Sender);
end;

procedure TFCitaReporte.ubVerCitasClick(Sender: TObject);
var
  key: Char;
begin
  key := #13;
  citasf.NumeroCita.Text := UniMainModule.QueryReporte.FieldByName
    ('consecutivo').AsString;
  citasf.NumeroCitaKeyPress(Sender, key);
  Close;

end;

procedure TFCitaReporte.UniDBGrid1CellClick(Column: TUniDBGridColumn);
begin
OpcionesCita.FOpcionesCita.ShowModal();
  OpcionesCita.FOpcionesCita.lblcita.Text :=
    UniMainModule.QueryReporte.FieldByName('consecutivo').AsString;
  OpcionesCita.FOpcionesCita.asistio := UniMainModule.QueryReporte.FieldByName
    ('asistio').AsString;
end;

procedure TFCitaReporte.UniDBGrid1DrawColumnCell(Sender: TObject; ACol,
  ARow: Integer; Column: TUniDBGridColumn; Attribs: TUniCellAttribs);
begin
if UniMainModule.QueryReporte.FieldByName('asistio').AsInteger = 1 then
  begin
    Attribs.Color := color1;
  end;

  if UniMainModule.QueryReporte.FieldByName('asistio').AsInteger = 2 then
  begin
    Attribs.Color := color2;
  end;

  if UniMainModule.QueryReporte.FieldByName('asistio').AsInteger = 3 then
  begin
    Attribs.Color := color3;
  end;

  if UniMainModule.QueryReporte.FieldByName('asistio').AsInteger = 4 then
  begin
    Attribs.Color := color4;
  end;

  if UniMainModule.QueryReporte.FieldByName('asistio').AsInteger = 5 then
  begin
    Attribs.Color := color5;
  end;
end;

procedure TFCitaReporte.UniFormShow(Sender: TObject);
  var
  keyx: Char;
begin
  keyx := #13;
  if (CodigoMedico.Text = '') then
  begin
    ShowMessage('Falta Codigo Medico.. Verifique');
    exit
  end;

  UniMainModule.QueryReporte.SQL.Clear;
  UniMainModule.QueryReporte.SQL.Add('select * from HorarioM where medico=''' +
    CodigoMedico.Text + ''' and Fecha=''' + FormatDateTime('yyyymmdd',
    fechaAsignacion.DateTime) + ''' ');
  UniMainModule.QueryReporte.Open;

  if (UniMainModule.QueryReporte.IsEmpty) then
  begin
    ShowMessage('Este Medico no Tiene Agenda Para  esta fecha.......');
  end
  else
  begin

    TotalAgenda.Text :=
      IntToStr(UniMainModule.QueryReporte.FieldByName('Turnos1').AsInteger +
      UniMainModule.QueryReporte.FieldByName('Turnos2').AsInteger);
    UniMainModule.QueryReporte.SQL.Clear;
    UniMainModule.QueryReporte.SQL.Add
      ('select c.Consecutivo, c.HoraCita as horas, u.NombreCompleto, u.CODEPS, c.Asistio, c.CodigoConsulta, e.Nombre, u.AfCodigo, '
      + 'tc.Descripcion, u.TELEFONO, c.Turno, DATEDIFF(yy, u.FECHA_NACIMIENTO, GETDATE()) AS Edad, c.AutorizacionC, c.Medico from Citas c, Usuarios '
      + 'u , TipoConsulta tc, epssi e,ripsg r where c.Medico=''' +
      CodigoMedico.Text + ''' and c.FechaCita = ''' + FormatDateTime('yyyymmdd',
      fechaAsignacion.DateTime) +
      ''' and e.codigoEps=r.Eps and r.Rips=c.Consecutivo and r.Identificacion=u.AfCodigo and u.AfCodigo = c.Paciente and '
      + 'tc.Codigo = c.CodigoConsulta and c.Asistio <> 2 order by c.Turno, c.HoraCitaX');

    // ShowMessage(query.SQL.Text);
    UniMainModule.QueryReporte.Open;
    Total.Text := IntToStr(UniMainModule.QueryReporte.RecordCount);
    Disponibles.Text := IntToStr(StrtoInt(TotalAgenda.Text) -
      UniMainModule.QueryReporte.RecordCount);

    coloresEstado();

end;
end;

procedure TFCitaReporte.UniSpeedButton1Click(Sender: TObject);
begin
MessageDlg('�Esta Seguro que Desea Cerrar Masivamente estos Rips?',
    mtConfirmation, mbYesNoCancel,
    procedure(Sender: TComponent; Ans: Integer)
    begin
      if Ans = mrYes then
      begin
        UniMainModule.Query.SQL.Clear;
        UniMainModule.Query.SQL.Add
          ('Update Citas set Asistio=1 where Consecutivo  IN (SELECT CONSECUTIVO FROM CITAS  WHERE Asistio=0 and medico='''
          + CodigoMedico.Text + ''' and FechaCita=''' +
          FormatDateTime('yyyymmdd', fechaAsignacion.DateTime) + ''') ');
        UniMainModule.Query.ExecSQL;

        UniMainModule.Query.SQL.Clear;
        UniMainModule.Query.SQL.Add
          ('Update RipsG set RipsEstado=''2'',Descripcio=''No_Asistieron - ' +
          UniMainModule.usuario + ' - ' + FormatDateTime('yyyymmdd hh:mm',
          now) + ''' where factura=0 and Rips IN (SELECT CONSECUTIVO FROM CITAS  WHERE Asistio=0 and medico='''
          + CodigoMedico.Text + ''' and FechaCita=''' +
          FormatDateTime('yyyymmdd', fechaAsignacion.DateTime) + ''')');
        UniMainModule.Query.ExecSQL;
        ShowMessage('RIPS CERRADOS Ok........');
        UniMainModule.Query.SQL.Clear;
        //fmedicocistas.OnShow(Sender);

      end;
    end);
  Abort;
end;

procedure TFCitaReporte.UniSpeedButton3Click(Sender: TObject);
var
  form1: TUniForm1;
begin
  form1 := TUniForm1.Create(UniApplication);
  form1.frxReport1.LoadFromFile(UniMainModule.ruta + '\CitasMedico.fr3');
  form1.frxReport1.Variables.Variables['Medico'] :=
    '''' + CodigoMedico.Text + '''';
  form1.frxReport1.Variables.Variables['Fecha1'] :=
    '''' + FormatDateTime('yyyy-mm-dd', fechaAsignacion.DateTime) + '''';
  form1.frxReport1.Variables.Variables['Fecha2'] :=
    '''' + FormatDateTime('yyyy-mm-dd', fechaAsignacion.DateTime) + '''';

  form1.frxReport1.Variables.Variables['UsuarioI'] :=
    '''' + UniMainModule.usuario + '''';
  exit;
end;

end.
