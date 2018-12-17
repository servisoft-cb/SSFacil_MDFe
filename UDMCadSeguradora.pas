unit UDMCadSeguradora;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr, LogTypes;

type
  TDMCadSeguradora = class(TDataModule)
    sdsSeguradora: TSQLDataSet;
    dspSeguradora: TDataSetProvider;
    cdsSeguradora: TClientDataSet;
    dsSeguradora: TDataSource;
    sdsSeguradoraID: TIntegerField;
    sdsSeguradoraNOME: TStringField;
    sdsSeguradoraCNPJ: TStringField;
    sdsSeguradoraINATIVO: TStringField;
    cdsSeguradoraID: TIntegerField;
    cdsSeguradoraNOME: TStringField;
    cdsSeguradoraCNPJ: TStringField;
    cdsSeguradoraINATIVO: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure dspSeguradoraUpdateError(Sender: TObject;
      DataSet: TCustomClientDataSet; E: EUpdateError;
      UpdateKind: TUpdateKind; var Response: TResolverResponse);
  private
    { Private declarations }
    procedure DoLogAdditionalValues(ATableName: string; var AValues: TArrayLogData; var UserName: string);
  public
    { Public declarations }
    vMsgSeguradora: String;
    ctCommand: String;

    procedure prc_Localizar(ID: Integer); //-1 = Inclusão
    procedure prc_Inserir;
    procedure prc_Gravar;
    procedure prc_Excluir;
  end;

var
  DMCadSeguradora: TDMCadSeguradora;

implementation

uses DmdDatabase, LogProvider, uUtilPadrao;

{$R *.dfm}

{ TDMCadPais }

procedure TDMCadSeguradora.prc_Inserir;
var
  vAux: Integer;
begin
  if not cdsSeguradora.Active then
    prc_Localizar(-1);
  vAux := dmDatabase.ProximaSequencia('SEGURADORA',0);

  cdsSeguradora.Insert;
  cdsSeguradoraID.AsInteger := vAux;
end;

procedure TDMCadSeguradora.prc_Excluir;
begin
  if not(cdsSeguradora.Active) or (cdsSeguradora.IsEmpty) then
    exit;
  cdsSeguradora.Delete;
  cdsSeguradora.ApplyUpdates(0);
end;

procedure TDMCadSeguradora.prc_Gravar;
begin
  vMsgSeguradora := '';
  if trim(cdsSeguradoraNOME.AsString) = '' then
    vMsgSeguradora := 'Nome não informado!';
  if vMsgSeguradora <> '' then
    exit;

  cdsSeguradora.Post;
  cdsSeguradora.ApplyUpdates(0);
end;

procedure TDMCadSeguradora.prc_Localizar(ID: Integer);
begin
  cdsSeguradora.Close;
  sdsSeguradora.CommandText := ctCommand;
  if ID <> 0 then
    sdsSeguradora.CommandText := sdsSeguradora.CommandText +
                            ' WHERE ID = ' + IntToStr(ID);
  cdsSeguradora.Open;
end;

procedure TDMCadSeguradora.DataModuleCreate(Sender: TObject);
var
  i, x: Integer;
  vIndices: string;
  aIndices: array of string;
begin
  ctCommand := sdsSeguradora.CommandText;
  LogProviderList.OnAdditionalValues := DoLogAdditionalValues;
  for i := 0 to (Self.ComponentCount - 1) do
  begin
    if (Self.Components[i] is TClientDataSet) then
    begin
      SetLength(aIndices, 0);
      vIndices := TClientDataSet(Components[i]).IndexFieldNames;
      while (vIndices <> EmptyStr) do
      begin
        SetLength(aIndices, Length(aIndices) + 1);
        x := Pos(';', vIndices);
        if (x = 0) then
        begin
          aIndices[Length(aIndices) - 1] := vIndices;
          vIndices := EmptyStr;
        end
        else
        begin
          aIndices[Length(aIndices) - 1] := Copy(vIndices, 1, x - 1);
          vIndices := Copy(vIndices, x + 1, MaxInt);
        end;
      end;
      LogProviderList.AddProvider(TClientDataSet(Self.Components[i]), TClientDataSet(Self.Components[i]).Name, aIndices);
    end;
  end;
  //***********************
end;

procedure TDMCadSeguradora.DoLogAdditionalValues(ATableName: string;
  var AValues: TArrayLogData; var UserName: string);
begin
  UserName := vUsuario;
end;

procedure TDMCadSeguradora.dspSeguradoraUpdateError(
  Sender: TObject; DataSet: TCustomClientDataSet; E: EUpdateError;
  UpdateKind: TUpdateKind; var Response: TResolverResponse);
begin
  dmDatabase.prc_UpdateError(DataSet.Name,UpdateKind,E);
end;

end.
