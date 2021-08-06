unit AgendaMes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, Vcl.Imaging.pngimage, uniImage, uniToolBar,
  uniButton, uniBitBtn, uniSpeedButton, uniEdit, uniLabel, uniBasicGrid,
  uniDBGrid, uniCalendar, uniGUIBaseClasses, uniPanel, Data.DB;

type
  TFCalendarioAgenda = class(TUniForm)
    UniPanel1: TUniPanel;
    Fecha: TUniCalendar;
    UniDBGrid1: TUniDBGrid;
    UniLabel1: TUniLabel;
    lblTotal: TUniLabel;
    UniLabel2: TUniLabel;
    NombreMed: TUniEdit;
    UniSpeedButton1: TUniSpeedButton;
    UniToolBar1: TUniToolBar;
    UniLabel3: TUniLabel;
    UniImage1: TUniImage;
    CodMed: TUniEdit;
    DataSource1: TDataSource;
    procedure UniFormShow(Sender: TObject);
    procedure FechaClick(Sender: TObject);
    procedure UniSpeedButton1Click(Sender: TObject);
    procedure ShowCallback(Sender: TComponent; Asresult: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function FCalendarioAgenda: TFCalendarioAgenda;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, Busqueda;

function FCalendarioAgenda: TFCalendarioAgenda;
begin
  Result := TFCalendarioAgenda(UniMainModule.GetFormInstance
    (TFCalendarioAgenda));
end;

procedure TFCalendarioAgenda.FechaClick(Sender: TObject);
begin
  UniMainModule.Query.SQL.Clear;
  UniMainModule.Query.SQL.Text :=
    'select top(10) cs.Rips, u.NombreCompleto, convert(varchar(5), cs.hora, 108) as hora, ep.Nombre from CitasServicios cs inner join Usuarios u on u.AfCodigo=cs.Paciente inner join Medicos m on m.Codigo=cs.Medico '
    + 'inner join RipsG r on r.Rips=cs.Rips inner join EPSSI ep on ep.codigoEps=r.Eps where cs.medico=:Medico and cs.fecha=:Fecha order by cs.hora asc';

  UniMainModule.Query.ParamByName('Medico').Value := CodMed.Text;
  UniMainModule.Query.ParamByName('Fecha').Value :=
    FormatDateTime('yyyymmdd', Fecha.Date);
  UniMainModule.Query.Open;
  if UniMainModule.Query.IsEmpty then
  begin
    lblTotal.Text :='0';
    ShowMessage('No existe registro para el médico y fecha seleccionada');
  end
  else
  begin
  lblTotal.Text := UniMainModule.Query.RecordCount.ToString;
  end;

end;

procedure TFCalendarioAgenda.ShowCallback(Sender: TComponent;
  Asresult: Integer);
begin
if not(UniMainModule.Query.IsEmpty) and (UniMainModule.i = 25) then
  begin
    NombreMed.Text := (UniMainModule.Query.FieldByName('Descripcion').AsString);
    CodMed.Text := (UniMainModule.Query.FieldByName('Codigo').AsString);
  end;
end;

procedure TFCalendarioAgenda.UniFormShow(Sender: TObject);
begin

  UniMainModule.Query.SQL.Clear;
  UniMainModule.Query.SQL.Text :=
    'select top(10) cs.Rips, u.NombreCompleto, convert(varchar(5), cs.hora, 108) as hora, ep.Nombre from CitasServicios cs inner join Usuarios u on u.AfCodigo=cs.Paciente inner join Medicos m on m.Codigo=cs.Medico '
    + 'inner join RipsG r on r.Rips=cs.Rips inner join EPSSI ep on ep.codigoEps=r.Eps where cs.medico=:Medico and cs.fecha=:Fecha order by cs.hora asc';

  UniMainModule.Query.ParamByName('Medico').Value := CodMed.Text;
  UniMainModule.Query.ParamByName('Fecha').Value :=
    FormatDateTime('yyyymmdd', Fecha.Date);
  UniMainModule.Query.Open;
  lblTotal.Text := UniMainModule.Query.RecordCount.ToString;
end;

procedure TFCalendarioAgenda.UniSpeedButton1Click(Sender: TObject);
begin
  UniMainModule.i := 25;
  busquedaf.tipopres:='0';
  busquedaf.ShowModal(ShowCallback);
end;

end.
