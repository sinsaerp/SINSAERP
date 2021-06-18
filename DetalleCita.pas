unit DetalleCita;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniButton, uniBitBtn, uniSpeedButton,
  uniRadioGroup, uniEdit, uniPanel, uniLabel, Vcl.Imaging.pngimage, uniImage,
  uniGUIBaseClasses, uniToolBar, uniMemo;

type
  TUniForm1 = class(TUniForm)
    UniToolBar1: TUniToolBar;
    UniImage1: TUniImage;
    UniLabel1: TUniLabel;
    UniPanel1: TUniPanel;
    UniLabel2: TUniLabel;
    Codigo: TUniEdit;
    Nombre: TUniEdit;
    UniLabel3: TUniLabel;
    Estado: TUniRadioGroup;
    ubNuevo: TUniSpeedButton;
    ubActualizar: TUniSpeedButton;
    Direccion: TUniEdit;
    Telefono: TUniEdit;
    UniLabel5: TUniLabel;
    UniLabel6: TUniLabel;
    UniLabel7: TUniLabel;
    UniLabel8: TUniLabel;
    Usuario: TUniEdit;
    UniLabel9: TUniLabel;
    Paciente: TUniEdit;
    UniLabel4: TUniLabel;
    UniLabel10: TUniLabel;
    UniEdit1: TUniEdit;
    UniLabel11: TUniLabel;
    UniEdit2: TUniEdit;
    UniLabel12: TUniLabel;
    UniEdit3: TUniEdit;
    UniLabel13: TUniLabel;
    Observaciones: TUniMemo;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function UniForm1: TUniForm1;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication;

function UniForm1: TUniForm1;
begin
  Result := TUniForm1(UniMainModule.GetFormInstance(TUniForm1));
end;

end.
