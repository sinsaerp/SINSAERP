unit HorasAsignadasWeb;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniLabel, uniToolBar, uniGUIBaseClasses,
  uniBasicGrid, uniDBGrid, Data.DB, uniButton, uniBitBtn, uniSpeedButton,
  Vcl.Imaging.pngimage, uniImage, System.JSON, REST.Types, REST.Client,
  Data.Bind.Components, Data.Bind.ObjectScope;

type
  THorasWebAsignadas = class(TUniForm)
    DataSource1: TDataSource;
    UniDBGrid1: TUniDBGrid;
    UniToolBar1: TUniToolBar;
    UniImage1: TUniImage;
    UniLabel1: TUniLabel;
    procedure UniDBGrid1Exit(Sender: TObject);
    procedure UniFormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function HorasWebAsignadas: THorasWebAsignadas;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, Sincronizar, Parametros;

function HorasWebAsignadas: THorasWebAsignadas;
begin
  Result := THorasWebAsignadas(UniMainModule.GetFormInstance
    (THorasWebAsignadas));
end;

procedure THorasWebAsignadas.UniDBGrid1Exit(Sender: TObject);
begin
  UniMainModule.Query.Close;
end;

procedure THorasWebAsignadas.UniFormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  UniMainModule.Query.Close;
end;

end.
