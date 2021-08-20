unit MainModule;

interface

uses
  uniGUIMainModule, SysUtils, Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MSSQL,
  FireDAC.Phys.MSSQLDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Data.Win.ADODB, frxClass, frxExportBaseDialog,
  frxExportPDF, frxDBSet;

type
  TUniMainModule = class(TUniGUIMainModule)
    FDConnection: TFDConnection;
    Query: TFDQuery;
    QueryAgenda: TFDQuery;
    QueryGrid: TFDQuery;
    QueryWeb: TFDQuery;
    QueryReporte: TFDQuery;
    ADOConnection1: TADOConnection;
  private
    { Private declarations }
  public
   i: Integer;
   usuario, NombreCompleto, TipoC, citador, ruta: string;
   function rutaReporte(): string;

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
function TUniMainModule.rutaReporte: string;
begin
  Query.SQL.Clear;
  Query.SQL.Add('select * from entidades where codigoe=''1'' ');
  Query.Open();
  if not Query.IsEmpty then
  begin
    Result := Query.FieldByName('reporte').AsString;
  end;
end;

initialization
  RegisterMainModuleClass(TUniMainModule);
end.
