unit MainModule;

interface

uses
  uniGUIMainModule, SysUtils, Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MSSQL,
  FireDAC.Phys.MSSQLDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Data.Win.ADODB, Vcl.Imaging.jpeg;

type
  TUniMainModule = class(TUniGUIMainModule)
    ADOConnection1: TADOConnection;
    FDConnection: TFDConnection;
    Query: TFDQuery;
    QueryGrid: TFDQuery;
    QueryReporte: TFDQuery;
    QueryBusq: TFDQuery;
  private
    { Private declarations }
  public
    { Public declarations }
    i: Integer;
   usuario, identificacion,  NombreCompleto, codigoM, ruta: string;
   function GetFieldToJPG(DataSet: TFDQuery; FieldName: String): TJPEGImage;
   function boolstr(valor: boolean; tipo_r: integer = 0): string;


  end;

function UniMainModule: TUniMainModule;


implementation

{$R *.dfm}

uses
  UniGUIVars, ServerModule, uniGUIApplication;

function UniMainModule: TUniMainModule;
begin
  Result := TUniMainModule(UniApplication.UniMainModule)
end;





{ TUniMainModule }

function TUniMainModule.boolstr(valor: boolean; tipo_r: integer): string;
begin
  if tipo_r = 0 then
  begin
    Result := '''false''';
    if valor then
      Result := '''true''';
  end
  else
  begin
    Result := 'No';
    if valor then
      Result := 'S�';
  end;
end;

function TUniMainModule.GetFieldToJPG(DataSet: TFDQuery;
  FieldName: String): TJPEGImage;
var
  Stream: TMemoryStream;
begin
  Stream := TMemoryStream.Create;
  Result := TJPEGImage.Create;

  with DataSet do
  begin
    try
      TBlobField(FieldByName(FieldName)).SaveToStream(Stream);
      Stream.Position := 0;
      if (Stream.Size > 0) then
        Result.LoadFromStream(Stream)
      else
        Result := nil;
    finally
      Stream.Free;
      Stream.Clear;
    end;
  end;
end;



initialization
  RegisterMainModuleClass(TUniMainModule);
end.
