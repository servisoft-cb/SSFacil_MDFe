unit USel_NFe_MDFe;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, UDMCadMDFe, ExtCtrls, StdCtrls, Mask, DB,
  ToolEdit, NxEdit, NxCollection, Grids, DBGrids, SMDBGrid, RxLookup, dbTables;

type
  TfrmSel_NFe_MDFe = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    NxDatePicker1: TNxDatePicker;
    btnConsultar: TNxButton;
    SMDBGrid1: TSMDBGrid;
    Label2: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    btnConfirmar: TNxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure SMDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure SMDBGrid1TitleClick(Column: TColumn);
  private
    { Private declarations }
    procedure prc_Consultar;
  public
    { Public declarations }
    fDMCadMDFe: TDMCadMDFe;
    vUsarCidade_NFe: Boolean;     
  end;

var
  frmSel_NFe_MDFe: TfrmSel_NFe_MDFe;

implementation

uses rsDBUtils;

{$R *.dfm}

procedure TfrmSel_NFe_MDFe.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmSel_NFe_MDFe.FormShow(Sender: TObject);
begin
  fDMCadMDFe.Database1.Close;
  oDBUtils.SetDataSourceProperties(Self, fDMCadMDFe);
  btnConfirmar.Enabled := (fDMCadMDFe.cdsMDFe.State in [dsEdit,dsInsert]);
  NxDatePicker1.Date := Date;
  if fDMCadMDFe.qParametros_MDFeUSA_PARADOX.AsString = 'S' then
  begin
    fDMCadMDFe.qNotaFiscal.Close;
    SMDBGrid1.DataSource := fDMCadMDFe.dsqNotaFiscal;
    if not fDMCadMDFe.Database1.Connected then
      fDMCadMDFe.Database1.Open;

    fDMCadMDFe.qNotaFiscal.Sql.Text := 'SELECT NF.Filial, NF.NumSeq, NF.DtEmissao, CFOP.CodNatOper CODCFOP, NF.CodCli, ' +
                                       'NF.VlrTotalNota VLR_NOTA, NF.PesoBruto, NF.PesoLiquido, NF.NumNota, NF.Serie, NF.NfeChaveAcesso, ' +
                                       'CLI.Nome NOME_CLIENTE, NF.Gerou_Mdfe, CID.Nome CIDADE, CID.Codigo CodCidade ' +
                                       'FROM "dbNotaFiscal.db" NF ' +
                                       'INNER JOIN "dbCliente.db" CLI ON (NF.CodCli = CLI.Codigo) ' +
                                       'INNER JOIN "dbNatOperacao.db" CFOP ON (NF.CodNatOper = CFOP.Codigo) ' +
                                       'INNER JOIN "dbCidade" CID ON (CID.Codigo = CLI.CodCidade) ' +
                                       'WHERE GEROU_MDFE = ''N'' AND NF.DtEmissao >= ' +
                                       QuotedStr(FormatDateTime('MM/DD/YYYY',NxDatePicker1.Date));
    fDMCadMDFe.qNotaFiscal.Open;
  end
  else
    if not fDMCadMDFe.cdsNotas.Active then
      prc_Consultar;
end;

procedure TfrmSel_NFe_MDFe.btnConsultarClick(Sender: TObject);
begin
  if NxDatePicker1.Date <= 10 then
  begin
    MessageDlg('*** Data inicial é obrigatório informar!', mtInformation, [mbOk], 0);
    exit;
  end;
  if fDMCadMDFe.qParametros_MDFeUSA_PARADOX.AsString = 'S' then
  begin
    SMDBGrid1.DataSource := fDMCadMDFe.dsqNotaFiscal;
    fDMCadMDFe.qNotaFiscal.Close;
    if not fDMCadMDFe.Database1.Connected then
      fDMCadMDFe.Database1.Open;

    fDMCadMDFe.qNotaFiscal.Sql.Text := 'SELECT NF.Filial, NF.NumSeq, NF.DtEmissao, CFOP.CodNatOper CODCFOP, NF.CodCli, ' +
                                       'NF.VlrTotalNota VLR_NOTA, NF.PesoBruto, NF.PesoLiquido, NF.NumNota, NF.Serie, NF.NfeChaveAcesso, ' +
                                       'CLI.Nome NOME_CLIENTE, NF.Gerou_Mdfe, CID.Nome CIDADE, CID.Codigo CodCidade ' +
                                       'FROM "dbNotaFiscal.db" NF ' +
                                       'INNER JOIN "dbCliente.db" CLI ON (NF.CodCli = CLI.Codigo) ' +
                                       'INNER JOIN "dbNatOperacao.db" CFOP ON (NF.CodNatOper = CFOP.Codigo) ' +
                                       'INNER JOIN "dbCidade" CID ON (CID.Codigo = CLI.CodCidade) ' +
                                       'WHERE GEROU_MDFE = ''N'' AND NF.DtEmissao >= ' +
                                       QuotedStr(FormatDateTime('MM/DD/YYYY',NxDatePicker1.Date));
    fDMCadMDFe.qNotaFiscal.Open;
  end
  else
    prc_Consultar;
end;

procedure TfrmSel_NFe_MDFe.prc_Consultar;
begin
  fDMCadMDFe.cdsNotas.Close;
  fDMCadMDFe.sdsNotas.CommandText := fDMCadMDFe.ctNotas;
  if trim(RxDBLookupCombo1.Text) <> '' then
    fDMCadMDFe.sdsNotas.CommandText := fDMCadMDFe.sdsNotas.CommandText + ' AND N.FILIAL = ' + IntToStr(RxDBLookupCombo1.KeyValue);
  //fDMCadMDFe.sdsNotas.CommandText := fDMCadMDFe.sdsNotas.CommandText + ' AND CLI.UF = :UF ';
  //fDMCadMDFe.sdsNotas.ParamByName('UF').AsString := fDMCadMDFe.cdsMDFeUF_DESCARREGAMENTO.AsString;
  fDMCadMDFe.sdsNotas.ParamByName('DTEMISSAO').AsDate := NxDatePicker1.Date;
  fDMCadMDFe.cdsNotas.Open;
  fDMCadMDFe.cdsNotas.IndexFieldNames := 'SERIE;NUMNOTA';
end;

procedure TfrmSel_NFe_MDFe.btnConfirmarClick(Sender: TObject);
var
  vItemAux: Integer;
  vErroNotas: WideString;
begin
  vErroNotas := '';
  if not(vUsarCidade_NFe) and (fDMCadMDFe.cdsMDFe_Cidade_Des.RecordCount <= 0) then
  begin
    MessageDlg('*** Não foi informada a cidade de descarregamento!', mtInformation, [mbOk], 0);
    exit;
  end;

  if fDMCadMDFe.qParametros_MDFeUSA_PARADOX.AsString = 'S' then
  begin
//********************BLOCO PARADOX
    fDMCadMDFe.qNotaFiscal.First;
    while not fDMCadMDFe.qNotaFiscal.Eof do
    begin
      if (SMDBGrid1.SelectedRows.CurrentRowSelected) then
      begin
        begin
          if vUsarCidade_NFe then
          begin
            if not fDMCadMDFe.cdsMDFe_Cidade_Des.Locate('ID_CIDADE',fDMCadMDFe.qNotaFiscalCodCidade.AsInteger,[loCaseInsensitive]) then
            begin
              fDMCadMDFe.cdsMDFe_Cidade_Des.Last;
              vItemAux := fDMCadMDFe.cdsMDFe_Cidade_DesITEM.AsInteger;
              fDMCadMDFe.cdsMDFe_Cidade_Des.Insert;
              fDMCadMDFe.cdsMDFe_Cidade_DesID.AsInteger := fDMCadMDFe.cdsMDFeID.AsInteger;
              fDMCadMDFe.cdsMDFe_Cidade_DesITEM.AsInteger := vItemAux + 1;
              fDMCadMDFe.cdsMDFe_Cidade_DesID_CIDADE.AsInteger := fDMCadMDFe.qNotaFiscalCodCidade.AsInteger;
              fDMCadMDFe.cdsMDFe_Cidade_DesCIDADE.AsString     := fDMCadMDFe.qNotaFiscalCIDADE.AsString;
              fDMCadMDFe.cdsMDFe_Cidade_Des.Post;
            end;
          end;

          if not fDMCadMDFe.cdsMDFe_NFe.Locate('CHAVE_ACESSO',fDMCadMDFe.qNotaFiscalNFECHAVEACESSO.AsString,[loCaseInsensitive]) then
          begin
            fDMCadMDFe.cdsMDFe_NFe.Last;
            vItemAux := fDMCadMDFe.cdsMDFe_NFeITEM_NFE.AsInteger;
            vItemAux := vItemAux + 1;
            fDMCadMDFe.cdsMDFe_NFe.Insert;
            fDMCadMDFe.cdsMDFe_NFeID.AsInteger          := fDMCadMDFe.cdsMDFeID.AsInteger;
            fDMCadMDFe.cdsMDFe_NFeID.AsInteger          := fDMCadMDFe.cdsMDFeID.AsInteger;
            fDMCadMDFe.cdsMDFe_NFeITEM_NFE.AsInteger    := vItemAux;
            fDMCadMDFe.cdsMDFe_NFeCHAVE_ACESSO.AsString := fDMCadMDFe.qNotaFiscalNFECHAVEACESSO.AsString;
            fDMCadMDFe.cdsMDFe_NFeVLR_TOTAL.AsFloat     := StrToFloat(FormatFloat('0.00',fDMCadMDFe.qNotaFiscalVLR_NOTA.AsFloat));
            fDMCadMDFe.cdsMDFe_NFePESO_BRUTO.AsFloat    := StrToFloat(FormatFloat('0.0000',fDMCadMDFe.qNotaFiscalPESOBRUTO.AsFloat));
            fDMCadMDFe.cdsMDFe_NFe.Post;


            fDMCadMDFe.qExec.SQL.Text := 'UPDATE DBNOTAFISCAL.DB SET GEROU_MDFE = ''S'' WHERE FILIAL = ' +
                                         fDMCadMDFe.qNotaFiscalFilial.AsString +
                                         ' AND NUMSEQ = ' + fDMCadMDFe.qNotaFiscalNumSeq.AsString;
            fDMCadMDFe.qExec.ExecSQL;
          end;
        end;
      end;
      fDMCadMDFe.qNotaFiscal.Next;
    end;
  end
//******************FIM DO BLOCO PARADOX
  else
  begin
    fDMCadMDFe.cdsNotas.First;
    while not fDMCadMDFe.cdsNotas.Eof do
    begin
      if (SMDBGrid1.SelectedRows.CurrentRowSelected) then
      begin
        //if fDMCadMDFe.cdsNotasUF.AsString <> fDMCadMDFe.cdsMDFeUF_DESCARREGAMENTO.AsString then
        //  vErroNotas := vErroNotas + #13 + 'Nota ' + fDMCadMDFe.cdsNotasNUMNOTA.AsString + ', com UF diferente da informada para o Descarregamento'
        //else
        begin
          if vUsarCidade_NFe then
          begin
            if not fDMCadMDFe.cdsMDFe_Cidade_Des.Locate('ID_CIDADE',fDMCadMDFe.cdsNotasID_CIDADE.AsInteger,[loCaseInsensitive]) then
            begin
              fDMCadMDFe.cdsMDFe_Cidade_Des.Last;
              vItemAux := fDMCadMDFe.cdsMDFe_Cidade_DesITEM.AsInteger;
              fDMCadMDFe.cdsMDFe_Cidade_Des.Insert;
              fDMCadMDFe.cdsMDFe_Cidade_DesID.AsInteger := fDMCadMDFe.cdsMDFeID.AsInteger;
              fDMCadMDFe.cdsMDFe_Cidade_DesITEM.AsInteger := vItemAux + 1;
              fDMCadMDFe.cdsMDFe_Cidade_DesID_CIDADE.AsInteger := fDMCadMDFe.cdsNotasID_CIDADE.AsInteger;
              fDMCadMDFe.cdsMDFe_Cidade_DesCIDADE.AsString     := fDMCadMDFe.cdsNotasCIDADE.AsString;
              fDMCadMDFe.cdsMDFe_Cidade_Des.Post;
            end;
          end;

          if not fDMCadMDFe.cdsMDFe_NFe.Locate('CHAVE_ACESSO',fDMCadMDFe.cdsNotasNFECHAVEACESSO.AsString,[loCaseInsensitive]) then
          begin
            fDMCadMDFe.cdsMDFe_NFe.Last;
            vItemAux := fDMCadMDFe.cdsMDFe_NFeITEM_NFE.AsInteger;
            vItemAux := vItemAux + 1;
            fDMCadMDFe.cdsMDFe_NFe.Insert;
            fDMCadMDFe.cdsMDFe_NFeID.AsInteger          := fDMCadMDFe.cdsMDFeID.AsInteger;
            fDMCadMDFe.cdsMDFe_NFeITEM.AsInteger        := fDMCadMDFe.cdsMDFe_Cidade_DesITEM.AsInteger;
            fDMCadMDFe.cdsMDFe_NFeITEM_NFE.AsInteger    := vItemAux;
            fDMCadMDFe.cdsMDFe_NFeCHAVE_ACESSO.AsString := fDMCadMDFe.cdsNotasNFECHAVEACESSO.AsString;
            fDMCadMDFe.cdsMDFe_NFeVLR_TOTAL.AsFloat     := StrToFloat(FormatFloat('0.00',fDMCadMDFe.cdsNotasVLR_NOTA.AsFloat));
            fDMCadMDFe.cdsMDFe_NFePESO_BRUTO.AsFloat    := StrToFloat(FormatFloat('0.0000',fDMCadMDFe.cdsNotasPESOBRUTO.AsFloat));
            fDMCadMDFe.cdsMDFe_NFe.Post;
            fDMCadMDFe.cdsNotas.Edit;
            fDMCadMDFe.cdsNotasGEROU_MDFE.AsString := 'S';
            fDMCadMDFe.cdsNotas.Post;
          end;
        end;
      end;
      fDMCadMDFe.cdsNotas.Next;
    end;
  end;
  Close;
end;

procedure TfrmSel_NFe_MDFe.SMDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if fDMCadMDFe.cdsNotasGEROU_MDFE.AsString = 'S' then
  begin
    Background  := clMoneyGreen;
    AFont.Color := clBlack;
  end;
end;

procedure TfrmSel_NFe_MDFe.SMDBGrid1TitleClick(Column: TColumn);
var
  i: Integer;
  ColunaOrdenada: String;
begin
  ColunaOrdenada := Column.FieldName;
  fDMCadMDFe.cdsNotas.IndexFieldNames := Column.FieldName;
  Column.Title.Color := clBtnShadow;
  for i := 0 to SMDBGrid1.Columns.Count - 1 do
    if not (SMDBGrid1.Columns.Items[I] = Column) then
      SMDBGrid1.Columns.Items[I].Title.Color := clBtnFace;
end;

end.
