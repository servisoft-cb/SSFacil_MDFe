unit UDMCadCondutor;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr, LogTypes;

type
  TDMCadCondutor = class(TDataModule)
    sdsCondutor: TSQLDataSet;
    dspCondutor: TDataSetProvider;
    cdsCondutor: TClientDataSet;
    dsCondutor: TDataSource;
    sdsCondutorID: TIntegerField;
    sdsCondutorCPF: TStringField;
    cdsCondutorID: TIntegerField;
    cdsCondutorCPF: TStringField;
    sdsCondutorINATIVO: TStringField;
    cdsCondutorINATIVO: TStringField;
    sdsCondutorNOME: TStringField;
    cdsCondutorNOME: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure dspCondutorUpdateError(Sender: TObject;
      DataSet: TCustomClientDataSet; E: EUpdateError;
      UpdateKind: TUpdateKind; var Response: TResolverResponse);
    procedure cdsCondutorNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
    procedure DoLogAdditionalValues(ATableName: string; var AValues: TArrayLogData; var UserName: string);
  public
    { Public declarations }
    vMsgCondutor: String;
    ctCommand: String;

    procedure prc_Localizar(ID: Integer); //-1 = Inclusão
    procedure prc_Inserir;
    procedure prc_Gravar;
    procedure prc_Excluir;
  end;

var
  DMCadCondutor: TDMCadCondutor;

implementation

uses DmdDatabase, LogProvider, uUtilPadrao;

{$R *.dfm}

{ TDMCadPais }

procedure TDMCadCondutor.prc_Inserir;
var
  vAux: Integer;
begin
  if not cdsCondutor.Active then
    prc_Localizar(-1);
  vAux := dmDatabase.ProximaSequencia('CONDUTOR',0);

  cdsCondutor.Insert;
  cdsCondutorID.AsInteger := vAux;
end;

procedure TDMCadCondutor.prc_Excluir;
begin
  if not(cdsCondutor.Active) or (cdsCondutor.IsEmpty) then
    exit;
  cdsCondutor.Delete;
  cdsCondutor.ApplyUpdates(0);
end;

procedure TDMCadCondutor.prc_Gravar;
var
  vAux : String;
begin
  vMsgCondutor := '';
  if trim(cdsCondutorNOME.AsString) = '' then
    vMsgCondutor := 'Nome não informado!';
  vAux := Monta_Numero(cdsCondutorCPF.AsString,0);
  if trim(vAux) = '' then
    vMsgCondutor := 'CPF não informado!';
  if vMsgCondutor <> '' then
    exit;

  cdsCondutor.Post;
  cdsCondutor.ApplyUpdates(0);
end;

procedure TDMCadCondutor.prc_Localizar(ID: Integer);
begin
  cdsCondutor.Close;
  sdsCondutor.CommandText := ctCommand;
  if ID <> 0 then
    sdsCondutor.CommandText := sdsCondutor.CommandText +
                            ' WHERE ID = ' + IntToStr(ID);
  cdsCondutor.Open;
end;

procedure TDMCadCondutor.DataModuleCreate(Sender: TObject);
var
  i, x: Integer;
  vIndices: string;
  aIndices: array of string;
begin
  ctCommand := sdsCondutor.CommandText;
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

procedure TDMCadCondutor.DoLogAdditionalValues(ATableName: string;
  var AValues: TArrayLogData; var UserName: string);
begin
  UserName := vUsuario;
end;

procedure TDMCadCondutor.dspCondutorUpdateError(
  Sender: TObject; DataSet: TCustomClientDataSet; E: EUpdateError;
  UpdateKind: TUpdateKind; var Response: TResolverResponse);
begin
  dmDatabase.prc_UpdateError(DataSet.Name,UpdateKind,E);
end;

procedure TDMCadCondutor.cdsCondutorNewRecord(DataSet: TDataSet);
begin
  cdsCondutorInativo.AsString := 'N';
end;

end.
