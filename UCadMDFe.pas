UNIT UCadMDFe;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Buttons,
  Grids, SMDBGrid, UDMCadMDFe, DBGrids, ExtCtrls, StdCtrls, FMTBcd, SqlExpr, RzTabs,
  Mask, DBCtrls, ToolEdit, CurrEdit, RxLookup, RxDBComb, RXDBCtrl, RzEdit, RzDBEdit,
  RzButton, UEscolhe_Filial, UCBase, RzPanel, dbXPress, NxCollection, DateUtils, DB,
  Menus, NxEdit, RzSplit, NxColumns, NxDBColumns, NxScrollControl, RzCmboBx, RzDBCmbo,
  RzDBBnEd, RzDBSpin, RzRadGrp, RzDBRGrp, RzDBGrid, UDMEnvio, ShellApi,
  ACBrBase, ACBrDFeReport, ACBrMDFeDAMDFeClass, ACBrMDFeDAMDFeRLClass,
  ACBrDFe, ACBrMDFe, XMLDoc, StrUtils;

type
  TfrmCadMDFe = class(TForm)
    RzPageControl1: TRzPageControl;
    TS_Consulta: TRzTabSheet;
    TS_Cadastro: TRzTabSheet;
    pnlPesquisa: TPanel;
    Panel1: TPanel;
    StaticText1: TStaticText;
    Label5: TLabel;
    Label6: TLabel;
    Label12: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Panel11: TPanel;
    UCControls1: TUCControls;
    RzPageControl2: TRzPageControl;
    btnInserir: TNxButton;
    btnExcluir: TNxButton;
    btnPesquisar: TNxButton;
    btnConsultar: TNxButton;
    btnAlterar: TNxButton;
    btnConfirmar: TNxButton;
    btnCancelar: TNxButton;
    pnlDocumento: TPanel;
    Label18: TLabel;
    Label80: TLabel;
    DBDateEdit1: TDBDateEdit;
    DBEdit52: TDBEdit;
    pnlNota: TPanel;
    Label16: TLabel;
    Label17: TLabel;
    lblNome_Filial: TLabel;
    DBText1: TDBText;
    DBEdit8: TDBEdit;
    btnImp_Nota: TNxButton;
    NxDatePicker1: TNxDatePicker;
    NxDatePicker2: TNxDatePicker;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    Label4: TLabel;
    DBEdit2: TDBEdit;
    Label7: TLabel;
    RxDBComboBox2: TRxDBComboBox;
    Label8: TLabel;
    Label11: TLabel;
    RxDBLookupCombo3: TRxDBLookupCombo;
    Label13: TLabel;
    RxDBLookupCombo4: TRxDBLookupCombo;
    TS_MDFe: TRzTabSheet;
    TS_Seguro: TRzTabSheet;
    Label21: TLabel;
    DBEdit5: TDBEdit;
    Label22: TLabel;
    RxDBComboBox6: TRxDBComboBox;
    RzDBDateTimeEdit1: TRzDBDateTimeEdit;
    Label23: TLabel;
    DBEdit7: TDBEdit;
    TS_InfAdicionais: TRzTabSheet;
    DBMemo1: TDBMemo;
    TS_AutXML: TRzTabSheet;
    Panel2: TPanel;
    MaskEdit1: TMaskEdit;
    btnConfirmar_AutXML: TNxButton;
    btnExcluir_AutXML: TNxButton;
    gbxVendedor: TRzGroupBox;
    RzGroupBox2: TRzGroupBox;
    TS_Carregamento: TRzTabSheet;
    TS_Rodoviario: TRzTabSheet;
    RzPageControl3: TRzPageControl;
    TS_Veiculo: TRzTabSheet;
    RzGroupBox6: TRzGroupBox;
    RzSizePanel1: TRzSizePanel;
    TS_Reboque: TRzTabSheet;
    TS_CIOT: TRzTabSheet;
    TS_Contratante: TRzTabSheet;
    TS_Pedagio: TRzTabSheet;
    TS_NFe: TRzTabSheet;
    RadioButton7: TRadioButton;
    RadioButton8: TRadioButton;
    pnlItem: TPanel;
    btnInserir_Seg: TNxButton;
    btnAlterar_Seg: TNxButton;
    btnExcluir_Seg: TNxButton;
    Panel3: TPanel;
    Label26: TLabel;
    edtAverbacao: TEdit;
    btnConfirmar_Averbacao: TNxButton;
    btnExcluir_Averbacao: TNxButton;
    Panel4: TPanel;
    Label33: TLabel;
    btnConfirmar_Condutor: TNxButton;
    btnExcluir_Condutor: TNxButton;
    Panel8: TPanel;
    Label35: TLabel;
    RxDBLookupCombo9: TRxDBLookupCombo;
    btnConfirmar_Reboque: TNxButton;
    btnExcluir_Reboque: TNxButton;
    Panel9: TPanel;
    Label38: TLabel;
    btnConfirmar_CIOT: TNxButton;
    btnExcluir_CIOT: TNxButton;
    CurrencyEdit3: TCurrencyEdit;
    RzGroupBox9: TRzGroupBox;
    RadioButton4: TRadioButton;
    RadioButton3: TRadioButton;
    MaskEdit5: TMaskEdit;
    Panel10: TPanel;
    btnConfirmar_Contratante: TNxButton;
    btnExcluir_Contratante: TNxButton;
    RadioButton5: TRadioButton;
    RadioButton6: TRadioButton;
    MaskEdit6: TMaskEdit;
    Panel12: TPanel;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    btnConfirmar_Pedagio: TNxButton;
    btnExcluir_Pedagio: TNxButton;
    MaskEdit3: TMaskEdit;
    CurrencyEdit1: TCurrencyEdit;
    CurrencyEdit2: TCurrencyEdit;
    RzGroupBox7: TRzGroupBox;
    MaskEdit4: TMaskEdit;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    SMDBGrid1: TSMDBGrid;
    BitBtn1: TBitBtn;
    RxDBLookupCombo2: TRxDBLookupCombo;
    RzDBGrid4: TRzDBGrid;
    RzDBGrid5: TRzDBGrid;
    RzDBGrid6: TRzDBGrid;
    RzDBGrid7: TRzDBGrid;
    RzDBGrid8: TRzDBGrid;
    RzDBGrid9: TRzDBGrid;
    RzDBGrid10: TRzDBGrid;
    RzDBGrid11: TRzDBGrid;
    pnlCarregamento: TPanel;
    RzGroupBox8: TRzGroupBox;
    Label41: TLabel;
    Label42: TLabel;
    DBDateEdit2: TDBDateEdit;
    RzDBDateTimeEdit2: TRzDBDateTimeEdit;
    RzGroupBox3: TRzGroupBox;
    Panel5: TPanel;
    Label27: TLabel;
    RxDBLookupCombo5: TRxDBLookupCombo;
    NxButton1: TNxButton;
    NxButton2: TNxButton;
    RzDBGrid1: TRzDBGrid;
    RzGroupBox4: TRzGroupBox;
    Panel6: TPanel;
    Label28: TLabel;
    RxDBLookupCombo6: TRxDBLookupCombo;
    NxButton3: TNxButton;
    NxButton4: TNxButton;
    RzDBGrid2: TRzDBGrid;
    RzGroupBox5: TRzGroupBox;
    Panel7: TPanel;
    Label29: TLabel;
    RxDBLookupCombo7: TRxDBLookupCombo;
    NxButton5: TNxButton;
    NxButton6: TNxButton;
    RzDBGrid3: TRzDBGrid;
    pnlEnvio_Novo: TPanel;
    btnCancelar_MDFe: TNxButton;
    btnEnvio: TNxButton;
    btnDanfe: TNxButton;
    TS_Lacre: TRzTabSheet;
    pnlLacre: TPanel;
    Label15: TLabel;
    Edit1: TEdit;
    btnConfirmar_Lacre: TNxButton;
    btnExcluir_Lacre: TNxButton;
    RzDBGrid12: TRzDBGrid;
    btnEncerrar: TNxButton;
    RzGroupBox1: TRzGroupBox;
    Label14: TLabel;
    DBEdit3: TDBEdit;
    Label46: TLabel;
    DBEdit14: TDBEdit;
    Label19: TLabel;
    DBEdit4: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit11: TDBEdit;
    RzGroupBox10: TRzGroupBox;
    Label24: TLabel;
    DBEdit13: TDBEdit;
    DBEdit16: TDBEdit;
    RzGroupBox11: TRzGroupBox;
    Label20: TLabel;
    DBEdit12: TDBEdit;
    DBEdit15: TDBEdit;
    Label25: TLabel;
    DBEdit17: TDBEdit;
    Panel14: TPanel;
    Shape1: TShape;
    Label34: TLabel;
    Label36: TLabel;
    Shape2: TShape;
    Shape4: TShape;
    Label39: TLabel;
    Shape5: TShape;
    Label40: TLabel;
    pnlEnvioMDFe: TPanel;
    lblTipo_Nota: TLabel;
    Label2: TLabel;
    Label9: TLabel;
    RzDBComboBox2: TRzDBComboBox;
    RzDBComboBox3: TRzDBComboBox;
    RzDBComboBox5: TRzDBComboBox;
    Label37: TLabel;
    RzDBComboBox1: TRzDBComboBox;
    pnlVeiculoTracao: TPanel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    RxDBLookupCombo8: TRxDBLookupCombo;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    btnIncluir_Condutor: TNxButton;
    ckSalvarXML: TCheckBox;
    RzGroupBox12: TRzGroupBox;
    RzDBGrid13: TRzDBGrid;
    Panel15: TPanel;
    Label48: TLabel;
    RxDBLookupCombo10: TRxDBLookupCombo;
    NxButton7: TNxButton;
    NxButton8: TNxButton;
    Panel13: TPanel;
    SMDBGrid2: TSMDBGrid;
    pnlNFe: TPanel;
    Label10: TLabel;
    Label1: TLabel;
    Label47: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    Edit2: TEdit;
    btnConfirmar_NFe: TNxButton;
    btnExcluir_NFe: TNxButton;
    ckUsarCidade_NFe: TCheckBox;
    CurrencyEdit4: TCurrencyEdit;
    CurrencyEdit5: TCurrencyEdit;
    btnOutros: TNxButton;
    PopupMenu1: TPopupMenu;
    Buscar1: TMenuItem;
    Encerrar1: TMenuItem;
    btnImprimir_Flexdocs: TBitBtn;
    ACBrMDFeDAMDFeRL1: TACBrMDFeDAMDFeRL;
    btnImprimir_ACBR: TBitBtn;
    ACBrMDFe1: TACBrMDFe;
    ImprimirSemQRCode1: TMenuItem;
    Button1: TButton;
    Consultar1: TMenuItem;
    mmoMDFeRetorno: TMemo;
    mMemo1: TMemo;
    BitBtn2: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnInserirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure SMDBGrid1DblClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure RzPageControl1Change(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure btnPesquisarClick(Sender: TObject);
    procedure DBMemo1KeyPress(Sender: TObject; var Key: Char);
    procedure MaskEdit1Exit(Sender: TObject);
    procedure btnConfirmar_AutXMLClick(Sender: TObject);
    procedure btnExcluir_AutXMLClick(Sender: TObject);
    procedure btnConfirmar_AverbacaoClick(Sender: TObject);
    procedure RzPageControl2Change(Sender: TObject);
    procedure RzGroupBox3Enter(Sender: TObject);
    procedure NxButton1Click(Sender: TObject);
    procedure NxButton5Click(Sender: TObject);
    procedure NxButton3Click(Sender: TObject);
    procedure NxButton2Click(Sender: TObject);
    procedure NxButton4Click(Sender: TObject);
    procedure NxButton6Click(Sender: TObject);
    procedure btnConfirmar_CondutorClick(Sender: TObject);
    procedure btnConfirmar_ReboqueClick(Sender: TObject);
    procedure btnExcluir_CondutorClick(Sender: TObject);
    procedure btnExcluir_ReboqueClick(Sender: TObject);
    procedure RadioButton4Click(Sender: TObject);
    procedure RadioButton7Click(Sender: TObject);
    procedure RadioButton8Click(Sender: TObject);
    procedure RadioButton3Click(Sender: TObject);
    procedure MaskEdit5Exit(Sender: TObject);
    procedure btnConfirmar_CIOTClick(Sender: TObject);
    procedure RadioButton5Click(Sender: TObject);
    procedure RadioButton6Click(Sender: TObject);
    procedure MaskEdit6Exit(Sender: TObject);
    procedure btnExcluir_CIOTClick(Sender: TObject);
    procedure btnConfirmar_ContratanteClick(Sender: TObject);
    procedure btnExcluir_ContratanteClick(Sender: TObject);
    procedure MaskEdit3Exit(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure MaskEdit4Exit(Sender: TObject);
    procedure btnConfirmar_PedagioClick(Sender: TObject);
    procedure btnInserir_SegClick(Sender: TObject);
    procedure btnAlterar_SegClick(Sender: TObject);
    procedure btnExcluir_SegClick(Sender: TObject);
    procedure btnExcluir_AverbacaoClick(Sender: TObject);
    procedure Edit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnConfirmar_NFeClick(Sender: TObject);
    procedure btnExcluir_NFeClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure RxDBLookupCombo2Exit(Sender: TObject);
    procedure btnEnvioClick(Sender: TObject);
    procedure btnConfirmar_LacreClick(Sender: TObject);
    procedure btnEncerrarClick(Sender: TObject);
    procedure btnCancelar_MDFeClick(Sender: TObject);
    procedure btnExcluir_PedagioClick(Sender: TObject);
    procedure SMDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure btnDanfeClick(Sender: TObject);
    procedure btnDanfeExit(Sender: TObject);
    procedure btnIncluir_CondutorClick(Sender: TObject);
    procedure SMDBGrid1TitleClick(Column: TColumn);
    procedure RxDBLookupCombo4Enter(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ckUsarCidade_NFeClick(Sender: TObject);
    procedure NxButton7Click(Sender: TObject);
    procedure RxDBLookupCombo4Exit(Sender: TObject);
    procedure DBEdit4Enter(Sender: TObject);
    procedure DBEdit2DblClick(Sender: TObject);
    procedure Buscar1Click(Sender: TObject);
    procedure Encerrar1Click(Sender: TObject);
    procedure btnImprimir_FlexdocsClick(Sender: TObject);
    procedure btnImprimir_ACBRClick(Sender: TObject);
    procedure ImprimirSemQRCode1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Consultar1Click(Sender: TObject);
  private
    { Private declarations }
    mMDFe: TMemoryStream;
    vMotivo_Canc: String;
    vSeq_Evento: Integer;
    vNomeArquivo: String;
    vNomeArqPDF: String;
    vUF_Ant: String;
    vImp_MDFe : String;//G=Gravar   I=Imprimir
    vXML : TStringStream;

    fDMCadMDFe: TDMCadMDFe;
    fDMEnvio: TDMEnvio;

    //ffrmCadDocEstoque_Itens: TfrmCadDocEstoque_Itens;
    ffrmEscolhe_Filial: TfrmEscolhe_Filial;

    procedure prc_Inserir_Registro;
    procedure prc_Excluir_Registro;
    procedure prc_Gravar_Registro;
    procedure prc_Consultar(ID: Integer);

    procedure prc_Posiciona_MDFe;

    procedure prc_Habilitar_CamposNota;

    procedure prc_Abrir_Cidade(UF: String);

    procedure prc_Recalcular;

    procedure prc_Gravar_Envio;
    procedure prc_gravar_Busca;
    procedure prc_Gravar_Encerramento;
    procedure prc_Gravar_Cancelamento;
    procedure prc_Gravar_Evento_Condutor;

    procedure prc_Gravar_mAuxMDFe;

    function fnc_LocalServidorNFe_Local: String;

    procedure prc_scroll(DataSet: TDataSet);

    procedure prc_Gravar_Cidade_Des(ID_Cidade: Integer; Nome: String);

    function Monta_Diretorio(Tipo, Diretorio, Serie: string; Ano, Mes: Integer): string;  //"X" XML  "P" PDF   "C" Cancelado  "E" Encerrado   "M" Condutor
    procedure prc_Imprimir_Danfe(Tipo: String); //E=Envio e Salva na Pasta    I=Imprimir

    procedure prc_Monta_Eventos;

    function fnc_Busca_Evento(Texto : WideString; Palavra : String) : String;

  public
    { Public declarations }
  end;

var
  frmCadMDFe: TfrmCadMDFe;

implementation

uses DmdDatabase, rsDBUtils, UMenu, uUtilPadrao, Math, MaskUtils, UCadMDFe_Seguradora, USel_NFe_MDFe, UXMLMDFe3_00, uNFeComandos,
  UCadMDFe_Enc, SysConst, TypInfo, RTLConsts, UCadMDFe_Condutor, StdConvs,
  UEncerrar_MDFe;

{$R *.dfm}

procedure TfrmCadMDFe.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmCadMDFe.btnExcluirClick(Sender: TObject);
begin
  prc_Posiciona_MDFe;

  if fDMCadMDFe.cdsMDFe.IsEmpty then
    exit;

  if fDMCadMDFe.cdsMDFeTIPO_AMBIENTE.AsString <> '2' then
  begin
    if trim(fDMCadMDFe.cdsMDFeCHAVE_ACESSO.AsString) <> '' then
    begin
      MessageDlg('*** MDFe já enviado', mtInformation, [mbOk], 0);
      exit;
    end;
    if trim(fDMCadMDFe.cdsMDFeRECIBO_MDFE.AsString) <> '' then
    begin
      MessageDlg('*** MDFe já possui nº de Recibo de enviado', mtInformation, [mbOk], 0);
      exit;
    end;
  end;  

  if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  prc_Excluir_Registro;

  btnConsultarClick(Sender);
end;

procedure TfrmCadMDFe.btnInserirClick(Sender: TObject);
begin
  prc_Inserir_Registro;
end;

procedure TfrmCadMDFe.prc_Excluir_Registro;
begin
  fDMCadMDFe.prc_Excluir;
end;

procedure TfrmCadMDFe.prc_Gravar_Registro;
var
  vIDAux: Integer;
  vID_Estoque: Integer;
  ID: TTransactionDesc;
  vID_LocalAux: Integer;
  sds: TSQLDataSet;
  vNumManifesto: Integer;
begin
  vIDAux := fDMCadMDFe.cdsMDFeID.AsInteger;
  if trim(fDMCadMDFe.cdsMDFeSERIE.AsString) = '' then
  begin
    fDMCadMDFe.qFilial_MDFe.Close;
    fDMCadMDFe.qFilial_MDFe.ParamByName('ID').AsInteger := fDMCadMDFe.cdsMDFeFILIAL.AsInteger;
    fDMCadMDFe.qFilial_MDFe.Open;
    fDMCadMDFe.cdsMDFeSERIE.AsString := fDMCadMDFe.cdsMDFeSERIE.AsString;
  end;

  fDMCadMDFe.prc_Gravar;
  vIDAux := fDMCadMDFe.cdsMDFeID.AsInteger;
  if fDMCadMDFe.cdsMDFe.State in [dsEdit,dsInsert] then
  begin
    MessageDlg(fDMCadMDFe.vMsgMDFe, mtError, [mbOk], 0);
    exit;
  end;
  fDMCadMDFe.cdsMDFe.Locate('ID',vIDAux,[loCaseInsensitive]);

  sds  := TSQLDataSet.Create(nil);
  ID.TransactionID  := 1;
  ID.IsolationLevel := xilREADCOMMITTED;
  dmDatabase.scoDados.StartTransaction(ID);
  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;
    sds.CommandText   := 'UPDATE TABELALOC SET FLAG = 1 WHERE TABELA = ' + QuotedStr('MDFE');
    sds.ExecSQL();

    if fDMCadMDFe.cdsMDFeNUM_MANIFESTO.AsInteger <= 0 then
    begin
      fDMCadMDFe.qProximaMDFe.Close;
      fDMCadMDFe.qProximaMDFe.ParamByName('FILIAL').AsInteger := fDMCadMDFe.cdsMDFeFILIAL.AsInteger;
      fDMCadMDFe.qProximaMDFe.ParamByName('SERIE').AsString   := fDMCadMDFe.cdsMDFeSERIE.AsString;
      fDMCadMDFe.qProximaMDFe.Open;
      vNumManifesto := fDMCadMDFe.qProximaMDFeNUM_MANIFESTO.AsInteger + 1;

      fDMCadMDFe.cdsMDFe.Edit;
      fDMCadMDFe.cdsMDFeNUM_MANIFESTO.AsInteger := vNumManifesto;
      fDMCadMDFe.cdsMDFe.Post;
    end;

    //prc_Recalcular;

    fDMCadMDFe.cdsMDFe.ApplyUpdates(0);

    dmDatabase.scoDados.Commit(ID);

  except
    on e: Exception do
    begin
      dmDatabase.scoDados.Rollback(ID);
      raise Exception.Create('Erro ao gravar o estoque: ' + #13 + e.Message);
    end;
  end;

  prc_Habilitar_CamposNota;

  prc_Consultar(vIDAux);
  prc_Posiciona_MDFe;
  RzPageControl1.ActivePage := TS_Consulta;
end;

procedure TfrmCadMDFe.prc_Inserir_Registro;
var
  vItemAux: Integer;
begin
  if fDMCadMDFe.cdsFilial.RecordCount > 1 then
  begin
    ffrmEscolhe_Filial := TfrmEscolhe_Filial.Create(self);
    ffrmEscolhe_Filial.ShowModal;
    FreeAndNil(ffrmEscolhe_Filial);
  end
  else
  begin
    fDMCadMDFe.cdsFilial.Last;
    vFilial      := fDMCadMDFe.cdsFilialID.AsInteger;
    vFilial_Nome := fDMCadMDFe.cdsFilialNOME.AsString;
  end;
  if vFilial <= 0 then
  begin
    ShowMessage('Filial não informada!');
    exit;
  end;

  fDMCadMDFe.cdsFilial.Locate('ID',vFilial,[loCaseInsensitive]);

  fDMCadMDFe.qFilial_MDFe.Close;
  fDMCadMDFe.qFilial_MDFe.ParamByName('ID').AsInteger := fDMCadMDFe.cdsFilialID.AsInteger;
  fDMCadMDFe.qFilial_MDFe.Open;

  fDMCadMDFe.qFilial_Download.Close;
  fDMCadMDFe.qFilial_Download.ParamByName('ID').AsInteger := fDMCadMDFe.cdsFilialID.AsInteger;
  fDMCadMDFe.qFilial_Download.Open;

  fDMCadMDFe.prc_Inserir;
  lblNome_Filial.Caption := vFilial_Nome;

  if fDMCadMDFe.cdsMDFe.State in [dsBrowse] then
    exit;

  fDMCadMDFe.cdsMDFeFILIAL.AsInteger  := vFilial;

  prc_Habilitar_CamposNota;

  RzPageControl1.ActivePage := TS_Cadastro;

  vItemAux := 0;
  while not fDMCadMDFe.qFilial_Download.Eof do
  begin
    vItemAux := vItemAux + 1;
    fDMCadMDFe.cdsMDFe_AutXML.Insert;
    fDMCadMDFe.cdsMDFe_AutXMLID.AsInteger      := fDMCadMDFe.cdsMDFeID.AsInteger;
    fDMCadMDFe.cdsMDFe_AutXMLITEM.AsInteger    := vItemAux;
    fDMCadMDFe.cdsMDFe_AutXMLPESSOA.AsString   := fDMCadMDFe.qFilial_DownloadPESSOA.AsString;
    fDMCadMDFe.cdsMDFe_AutXMLCNPJ_CPF.AsString := fDMCadMDFe.qFilial_DownloadCNPJ_CPF.AsString;
    fDMCadMDFe.cdsMDFe_AutXML.Post;
    fDMCadMDFe.qFilial_Download.Next;
  end;

  fDMCadMDFe.cdsMDFe_Cidade_Car.Insert;
  fDMCadMDFe.cdsMDFe_Cidade_CarID.AsInteger        := fDMCadMDFe.cdsMDFeID.AsInteger;
  fDMCadMDFe.cdsMDFe_Cidade_CarITEM.AsInteger      := 1;
  fDMCadMDFe.cdsMDFe_Cidade_CarID_CIDADE.AsInteger := fDMCadMDFe.cdsFilialID_CIDADE.AsInteger;
  fDMCadMDFe.cdsMDFe_Cidade_CarCIDADE.AsString     := fDMCadMDFe.cdsFilialCIDADE.AsString;
  fDMCadMDFe.cdsMDFe_Cidade_Car.Post;

  fDMCadMDFe.cdsNotas.Close;

  if trim(fDMCadMDFe.cdsMDFeUF_DESCARREGAMENTO.AsString) <> '' then
    prc_Abrir_Cidade(fDMCadMDFe.cdsMDFeUF_DESCARREGAMENTO.AsString);
end;

procedure TfrmCadMDFe.FormShow(Sender: TObject);
var
  vData: TDateTime;
  i: Integer;
begin
  fDMCadMDFe := TDMCadMDFe.Create(Self);

  oDBUtils.SetDataSourceProperties(Self, fDMCadMDFe);

  vData          := EncodeDate(YearOf(Date),MonthOf(Date),01);
  NxDatePicker1.Date := vData;
  NxDatePicker2.Date := Date;

  fDMCadMDFe.cdsConsulta.AFTERSCROLL := prc_scroll;
end;

procedure TfrmCadMDFe.prc_Consultar(ID: Integer);
begin
  fDMCadMDFe.cdsConsulta.Close;
  fDMCadMDFe.sdsConsulta.CommandText := fDMCadMDFe.ctConsulta;
  fDMCadMDFe.sdsConsulta.CommandText := fDMCadMDFe.sdsConsulta.CommandText + ' WHERE (0 = 0)';
  if ID > 0 then
    fDMCadMDFe.sdsConsulta.CommandText := fDMCadMDFe.sdsConsulta.CommandText + ' AND MDFE.ID = ' + IntToStr(ID)
  else
  begin
    if not(RxDBLookupCombo1.Text = '') then
      fDMCadMDFe.sdsConsulta.CommandText := fDMCadMDFe.sdsConsulta.CommandText + ' AND MDFE.FILIAL = ' + IntToStr(RxDBLookupCombo1.KeyValue);
    if (NxDatePicker1.Date > 10) and (trim(NxDatePicker1.Text) <> '') then
      fDMCadMDFe.sdsConsulta.CommandText := fDMCadMDFe.sdsConsulta.CommandText + ' AND MDFE.DTEMISSAO >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',NxDatePicker1.date));
    if (NxDatePicker2.Date > 10) and (trim(NxDatePicker1.Text) <> '') then
      fDMCadMDFe.sdsConsulta.CommandText := fDMCadMDFe.sdsConsulta.CommandText + ' AND MDFE.DTEMISSAO <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',NxDatePicker2.date));
  end;
  fDMCadMDFe.cdsConsulta.Open;
end;

procedure TfrmCadMDFe.btnConsultarClick(Sender: TObject);
begin
  prc_Consultar(0);
end;

procedure TfrmCadMDFe.btnCancelarClick(Sender: TObject);
begin
  if (fDMCadMDFe.cdsMDFe.State in [dsBrowse]) or not(fDMCadMDFe.cdsMDFe.Active) then
  begin
    RzPageControl1.ActivePage := TS_Consulta;
    exit;
  end;

  if MessageDlg('Deseja cancelar alteração/inclusão do registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  fDMCadMDFe.cdsMDFe.CancelUpdates;

  prc_Habilitar_CamposNota;

  TS_Consulta.TabEnabled    := True;
  RzPageControl1.ActivePage := TS_Consulta;
end;

procedure TfrmCadMDFe.SMDBGrid1DblClick(Sender: TObject);
begin
  RzPageControl1.ActivePage := TS_Cadastro;
end;

procedure TfrmCadMDFe.btnAlterarClick(Sender: TObject);
begin
  if not(fDMCadMDFe.cdsMDFe.Active) or (fDMCadMDFe.cdsMDFe.IsEmpty) or (fDMCadMDFe.cdsMDFeID.AsInteger < 1) then
    exit;

  if trim(fDMCadMDFe.cdsMDFeCHAVE_ACESSO.AsString) <> '' then
  begin
    MessageDlg('*** MDFe possui Chave de Acesso!', mtInformation, [mbOk], 0);
    exit;
  end;
  if trim(fDMCadMDFe.cdsMDFeRECIBO_MDFE.AsString) <> '' then
  begin
    if MessageDlg('MDFe possui Recibo, deseja alterar o registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
      exit;
  end;

  fDMCadMDFe.cdsMDFe.Edit;
  //TS_Consulta.TabEnabled := False;
  if trim(fDMCadMDFe.cdsMDFeRECIBO_MDFE.AsString) <> '' then
    fDMCadMDFe.cdsMDFeRECIBO_MDFE.AsString := '';
  prc_Habilitar_CamposNota;
  fDMCadMDFe.cdsNotas.Close;
end;

procedure TfrmCadMDFe.btnConfirmarClick(Sender: TObject);
begin
  prc_Gravar_Registro;
end;

procedure TfrmCadMDFe.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMCadMDFe);
end;

procedure TfrmCadMDFe.prc_Posiciona_MDFe;
begin
  fDMCadMDFe.prc_Localizar(fDMCadMDFe.cdsConsultaID.AsInteger);
  vFilial      := fDMCadMDFe.cdsMDFeFILIAL.AsInteger;
  vFilial_Nome := '';
  if fDMCadMDFe.cdsFilial.Locate('ID',vFilial,[loCaseInsensitive]) then
    vFilial_Nome := fDMCadMDFe.cdsFilialNOME_INTERNO.AsString;
  lblNome_Filial.Caption := vFilial_Nome;

  fDMCadMDFe.qFilial_MDFe.Close;
  fDMCadMDFe.qFilial_MDFe.ParamByName('ID').AsInteger := fDMCadMDFe.cdsFilialID.AsInteger;
  fDMCadMDFe.qFilial_MDFe.Open;

  fDMCadMDFe.qFilial_Download.Close;
  fDMCadMDFe.qFilial_Download.ParamByName('ID').AsInteger := fDMCadMDFe.cdsFilialID.AsInteger;
  fDMCadMDFe.qFilial_Download.Open;
end;

procedure TfrmCadMDFe.RzPageControl1Change(Sender: TObject);
begin
  if not(fDMCadMDFe.cdsMDFe.State in [dsEdit, dsInsert]) then
  begin
    if RzPageControl1.ActivePage = TS_Cadastro then
    begin
      if not(fDMCadMDFe.cdsConsulta.Active) or (fDMCadMDFe.cdsConsulta.IsEmpty) or (fDMCadMDFe.cdsConsultaID.AsInteger <= 0) then
        exit;
      prc_Posiciona_MDFe;
    end;
  end;
end;

procedure TfrmCadMDFe.prc_Habilitar_CamposNota;
begin
  TS_Consulta.TabEnabled := not(TS_Consulta.TabEnabled);

  btnConfirmar.Enabled   := not(btnConfirmar.Enabled);
  btnAlterar.Enabled     := not(btnAlterar.Enabled);

  btnConfirmar_Reboque.Enabled     := not(btnConfirmar_Reboque.Enabled);
  btnExcluir_Reboque.Enabled       := not(btnExcluir_Reboque.Enabled);
  btnConfirmar_Condutor.Enabled    := not(btnConfirmar_Condutor.Enabled);
  btnExcluir_Condutor.Enabled      := not(btnExcluir_Condutor.Enabled);
  btnConfirmar_CIOT.Enabled        := not(btnConfirmar_CIOT.Enabled);
  btnExcluir_CIOT.Enabled          := not(btnExcluir_CIOT.Enabled);
  btnConfirmar_Contratante.Enabled := not(btnConfirmar_Contratante.Enabled);
  btnExcluir_Contratante.Enabled   := not(btnExcluir_Contratante.Enabled);
  btnConfirmar_Pedagio.Enabled     := not(btnConfirmar_Pedagio.Enabled);
  btnExcluir_Pedagio.Enabled       := not(btnExcluir_Pedagio.Enabled);
  btnConfirmar_Lacre.Enabled       := not(btnConfirmar_Lacre.Enabled);
  btnExcluir_Lacre.Enabled         := not(btnExcluir_Lacre.Enabled);
  btnInserir_Seg.Enabled           := not(btnInserir_Seg.Enabled);
  btnAlterar_Seg.Enabled           := not(btnAlterar_Seg.Enabled);
  btnExcluir_Seg.Enabled           := not(btnExcluir_Seg.Enabled);
  btnConfirmar_Averbacao.Enabled   := not(btnConfirmar_Averbacao.Enabled);
  btnExcluir_Averbacao.Enabled     := not(btnExcluir_Averbacao.Enabled);
  btnConfirmar_AutXML.Enabled      := not(btnConfirmar_AutXML.Enabled);
  btnExcluir_AutXML.Enabled        := not(btnExcluir_AutXML.Enabled);

  //pnlCadastro.Enabled         := not(pnlCadastro.Enabled);
  pnlNota.Enabled          := not(pnlNota.Enabled);
  pnlDocumento.Enabled     := not(pnlDocumento.Enabled);

  btnConfirmar_NFe.Enabled := not(btnConfirmar_NFe.Enabled);
  btnExcluir_NFe.Enabled   := not(btnExcluir_NFe.Enabled);
  pnlNFe.Enabled           := not(pnlNFe.Enabled);
  pnlCarregamento.Enabled  := not(pnlCarregamento.Enabled);
  pnlLacre.Enabled         := not(pnlLacre.Enabled);
  pnlEnvioMDFe.Enabled     := not(pnlEnvioMDFe.Enabled);
  pnlVeiculoTracao.Enabled := not(pnlVeiculoTracao.Enabled);

  DBMemo1.ReadOnly := not(DBMemo1.ReadOnly);
  DBEdit4.ReadOnly := not(DBEdit4.ReadOnly);
end;

procedure TfrmCadMDFe.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose := fnc_Encerrar_Tela(fDMCadMDFe.cdsMDFe);
end;

procedure TfrmCadMDFe.btnPesquisarClick(Sender: TObject);
begin
  pnlPesquisa.Visible := not(pnlPesquisa.Visible);
end;

procedure TfrmCadMDFe.DBMemo1KeyPress(Sender: TObject; var Key: Char);
begin
  if ((Key = #13) or (Key = #10)) and (fDMCadMDFe.cdsMDFe.State in [dsEdit,dsInsert]) then
    Key := ' ';
end;

procedure TfrmCadMDFe.MaskEdit1Exit(Sender: TObject);
var
  vAux: String;
begin
  vAux := Monta_Numero(MaskEdit1.Text,0);
  if (trim(vAux) = '') or (copy(vAux,1,9) = '000000000') then
    exit;
  if RadioButton7.Checked then
  begin
    if not ValidaCNPJ(MaskEdit1.Text) then
    begin
      ShowMessage('CNPJ incorreto!');
      MaskEdit1.Clear;
      MaskEdit1.SetFocus;
    end;
  end
  else
  if RadioButton8.Checked then
  begin
    if not ValidaCPF(MaskEdit1.Text) then
    begin
      ShowMessage('CPF incorreto!');
      MaskEdit1.Clear;
      MaskEdit1.SetFocus;
    end;
  end;
end;

procedure TfrmCadMDFe.btnConfirmar_AutXMLClick(Sender: TObject);
var
  vAux: String;
  vItemAux: Integer;
begin
  vAux := Monta_Numero(MaskEdit1.Text,0);
  if trim(vAux) = '' then
  begin
    MessageDlg('*** Documento não informado!', mtInformation, [mbOk], 0);
    exit;
  end;

  fDMCadMDFe.cdsMDFe_AutXML.Last;
  vItemAux := fDMCadMDFe.cdsMDFe_AutXMLITEM.AsInteger;  

  fDMCadMDFe.cdsMDFe_AutXML.Insert;
  fDMCadMDFe.cdsMDFe_AutXMLID.AsInteger      := fDMCadMDFe.cdsMDFeID.AsInteger;
  fDMCadMDFe.cdsMDFe_AutXMLITEM.AsInteger    := vItemAux + 1;
  if RadioButton7.Checked then
    fDMCadMDFe.cdsMDFe_AutXMLPESSOA.AsString := 'F'
  else
  if RadioButton7.Checked then
    fDMCadMDFe.cdsMDFe_AutXMLPESSOA.AsString := 'J';
  fDMCadMDFe.cdsMDFe_AutXMLCNPJ_CPF.AsString := MaskEdit1.Text;
  fDMCadMDFe.cdsMDFe_AutXML.Post;
end;

procedure TfrmCadMDFe.btnExcluir_AutXMLClick(Sender: TObject);
begin
  if fDMCadMDFe.cdsMDFe_AutXML.IsEmpty then
    exit;

  if MessageDlg('Deseja excluir o registro selecionado?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  fDMCadMDFe.cdsMDFe_AutXML.Delete;
end;

procedure TfrmCadMDFe.btnConfirmar_AverbacaoClick(Sender: TObject);
begin
  if fDMCadMDFe.cdsMDFe_Seguradora.IsEmpty then
  begin
    MessageDlg('*** Não existe Seguradora cadastrada!', mtError, [mbOk], 0);
    exit;
  end;
  if trim(edtAverbacao.Text) = '' then
    exit;

  fDMCadMDFe.cdsMDFe_Averbacao.Insert;
  fDMCadMDFe.cdsMDFe_AverbacaoID.AsInteger   := fDMCadMDFe.cdsMDFeID.AsInteger;
  fDMCadMDFe.cdsMDFe_AverbacaoITEM.AsInteger := fDMCadMDFe.cdsMDFe_SeguradoraITEM.AsInteger;
  fDMCadMDFe.cdsMDFe_AverbacaoNUM_AVERBACAO.AsString := edtAverbacao.Text;
  fDMCadMDFe.cdsMDFe_Averbacao.Post;
  edtAverbacao.Clear;
  edtAverbacao.SetFocus;
end;

procedure TfrmCadMDFe.RzPageControl2Change(Sender: TObject);
begin
  if RzPageControl2.ActivePage = TS_Carregamento then
    prc_Abrir_Cidade(fDMCadMDFe.cdsMDFeUF_CARREGAMENTO.AsString)
  else
  if RzPageControl2.ActivePage = TS_Rodoviario then
  begin
    if (fDMCadMDFe.cdsMDFe.State in [dsEdit,dsInsert]) and (trim(fDMCadMDFe.cdsMDFeRNTRC.AsString) = '') then
      fDMCadMDFe.cdsMDFeRNTRC.AsString := fDMCadMDFe.qFilial_MDFeRNTRC.AsString;
  end;                  
end;

procedure TfrmCadMDFe.prc_Abrir_Cidade(UF: String);
begin
  fDMCadMDFe.cdsCidade.Close;
  fDMCadMDFe.sdsCidade.ParamByName('UF').AsString := UF;
  fDMCadMDFe.cdsCidade.Open;
end;

procedure TfrmCadMDFe.RzGroupBox3Enter(Sender: TObject);
begin
  if fDMCadMDFe.cdsMDFe.State in [dsEdit,dsInsert] then
    prc_Abrir_Cidade(fDMCadMDFe.cdsMDFeUF_CARREGAMENTO.AsString);
end;

procedure TfrmCadMDFe.NxButton1Click(Sender: TObject);
var
  vItemAux: Integer;
begin
  fDMCadMDFe.vMsgMDFe := '';
  if trim(RxDBLookupCombo5.Text) = '' then
    fDMCadMDFe.vMsgMDFe := '*** Município não informado! ';
  if fDMCadMDFe.cdsMDFe_Cidade_Car.Locate('ID_CIDADE',RxDBLookupCombo5.KeyValue,[loCaseInsensitive]) then
    fDMCadMDFe.vMsgMDFe := '*** Município já informado! ';
  if trim(fDMCadMDFe.vMsgMDFe) <> '' then
  begin
    MessageDlg(fDMCadMDFe.vMsgMDFe, mtInformation, [mbOk], 0);
    RxDBLookupCombo5.SetFocus;
    exit;
  end;

  fDMCadMDFe.cdsMDFe_Cidade_Car.Last;
  vItemAux := fDMCadMDFe.cdsMDFe_Cidade_CarITEM.AsInteger;
  fDMCadMDFe.cdsMDFe_Cidade_Car.Insert;
  fDMCadMDFe.cdsMDFe_Cidade_CarID.AsInteger   := fDMCadMDFe.cdsMDFeID.AsInteger;
  fDMCadMDFe.cdsMDFe_Cidade_CarITEM.AsInteger := vItemAux + 1;
  fDMCadMDFe.cdsMDFe_Cidade_CarID_CIDADE.AsInteger := RxDBLookupCombo5.KeyValue;
  fDMCadMDFe.cdsMDFe_Cidade_CarCIDADE.AsString     := RxDBLookupCombo5.Text;
  fDMCadMDFe.cdsMDFe_Cidade_Car.Post;

  RxDBLookupCombo5.ClearValue;
  RxDBLookupCombo5.SetFocus;
end;

procedure TfrmCadMDFe.NxButton5Click(Sender: TObject);
begin
  fDMCadMDFe.vMsgMDFe := '';
  if trim(RxDBLookupCombo7.Text) = '' then
  begin
    MessageDlg('*** Município não informado! ', mtInformation, [mbOk], 0);
    exit;
  end;
  prc_Gravar_Cidade_Des(RxDBLookupCombo7.KeyValue,RxDBLookupCombo7.Text);
  RxDBLookupCombo7.ClearValue;
  RxDBLookupCombo7.SetFocus;
end;

procedure TfrmCadMDFe.NxButton3Click(Sender: TObject);
var
  vItemAux: Integer;
begin
  if trim(RxDBLookupCombo6.Text) = '' then
    fDMCadMDFe.vMsgMDFe := '*** UF não informada! ';
  if fDMCadMDFe.cdsMDFe_Percurso.Locate('UF',RxDBLookupCombo6.Text,[loCaseInsensitive]) then
    fDMCadMDFe.vMsgMDFe := '*** UF já informada! ';
  if trim(fDMCadMDFe.vMsgMDFe) <> '' then
  begin
    MessageDlg(fDMCadMDFe.vMsgMDFe, mtInformation, [mbOk], 0);
    RxDBLookupCombo6.SetFocus;
    exit;
  end;
  fDMCadMDFe.cdsMDFe_Percurso.Last;
  vItemAux := fDMCadMDFe.cdsMDFe_PercursoITEM.AsInteger;
  fDMCadMDFe.cdsMDFe_Percurso.Insert;
  fDMCadMDFe.cdsMDFe_PercursoID.AsInteger   := fDMCadMDFe.cdsMDFeID.AsInteger;
  fDMCadMDFe.cdsMDFe_PercursoITEM.AsInteger := vItemAux + 1;
  fDMCadMDFe.cdsMDFe_PercursoUF.AsString    := RxDBLookupCombo6.Text;
  fDMCadMDFe.cdsMDFe_Percurso.Post;
  RxDBLookupCombo6.ClearValue;
  RxDBLookupCombo6.SetFocus;
end;

procedure TfrmCadMDFe.NxButton2Click(Sender: TObject);
begin
  if fDMCadMDFe.cdsMDFe_Cidade_Car.IsEmpty then
    exit;
  if MessageDlg('Deseja excluir o Município selecionado?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;
  fDMCadMDFe.cdsMDFe_Cidade_Car.Delete;
end;

procedure TfrmCadMDFe.NxButton4Click(Sender: TObject);
begin
  if fDMCadMDFe.cdsMDFe_Percurso.IsEmpty then
    exit;
  if MessageDlg('Deseja excluir a UF selecionada?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;
  fDMCadMDFe.cdsMDFe_Percurso.Delete;
end;

procedure TfrmCadMDFe.NxButton6Click(Sender: TObject);
begin
  if fDMCadMDFe.cdsMDFe_Cidade_Des.IsEmpty then
    exit;
  if MessageDlg('Deseja excluir o Município selecionado?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;
  fDMCadMDFe.cdsMDFe_NFe.First;
  while not fDMCadMDFe.cdsMDFe_NFe.Eof do
    fDMCadMDFe.cdsMDFe_NFe.Delete;
  fDMCadMDFe.cdsMDFe_Cidade_Des.Delete;
end;

procedure TfrmCadMDFe.btnConfirmar_CondutorClick(Sender: TObject);
var
  vAux: String;
  vItemAux: Integer;
begin
  fDMCadMDFe.vMsgMDFe := '';
  if trim(RxDBLookupCombo2.Text) = '' then
    fDMCadMDFe.vMsgMDFe := fDMCadMDFe.vMsgMDFe + #13 + '*** Nome não informado!';
  if trim(fDMCadMDFe.vMsgMDFe) <> '' then
  begin
    MessageDlg(fDMCadMDFe.vMsgMDFe, mtInformation, [mbOk], 0);
    RxDBLookupCombo2.SetFocus;
    exit;
  end;
  fDMCadMDFe.cdsCondutor.Locate('ID',RxDBLookupCombo2.KeyValue,[loCaseInsensitive]);

  fDMCadMDFe.cdsMDFe_Condutor.Last;
  vItemAux := fDMCadMDFe.cdsMDFe_CondutorITEM.AsInteger;
  fDMCadMDFe.cdsMDFe_Condutor.Insert;
  fDMCadMDFe.cdsMDFe_CondutorID.AsInteger   := fDMCadMDFe.cdsMDFeID.AsInteger;
  fDMCadMDFe.cdsMDFe_CondutorITEM.AsInteger := vItemAux + 1;
  fDMCadMDFe.cdsMDFe_CondutorNOME.AsString  := fDMCadMDFe.cdsCondutorNOME.AsString;
  fDMCadMDFe.cdsMDFe_CondutorCPF.AsString   := fDMCadMDFe.cdsCondutorCPF.AsString;
  fDMCadMDFe.cdsMDFe_CondutorID_CONDUTOR.AsInteger := RxDBLookupCombo2.KeyValue;
  fDMCadMDFe.cdsMDFe_Condutor.Post;
end;

procedure TfrmCadMDFe.btnConfirmar_ReboqueClick(Sender: TObject);
var
  vItemAux: Integer;
begin
  if trim(RxDBLookupCombo9.Text) = '' then
  begin
    MessageDlg('*** Reboque não informado!', mtInformation, [mbOk], 0);
    RxDBLookupCombo9.SetFocus;
    exit;
  end;

  fDMCadMDFe.cdsMDFe_Reboque.Last;
  vItemAux := fDMCadMDFe.cdsMDFe_ReboqueITEM.AsInteger;
  fDMCadMDFe.cdsMDFe_Reboque.Insert;
  fDMCadMDFe.cdsMDFe_ReboqueID.AsInteger   := fDMCadMDFe.cdsMDFeID.AsInteger;
  fDMCadMDFe.cdsMDFe_ReboqueITEM.AsInteger := vItemAux + 1;
  fDMCadMDFe.cdsMDFe_ReboqueID_VEICULO.AsInteger := RxDBLookupCombo9.KeyValue;
  fDMCadMDFe.cdsMDFe_ReboqueclPlaca.AsString := 'aaa';
  fDMCadMDFe.cdsMDFe_ReboqueclCapacidade_KG.AsFloat := 99;
  fDMCadMDFe.cdsMDFe_ReboqueclCapacidade_M3.AsFloat := 0;
  fDMCadMDFe.cdsMDFe_ReboqueclTara.AsFloat := 0;
  fDMCadMDFe.cdsMDFe_Reboque.Post;
end;

procedure TfrmCadMDFe.btnExcluir_CondutorClick(Sender: TObject);
begin
  if fDMCadMDFe.cdsMDFe_Condutor.IsEmpty then
    exit;
  if MessageDlg('Deseja excluir o Condutor selecionado?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;
  fDMCadMDFe.cdsMDFe_Condutor.Delete;
end;

procedure TfrmCadMDFe.btnExcluir_ReboqueClick(Sender: TObject);
begin
  if fDMCadMDFe.cdsMDFe_Reboque.IsEmpty then
    exit;
  if MessageDlg('Deseja excluir o Condutor selecionado?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;
  fDMCadMDFe.cdsMDFe_Reboque.Delete;
end;

procedure TfrmCadMDFe.RadioButton4Click(Sender: TObject);
begin
  if RadioButton4.Checked then
    MaskEdit5.EditMask := '000.000.000-00';
end;

procedure TfrmCadMDFe.RadioButton7Click(Sender: TObject);
begin
  if RadioButton7.Checked then
    MaskEdit1.EditMask := '000.000.000-00';
end;

procedure TfrmCadMDFe.RadioButton8Click(Sender: TObject);
begin
  if RadioButton8.Checked then
    MaskEdit1.EditMask := '00.000.000/0000-00';
end;

procedure TfrmCadMDFe.RadioButton3Click(Sender: TObject);
begin
  if RadioButton3.Checked then
    MaskEdit5.EditMask := '00.000.000/0000-00';
end;

procedure TfrmCadMDFe.MaskEdit5Exit(Sender: TObject);
var
  vAux: String;
begin
  vAux := Monta_Numero(MaskEdit5.Text,0);
  if (trim(vAux) = '') or (copy(vAux,1,9) = '000000000') then
    exit;
  if RadioButton3.Checked then
  begin
    if not ValidaCNPJ(MaskEdit5.Text) then
    begin
      ShowMessage('CNPJ incorreto!');
      MaskEdit5.Clear;
      MaskEdit5.SetFocus;
    end;
  end
  else
  if RadioButton4.Checked then
  begin
    if not ValidaCPF(MaskEdit5.Text) then
    begin
      ShowMessage('CPF incorreto!');
      MaskEdit5.Clear;
      MaskEdit5.SetFocus;
    end;
  end;
end;

procedure TfrmCadMDFe.btnConfirmar_CIOTClick(Sender: TObject);
var
  vItemAux: Integer;
  vAux: String;
begin
  fDMCadMDFe.vMsgMDFe := '';
  if CurrencyEdit3.AsInteger <= 0 then
    fDMCadMDFe.vMsgMDFe := fDMCadMDFe.vMsgMDFe + #13 + '*** CIOT não informado!';
  vAux := Monta_Numero(MaskEdit5.Text,0);
  if trim(vAux) = '' then
    fDMCadMDFe.vMsgMDFe := fDMCadMDFe.vMsgMDFe + #13 + '*** CPF/CNPJ não informado!';
  if trim(fDMCadMDFe.vMsgMDFe) <> '' then
  begin
    MessageDlg(fDMCadMDFe.vMsgMDFe, mtInformation, [mbOk], 0);
    CurrencyEdit3.SetFocus;
    exit;
  end;
  
  fDMCadMDFe.cdsMDFe_CIOT.Last;
  vItemAux := fDMCadMDFe.cdsMDFe_CIOTITEM.AsInteger;
  fDMCadMDFe.cdsMDFe_CIOT.Insert;
  fDMCadMDFe.cdsMDFe_CIOTID.AsInteger   := fDMCadMDFe.cdsMDFeID.AsInteger;
  fDMCadMDFe.cdsMDFe_CIOTITEM.AsInteger := vItemAux + 1;
  fDMCadMDFe.cdsMDFe_CIOTCOD_CIOT.AsString := CurrencyEdit3.Text;
  fDMCadMDFe.cdsMDFe_CIOTCNPJ_CPF.AsString := MaskEdit5.Text;
  if RadioButton4.Checked then
    fDMCadMDFe.cdsMDFe_CIOTPESSOA.AsString := 'F'
  else
  if RadioButton3.Checked then
    fDMCadMDFe.cdsMDFe_CIOTPESSOA.AsString := 'J';
  fDMCadMDFe.cdsMDFe_CIOT.Post;
  CurrencyEdit3.Clear;
  MaskEdit5.Clear;
  CurrencyEdit3.SetFocus;
end;

procedure TfrmCadMDFe.RadioButton5Click(Sender: TObject);
begin
  if RadioButton5.Checked then
    MaskEdit6.EditMask := '000.000.000-00';
end;

procedure TfrmCadMDFe.RadioButton6Click(Sender: TObject);
begin
  if RadioButton6.Checked then
    MaskEdit6.EditMask := '00.000.000/0000-00';
end;

procedure TfrmCadMDFe.MaskEdit6Exit(Sender: TObject);
var
  vAux: String;
begin
  vAux := Monta_Numero(MaskEdit6.Text,0);
  if (trim(vAux) = '') or (copy(vAux,1,9) = '000000000') then
    exit;
  if RadioButton6.Checked then
  begin
    if not ValidaCNPJ(MaskEdit6.Text) then
    begin
      ShowMessage('CNPJ incorreto!');
      MaskEdit6.Clear;
      MaskEdit6.SetFocus;
    end;
  end
  else
  if RadioButton5.Checked then
  begin
    if not ValidaCPF(MaskEdit6.Text) then
    begin
      ShowMessage('CPF incorreto!');
      MaskEdit6.Clear;
      MaskEdit6.SetFocus;
    end;
  end;
end;

procedure TfrmCadMDFe.btnExcluir_CIOTClick(Sender: TObject);
begin
  if fDMCadMDFe.cdsMDFe_CIOT.IsEmpty then
    exit;
  if MessageDlg('Deseja excluir o registro selecionado?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;
  fDMCadMDFe.cdsMDFe_CIOT.Delete;
end;

procedure TfrmCadMDFe.btnConfirmar_ContratanteClick(Sender: TObject);
var
  vItemAux: Integer;
  vAux: String;
begin
  vAux := Monta_Numero(MaskEdit6.Text,0);
  if trim(vAux) = '' then
  begin
    MessageDlg('*** CPF/CNPJ não informado!', mtError, [mbOk], 0);
    MaskEdit6.SetFocus;
    exit;
  end;
  fDMCadMDFe.cdsMDFe_Contratante.Last;
  vItemAux := fDMCadMDFe.cdsMDFe_ContratanteITEM.AsInteger;
  fDMCadMDFe.cdsMDFe_Contratante.Insert;
  fDMCadMDFe.cdsMDFe_ContratanteID.AsInteger := fDMCadMDFe.cdsMDFe_ContratanteID.AsInteger;
  fDMCadMDFe.cdsMDFe_ContratanteITEM.AsInteger := vItemAux + 1;
  if RadioButton5.Checked then
    fDMCadMDFe.cdsMDFe_ContratantePESSOA.AsString := 'F'
  else
  if RadioButton6.Checked then
    fDMCadMDFe.cdsMDFe_ContratantePESSOA.AsString := 'J';
  fDMCadMDFe.cdsMDFe_ContratanteCNPJ_CPF.AsString := MaskEdit6.Text;
  fDMCadMDFe.cdsMDFe_Contratante.Post;
  MaskEdit6.Clear;
  MaskEdit6.SetFocus;
end;

procedure TfrmCadMDFe.btnExcluir_ContratanteClick(Sender: TObject);
begin
  if fDMCadMDFe.cdsMDFe_Contratante.IsEmpty then
    exit;
  if MessageDlg('Deseja excluir o contratante selecionado?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;
  fDMCadMDFe.cdsMDFe_Contratante.Delete;
end;

procedure TfrmCadMDFe.MaskEdit3Exit(Sender: TObject);
var
  vAux: String;
begin
  vAux := Monta_Numero(MaskEdit6.Text,0);
  if (trim(vAux) = '') or (copy(vAux,1,9) = '000000000') then
    exit;
  if (RadioButton6.Checked) and not(ValidaCNPJ(MaskEdit6.Text)) then
  begin
    ShowMessage('CNPJ incorreto!');
    MaskEdit3.Clear;
    MaskEdit3.SetFocus;
  end;
end;

procedure TfrmCadMDFe.RadioButton1Click(Sender: TObject);
begin
  if RadioButton1.Checked then
    MaskEdit4.EditMask := '000.000.000-00';
end;

procedure TfrmCadMDFe.RadioButton2Click(Sender: TObject);
begin
  if RadioButton2.Checked then
    MaskEdit4.EditMask := '00.000.000/0000-00';
end;

procedure TfrmCadMDFe.MaskEdit4Exit(Sender: TObject);
var
  vAux: String;
begin
  vAux := Monta_Numero(MaskEdit4.Text,0);
  if (trim(vAux) = '') or (copy(vAux,1,9) = '000000000') then
    exit;
  if (RadioButton2.Checked) and not(ValidaCNPJ(MaskEdit4.Text)) then
  begin
    ShowMessage('CNPJ incorreto!');
    MaskEdit4.Clear;
    MaskEdit4.SetFocus;
  end
  else
  if (RadioButton1.Checked) and not(ValidaCPF(MaskEdit4.Text)) then
  begin
    ShowMessage('CPF incorreto!');
    MaskEdit4.Clear;
    MaskEdit4.SetFocus;
  end;
end;

procedure TfrmCadMDFe.btnConfirmar_PedagioClick(Sender: TObject);
var
  vItemAux: Integer;
  vAux: String;
begin
  fDMCadMDFe.vMsgMDFe := '';
  vAux := Monta_Numero(MaskEdit3.Text,0);
  if trim(vAux) = '' then
    fDMCadMDFe.vMsgMDFe := fDMCadMDFe.vMsgMDFe + #13 + '*** CNPJ da empresa fornecedora do Vale Pedágio não informado!';
  if CurrencyEdit1.AsInteger <= 0 then
    fDMCadMDFe.vMsgMDFe := fDMCadMDFe.vMsgMDFe + #13 + '*** Número do comprovante da compra não informado!';
  if CurrencyEdit2.Value <= 0 then
    fDMCadMDFe.vMsgMDFe := fDMCadMDFe.vMsgMDFe + #13 + '*** Valor do Pedágio não informado!';
  vAux := Monta_Numero(MaskEdit4.Text,0);
  if trim(vAux) = '' then
    fDMCadMDFe.vMsgMDFe := fDMCadMDFe.vMsgMDFe + #13 + '*** CNPJ/CPF do responsável pelo pagamento do Vale-Pedágio!';
  if trim(fDMCadMDFe.vMsgMDFe) <> '' then
  begin
    MessageDlg(fDMCadMDFe.vMsgMDFe, mtInformation, [mbOk], 0);
    MaskEdit3.SetFocus;
    exit;
  end;
  fDMCadMDFe.cdsMDFe_Pedagio.Last;
  vItemAux := fDMCadMDFe.cdsMDFe_PedagioITEM.AsInteger;
  fDMCadMDFe.cdsMDFe_Pedagio.Insert;
  fDMCadMDFe.cdsMDFe_PedagioID.AsInteger := fDMCadMDFe.cdsMDFeID.AsInteger;
  fDMCadMDFe.cdsMDFe_PedagioITEM.AsInteger := vItemAux + 1;
  fDMCadMDFe.cdsMDFe_PedagioCNPJ.AsString := MaskEdit3.Text;
  if RadioButton1.Checked then
    fDMCadMDFe.cdsMDFe_PedagioPESSOA_PAG.AsString := 'F'
  else
  if RadioButton2.Checked then
    fDMCadMDFe.cdsMDFe_PedagioPESSOA_PAG.AsString := 'J';
  fDMCadMDFe.cdsMDFe_PedagioCNPJ_CPF_PAG.AsString := MaskEdit4.Text;
  fDMCadMDFe.cdsMDFe_PedagioNUM_COMPROVANTE.AsString := CurrencyEdit1.Text;
  fDMCadMDFe.cdsMDFe_PedagioVLR_PEDAGIO.AsFloat := CurrencyEdit2.Value;
  fDMCadMDFe.cdsMDFe_Pedagio.Post;
  MaskEdit3.Clear;
  MaskEdit4.Clear;
  CurrencyEdit1.Clear;
  CurrencyEdit2.Clear;
  MaskEdit3.SetFocus;
end;

procedure TfrmCadMDFe.btnInserir_SegClick(Sender: TObject);
var
  ffrmCadMDFe_Seguradora: TfrmCadMDFe_Seguradora;
  vItemAux: Integer;
begin
  fDMCadMDFe.cdsMDFe_Seguradora.Last;
  vItemAux := fDMCadMDFe.cdsMDFe_SeguradoraITEM.AsInteger;
  fDMCadMDFe.cdsMDFe_Seguradora.Insert;
  fDMCadMDFe.cdsMDFe_SeguradoraID.AsInteger   := fDMCadMDFe.cdsMDFeID.AsInteger;
  fDMCadMDFe.cdsMDFe_SeguradoraITEM.AsInteger := vItemAux + 1;
  
  ffrmCadMDFe_Seguradora := TfrmCadMDFe_Seguradora.Create(self);
  ffrmCadMDFe_Seguradora.fDMCadMDFe   := fDMCadMDFe;
  ffrmCadMDFe_Seguradora.ShowModal;
  FreeAndNil(ffrmCadMDFe_Seguradora);
end;

procedure TfrmCadMDFe.btnAlterar_SegClick(Sender: TObject);
var
  ffrmCadMDFe_Seguradora: TfrmCadMDFe_Seguradora;
  vItemAux: Integer;
begin
  if fDMCadMDFe.cdsMDFe_Seguradora.IsEmpty then
    exit;

  if MessageDlg('Deseja excluir o registro selecionado?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  fDMCadMDFe.cdsMDFe_Seguradora.Edit;
  ffrmCadMDFe_Seguradora := TfrmCadMDFe_Seguradora.Create(self);
  ffrmCadMDFe_Seguradora.fDMCadMDFe   := fDMCadMDFe;
  ffrmCadMDFe_Seguradora.ShowModal;
  FreeAndNil(ffrmCadMDFe_Seguradora);
end;

procedure TfrmCadMDFe.btnExcluir_SegClick(Sender: TObject);
begin
  if fDMCadMDFe.cdsMDFe_Seguradora.IsEmpty then
    exit;
    
  if MessageDlg('Deseja excluir o registro selecionado?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  fDMCadMDFe.cdsMDFe_Seguradora.Delete;
end;

procedure TfrmCadMDFe.btnExcluir_AverbacaoClick(Sender: TObject);
begin
  if fDMCadMDFe.cdsMDFe_Averbacao.IsEmpty then
    exit;

  if MessageDlg('Deseja excluir o Número da Averbação?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  fDMCadMDFe.cdsMDFe_Averbacao.Post;
end;

procedure TfrmCadMDFe.Edit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  ffrmSel_NFe_MDFe: TfrmSel_NFe_MDFe;
begin
  if (Key = Vk_F2) and (fDMCadMDFe.cdsMDFe.State in [dsEdit,dsInsert]) then
  begin
    if trim(fDMCadMDFe.cdsMDFeUF_DESCARREGAMENTO.AsString) = '' then
      MessageDlg('*** UF Descarregamento não informada!', mtError, [mbOk], 0)
    else
    begin
      ffrmSel_NFe_MDFe := TfrmSel_NFe_MDFe.Create(Self);
      ffrmSel_NFe_MDFe.fDMCadMDFe := fDMCadMDFe;
      ffrmSel_NFe_MDFe.vUsarCidade_NFe := ckUsarCidade_NFe.Checked;
      ffrmSel_NFe_MDFe.ShowModal;
      FreeAndNil(ffrmSel_NFe_MDFe);
      prc_Recalcular;
    end;
  end;
end;

procedure TfrmCadMDFe.btnConfirmar_NFeClick(Sender: TObject);
var
  vItemAux: Integer;
begin
  if fDMCadMDFe.cdsMDFe_Cidade_DesID_CIDADE.AsInteger <= 0 then
  begin
    MessageDlg('*** Município do descarregamento não informado!', mtError, [mbOk], 0);
    exit;
  end;

  if Length(Edit2.Text) < 44 then
  begin
    MessageDlg('*** Chave de Acesso da NFe está incorreta!', mtError, [mbOk], 0);
    exit;
  end;

  fDMCadMDFe.cdsMDFe_NFe.Last;
  vItemAux := fDMCadMDFe.cdsMDFe_NFeITEM_NFE.AsInteger;
  fDMCadMDFe.cdsMDFe_NFe.Insert;
  fDMCadMDFe.cdsMDFe_NFeID.AsInteger   := fDMCadMDFe.cdsMDFeID.AsInteger;
  fDMCadMDFe.cdsMDFe_NFeITEM.AsInteger := fDMCadMDFe.cdsMDFe_Cidade_DesITEM.AsInteger;
  fDMCadMDFe.cdsMDFe_NFeITEM_NFE.AsInteger := vItemAux + 1;
  fDMCadMDFe.cdsMDFe_NFeCHAVE_ACESSO.AsString := Edit2.Text;
  fDMCadMDFe.cdsMDFe_NFeVLR_TOTAL.AsFloat     := CurrencyEdit4.Value;
  fDMCadMDFe.cdsMDFe_NFePESO_BRUTO.AsFloat    := CurrencyEdit5.Value;
  fDMCadMDFe.cdsMDFe_NFe.Post;
  Edit2.Clear;
  CurrencyEdit4.Clear;
  CurrencyEdit5.Clear;
  RzPageControl2.ActivePage := TS_NFe;
  Edit2.SetFocus;

  //Foi alterado 07/09/2017
  //fDMCadMDFe.qTotalNota.Close;
  //fDMCadMDFe.qTotalNota.ParamByName('NFECHAVEACESSO').AsString := fDMCadMDFe.cdsMDFe_NFeCHAVE_ACESSO.AsString;
  //fDMCadMDFe.qTotalNota.Open;
  //fDMCadMDFe.cdsMDFePESO_BRUTO.AsFloat := fDMCadMDFe.cdsMDFePESO_BRUTO.AsFloat + fDMCadMDFe.qTotalNotaPESOBRUTO.AsFloat;
  //fDMCadMDFe.cdsMDFeVLR_TOTAL.AsFloat  := fDMCadMDFe.cdsMDFeVLR_TOTAL.AsFloat  + fDMCadMDFe.qTotalNotaVLR_NOTA.AsFloat;
  //fDMCadMDFe.cdsMDFeQTD_NFE.AsInteger  := fDMCadMDFe.cdsMDFeQTD_NFE.AsInteger + 1;

  prc_Recalcular;
end;

procedure TfrmCadMDFe.btnExcluir_NFeClick(Sender: TObject);
begin
  if fDMCadMDFe.cdsMDFe_NFe.IsEmpty then
    exit;
  if MessageDlg('Deseja excluir a Chave de Acesso Selecionada?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  if fDMCadMDFe.cdsNotas.Active then
  begin
    if fDMCadMDFe.cdsNotas.Locate('NFECHAVEACESSO',fDMCadMDFe.cdsMDFe_NFeCHAVE_ACESSO.AsString,[loCaseInsensitive]) then
    begin
      fDMCadMDFe.cdsNotas.Edit;
      fDMCadMDFe.cdsNotasGEROU_MDFE.AsString := 'N';
      fDMCadMDFe.cdsNotas.Post;
    end;
  end;

  //Foi alterado 07/09/2017
  //fDMCadMDFe.qTotalNota.Close;
  //fDMCadMDFe.qTotalNota.ParamByName('NFECHAVEACESSO').AsString := fDMCadMDFe.cdsMDFe_NFeCHAVE_ACESSO.AsString;
  //fDMCadMDFe.qTotalNota.Open;
  //fDMCadMDFe.cdsMDFePESO_BRUTO.AsFloat := fDMCadMDFe.cdsMDFePESO_BRUTO.AsFloat - fDMCadMDFe.qTotalNotaPESOBRUTO.AsFloat;
  //fDMCadMDFe.cdsMDFeVLR_TOTAL.AsFloat  := fDMCadMDFe.cdsMDFeVLR_TOTAL.AsFloat  - fDMCadMDFe.qTotalNotaVLR_NOTA.AsFloat;
  //fDMCadMDFe.cdsMDFeQTD_NFE.AsInteger  := fDMCadMDFe.cdsMDFeQTD_NFE.AsInteger - 1;
  fDMCadMDFe.cdsMDFe_NFe.Delete;
  fDMCadMDFe.cdsMDFe_NFe.ApplyUpdates(0);
  if not(fDMCadMDFe.cdsMDFe.State in [dsEdit,dsInsert]) then
    fDMCadMDFe.cdsMDFe.Edit;
  prc_Recalcular;
end;

procedure TfrmCadMDFe.BitBtn1Click(Sender: TObject);
begin
  prc_Recalcular;
end;

procedure TfrmCadMDFe.prc_Recalcular;
begin
  SMDBGrid2.DisableScroll;

  fDMCadMDFe.cdsMDFePESO_BRUTO.AsFloat := 0;
  fDMCadMDFe.cdsMDFeVLR_TOTAL.AsFloat  := 0;
  fDMCadMDFe.cdsMDFeQTD_NFE.AsInteger  := 0;

  fDMCadMDFe.cdsMDFe_Cidade_Des.First;
  while not fDMCadMDFe.cdsMDFe_Cidade_Des.Eof do
  begin
    fDMCadMDFe.cdsMDFe_NFe.First;
    while not fDMCadMDFe.cdsMDFe_NFe.Eof do
    begin
      //07/09/2017  Foi incluido os campos de valor e peso na tabela da MDFe para informar
      {fDMCadMDFe.qTotalNota.Close;
      fDMCadMDFe.qTotalNota.ParamByName('NFECHAVEACESSO').AsString := fDMCadMDFe.cdsMDFe_NFeCHAVE_ACESSO.AsString;
      fDMCadMDFe.qTotalNota.Open;
      fDMCadMDFe.cdsMDFePESO_BRUTO.AsFloat := fDMCadMDFe.cdsMDFePESO_BRUTO.AsFloat + fDMCadMDFe.qTotalNotaPESOBRUTO.AsFloat;
      fDMCadMDFe.cdsMDFeVLR_TOTAL.AsFloat  := fDMCadMDFe.cdsMDFeVLR_TOTAL.AsFloat  + fDMCadMDFe.qTotalNotaVLR_NOTA.AsFloat;}

      fDMCadMDFe.cdsMDFePESO_BRUTO.AsFloat := StrToFloat(FormatFloat('0.0000',fDMCadMDFe.cdsMDFePESO_BRUTO.AsFloat + fDMCadMDFe.cdsMDFe_NFePESO_BRUTO.AsFloat));
      fDMCadMDFe.cdsMDFeVLR_TOTAL.AsFloat  := StrToFloat(FormatFloat('0.00',fDMCadMDFe.cdsMDFeVLR_TOTAL.AsFloat  + fDMCadMDFe.cdsMDFe_NFeVLR_TOTAL.AsFloat));
      fDMCadMDFe.cdsMDFeQTD_NFE.AsInteger  := fDMCadMDFe.cdsMDFeQTD_NFE.AsInteger + 1;

      fDMCadMDFe.cdsMDFe_NFe.Next;
    end;
    fDMCadMDFe.cdsMDFe_Cidade_Des.Next;
  end;
  SMDBGrid2.EnableScroll;
end;

procedure TfrmCadMDFe.RxDBLookupCombo2Exit(Sender: TObject);
begin
  if RxDBLookupCombo2.Text <> '' then

end;

procedure TfrmCadMDFe.btnEnvioClick(Sender: TObject);
var
  sMDFe: TStringStream;
  vCNPJAux: String;
  sRecibo: TStringList;
  vArqAux: String;         
begin
  vProtocolo_MDFe   := '';
  vDtProtocolo_MDFe := '';
  vRecibo_MDFe      := '';
  vDtRecibo_MDFe    := '';
  if not(fDMCadMDFe.cdsConsulta.Active) or (fDMCadMDFe.cdsConsulta.IsEmpty) then
    exit;
  if (trim(fDMCadMDFe.qParametros_MDFeENDXMLMDFE.AsString) = '') or (trim(fDMCadMDFe.qParametros_MDFeENDPDFMDFE.AsString) = '') then
  begin
    MessageDlg('*** Não informada a pasta para gravar o XML/PDF do MDFe!', mtInformation, [mbOk], 0);
    exit;
  end;
  fDMCadMDFe.prc_Localizar(fDMCadMDFe.cdsConsultaID.AsInteger);
  if fDMCadMDFe.cdsMDFe.IsEmpty then
    exit;
  if trim(fDMCadMDFe.cdsMDFeCHAVE_ACESSO.AsString) <> '' then
  begin
    MessageDlg('*** MDFe já enviado!', mtInformation, [mbOk], 0);
    exit;
  end;

//  if MessageDlg('Deseja enviar este MDFe?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
//    exit;

  fDMEnvio := TDMEnvio.Create(Self);
  try
    fDMEnvio.cdsMDFe.Close;
    fDMEnvio.sdsMDFe.ParamByName('ID').AsInteger := fDMCadMDFe.cdsMDFeID.AsInteger;
    fDMEnvio.cdsMDFe.Open;

    fDMCadMDFe.cdsFilial.Locate('ID',fDMCadMDFe.cdsMDFeFilial.AsInteger,[loCaseInsensitive]);

    vCNPJAux := Monta_Numero(fDMCadMDFe.cdsFilialCNPJ_CPF.AsString,0);

    sMDFe := TStringStream.Create( fnc_Gerar_XML(fDMEnvio));
    mMDFe := TMemoryStream.Create;
    mMDFe.Position := 0;
    mMDFe.LoadFromStream(sMDFe);

    if (ckSalvarXML.Visible) and (ckSalvarXML.Checked) then
    begin
      vArqAux := ExtractFilePath(Application.ExeName) + 'Temp\MDFe_' + FormatDateTime('YYYYMMDD',Date) +  '_' +
                 FormatDateTime('HHMMSS',Time) +  '.xml';
      mMDFe.SaveToFile(vArqAux);
    end;

    sRecibo := TStringList.Create;
    if trim(fDMEnvio.cdsMDFeRECIBO_MDFE.AsString) <> '' then
    begin
      vRecibo_MDFe   := fDMEnvio.cdsMDFeRECIBO_MDFE.AsString;
      vDtRecibo_MDFe := fDMEnvio.cdsMDFeDTRECIBO.AsString;
      fDMEnvio.cdsMDFeXML_ASSINADO.SaveToStream(mMDFe);
      mMDFe.Position := 0;
      //mMDFe.LoadFromStream(fDMEnvio.cdsMDFeXML_ASSINADO);
    end
    else
    begin
      sRecibo.Delimiter := '|';
      sRecibo.DelimitedText := MDFe_Enviar(fnc_LocalServidorNFe(fDMEnvio),
                                  vCNPJAux,
                                  mMDFe);
      vRecibo_MDFe   := sRecibo[0];
      vDtRecibo_MDFe := sRecibo[1];
      prc_Gravar_Envio;
    end;
    fDMCadMDFe.prc_Localizar(fDMCadMDFe.cdsConsultaID.AsInteger);

    Buscar1Click(Sender);
  finally
    FreeAndNil(fDMEnvio);
    FreeAndNilProperties(sRecibo);
  end;                                         
end;

procedure TfrmCadMDFe.btnConfirmar_LacreClick(Sender: TObject);
var
  vItemAux: Integer;
begin
  if trim(Edit1.Text) = '' then
  begin
    MessageDlg('*** Nº do Lacre não informado!', mtInformation, [mbOk], 0);
    exit;
  end;
  fDMCadMDFe.cdsMDFe_Lacre.Last;
  vItemAux := fDMCadMDFe.cdsMDFe_LacreITEM.AsInteger;
  fDMCadMDFe.cdsMDFe_LacreID.AsInteger   := fDMCadMDFe.cdsMDFeID.AsInteger;
  fDMCadMDFe.cdsMDFe_LacreITEM.AsInteger := vItemAux + 1;
  fDMCadMDFe.cdsMDFe_LacreNUM_LACRE.AsString := Edit1.Text;
  fDMCadMDFe.cdsMDFe_LacreTIPO.AsString      := 'R';
  fDMCadMDFe.cdsMDFe_Lacre.Post;
end;

procedure TfrmCadMDFe.prc_Gravar_Envio;
begin
  fDMCadMDFe.cdsMDFe.Edit;
  fDMCadMDFe.cdsMDFeXML_ASSINADO.LoadFromStream(mMDFe);
  fDMCadMDFe.cdsMDFeRECIBO_MDFE.AsString := vRecibo_MDFe;
  fDMCadMDFe.cdsMDFeDTRECIBO.AsString    := vDtRecibo_MDFe;
  fDMCadMDFe.cdsMDFeHREMISSAO.AsDateTime := Now;
  fDMCadMDFe.cdsMDFe.Post;
  fDMCadMDFe.cdsMDFe.ApplyUpdates(0);
end;

procedure TfrmCadMDFe.prc_gravar_Busca;
begin
  fDMCadMDFe.cdsMDFe.Edit;
  fDMCadMDFe.cdsMDFeXML_ASSINADO_PROC.LoadFromStream(mMDFe);
  if trim(vProtocolo_MDFe) <> '' then
  begin
    fDMCadMDFe.cdsMDFePROTOCOLO_MDFE.AsString   := vProtocolo_MDFe;
    fDMCadMDFe.cdsMDFeDTPROTOCOLO_MDFE.AsString := vDtProtocolo_MDFe;
  end;
  if trim(vChaveAcesso_MDFe) <> '' then
    fDMCadMDFe.cdsMDFeCHAVE_ACESSO.AsString     := vChaveAcesso_MDFe;
  fDMCadMDFe.cdsMDFe.Post;
  fDMCadMDFe.cdsMDFe.ApplyUpdates(0);
end;

procedure TfrmCadMDFe.btnEncerrarClick(Sender: TObject);
var
  vCNPJAux: String;
  ffrmCadMDFe_Enc: TfrmCadMDFe_Enc;
  sProtocolo: TStringList;
  vIDAux: Integer;
begin
  if not(fDMCadMDFe.cdsConsulta.Active) or (fDMCadMDFe.cdsConsulta.IsEmpty) then
    exit;

  fDMCadMDFe.prc_Localizar(fDMCadMDFe.cdsConsultaID.AsInteger);

  if trim(fDMCadMDFe.cdsMDFeCHAVE_ACESSO.AsString) = '' then
  begin
    MessageDlg('*** MDFe sem a Chave de Acesso (Não enviado)!', mtInformation, [mbOk], 0);
    exit;
  end;
  if trim(fDMCadMDFe.cdsMDFeCHAVE_ACESSO.AsString) = '' then
  begin
    MessageDlg('*** MDFe sem a Chave de Acesso (Não enviado)!', mtInformation, [mbOk], 0);
    exit;
  end;

  fDMCadMDFe.cdsFilial.Locate('ID',fDMCadMDFe.cdsMDFeFILIAL.AsInteger,[loCaseInsensitive]);
  vCNPJAux := Monta_Numero(fDMCadMDFe.cdsFilialCNPJ_CPF.AsString,0);
  fDMCadMDFe.cdsUF.Locate('UF',fDMCadMDFe.cdsMDFeUF_DESCARREGAMENTO.AsString,[loCaseInsensitive]);
  if fDMCadMDFe.cdsMDFe_Cidade_Des.RecordCount <= 1 then
    fDMCadMDFe.cdsMDFe_Cidade_Des.Last
  else
  begin
    ffrmCadMDFe_Enc := TfrmCadMDFe_Enc.Create(self);
    ffrmCadMDFe_Enc.fDMCadMDFe := fDMCadMDFe;
    ffrmCadMDFe_Enc.ShowModal;
    FreeAndNil(ffrmCadMDFe_Enc);
  end;
  fDMCadMDFe.qCidade.Close;
  fDMCadMDFe.qCidade.ParamByName('ID').AsInteger := fDMCadMDFe.cdsMDFe_Cidade_DesID_CIDADE.AsInteger;
  fDMCadMDFe.qCidade.Open;

  mMDFe := TMemoryStream.Create;
  try
    sProtocolo := TStringList.Create;
    sProtocolo.Delimiter := '|';
    sProtocolo.DelimitedText := MDFe_Encerrar(fnc_LocalServidorNFe_Local,
                             vCNPJAux,
                             fDMCadMDFe.cdsMDFeCHAVE_ACESSO.AsString,
                             fDMCadMDFe.cdsMDFePROTOCOLO_MDFE.AsString,
                             FormatDateTime('yyyy-mm-dd', Date),
                             fDMCadMDFe.cdsUFCODUF.AsString,
                             fDMCadMDFe.qCidadeCODMUNICIPIO.AsString,
                             mMDFe);
    vProtocolo_MDFe   := sProtocolo[0];
    vDtProtocolo_MDFe := sProtocolo[1];

    vIDAux := fDMCadMDFe.cdsMDFeID.AsInteger;
    prc_Gravar_Encerramento;

    //Salvar arquivo na pasta do XML
    if trim(fDMCadMDFe.qParametros_MDFeENDXMLMDFE.AsString) <> '' then
    begin
      vNomeArquivo := Monta_Diretorio('E',fDMCadMDFe.qParametros_MDFeENDXMLMDFE.AsString,fDMCadMDFe.cdsMDFeSERIE.AsString,
                     YearOf(fDMCadMDFe.cdsMDFeDTEMISSAO.AsDateTime),MonthOf(fDMCadMDFe.cdsMDFeDTEMISSAO.AsDateTime));
      if FileExists(vNomeArquivo) then
        DeleteFile(vNomeArquivo);
      mMDFe.SaveToFile(vNomeArquivo);
    end;
    //**************

    prc_Consultar(vIDAux);
  finally
    FreeAndNil(mMDFe);
    FreeAndNil(sProtocolo);
  end;
end;

function TfrmCadMDFe.fnc_LocalServidorNFe_Local: String;
begin
  Result := fDMCadMDFe.qParametrosLOCALSERVIDORNFE.AsString;
  if (trim(fDMCadMDFe.cdsFilialLOCALSERVIDORNFE.AsString) <> '') and not(fDMCadMDFe.cdsFilialLOCALSERVIDORNFE.IsNull) then
    Result := fDMCadMDFe.cdsFilialLOCALSERVIDORNFE.AsString;
end;

procedure TfrmCadMDFe.prc_Gravar_Encerramento;
begin
  fDMCadMDFe.cdsMDFe.Edit;
  fDMCadMDFe.cdsMDFeXML_ENCERRAMENTO.LoadFromStream(mMDFe);
  fDMCadMDFe.cdsMDFeDTENCERRAMENTO.AsDateTime := Date;
  fDMCadMDFe.cdsMDFePROTOCOLO_ENC.AsString    := vProtocolo_MDFe;
  fDMCadMDFe.cdsMDFeDTPROTOCOLO_ENC.AsString  := vDtProtocolo_MDFe;
  fDMCadMDFe.cdsMDFe.Post;
  fDMCadMDFe.cdsMDFe.ApplyUpdates(0);
end;

procedure TfrmCadMDFe.btnCancelar_MDFeClick(Sender: TObject);
var
  vCNPJAux: String;
  sProtocolo: TStringList;
begin
  if not(fDMCadMDFe.cdsConsulta.Active) or (fDMCadMDFe.cdsConsulta.IsEmpty) then
    exit;

  fDMCadMDFe.prc_Localizar(fDMCadMDFe.cdsConsultaID.AsInteger);

  if trim(fDMCadMDFe.cdsMDFeCHAVE_ACESSO.AsString) = '' then
  begin
    MessageDlg('*** MDFe sem a Chave de Acesso (Não enviado)!', mtInformation, [mbOk], 0);
    exit;
  end;
  if fDMCadMDFe.cdsMDFeDTENCERRAMENTO.AsDateTime > 10 then
  begin
    MessageDlg('*** Não pode ser feito o cancelamento deste MDFe! Já possui o encerramento!', mtInformation, [mbOk], 0);
    exit;
  end;

  vMotivo_Canc := InputBox('Informe a justificativa do Cancelamento!', 'Justificativa', '');
  if (Trim(vMotivo_Canc) = '') or (Length(vMotivo_Canc) < 15) then
  begin
    MessageDlg('*** Justificativa com menos de 15 caracteres ou não informada!', mtInformation, [mbOk], 0);
    exit;
  end;

  fDMCadMDFe.cdsFilial.Locate('ID',fDMCadMDFe.cdsMDFeFILIAL.AsInteger,[loCaseInsensitive]);
  vCNPJAux := Monta_Numero(fDMCadMDFe.cdsFilialCNPJ_CPF.AsString,0);

  mMDFe := TMemoryStream.Create;
  try
    sProtocolo := TStringList.Create;
    sProtocolo.Delimiter := '|';
    sProtocolo.DelimitedText := MDFe_Cancelar(fnc_LocalServidorNFe_Local,
                                  vCNPJAux,
                                  fDMCadMDFe.cdsMDFeCHAVE_ACESSO.AsString,
                                  fDMCadMDFe.cdsMDFePROTOCOLO_MDFE.AsString,
                                  vMotivo_Canc,
                                  mMDFe);

    vProtocolo_MDFe := sProtocolo[0];
    vProtocolo_MDFe := sProtocolo[1];

    prc_Gravar_Cancelamento;
    fDMCadMDFe.prc_Localizar(fDMCadMDFe.cdsConsultaID.AsInteger);

    prc_Consultar(fDMCadMDFe.cdsMDFeID.AsInteger);                  
  finally
    FreeAndNil(mMDFe);
    FreeAndNil(sProtocolo);
  end;
end;

procedure TfrmCadMDFe.prc_Gravar_Cancelamento;
begin
  fDMCadMDFe.cdsMDFe.Edit;
  fDMCadMDFe.cdsMDFeCANCELADO.AsString := 'S';
  fDMCadMDFe.cdsMDFeXML_CANCELADO.LoadFromStream(mMDFe);
  fDMCadMDFe.cdsMDFePROTOCOLO_CANC.AsString := vProtocolo_MDFe;
  fDMCadMDFe.cdsMDFeDTPROTOCOLO_CANC.AsString := vDtProtocolo_MDFe;
  fDMCadMDFe.cdsMDFeMOTIVO_CANC.AsString    := vMotivo_Canc;
  fDMCadMDFe.cdsMDFeDTCANCELAMENTO.AsDateTime := Date;
  fDMCadMDFe.cdsMDFe.Post;
  fDMCadMDFe.cdsMDFe.ApplyUpdates(0);
end;

procedure TfrmCadMDFe.btnExcluir_PedagioClick(Sender: TObject);
begin
  if fDMCadMDFe.cdsMDFe_Pedagio.IsEmpty then
    exit;
  if MessageDlg('Deseja excluir o registro do vale pedágio?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;
  fDMCadMDFe.cdsMDFe_Pedagio.Delete;
end;

procedure TfrmCadMDFe.SMDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if (fDMCadMDFe.cdsConsultaPROTOCOLO_MDFE.IsNull) or (trim(fDMCadMDFe.cdsConsultaPROTOCOLO_MDFE.AsString) = '') then
  begin
    Background  := clYellow;
    AFont.Color := clBlack;
  end
  else
  if fDMCadMDFe.cdsConsultaCANCELADO.AsString = 'S' then
  begin
    Background  := clRed;
    AFont.Color := clWhite;
  end
  else
  if (fDMCadMDFe.cdsConsultaPROTOCOLO_ENC.IsNull) or (trim(fDMCadMDFe.cdsConsultaPROTOCOLO_ENC.AsString) = '') then
  begin
    if fDMCadMDFe.cdsConsultaTIPO_AMBIENTE.AsString = '2' then
    begin
      Background  := clGreen;
      AFont.Color := clWhite;
    end
    else
    begin
      Background  := clAqua;
      AFont.Color := clBlack;
    end;
  end
  else
  if fDMCadMDFe.cdsConsultaTIPO_AMBIENTE.AsString = '2' then
  begin
    Background  := clGreen;
    AFont.Color := clWhite;
  end;            
end;

procedure TfrmCadMDFe.btnDanfeClick(Sender: TObject);
begin
  vImp_MDFe := 'I';
  if trim(fDMCadMDFe.cdsConsultaCHAVE_ACESSO.AsString) = '' then
    prc_Imprimir_Danfe('I')
  else
  begin
    if fDMCadMDFe.qParametros_MDFeTIPO_IMPRESSAO.AsString = 'A' then
      begin
        vNomeArqPDF := Monta_Diretorio('P',fDMCadMDFe.qParametros_MDFeENDXMLMDFE.AsString,fDMCadMDFe.cdsMDFeSERIE.AsString,
                       YearOf(fDMCadMDFe.cdsMDFeDTEMISSAO.AsDateTime),MonthOf(fDMCadMDFe.cdsMDFeDTEMISSAO.AsDateTime));
        btnImprimir_ACBRClick(Sender);
      end
    else
      btnImprimir_FlexdocsClick(Sender);
  end;
end;

procedure TfrmCadMDFe.btnDanfeExit(Sender: TObject);
begin
  if Assigned(fDMEnvio) then
    FreeAndNil(fDMEnvio);
end;

procedure TfrmCadMDFe.prc_Gravar_mAuxMDFe;
var
  i: Integer;
begin
  fDMEnvio.mAuxMDFe.EmptyDataSet;
  fDMEnvio.mAuxMDFe.Insert;
  i := 0;
  fDMEnvio.cdsMDFe_Condutor.First;
  while not fDMEnvio.cdsMDFe_Condutor.Eof do
  begin
    i := i + 1;
    fDMEnvio.mAuxMDFe.FieldByName('CPF_Condutor'+IntToStr(i)).AsString  := fDMEnvio.cdsMDFe_CondutorCPF.AsString;
    fDMEnvio.mAuxMDFe.FieldByName('Nome_Condutor'+IntToStr(i)).AsString := fDMEnvio.cdsMDFe_CondutorNOME.AsString;
    fDMEnvio.cdsMDFe_Condutor.Next;
  end;

  i := 0;
  fDMEnvio.cdsMDFe_Pedagio.First;
  while not fDMEnvio.cdsMDFe_Pedagio.Eof do
  begin
    i := i + 1;
    fDMEnvio.mAuxMDFe.FieldByName('CNPJ_FOR'+IntToStr(i)).AsString  := fDMEnvio.cdsMDFe_PedagioCNPJ.AsString;
    fDMEnvio.mAuxMDFe.FieldByName('CNPJ_Resp'+IntToStr(i)).AsString := fDMEnvio.cdsMDFe_PedagioCNPJ_CPF_PAG.AsString;
    fDMEnvio.mAuxMDFe.FieldByName('Num_Comp'+IntToStr(i)).AsString  := fDMEnvio.cdsMDFe_PedagioNUM_COMPROVANTE.AsString;
    fDMEnvio.cdsMDFe_Pedagio.Next;
  end;
  fDMEnvio.mAuxMDFe.Post;
end;

procedure TfrmCadMDFe.btnIncluir_CondutorClick(Sender: TObject);
var
  ffrmCadMDFe_Condutor: TfrmCadMDFe_Condutor;
  Cpf, Nome, Pos: string;
  sProtocolo: TStringList;
  vCNPJAux: String;
begin
  if not(fDMCadMDFe.cdsConsulta.Active) or (fDMCadMDFe.cdsConsulta.IsEmpty) then
    exit;
  fDMCadMDFe.prc_Localizar(fDMCadMDFe.cdsConsultaID.AsInteger);
  if trim(fDMCadMDFe.cdsMDFePROTOCOLO_ENC.AsString) <> '' then
  begin
    MessageDlg('*** MDFe já encerrado!', mtInformation, [mbOk], 0);
    exit;
  end;
  if trim(fDMCadMDFe.cdsMDFeCHAVE_ACESSO.AsString) = '' then
  begin
    MessageDlg('*** MDFe não enviado, fazer a inclusão pelo processo de alteração do MDFe!', mtInformation, [mbOk], 0);
    exit;
  end;

  if MessageDlg('Deseja incluir um condutor no MDFe ' + fDMCadMDFe.cdsMDFeNUM_MANIFESTO.AsString + ' ?' ,mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  fDMCadMDFe.cdsCondutor.Close;
  fDMCadMDFe.cdsCondutor.Open;

  fDMCadMDFe.vID_Condutor_Novo := 0;
  ffrmCadMDFe_Condutor := TfrmCadMDFe_Condutor.Create(self);
  try
    ffrmCadMDFe_Condutor.fDMCadMDFe := fDMCadMDFe;
    ffrmCadMDFe_Condutor.ShowModal;
  finally
    FreeAndNil(ffrmCadMDFe_Condutor);
  end;
  if fDMCadMDFe.vID_Condutor_Novo <= 0 then
    exit;

  fDMCadMDFe.qVerifica_Condutor.Close;
  fDMCadMDFe.qVerifica_Condutor.ParamByName('ID').AsInteger          := fDMCadMDFe.cdsMDFeID.AsInteger;
  fDMCadMDFe.qVerifica_Condutor.ParamByName('ID_CONDUTOR').AsInteger := fDMCadMDFe.vID_Condutor_Novo;
  fDMCadMDFe.qVerifica_Condutor.Open;
  if (fDMCadMDFe.qVerifica_CondutorCONTADOR1.AsInteger > 0) or (fDMCadMDFe.qVerifica_CondutorCONTADOR2.AsInteger > 0) then
  begin
    MessageDlg('*** Condutor já informado neste MDFe!', mtInformation, [mbOk], 0);
    exit;
  end;

  fDMCadMDFe.cdsCondutor.Locate('ID',fDMCadMDFe.vID_Condutor_Novo,[loCaseInsensitive]);

  fDMCadMDFe.cdsFilial.Locate('ID',fDMCadMDFe.cdsMDFeFILIAL.AsInteger,[loCaseInsensitive]);
  vCNPJAux := Monta_Numero(fDMCadMDFe.cdsFilialCNPJ_CPF.AsString,0);
  Cpf := Monta_Numero(fDMCadMDFe.cdsCondutorCPF.AsString,0);
  nome := TirarAcento(fDMCadMDFe.cdsCondutorNOME.AsString);

  vSeq_Evento := 4 + fDMCadMDFe.cdsMDFe_Evento.RecordCount;

  mMDFe := TMemoryStream.Create;
  sProtocolo := TStringList.Create;
  try
    sProtocolo.Delimiter := '|';
    sProtocolo.DelimitedText := MDFe_IncluirCondutor(fnc_LocalServidorNFe_Local,
                                    vCNPJAux,
                                    fDMCadMDFe.cdsMDFeCHAVE_ACESSO.AsString,
                                    Cpf,
                                    Nome,
                                    vSeq_Evento,
                                    mMDFe);
    vProtocolo_MDFe   := sProtocolo[0];
    vDtProtocolo_MDFe := sProtocolo[1];

    prc_Gravar_Evento_Condutor;

    fDMCadMDFe.prc_Localizar(fDMCadMDFe.cdsConsultaID.AsInteger);

    prc_Consultar(fDMCadMDFe.cdsMDFeID.AsInteger);

    //Salvar arquivo na pasta do XML
    if trim(fDMCadMDFe.qParametros_MDFeENDXMLMDFE.AsString) <> '' then
    begin
      vNomeArquivo := Monta_Diretorio('M',fDMCadMDFe.qParametros_MDFeENDXMLMDFE.AsString,fDMCadMDFe.cdsMDFeSERIE.AsString,
                     YearOf(fDMCadMDFe.cdsMDFeDTEMISSAO.AsDateTime),MonthOf(fDMCadMDFe.cdsMDFeDTEMISSAO.AsDateTime));
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

procedure TfrmCadMDFe.prc_Gravar_Evento_Condutor;
var
  vItemAux: Integer;
begin
  //Grava Evento
  fDMCadMDFe.cdsMDFe_Evento.Last;
  vItemAux := fDMCadMDFe.cdsMDFe_EventoITEM.AsInteger;
  fDMCadMDFe.cdsMDFe_Evento.Insert;
  fDMCadMDFe.cdsMDFe_EventoID.AsInteger   := fDMCadMDFe.cdsMDFeID.AsInteger;
  fDMCadMDFe.cdsMDFe_EventoITEM.AsInteger := vItemAux + 1;
  fDMCadMDFe.cdsMDFe_EventoID_CONDUTOR.AsInteger := fDMCadMDFe.vID_Condutor_Novo;
  fDMCadMDFe.cdsMDFe_EventoPROTOCOLO.AsString := vProtocolo_MDFe;
  fDMCadMDFe.cdsMDFe_EventoDTPROTOCOLO.AsString := vDtProtocolo_MDFe;
  fDMCadMDFe.cdsMDFe_EventoXML.LoadFromStream(mMDFe);
  fDMCadMDFe.cdsMDFe_EventoCPF.AsString := fDMCadMDFe.cdsCondutorCPF.AsString;
  fDMCadMDFe.cdsMDFe_EventoNOME.AsString := fDMCadMDFe.cdsCondutorNOME.AsString;
  fDMCadMDFe.cdsMDFe_EventoSEQUENCIA.AsInteger := vSeq_Evento;
  fDMCadMDFe.cdsMDFe_Evento.Post;

  //Grava Condutor
  fDMCadMDFe.cdsMDFe_Condutor.Last;
  vItemAux := fDMCadMDFe.cdsMDFe_CondutorITEM.AsInteger;

  fDMCadMDFe.cdsMDFe_Condutor.Insert;
  fDMCadMDFe.cdsMDFe_CondutorID.AsInteger   := fDMCadMDFe.cdsMDFeID.AsInteger;
  fDMCadMDFe.cdsMDFe_CondutorITEM.AsInteger := vItemAux + 1;
  fDMCadMDFe.cdsMDFe_CondutorNOME.AsString  := fDMCadMDFe.cdsCondutorNOME.AsString;
  fDMCadMDFe.cdsMDFe_CondutorCPF.AsString   := fDMCadMDFe.cdsCondutorCPF.AsString;
  fDMCadMDFe.cdsMDFe_CondutorID_CONDUTOR.AsInteger := fDMCadMDFe.vID_Condutor_Novo;
  fDMCadMDFe.cdsMDFe_Condutor.Post;

  fDMCadMDFe.cdsMDFe.ApplyUpdates(0);
end;

procedure TfrmCadMDFe.SMDBGrid1TitleClick(Column: TColumn);
var
  i: Integer;
  ColunaOrdenada: String;
begin
  ColunaOrdenada := Column.FieldName;
  fDMCadMDFe.cdsConsulta.IndexFieldNames := Column.FieldName;
  Column.Title.Color := clBtnShadow;
  for i := 0 to SMDBGrid1.Columns.Count - 1 do
    if not (SMDBGrid1.Columns.Items[I] = Column) then
      SMDBGrid1.Columns.Items[I].Title.Color := clBtnFace;
end;

procedure TfrmCadMDFe.prc_scroll(DataSet: TDataSet);
begin
  btnEnvio.Enabled := (trim(fDMCadMDFe.cdsConsultaCHAVE_ACESSO.AsString) = '');
  if trim(fDMCadMDFe.cdsConsultaCHAVE_ACESSO.AsString) <> '' then
    btnDanfe.Caption := 'DAMDFE'
  else
    btnDanfe.Caption := 'Pré Visualizar';
  btnCancelar_MDFe.Enabled := ((trim(fDMCadMDFe.cdsConsultaCHAVE_ACESSO.AsString) <> '') and
                              (trim(fDMCadMDFe.cdsConsultaPROTOCOLO_ENC.AsString) = '')) and
                              (fDMCadMDFe.cdsConsultaCANCELADO.AsString <> 'S');
  btnEncerrar.Enabled      := ((trim(fDMCadMDFe.cdsConsultaCHAVE_ACESSO.AsString) <> '') and
                              (trim(fDMCadMDFe.cdsConsultaPROTOCOLO_ENC.AsString) = '') and
                              (fDMCadMDFe.cdsConsultaCANCELADO.AsString <> 'S'));
  btnIncluir_Condutor.Enabled := ((trim(fDMCadMDFe.cdsConsultaCHAVE_ACESSO.AsString) <> '') and
                                 (trim(fDMCadMDFe.cdsConsultaPROTOCOLO_ENC.AsString) = '') and
                                 (fDMCadMDFe.cdsConsultaCANCELADO.AsString <> 'S'));
end;

function TfrmCadMDFe.Monta_Diretorio(Tipo, Diretorio, Serie: string; Ano,
  Mes: Integer): string;
var
  vSerieAux: String;
  vAnoMes: String;
begin
  vAnoMes := FormatFloat('0000',Ano) + FormatFloat('00',Mes);
  Result  := '';
  if Diretorio = '' then
    Raise Exception.Create('*** É obrigatório informar a pasta para salvar o arquivo!');
  if copy(Diretorio,Length(Diretorio),1) <> '\' then
    Diretorio := Diretorio + '\';

  vSerieAux := Serie;
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
  if Tipo = 'P' then
    Result := Result + 'MDFe_' + FormatFloat('00',fDMCadMDFe.cdsFilialID.AsFloat) + '_' + FormatFloat('000000000',fDMCadMDFe.cdsMDFeNUM_MANIFESTO.AsInteger) + '_S' + vSerieAux + '.pdf'
  else
  if Tipo = 'C' then
    Result := Result + 'MDFe_' + FormatFloat('00',fDMCadMDFe.cdsFilialID.AsFloat) + '_' + FormatFloat('000000000',fDMCadMDFe.cdsMDFeNUM_MANIFESTO.AsInteger) + '_CANC_S' + vSerieAux + '.xml'
  else
  if Tipo = 'E' then
    Result := Result + 'MDFe_' + FormatFloat('00',fDMCadMDFe.cdsFilialID.AsFloat) + '_' + FormatFloat('000000000',fDMCadMDFe.cdsMDFeNUM_MANIFESTO.AsInteger) + '_ENC_S' + vSerieAux + '.xml'
  else
  if Tipo = 'M' then
    Result := Result + 'MDFe_' + FormatFloat('00',fDMCadMDFe.cdsFilialID.AsFloat) + '_' + FormatFloat('000000000',fDMCadMDFe.cdsMDFeNUM_MANIFESTO.AsInteger) + '_Condutor_S' + vSerieAux + '.xml'
  else
    Result := Result + 'MDFe_' + FormatFloat('00',fDMCadMDFe.cdsFilialID.AsFloat) + '_' + FormatFloat('000000000',fDMCadMDFe.cdsMDFeNUM_MANIFESTO.AsInteger) + '_S' + vSerieAux + '.xml';
end;

procedure TfrmCadMDFe.prc_Imprimir_Danfe(Tipo: String); //E=Envio e Salva na Pasta    I=Imprimir
var
  vArq: String;
begin
  if not Assigned(fDMEnvio) then
    fDMEnvio := TDMEnvio.Create(Self);

  fDMEnvio.cdsMDFe.Close;
  fDMEnvio.sdsMDFe.ParamByName('ID').AsInteger := fDMCadMDFe.cdsConsultaID.AsInteger;
  fDMEnvio.cdsMDFe.Open;

  prc_Gravar_mAuxMDFe;

  vArq := ExtractFilePath(Application.ExeName) + 'Relatorios\MDFe_Rodoviario.fr3';
  if FileExists(vArq) then
    fDMEnvio.frxReport1.Report.LoadFromFile(vArq)
  else
  begin
    ShowMessage('Relatório não localizado! ' + vArq);
    Exit;
  end;
  //fDmCob_Eletronica.frxReport1.variables['ImpOpcao']      := QuotedStr('Nome Arq: ') + QuotedStr(FilenameEdit1.Text);
  //fDmCob_Eletronica.frxReport1.variables['NomeBanco']     := QuotedStr(RxDBLookupCombo3.Text);
  //fDmCob_Eletronica.frxReport1.variables['SeparadorParc'] := QuotedStr(fDmCob_Eletronica.vSeparadorParc);
  //fDmCob_Eletronica.frxReport1.ShowReport;
  if Tipo = 'E' then
  begin
    fDMEnvio.frxPDFExport1.FileName := vNomeArqPDF;
    //fDMEnvio.frxPDFExport1.DefaultPath := sCaminho + '\';
    fDMEnvio.frxPDFExport1.ShowDialog := False;
    fDMEnvio.frxPDFExport1.ShowProgress := False;
    fDMEnvio.frxPDFExport1.OverwritePrompt := False;
    fDMEnvio.frxReport1.PrepareReport;
    fDMEnvio.frxReport1.Export(fDMEnvio.frxPDFExport1);
    //fDMEnvio.frxReport1.PrepareReport;
    //fDMEnvio.frxReport1.Export(fDMEnvio.frxPDFExport1);
     //SaveToFile(vNomeArqPDF);
  end
  else
    fDMEnvio.frxReport1.ShowReport;
end;

procedure TfrmCadMDFe.RxDBLookupCombo4Enter(Sender: TObject);
begin
  vUF_Ant := fDMCadMDFe.cdsMDFeUF_DESCARREGAMENTO.AsString;
  RxDBLookupCombo4.ReadOnly := (fDMCadMDFe.cdsMDFe_Cidade_Des.RecordCount > 0);
end;

procedure TfrmCadMDFe.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Shift = [ssCtrl]) and (Key = 87) then //W
  begin
    ckSalvarXML.Caption := ExtractFilePath(Application.ExeName) + 'Temp\';
    ckSalvarXML.Visible := not(ckSalvarXML.Visible);
    btnOutros.Visible   := not(btnOutros.Visible);
    btnImprimir_Flexdocs.Visible := not(btnImprimir_Flexdocs.Visible);
    btnImprimir_ACBR.Visible     := not(btnImprimir_ACBR.Visible);
  end;
end;

procedure TfrmCadMDFe.ckUsarCidade_NFeClick(Sender: TObject);
begin
  Panel15.Visible := not(ckUsarCidade_NFe.Checked);
end;

procedure TfrmCadMDFe.prc_Gravar_Cidade_Des(ID_Cidade: Integer; Nome: String);
var
  vItemAux: Integer;
begin
  fDMCadMDFe.vMsgMDFe := '';
  if fDMCadMDFe.cdsMDFe_Cidade_Des.Locate('ID_CIDADE',ID_Cidade,[loCaseInsensitive]) then
    fDMCadMDFe.vMsgMDFe := '*** Município já informado! ';
  if trim(fDMCadMDFe.vMsgMDFe) <> '' then
  begin
    MessageDlg(fDMCadMDFe.vMsgMDFe, mtInformation, [mbOk], 0);
    exit;
  end;

  fDMCadMDFe.cdsMDFe_Cidade_Des.Last;
  vItemAux := fDMCadMDFe.cdsMDFe_Cidade_DesITEM.AsInteger;
  fDMCadMDFe.cdsMDFe_Cidade_Des.Insert;
  fDMCadMDFe.cdsMDFe_Cidade_DesID.AsInteger   := fDMCadMDFe.cdsMDFeID.AsInteger;
  fDMCadMDFe.cdsMDFe_Cidade_DesITEM.AsInteger := vItemAux + 1;
  fDMCadMDFe.cdsMDFe_Cidade_DesID_CIDADE.AsInteger := ID_Cidade;
  fDMCadMDFe.cdsMDFe_Cidade_DesCIDADE.AsString     := Nome;
  fDMCadMDFe.cdsMDFe_Cidade_Des.Post;
end;

procedure TfrmCadMDFe.NxButton7Click(Sender: TObject);
begin
  fDMCadMDFe.vMsgMDFe := '';
  if trim(RxDBLookupCombo10.Text) = '' then
  begin
    MessageDlg('*** Município não informado! ', mtInformation, [mbOk], 0);
    exit;
  end;
  prc_Gravar_Cidade_Des(RxDBLookupCombo10.KeyValue,RxDBLookupCombo10.Text);
  RxDBLookupCombo10.ClearValue;
  RxDBLookupCombo10.SetFocus;
end;

procedure TfrmCadMDFe.RxDBLookupCombo4Exit(Sender: TObject);
begin
  if vUF_Ant <> fDMCadMDFe.cdsMDFeUF_DESCARREGAMENTO.AsString then
    prc_Abrir_Cidade(fDMCadMDFe.cdsMDFeUF_DESCARREGAMENTO.AsString);
end;

procedure TfrmCadMDFe.DBEdit4Enter(Sender: TObject);
begin
  if fDMCadMDFe.cdsMDFe.State in [dsEdit,dsInsert] then
    DBEdit4.ReadOnly := (trim(fDMCadMDFe.cdsMDFeCHAVE_ACESSO.AsString) <> '')
  else
    DBEdit4.ReadOnly := True;
end;

procedure TfrmCadMDFe.DBEdit2DblClick(Sender: TObject);
begin
  if DBEdit2.ReadOnly then
  begin
    DBEdit2.ReadOnly := False;
    DBEdit2.Color    := clWindow;
  end
  else
  begin
    DBEdit2.ReadOnly := True;
    DBEdit2.Color    := clSilver;
  end;
end;

procedure TfrmCadMDFe.Buscar1Click(Sender: TObject);
var
  recibo: string;
  Xml: TMemoryStream;
  //sXml: TStringStream;
  vCNPjAux: String;
  sProtocolo: TStringList;
begin
  prc_Posiciona_MDFe;

  if vRecibo_MDFe <> '' then
    recibo := vRecibo_MDFe
  else
    recibo := InputBox('Informe o recibo', 'Recibo',fDMCadMDFe.cdsMDFeRECIBO_MDFE.AsString);
  if trim(recibo) = '' then
    exit;

  mMDFe := TMemoryStream.Create;
  mMDFe.Position := 0;
  fDMCadMDFe.cdsConsultaXML_ASSINADO.SaveToStream(mMDFe);
  //mMDFe.LoadFromStream();
  mMDFe.Position := 0;

  Xml := TMemoryStream.Create;
  try
    sProtocolo := TStringList.Create;
    sProtocolo.Delimiter := '|';
    vCNPjAux := Monta_Numero(fDMCadMDFe.cdsFilialCNPJ_CPF.AsString,0);
    sProtocolo.DelimitedText := MDFe_Buscar(fnc_LocalServidorNFe_Local,
                                   vCNPjAux  ,
                                   recibo,
                                   mMDFe,
                                   Xml);

    vProtocolo_MDFe   := sProtocolo[0];
    vDtProtocolo_MDFe := sProtocolo[1];

    mMDFe.Position := 0;
    Xml.SaveToStream(mMDFe);

    prc_gravar_Busca;

    fDMCadMDFe.prc_Localizar(fDMCadMDFe.cdsConsultaID.AsInteger);

    //Salvar arquivo na pasta do XML
    if trim(fDMCadMDFe.qParametros_MDFeENDXMLMDFE.AsString) <> '' then
    begin
      vNomeArquivo := Monta_Diretorio('X',fDMCadMDFe.qParametros_MDFeENDXMLMDFE.AsString,fDMCadMDFe.cdsMDFeSERIE.AsString,
                     YearOf(fDMCadMDFe.cdsMDFeDTEMISSAO.AsDateTime),MonthOf(fDMCadMDFe.cdsMDFeDTEMISSAO.AsDateTime));
      if FileExists(vNomeArquivo) then
        DeleteFile(vNomeArquivo);
      mMDFe.SaveToFile(vNomeArquivo);
    end;
    //**************

    //Salvar arquivo na pasta do PDF
    if trim(fDMCadMDFe.qParametros_MDFeENDPDFMDFE.AsString) <> '' then
    begin
      vNomeArqPDF := Monta_Diretorio('P',fDMCadMDFe.qParametros_MDFeENDXMLMDFE.AsString,fDMCadMDFe.cdsMDFeSERIE.AsString,
                     YearOf(fDMCadMDFe.cdsMDFeDTEMISSAO.AsDateTime),MonthOf(fDMCadMDFe.cdsMDFeDTEMISSAO.AsDateTime));
      vImp_MDFe := 'G';
      if FileExists(vNomeArqPDF) then
        DeleteFile(vNomeArqPDF);
      if fDMCadMDFe.qParametros_MDFeTIPO_IMPRESSAO.AsString = 'A' then
        btnImprimir_ACBRClick(Sender)
      else
        btnImprimir_FlexdocsClick(Sender);
      //era o manual   09/10/2019
      //prc_Imprimir_Danfe('E');
    end;
    //**************

    prc_Consultar(fDMCadMDFe.cdsMDFeID.AsInteger);

    //sXml := TStringStream.Create('');
    //try
      //Xml.Position := 0;
      //Xml.SaveToStream(sXml);

      //mmoMDFeRetorno.Lines.Add('Buscar Situação: ' + recibo);
      //mmoMDFeRetorno.Lines.Add( FormatXMLData(sXml.DataString) );
      //mmoMDFeRetorno.Lines.Add('----------------------------------------------------------------------------');
    //finally
      //FreeAndNil(sXml);
    //end;
  finally
    FreeAndNil(mMDFe);
    FreeAndNil(Xml);
    FreeAndNil(sProtocolo);
  end;
end;

procedure TfrmCadMDFe.Encerrar1Click(Sender: TObject);
begin
  frmEncerrar_MDFe := TfrmEncerrar_MDFe.Create(self);
  frmEncerrar_MDFe.fDMCadMDFe := fDMCadMDFe;
  frmEncerrar_MDFe.ShowModal;
  FreeAndNil(frmEncerrar_MDFe);
end;

procedure TfrmCadMDFe.btnImprimir_FlexdocsClick(Sender: TObject);
var
  mStream: TMemoryStream;
  mDAMDFe: TMemoryStream;
  vCNPJAux : string;
  mLogo: TMemoryStream;
  vNomeArq: String;
begin
  if not(fDMCadMDFe.cdsConsulta.Active) or (fDMCadMDFe.cdsConsulta.IsEmpty) then
    exit;

  prc_Posiciona_MDFe;

  mStream := TMemoryStream.Create;
  mDAMDFe := TMemoryStream.Create;
  mLogo   := TMemoryStream.Create;
  mStream.Position := 0;
  mDAMDFe.Position := 0;
  mLogo.Position   := 0;

  fDMCadMDFe.cdsMDFeXML_ASSINADO_PROC.SaveToStream(mStream);
  mStream.Position := 0;

  mlogo.LoadFromFile(fDMCadMDFe.qFilial_MDFeEND_LOG.AsString);

  fDMCadMDFe.cdsFilial.Locate('ID',fDMCadMDFe.cdsMDFeFILIAL.AsInteger,[loCaseInsensitive]);

  vCNPJAux := Monta_Numero(fDMCadMDFe.cdsFilialCNPJ_CPF.AsString,0);

  MDFe_GerarPDF(trim(fnc_LocalServidorNFe_Local),
                     vCNPJAux,
                     '',
                     'SSFacil (MDFe)',
                     mStream,
                     mLogo,
                     mDAMDFe);
  if vImp_MDFe = 'G' then
    vNomeArq := vNomeArquivo
  else
  begin
    vNomeArq := ExtractFilePath(Application.ExeName) + 'Temp';
    if not DirectoryExists(vNomeArq) then
      CreateDir(vNomeArq);
    vNomeArq := vNomeArq + '\DAMDFE_ENV_' + FormatDateTime('YYYYMMDD',Date) +  '_' + FormatDateTime('HHMMSS',Time) + '.pdf';
    if FileExists(vNomeArq) then
      DeleteFile(vNomeArq);
  end;

  mDAMDFe.Position := 0;
  mDAMDFe.SaveToFile(vNomeArq);
                  
  ShellExecute(Application.Handle, 'Open', PChar(vNomeArq), nil, nil, SW_SHOWMAXIMIZED);

  FreeAndNil(mStream);
  FreeAndNil(mDAMDFe);
  FreeAndNil(mLogo);

end;

procedure TfrmCadMDFe.btnImprimir_ACBRClick(Sender: TObject);
begin
  if not(fDMCadMDFe.cdsConsulta.Active) or (fDMCadMDFe.cdsConsulta.IsEmpty) then
    exit;

  prc_Posiciona_MDFe;

  //if OpenDialog1.Execute then
  begin
    ACBrMDFe1.Manifestos.Clear;
    ACBrMDFe1.DAMDFE.PathPDF := vNomeArqPDF;
    ACBrMDFe1.Manifestos.LoadFromString(fDMCadMDFe.cdsMDFeXML_ASSINADO_PROC.Value);
    ACBrMDFeDAMDFeRL1.Logo := fDMCadMDFe.qFilial_MDFeEND_LOG.AsString;
    if vImp_MDFe = 'G' then
      ACBrMDFe1.Manifestos.ImprimirPDF
    else
      ACBrMDFe1.Manifestos.Imprimir;
  end;

end;

procedure TfrmCadMDFe.ImprimirSemQRCode1Click(Sender: TObject);
begin
  prc_Imprimir_Danfe('I')
end;

procedure TfrmCadMDFe.Button1Click(Sender: TObject);
begin
  vNomeArqPDF := Monta_Diretorio('P',fDMCadMDFe.qParametros_MDFeENDXMLMDFE.AsString,fDMCadMDFe.cdsMDFeSERIE.AsString,
                 YearOf(fDMCadMDFe.cdsMDFeDTEMISSAO.AsDateTime),MonthOf(fDMCadMDFe.cdsMDFeDTEMISSAO.AsDateTime));

  vImp_MDFe := 'G';
  btnImprimir_ACBRClick(sender);

end;

procedure TfrmCadMDFe.Consultar1Click(Sender: TObject);
var
  chave: string;
  Xml: TMemoryStream;
  sXml: TStringStream;
  vCNPJAux : String;
begin
  if not(fDMCadMDFe.cdsConsulta.Active) or (fDMCadMDFe.cdsConsulta.IsEmpty) then
    exit;

  fDMCadMDFe.mAuxEvento.EmptyDataSet;
  prc_Posiciona_MDFe;

  chave := InputBox('Informe a chave', 'Chave',fDMCadMDFe.cdsMDFeCHAVE_ACESSO.AsString );

  Xml := TMemoryStream.Create;
  try
    vCNPjAux := Monta_Numero(fDMCadMDFe.cdsFilialCNPJ_CPF.AsString,0);
    MDFe_Consultar(fnc_LocalServidorNFe_Local,
                   vCNPjAux,
                   chave,
                   Xml);

    sXml := TStringStream.Create('');
    vXml := TStringStream.Create('');
    try
      Xml.Position := 0;
      Xml.SaveToStream(sXml);
      Xml.SaveToStream(vXml);

      prc_Monta_Eventos;

      mmoMDFeRetorno.Lines.Add('Consulta Situação: ' + chave);
      mmoMDFeRetorno.Lines.Add( FormatXMLData(sXml.DataString) );
      mmoMDFeRetorno.Lines.Add('----------------------------------------------------------------------------');
    finally
      FreeAndNil(sXml);
      FreeAndNil(vXml);
    end;
  finally
    FreeAndNil(Xml);
  end;

end;

procedure TfrmCadMDFe.prc_Monta_Eventos;
var
  i, i2, i3: Integer;
  vTexto : WideString;
  tpEvento : String;
  xEvento: String;
  dhRegEvento : String;
  nProtocolo : String;
  vXMLAux : TStringStream;
  iAnt : Integer;
  vTexto2 : WideString;
  vLeitura : TStringList;
begin

  i     := 1;

  mMemo1.Clear;
  //mMemo1.Lines.Add(vxml.DataString);
  mMemo1.Lines.Text := vxml.DataString;

  while i > 0 do
  begin
    i := posex('<retEventoMDFe',copy(mMemo1.Lines.Text,1,Length(mMemo1.Lines.Text)));
    if i > 0 then
    begin
      i2 := posex('</retEventoMDFe>',copy(mMemo1.Lines.Text,i,Length(mMemo1.Lines.Text)));
      vTexto := copy(mMemo1.Lines.Text,1,i2+15);
        tpEvento    := fnc_Busca_Evento(vTexto,'<tpEvento>');
        xEvento     := fnc_Busca_Evento(vTexto,'<xEvento>');
        dhRegEvento := fnc_Busca_Evento(vTexto,'<dhRegEvento>');
        nProtocolo  := fnc_Busca_Evento(vTexto,'<nProtocolo>');
    end;
    iAnt := iAnt + i2;

  end;
  FreeAndNil(vXmlAux);

end;

function TfrmCadMDFe.fnc_Busca_Evento(Texto : WideString; Palavra : String) : String;
var
  i : integer;
  vTexto : String;
begin
  Result := '';
  i := posex(Palavra,texto);
  if i <= 0 then
    exit;
  delete(Texto,1,i+(Length(Palavra)-1));
  i := posex('<',Texto);
  Result := copy(Texto,1,i-1);


        {<tpEvento>110112</tpEvento>
        <xEvento>Encerramento</xEvento>
        <nSeqEvento>1</nSeqEvento>
        <dhRegEvento>2020-02-10T13:39:55-03:00</dhRegEvento>
        <nProt>943200001522728</nProt>}




end;


end.
