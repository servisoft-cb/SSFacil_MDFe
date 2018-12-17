unit UDMUltMDFe;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr, LogTypes;

type
  TDMUltMDFe = class(TDataModule)
    sdsFilial_MDFe: TSQLDataSet;
    dspFilial_MDFe: TDataSetProvider;
    cdsFilial_MDFe: TClientDataSet;
    dsFilial_MDFe: TDataSource;
    sdsConsulta: TSQLDataSet;
    dspConsulta: TDataSetProvider;
    cdsConsulta: TClientDataSet;
    dsConsulta: TDataSource;
    cdsConsultaID: TIntegerField;
    cdsConsultaULT_NUM_MDFE: TIntegerField;
    cdsConsultaNOME: TStringField;
    cdsConsultaNOME_INTERNO: TStringField;
    sdsFilial_MDFeID: TIntegerField;
    sdsFilial_MDFeTIPO_EMITENTE: TStringField;
    sdsFilial_MDFeTIPO_TRANSPORTADOR: TStringField;
    sdsFilial_MDFeTIPO_AMBIENTE: TStringField;
    sdsFilial_MDFeRNTRC: TStringField;
    sdsFilial_MDFeSERIE: TStringField;
    sdsFilial_MDFeULT_NUM_MDFE: TIntegerField;
    cdsFilial_MDFeID: TIntegerField;
    cdsFilial_MDFeTIPO_EMITENTE: TStringField;
    cdsFilial_MDFeTIPO_TRANSPORTADOR: TStringField;
    cdsFilial_MDFeTIPO_AMBIENTE: TStringField;
    cdsFilial_MDFeRNTRC: TStringField;
    cdsFilial_MDFeSERIE: TStringField;
    cdsFilial_MDFeULT_NUM_MDFE: TIntegerField;
    procedure DataModuleCreate(Sender: TObject);
    procedure dspFilial_MDFeUpdateError(Sender: TObject;
      DataSet: TCustomClientDataSet; E: EUpdateError;
      UpdateKind: TUpdateKind; var Response: TResolverResponse);
  private
    { Private declarations }
    procedure DoLogAdditionalValues(ATableName: string; var AValues: TArrayLogData; var UserName: string);

  public
    { Public declarations }
    vMsgCentroCusto : String;
    ctCommand : String;
    ctConsulta : String;

    procedure prc_Localizar(ID : Integer); //-1 = Inclusão
    procedure prc_Gravar;

  end;

var
  DMUltMDFe: TDMUltMDFe;

implementation

uses DmdDatabase, LogProvider, uUtilPadrao;

{$R *.dfm}

{ TDMCadPais }

procedure TDMUltMDFe.prc_Gravar;
begin
  cdsFilial_MDFe.Post;
  cdsFilial_MDFe.ApplyUpdates(0);
end;

procedure TDMUltMDFe.prc_Localizar(ID : Integer);
begin
  cdsFilial_MDFe.Close;
  sdsFilial_MDFe.CommandText := ctCommand;
  sdsFilial_MDFe.ParamByName('ID').AsInteger := ID;
  cdsFilial_MDFe.Open;
end;

procedure TDMUltMDFe.DataModuleCreate(Sender: TObject);
var
  i, x: Integer;
  vIndices: string;
  aIndices: array of string;
begin
  ctCommand  := sdsFilial_MDFe.CommandText;
  ctConsulta := sdsConsulta.CommandText;

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
end;

procedure TDMUltMDFe.DoLogAdditionalValues(ATableName: string;
  var AValues: TArrayLogData; var UserName: string);
begin
  UserName := vUsuario;
end;

procedure TDMUltMDFe.dspFilial_MDFeUpdateError(Sender: TObject;
  DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
  var Response: TResolverResponse);
begin
  dmDatabase.prc_UpdateError(DataSet.Name,UpdateKind,E);
end;

end.
