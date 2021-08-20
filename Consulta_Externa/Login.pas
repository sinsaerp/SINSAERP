unit Login;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniButton, uniBitBtn,
  uniSpeedButton, uniEdit, uniLabel, Vcl.Imaging.pngimage, uniImage,
  uniGUIBaseClasses, uniPanel;

type
  TFLogin = class(TUniLoginForm)
    UniPanel1: TUniPanel;
    UniImage1: TUniImage;
    UniLabel1: TUniLabel;
    ueUsuario: TUniEdit;
    UniPanel2: TUniPanel;
    UniLabel2: TUniLabel;
    UniLabel3: TUniLabel;
    ueClave: TUniEdit;
    UniPanel3: TUniPanel;
    ubIngresar: TUniSpeedButton;
    UniSpeedButton1: TUniSpeedButton;
    procedure ubIngresarClick(Sender: TObject);
    procedure rutaReporte();
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function FLogin: TFLogin;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication;

function FLogin: TFLogin;
begin
  Result := TFLogin(UniMainModule.GetFormInstance(TFLogin));
end;

procedure TFLogin.rutaReporte;
begin
UniMainModule.Query.SQL.Clear;
  UniMainModule.Query.SQL.Add('select * from entidades where codigoe=''1'' ');
  UniMainModule.Query.Open();
  if not UniMainModule.Query.IsEmpty then
  begin
    UniMainModule.ruta:= UniMainModule.Query.FieldByName('reporte').AsString;
  end;
end;

procedure TFLogin.ubIngresarClick(Sender: TObject);
var
usuario, clave : string;
begin
    usuario:=ueUsuario.Text;
    clave:=ueClave.Text;
    if usuario ='' then
    begin
      ShowMessage('Campo usuario sin valor');
      exit;
    end;
    if clave ='' then
    begin
      ShowMessage('Campo Clave sin valor');
      exit;
    end;
    UniMainModule.Query.Close;
    UniMainModule.Query.SQL.Text:= 'SELECT * FROM medicos where usuario=:Usuario and clave=:Clave';
    UniMainModule.Query.Params.ParamByName('Usuario').Value:=usuario;
    UniMainModule.Query.Params.ParamByName('Clave').Value:=clave;
    UniMainModule.Query.Open;


    if UniMainModule.Query.RecordCount >0 then
    begin
      usuario:=UniMainModule.Query.ParamByName('usuario').AsString;
      UniMainModule.citador:=UniMainModule.Query.FieldByName('codigo').AsString;
      UniMainModule.usuario:=UniMainModule.Query.FieldByName('usuario').AsString;
      UniMainModule.NombreCompleto:=UniMainModule.Query.FieldByName('nombre').AsString;
      ModalResult:=mrOk;
      rutaReporte();
      Close;
    end
    else
    begin
      ShowMessage('No Existe usuario registrado en el sistema');
      exit;
    end;
end;

initialization
  RegisterAppFormClass(TFLogin);

end.
