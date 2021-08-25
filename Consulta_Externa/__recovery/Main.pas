unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniDateTimePicker, uniCheckBox,
  uniBasicGrid, uniDBGrid, uniButton, uniBitBtn, uniSpeedButton, uniEdit,
  uniMemo, uniMultiItem, uniComboBox, uniLabel, uniPanel, uniPageControl,
  uniGUIBaseClasses, uniImage, Vcl.Imaging.jpeg, uniImageList;

type
  TMainForm = class(TUniForm)
    UniPageControl1: TUniPageControl;
    UniTabSheet1: TUniTabSheet;
    UniPanel1: TUniPanel;
    motivo: TUniMemo;
    UniLabel5: TUniLabel;
    enfermedadActual: TUniMemo;
    UniLabel6: TUniLabel;
    UniLabel7: TUniLabel;
    sistolica: TUniEdit;
    UniLabel8: TUniLabel;
    diastolica: TUniEdit;
    UniLabel9: TUniLabel;
    fr: TUniEdit;
    UniLabel10: TUniLabel;
    fc: TUniEdit;
    UniLabel11: TUniLabel;
    temp: TUniEdit;
    UniLabel12: TUniLabel;
    peso: TUniEdit;
    UniLabel13: TUniLabel;
    cintura: TUniEdit;
    UniLabel14: TUniLabel;
    talla: TUniEdit;
    UniLabel15: TUniLabel;
    imc: TUniEdit;
    UniLabel16: TUniLabel;
    dxNutricional: TUniEdit;
    UniLabel17: TUniLabel;
    detalleExamen: TUniMemo;
    UniLabel18: TUniLabel;
    descipciondxp: TUniEdit;
    UniSpeedButton1: TUniSpeedButton;
    UniLabel19: TUniLabel;
    revisionSistemas: TUniMemo;
    Btnguardar: TUniSpeedButton;
    BtnOrdenesMedicas: TUniSpeedButton;
    UniLabel42: TUniLabel;
    UniLabel43: TUniLabel;
    nombreaom: TUniEdit;
    UniLabel44: TUniLabel;
    UniLabel45: TUniLabel;
    UniComboBox2: TUniComboBox;
    UniLabel46: TUniLabel;
    planConducta: TUniMemo;
    UniLabel47: TUniLabel;
    finalidad: TUniComboBox;
    UniLabel48: TUniLabel;
    causaExterna: TUniComboBox;
    UniLabel49: TUniLabel;
    impresionDiagnostica: TUniComboBox;
    dxp: TUniEdit;
    UniPanel2: TUniPanel;
    UniDBGrid1: TUniDBGrid;
    UniLabel20: TUniLabel;
    UniLabel21: TUniLabel;
    UniMemo8: TUniMemo;
    UniLabel22: TUniLabel;
    UniCheckBox1: TUniCheckBox;
    UniSpeedButton3: TUniSpeedButton;
    UniSpeedButton4: TUniSpeedButton;
    UniSpeedButton5: TUniSpeedButton;
    UniPanel3: TUniPanel;
    UniLabel23: TUniLabel;
    identificacionMedico: TUniLabel;
    UniLabel25: TUniLabel;
    nombreMedico: TUniLabel;
    UniLabel27: TUniLabel;
    lblfechanacpac: TUniLabel;
    UniLabel29: TUniLabel;
    lblidenpac: TUniLabel;
    UniLabel31: TUniLabel;
    lblnombrepac: TUniLabel;
    UniLabel33: TUniLabel;
    lblsexopac: TUniLabel;
    UniLabel35: TUniLabel;
    lbledadpac: TUniLabel;
    UniLabel37: TUniLabel;
    lblmuncipiopac: TUniLabel;
    UniLabel39: TUniLabel;
    lblepspac: TUniLabel;
    UniLabel41: TUniLabel;
    fechaAsignacion: TUniDateTimePicker;
    UniSpeedButton6: TUniSpeedButton;
    imagenPerfil: TUniImage;
    UniMemo5: TUniMemo;
    UniLabel24: TUniLabel;
    lblContrato: TUniLabel;
    masdx: TUniMemo;
    UniLabel1: TUniLabel;
    lblRips: TUniLabel;
    UniNumberEdit1: TUniNumberEdit;
    UniDateTimePicker1: TUniDateTimePicker;
    HoraAsignacion: TUniDateTimePicker;
    UniLabel2: TUniLabel;
    UniMemo1: TUniMemo;
    UniLabel3: TUniLabel;
    UniMemo2: TUniMemo;
    UniLabel4: TUniLabel;
    UniMemo4: TUniMemo;
    UniLabel26: TUniLabel;
    UniMemo6: TUniMemo;
    UniLabel28: TUniLabel;
    UniCheckBox2: TUniCheckBox;
    UniCheckBox3: TUniCheckBox;
    UniCheckBox4: TUniCheckBox;
    UniCheckBox5: TUniCheckBox;
    UniCheckBox6: TUniCheckBox;
    UniCheckBox7: TUniCheckBox;
    procedure UniSpeedButton6Click(Sender: TObject);
    procedure UniFormShow(Sender: TObject);
     procedure ShowCallback(Sender: TComponent; Asresult: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function MainForm: TMainForm;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication, MedicosCita;

function MainForm: TMainForm;
begin
  Result := TMainForm(UniMainModule.GetFormInstance(TMainForm));
end;

procedure TMainForm.ShowCallback(Sender: TComponent; Asresult: Integer);
begin
if not UniMainModule.QueryGrid.IsEmpty then
begin
  lblnombrepac.Text:=UniMainModule.QueryGrid.FieldByName('nombrecompleto').AsString;
  lblidenpac.Text:=UniMainModule.QueryGrid.FieldByName('afcodigo').AsString;
  lblfechanacpac.Text:=UniMainModule.QueryGrid.FieldByName('fecha_nacimiento').AsString;
  lbledadpac.Text:=UniMainModule.QueryGrid.FieldByName('e1').AsString;
  lblsexopac.Text:=UniMainModule.QueryGrid.FieldByName('sexo').AsString;
  lblmuncipiopac.Text:=UniMainModule.QueryGrid.FieldByName('municipio').AsString;
  lblepspac.Text:=UniMainModule.QueryGrid.FieldByName('nombre_eps').AsString;
  lblRips.Text:=UniMainModule.QueryGrid.FieldByName('consecutivo').AsString;
  lblContrato.Text:=UniMainModule.QueryGrid.FieldByName('tcontrato').AsString;
  UniPanel1.Visible:=true;
  UniPanel2.Visible:=true;
end
else
begin
  ShowMessage('Sin resultado');
end;
end;

procedure TMainForm.UniFormShow(Sender: TObject);
begin
identificacionMedico.Text:=UniMainModule.identificacion;
nombreMedico.Text:=UniMainModule.NombreCompleto;
if not UniMainModule.Query.FieldByName('foto').AsString.IsEmpty then
begin
imagenPerfil.Picture.Assign(UniMainModule.GetFieldToJPG(UniMainModule.Query, 'foto'));
end;
fechaAsignacion.DateTime:=Now;
UniMainModule.Query.Close;
UniPanel1.Visible:=false;
UniPanel2.Visible:=false;

end;

procedure TMainForm.UniSpeedButton6Click(Sender: TObject);
begin
FMedicosCita.fechaAsignacion.DateTime:=fechaAsignacion.DateTime;
FMedicosCita.ShowModal(ShowCallback);

end;

initialization
  RegisterAppFormClass(TMainForm);

end.
