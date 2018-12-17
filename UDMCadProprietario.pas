unit UDMCadProprietario;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr, LogTypes;

type
  TDMCadProprietario = class(TDataModule)
    sdsUF: TSQLDataSet;
    dspUF: TDataSetProvider;
    cdsUF: TClientDataSet;
    dsUF: TDataSource;
    cdsUFUF: TStringField;
    cdsUFIDPAIS: TIntegerField;
    sdsProprietario_Vei: TSQLDataSet;
    dspProprietario_Vei: TDataSetProvider;
    cdsProprietario_Vei: TClientDataSet;
    dsProprietario_Vei: TDataSource;
    sdsProprietario_VeiID: TIntegerField;
    sdsProprietario_VeiNOME: TStringField;
    sdsProprietario_VeiCNPJ_CPF: TStringField;
    sdsProprietario_VeiINSC_ESTADUAL: TStringField;
    sdsProprietario_VeiUF: TStringField;
    sdsProprietario_VeiTIPO_REG: TStringField;
    sdsProprietario_VeiRNTRC: TStringField;
    cdsProprietario_VeiID: TIntegerField;
    cdsProprietario_VeiNOME: TStringField;
    cdsProprietario_VeiCNPJ_CPF: TStringField;
    cdsProprietario_VeiINSC_ESTADUAL: TStringField;
    cdsProprietario_VeiUF: TStringField;
    cdsProprietario_VeiTIPO_REG: TStringField;
    cdsProprietario_VeiRNTRC: TStringField;
    sdsProprietario_VeiINATIVO: TStringField;
    cdsProprietario_VeiINATIVO: TStringField;
    sdsProprietario_VeiPESSOA: TStringField;
    cdsProprietario_VeiPESSOA: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure dspProprietario_VeiUpdateError(Sender: TObject;
      DataSet: TCustomClientDataSet; E: EUpdateError;
      UpdateKind: TUpdateKind; var Response: TResolverResponse);
  private
    { Private declarations }
    procedure DoLogAdditionalValues(ATableName: string; var AValues: TArrayLogData; var UserName: string);
  public
    { Public declarations }
    vMsgProprietario: String;
    ctCommand: String;

    procedure prc_Localizar(ID: Integer); //-1 = Inclusão
    procedure prc_Inserir;
    procedure prc_Gravar;
    procedure prc_Excluir;
  end;

var
  DMCadProprietario: TDMCadProprietario;

implementation

uses DmdDatabase, LogProvider, uUtilPadrao;

{$R *.dfm}

{ TDMCadPais }

procedure TDMCadProprietario.prc_Inserir;
var
  vAux: Integer;
begin
  if not cdsProprietario_Vei.Active then
    prc_Localizar(-1);
  vAux := dmDatabase.ProximaSequencia('PROPRIETARIO_VEI',0);

  cdsProprietario_Vei.Insert;
  cdsProprietario_VeiID.AsInteger := vAux;
end;

procedure TDMCadProprietario.prc_Excluir;
begin
  if not(cdsProprietario_Vei.Active) or (cdsProprietario_Vei.IsEmpty) then
    exit;
  cdsProprietario_Vei.Delete;
  cdsProprietario_Vei.ApplyUpdates(0);
end;

procedure TDMCadProprietario.prc_Gravar;
begin
  vMsgProprietario := '';
  if trim(cdsProprietario_VeiNOME.AsString) = '' then
    vMsgProprietario := 'Nome não informado!';
  if vMsgProprietario <> '' then
    exit;

  cdsProprietario_Vei.Post;
  cdsProprietario_Vei.ApplyUpdates(0);
end;

procedure TDMCadProprietario.prc_Localizar(ID: Integer);
begin
  cdsProprietario_Vei.Close;
  sdsProprietario_Vei.CommandText := ctCommand;
  if ID <> 0 then
    sdsProprietario_Vei.CommandText := sdsProprietario_Vei.CommandText +
                            ' WHERE ID = ' + IntToStr(ID);
  cdsProprietario_Vei.Open;
end;

procedure TDMCadProprietario.DataModuleCreate(Sender: TObject);
var
  i, x: Integer;
  vIndices: string;
  aIndices: array of string;
begin
  ctCommand := sdsProprietario_Vei.CommandText;
  cdsUF.Open;
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

procedure TDMCadProprietario.DoLogAdditionalValues(ATableName: string;
  var AValues: TArrayLogData; var UserName: string);
begin
  UserName := vUsuario;
end;

procedure TDMCadProprietario.dspProprietario_VeiUpdateError(
  Sender: TObject; DataSet: TCustomClientDataSet; E: EUpdateError;
  UpdateKind: TUpdateKind; var Response: TResolverResponse);
begin
  dmDatabase.prc_UpdateError(DataSet.Name,UpdateKind,E);
end;

end.
