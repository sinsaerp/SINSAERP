unit Especialidades;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniLabel, Vcl.Imaging.pngimage, uniImage,
  uniGUIBaseClasses, uniToolBar, uniRadioGroup, uniButton, uniBitBtn,
  uniSpeedButton, uniEdit, uniPanel;

type
  TespecialidadesForm = class(TUniForm)
    UniToolBar1: TUniToolBar;
    UniImage1: TUniImage;
    UniLabel1: TUniLabel;
    UniPanel1: TUniPanel;
    UniLabel2: TUniLabel;
    Codigo: TUniEdit;
    ubBuscar: TUniSpeedButton;
    Nombre: TUniEdit;
    UniLabel3: TUniLabel;
    Estado: TUniRadioGroup;
    ubNuevo: TUniSpeedButton;
    ubActualizar: TUniSpeedButton;
    ubCancelar: TUniSpeedButton;
    procedure ubBuscarClick(Sender: TObject);
    procedure Limpiar();
    procedure ShowCallback(Sender: TComponent; Asresult: Integer);
    procedure ubActualizarClick(Sender: TObject);
    procedure ubNuevoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function especialidadesForm: TespecialidadesForm;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, Busqueda;

function especialidadesForm: TespecialidadesForm;
begin
  Result := TespecialidadesForm
    (UniMainModule.GetFormInstance(TespecialidadesForm));
end;

procedure TespecialidadesForm.Limpiar;
begin
  Codigo.Text := '';
  Nombre.Text := '';
  Estado.ItemIndex := 0;
end;

procedure TespecialidadesForm.ShowCallback(Sender: TComponent;
  Asresult: Integer);
begin
  if not(UniMainModule.Query.IsEmpty) and (UniMainModule.i = 9) then
  begin
    Codigo.Text := (UniMainModule.Query.FieldByName('Codigo').AsString);
    Nombre.Text := UniMainModule.Query.FieldByName('descripcion').AsString;
    Estado.ItemIndex := UniMainModule.Query.FieldByName('web').AsInteger;
  end;
end;

procedure TespecialidadesForm.ubActualizarClick(Sender: TObject);
var
  consulta: string;
begin
  if Nombre.Text = '' then
  begin
    ShowMessage('El campo nombre se encuentra vacio');
    Exit
  end;
  UniMainModule.Query.SQL.Clear;
  consulta := 'SELECT * from especialidad where codigo=:Codigo';
  UniMainModule.Query.SQL.Text := consulta;
  UniMainModule.Query.Params.ParamByName('Codigo').Value := (Codigo.Text);
  UniMainModule.Query.Open;
  if (UniMainModule.Query.IsEmpty) then
  begin
    // Insertar
    consulta :=
      'INSERT INTO especialidad (especialidad, web) VALUES(:Nombre, :Web)';
    UniMainModule.Query.SQL.Text := consulta;
    UniMainModule.Query.Params.ParamByName('Nombre').Value := Nombre.Text;
    UniMainModule.Query.Params.ParamByName('Web').Value := Estado.ItemIndex;
    UniMainModule.Query.ExecSQL;
    Limpiar();
    ShowMessage('Datos registrados exitosamente');
  end
  else
  begin
    // Actualizar
    consulta :=
      'UPDATE especialidad SET especialidad=:Nombre, web=:Web WHERE codigo=:Codigo';
    UniMainModule.Query.SQL.Text := consulta;
    UniMainModule.Query.Params.ParamByName('Nombre').Value := Nombre.Text;
    UniMainModule.Query.Params.ParamByName('Web').Value := Estado.ItemIndex;
    UniMainModule.Query.Params.ParamByName('Codigo').Value := (Codigo.Text);
    UniMainModule.Query.ExecSQL;
    Limpiar();
    ShowMessage('Datos Actualizados exitosamente');
  end;
end;

procedure TespecialidadesForm.ubBuscarClick(Sender: TObject);
begin
  UniMainModule.i := 9;
  busquedaf.ShowModal(ShowCallback);

end;

procedure TespecialidadesForm.ubNuevoClick(Sender: TObject);
begin
  Limpiar();
end;

end.
