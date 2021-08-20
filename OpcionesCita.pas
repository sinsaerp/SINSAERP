unit OpcionesCita;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniGUIBaseClasses, uniPanel, uniButton, uniBitBtn,
  uniSpeedButton, uniLabel;

type
  TFOpcionesCita = class(TUniForm)
    UniPanel1: TUniPanel;
    UniLabel1: TUniLabel;
    ubNoAsistio: TUniSpeedButton;
    UniSpeedButton2: TUniSpeedButton;
    ubDilatando: TUniSpeedButton;
    UniLabel2: TUniLabel;
    lblcita: TUniLabel;
    UniSpeedButton1: TUniSpeedButton;
    procedure ubNoAsistioClick(Sender: TObject);
    procedure UniSpeedButton2Click(Sender: TObject);
    procedure ubDilatandoClick(Sender: TObject);
    procedure UniSpeedButton4Click(Sender: TObject);
    procedure UniSpeedButton1Click(Sender: TObject);
    procedure PromptCallBack(Sender: TComponent; AResult: Integer;
      AText: string);
    procedure UniSpeedButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    asistio: string;
    value: string;
  end;

function FOpcionesCita: TFOpcionesCita;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, ReporteCitas, Citas;

function FOpcionesCita: TFOpcionesCita;
begin
  Result := TFOpcionesCita(UniMainModule.GetFormInstance(TFOpcionesCita));
end;

procedure TFOpcionesCita.PromptCallBack(Sender: TComponent; AResult: Integer;
  AText: string);
begin
  if AResult = mrOK then
  begin
    value := (AText);
    if value<>'' then
    begin
           if asistio = '5' then
  begin
    Showmessage
      ('No puede Cambiar este turno.......El paciente ya esta atendido consulte con su administrador.');
    exit;
  end;

  MessageDlg('�Esta Seguro que Desea Modificar este Rips?', mtConfirmation,
    mbYesNoCancel,
    procedure(Sender: TComponent; Ans: Integer)
    begin
      if Ans = mrYes then
      begin
        if strtoint(value) <= strtoint(fmedicocistas.Total.Text) then
        begin
          UniMainModule.Query.SQL.Clear;

          if (strtoint(value) = 0) then
            UniMainModule.Query.SQL.Add('Update Citas set DetalleEstado=''' +
              UniMainModule.usuario + ' - ' + DateTimeToStr(now) +
              ''', turno=0,asistio=0 where Consecutivo=' + lblcita.Text + '')
          else
            UniMainModule.Query.SQL.Add('Update Citas set DetalleEstado=''' +
              UniMainModule.usuario + ' - ' + DateTimeToStr(now) + ''', turno='
              + value + ',asistio=4 where Consecutivo=' + lblcita.Text + '');

          UniMainModule.Query.ExecSQL;
          Showmessage('Datos Actualizados...');
          Close;

        end
        else
          Showmessage
            ('Turno superior a los asignados..verifique..$%&$%&$%&$$%&.');
        fmedicocistas.OnShow(Sender);
        Close;
      end;
    end);
  Abort;
    end;
  end;
end;

procedure TFOpcionesCita.ubDilatandoClick(Sender: TObject);
begin
  if asistio = '5' then
  begin
    Showmessage
      ('No puede Cambiar este turno.......El paciente ya esta atendido consulte con su administrador.');
    exit;
  end;

  UniMainModule.Query.SQL.Clear;
  UniMainModule.Query.SQL.Add('Update Citas set DetalleEstado = ''' +
    UniMainModule.usuario + ' - ' + DateTimeToStr(now) +
    ''', Asistio = 3 where Consecutivo = ' + lblcita.Text + '');
  UniMainModule.Query.ExecSQL;
  Showmessage('Datos Actualizados...');
  fmedicocistas.OnShow(Sender);
  Close;
end;

procedure TFOpcionesCita.ubNoAsistioClick(Sender: TObject);
begin
  if asistio = '5' then
  begin
    Showmessage
      ('No puede Cambiar este turno.......El paciente ya esta atendido consulte con su administrador.');
    exit;
  end;

  UniMainModule.Query.SQL.Clear;
  UniMainModule.Query.SQL.Add('Update Citas set DetalleEstado=''' +
    UniMainModule.usuario + ' - ' + DateTimeToStr(now) +
    ''', Asistio=1 where Consecutivo=' + lblcita.Text + '');
  UniMainModule.Query.ExecSQL;
  // mostrar;
  Showmessage('Datos Actualizados...');
  fmedicocistas.OnShow(Sender);
  Close;
end;

procedure TFOpcionesCita.UniSpeedButton1Click(Sender: TObject);
var

  keyx: Char;

begin
  // Keep asking the user for their town

  Prompt('Cambiar Turno', '', mtInformation, mbOKCancel, PromptCallBack);





end;

procedure TFOpcionesCita.UniSpeedButton2Click(Sender: TObject);
VAR
  TURNO: Integer;
begin
  { if Fprincipal.Query.FieldByName('AutorizacionC').AsString = '' then
    begin
    Showmessage('Este Paciente falta Autorizacion... Verifique.');
    exit;
    end; }

  if asistio = '5' then
  begin
    Showmessage
      ('No puede Cambiar este turno.......El paciente ya esta atendido consulte con su administrador.');
    exit;
  end;
  UniMainModule.Query.SQL.Clear;
  UniMainModule.Query.SQL.Add
    ('select isnull(max(turno+1), 1)as turnomax from citas where medico = ''' +
    fmedicocistas.CodigoMedico.Text + ''' and FechaCita = ''' +
    FormatDateTime('yyyymmdd', fmedicocistas.FechaAsignacion.DateTime) + '''');
  UniMainModule.Query.Open;
  // ShowMessage(INTTOSTR(Fprincipal.QEliminar.FieldByName('TURNOMAX').AsInteger));

  TURNO := UniMainModule.Query.FieldByName('TURNOMAX').AsInteger;

  UniMainModule.Query.SQL.Clear;
  UniMainModule.Query.SQL.Add('Update Citas set DetalleEstado=''' +
    UniMainModule.usuario + ' - ' + DateTimeToStr(now) +
    ''', Asistio = 4, TURNO = ' + IntToStr(TURNO) + ' where Consecutivo = ' +
    lblcita.Text + '');
  UniMainModule.Query.ExecSQL;
  // fmedicocistas.FechaAsignacionChange(Sender);
  Showmessage('Datos Actualizados...');
  fmedicocistas.OnShow(Sender);
  Close;

end;

procedure TFOpcionesCita.UniSpeedButton3Click(Sender: TObject);
var key: Char;
begin
  key:=#13;
  citasf.NumeroCitaKeyPress(Sender, key);
  close;
  fmedicocistas.Close;
end;

procedure TFOpcionesCita.UniSpeedButton4Click(Sender: TObject);
begin
  if asistio = '5' then
  begin
    Showmessage
      ('No puede Cambiar este turno.......El paciente ya esta atendido consulte con su administrador.');
    exit;
  end;

  MessageDlg('�Esta Seguro que Desea CAMBIAR EL ESTADO A ATENDIDO ....?',
    mtConfirmation, mbYesNoCancel,
    procedure(Sender: TComponent; Ans: Integer)
    begin
      if Ans = mrYes then
      begin
        UniMainModule.Query.SQL.Clear;
        UniMainModule.Query.SQL.Add('Update Citas set DetalleEstado=''' +
          UniMainModule.usuario + ' - ' + DateTimeToStr(now) +
          ''',Asistio=5 where Consecutivo=' + lblcita.Text + '');
        UniMainModule.Query.ExecSQL;
        Showmessage('Datos Actualizados...');
        fmedicocistas.OnShow(Sender);
        Close;
      end;
    end);
  Abort;

end;

end.
