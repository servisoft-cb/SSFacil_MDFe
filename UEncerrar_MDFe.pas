unit UEncerrar_MDFe;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UDMCadMDFe, StdCtrls, RxLookup, Buttons, DB;

type
  TfrmEncerrar_MDFe = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    Label3: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Label4: TLabel;
    RxDBLookupCombo2: TRxDBLookupCombo;
    BitBtn1: TBitBtn;
    Label5: TLabel;
    RxDBLookupCombo3: TRxDBLookupCombo;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RxDBLookupCombo1Exit(Sender: TObject);
    procedure RxDBLookupCombo2Enter(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure RxDBLookupCombo3Exit(Sender: TObject);
    procedure RxDBLookupCombo1Enter(Sender: TObject);
  private
    { Private declarations }
    vUF : String;

    function fnc_LocalServidorNFe_Local: String;
    function Monta_Diretorio(Diretorio: String ; Ano, Mes: Integer): string;

  public
    { Public declarations }
    fDMCadMDFe: TDMCadMDFe;

  end;

var
  frmEncerrar_MDFe: TfrmEncerrar_MDFe;

implementation

uses rsDBUtils, StdConvs, uUtilPadrao, uNFeComandos, DateUtils;


{$R *.dfm}

procedure TfrmEncerrar_MDFe.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmEncerrar_MDFe.RxDBLookupCombo1Exit(Sender: TObject);
begin
  if vUF <> RxDBLookupCombo1.Text then
    fDMCadMDFe.prc_Abrir_Cidade(RxDBLookupCombo1.Text);
end;

procedure TfrmEncerrar_MDFe.RxDBLookupCombo2Enter(Sender: TObject);
begin
  if RxDBLookupCombo1.Text = '' then
    RxDBLookupCombo1.SetFocus;
end;

procedure TfrmEncerrar_MDFe.BitBtn1Click(Sender: TObject);
var
  Xml: TMemoryStream;
  sXml: TStringStream;
  protocolo, chave, protRet: string;
  vCNPJAux: String;
  sProtocolo: TStringList;
  vIDAux: Integer;
  mMDFe: TMemoryStream;
  vNomeArquivo: String;
begin
  if RxDBLookupCombo3.Text = '' then
  begin
    MessageDlg('*** Filial não informada!', mtInformation, [mbOk], 0);
    exit;
  end;

  if MessageDlg('Deseja encerrar o MDFe com a chave informada?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  fDMCadMDFe.cdsFilial.Locate('ID',RxDBLookupCombo3.KeyValue,[loCaseInsensitive]);
  vCNPJAux := Monta_Numero(fDMCadMDFe.cdsFilialCNPJ_CPF.AsString,0);
  fDMCadMDFe.cdsUF.Locate('UF',RxDBLookupCombo1.Text,[loCaseInsensitive]);
  fDMCadMDFe.qCidade.Close;
  fDMCadMDFe.qCidade.ParamByName('ID').AsInteger := RxDBLookupCombo2.KeyValue;
  fDMCadMDFe.qCidade.Open;

  mMDFe := TMemoryStream.Create;
  try
    sProtocolo := TStringList.Create;
    sProtocolo.Delimiter := '|';
    sProtocolo.DelimitedText := MDFe_Encerrar(fnc_LocalServidorNFe_Local,
                             vCNPJAux,
                             Edit1.Text,
                             Edit2.Text,
                             FormatDateTime('yyyy-mm-dd', Date),
                             fDMCadMDFe.cdsUFCODUF.AsString,
                             fDMCadMDFe.qCidadeCODMUNICIPIO.AsString,
                             mMDFe);
    //vProtocolo_MDFe   := sProtocolo[0];
    //vDtProtocolo_MDFe := sProtocolo[1];

    //Salvar arquivo na pasta do XML
    if trim(fDMCadMDFe.qParametros_MDFeENDXMLMDFE.AsString) <> '' then
    begin
      vNomeArquivo := Monta_Diretorio(fDMCadMDFe.qParametros_MDFeENDXMLMDFE.AsString,YearOf(Date),MonthOf(Date));
      if FileExists(vNomeArquivo) then
        DeleteFile(vNomeArquivo);
      mMDFe.SaveToFile(vNomeArquivo);
    end;
    //**************

  finally
    FreeAndNil(mMDFe);
    FreeAndNil(sProtocolo);
  end;
end;

procedure TfrmEncerrar_MDFe.RxDBLookupCombo3Exit(Sender: TObject);
begin
  if RxDBLookupCombo3.Text <> '' then
  begin
    RxDBLookupCombo1.Value     := fDMCadMDFe.cdsFilialUF.AsString;
    fDMCadMDFe.prc_Abrir_Cidade(fDMCadMDFe.cdsFilialUF.AsString);
    if fDMCadMDFe.cdsFilialID_CIDADE.AsInteger > 0 then
      RxDBLookupCombo2.KeyValue  := fDMCadMDFe.cdsFilialID_CIDADE.AsInteger;
  end;

end;

procedure TfrmEncerrar_MDFe.RxDBLookupCombo1Enter(Sender: TObject);
begin
  vUF := RxDBLookupCombo1.Text;
end;

function TfrmEncerrar_MDFe.fnc_LocalServidorNFe_Local: String;
begin
  Result := fDMCadMDFe.qParametrosLOCALSERVIDORNFE.AsString;
  if (trim(fDMCadMDFe.cdsFilialLOCALSERVIDORNFE.AsString) <> '') and not(fDMCadMDFe.cdsFilialLOCALSERVIDORNFE.IsNull) then
    Result := fDMCadMDFe.cdsFilialLOCALSERVIDORNFE.AsString;
end;

function TfrmEncerrar_MDFe.Monta_Diretorio(Diretorio: String ; Ano, Mes: Integer): string;
var
  vAnoMes: String;
begin
  vAnoMes := FormatFloat('0000',Ano) + FormatFloat('00',Mes);
  Result  := '';
  if Diretorio = '' then
    Raise Exception.Create('*** É obrigatório informar a pasta para salvar o arquivo!');
  if copy(Diretorio,Length(Diretorio),1) <> '\' then
    Diretorio := Diretorio + '\';

  if not DirectoryExists(Diretorio) then
  begin
    ShowMessage('Pasta "' + Diretorio + '" não existe!');
    exit;
  end;

  if trim(vAnoMes) <> '' then
    Result := Diretorio + vAnoMes + '\'
  else
    Result := Diretorio + vAnoMes;
  CreateDir(Result);
  Result := Result + 'MDFe_' + FormatFloat('00',RxDBLookupCombo3.KeyValue) + '_' + Edit1.Text + '.xml';
end;

end.
