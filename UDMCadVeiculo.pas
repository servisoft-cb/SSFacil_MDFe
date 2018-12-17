unit UDMCadVeiculo;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr, LogTypes;

type
  TDMCadVeiculo = class(TDataModule)
    sdsVeiculo: TSQLDataSet;
    dspVeiculo: TDataSetProvider;
    cdsVeiculo: TClientDataSet;
    dsVeiculo: TDataSource;
    qVerifica_Veiculo: TSQLQuery;
    qVerifica_VeiculoID: TIntegerField;
    sdsVeiculoID: TIntegerField;
    sdsVeiculoNOME: TStringField;
    sdsVeiculoPLACA: TStringField;
    sdsVeiculoUF_PLACA: TStringField;
    sdsVeiculoCAPACIDADE: TIntegerField;
    sdsVeiculoRENAVAM: TStringField;
    sdsVeiculoTARA_KG: TFloatField;
    sdsVeiculoCAPACIDADE_KG: TFloatField;
    sdsVeiculoCAPACIDADE_M3: TFloatField;
    sdsVeiculoID_PROPRIETARIO: TIntegerField;
    cdsVeiculoID: TIntegerField;
    cdsVeiculoNOME: TStringField;
    cdsVeiculoPLACA: TStringField;
    cdsVeiculoUF_PLACA: TStringField;
    cdsVeiculoCAPACIDADE: TIntegerField;
    cdsVeiculoRENAVAM: TStringField;
    cdsVeiculoTARA_KG: TFloatField;
    cdsVeiculoCAPACIDADE_KG: TFloatField;
    cdsVeiculoCAPACIDADE_M3: TFloatField;
    cdsVeiculoID_PROPRIETARIO: TIntegerField;
    sdsVeiculoINATIVO: TStringField;
    cdsVeiculoINATIVO: TStringField;
    sdsUF: TSQLDataSet;
    dspUF: TDataSetProvider;
    cdsUF: TClientDataSet;
    dsUF: TDataSource;
    cdsUFUF: TStringField;
    cdsUFIDPAIS: TIntegerField;
    sdsVeiculoTIPO_RODADO: TStringField;
    sdsVeiculoTIPO_CARROCERIA: TStringField;
    cdsVeiculoTIPO_RODADO: TStringField;
    cdsVeiculoTIPO_CARROCERIA: TStringField;
    sdsProprietario_Vei: TSQLDataSet;
    dspProprietario_Vei: TDataSetProvider;
    cdsProprietario_Vei: TClientDataSet;
    dsProprietario_Vei: TDataSource;
    cdsProprietario_VeiID: TIntegerField;
    cdsProprietario_VeiNOME: TStringField;
    cdsProprietario_VeiCNPJ_CPF: TStringField;
    cdsProprietario_VeiINSC_ESTADUAL: TStringField;
    cdsProprietario_VeiUF: TStringField;
    cdsProprietario_VeiTIPO_REG: TStringField;
    cdsProprietario_VeiRNTRC: TStringField;
    sdsVeiculoTIPO_VEICULO: TStringField;
    cdsVeiculoTIPO_VEICULO: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure dspVeiculoUpdateError(Sender: TObject;
      DataSet: TCustomClientDataSet; E: EUpdateError;
      UpdateKind: TUpdateKind; var Response: TResolverResponse);
  private
    { Private declarations }
    procedure DoLogAdditionalValues(ATableName: string; var AValues: TArrayLogData; var UserName: string);
  public
    { Public declarations }
    vMsgVeiculo: String;
    ctCommand: String;

    procedure prc_Localizar(ID: Integer); //-1 = Inclusão
    procedure prc_Inserir;
    procedure prc_Gravar;
    procedure prc_Excluir;
  end;

var
  DMCadVeiculo: TDMCadVeiculo;

implementation

uses DmdDatabase, LogProvider, uUtilPadrao;

{$R *.dfm}

{ TDMCadPais }

procedure TDMCadVeiculo.prc_Inserir;
var
  vAux: Integer;
begin
  if not cdsVeiculo.Active then
    prc_Localizar(-1);
  vAux := dmDatabase.ProximaSequencia('VEICULO',0);

  cdsVeiculo.Insert;
  cdsVeiculoID.AsInteger := vAux;
end;

procedure TDMCadVeiculo.prc_Excluir;
begin
  if not(cdsVeiculo.Active) or (cdsVeiculo.IsEmpty) then
    exit;
  cdsVeiculo.Delete;
  cdsVeiculo.ApplyUpdates(0);
end;

procedure TDMCadVeiculo.prc_Gravar;
begin
  vMsgVeiculo := '';
  if trim(cdsVeiculoNOME.AsString) = '' then
    vMsgVeiculo := 'Nome não informado!';
  if vMsgVeiculo <> '' then
    exit;

  cdsVeiculo.Post;
  cdsVeiculo.ApplyUpdates(0);
end;

procedure TDMCadVeiculo.prc_Localizar(ID: Integer);
begin
  cdsVeiculo.Close;
  sdsVeiculo.CommandText := ctCommand;
  if ID <> 0 then
    sdsVeiculo.CommandText := sdsVeiculo.CommandText +
                            ' WHERE ID = ' + IntToStr(ID);
  cdsVeiculo.Open;
end;

procedure TDMCadVeiculo.DataModuleCreate(Sender: TObject);
var
  i, x: Integer;
  vIndices: string;
  aIndices: array of string;
begin
  ctCommand := sdsVeiculo.CommandText;
  cdsUF.Open;
  cdsProprietario_Vei.Open;
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

procedure TDMCadVeiculo.dspVeiculoUpdateError(Sender: TObject;
  DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
  var Response: TResolverResponse);
begin
  dmDatabase.prc_UpdateError(DataSet.Name,UpdateKind,E);
end;

procedure TDMCadVeiculo.DoLogAdditionalValues(ATableName: string;
  var AValues: TArrayLogData; var UserName: string);
begin
  UserName := vUsuario;
end;

end.
