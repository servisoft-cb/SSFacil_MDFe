unit UCadSeguradora;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Buttons, Grids, SMDBGrid, UDMCadSeguradora, Mask, 
  UCBase, StdCtrls, RxDBComb, DBCtrls, ExtCtrls, DBGrids, RzTabs, DB, NxCollection, SqlExpr,
  RxLookup;

type
  TfrmCadSeguradora = class(TForm)
    RzPageControl1: TRzPageControl;
    TS_Consulta: TRzTabSheet;
    TS_Cadastro: TRzTabSheet;
    SMDBGrid1: TSMDBGrid;
    Panel2: TPanel;
    Panel1: TPanel;
    pnlCadastro: TPanel;
    Label1: TLabel;
    DBEdit2: TDBEdit;
    Label8: TLabel;
    DBEdit4: TDBEdit;
    StaticText1: TStaticText;
    pnlPesquisa: TPanel;
    Label6: TLabel;
    Edit4: TEdit;
    btnInserir: TNxButton;
    btnExcluir: TNxButton;
    btnPesquisar: TNxButton;
    btnConsultar: TNxButton;
    btnAlterar: TNxButton;
    btnConfirmar: TNxButton;
    btnCancelar: TNxButton;
    DBCheckBox1: TDBCheckBox;
    Label14: TLabel;
    DBEdit6: TDBEdit;
    UCControls2: TUCControls;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnExcluirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure SMDBGrid1DblClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnInserirClick(Sender: TObject);
    procedure Edit4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnPesquisarClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure SMDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure DBEdit6Enter(Sender: TObject);
    procedure DBEdit6Exit(Sender: TObject);
  private
    { Private declarations }
    fDMCadSeguradora: TDMCadSeguradora;
    procedure prc_Inserir_Registro;
    procedure prc_Excluir_Registro;
    procedure prc_Gravar_Registro;
    procedure prc_Consultar;
    procedure prc_Limpar_Edit_Consulta;

  public
    { Public declarations }

  end;

var
  frmCadSeguradora: TfrmCadSeguradora;

implementation

uses DmdDatabase, rsDBUtils, UMenu, uUtilPadrao;

{$R *.dfm}

procedure TfrmCadSeguradora.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmCadSeguradora.btnExcluirClick(Sender: TObject);
begin
  if fDMCadSeguradora.cdsSeguradora.IsEmpty then
    exit;

  if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  prc_Excluir_Registro;
end;

procedure TfrmCadSeguradora.prc_Excluir_Registro;
begin
  fDMCadSeguradora.prc_Excluir;
end;

procedure TfrmCadSeguradora.prc_Gravar_Registro;
begin
  fDMCadSeguradora.prc_Gravar;
  if fDMCadSeguradora.cdsSeguradora.State in [dsEdit,dsInsert] then
  begin
    MessageDlg(fDMCadSeguradora.vMsgSeguradora, mtError, [mbOk], 0);
    exit;
  end;
  TS_Consulta.TabEnabled    := not(TS_Consulta.TabEnabled);
  RzPageControl1.ActivePage := TS_Consulta;
  pnlCadastro.Enabled       := not(pnlCadastro.Enabled);
  btnConfirmar.Enabled      := not(btnConfirmar.Enabled);
  btnAlterar.Enabled        := not(btnAlterar.Enabled);
end;

procedure TfrmCadSeguradora.prc_Inserir_Registro;
begin
  fDMCadSeguradora.prc_Inserir;

  if fDMCadSeguradora.cdsSeguradora.State in [dsBrowse] then
    exit;
  DBEdit2.ReadOnly := False;

  RzPageControl1.ActivePage := TS_Cadastro;

  TS_Consulta.TabEnabled := False;
  btnAlterar.Enabled     := False;
  btnConfirmar.Enabled   := True;
  pnlCadastro.Enabled    := True;
  DBEdit2.SetFocus;
end;

procedure TfrmCadSeguradora.FormShow(Sender: TObject);
begin
  fDMCadSeguradora := TDMCadSeguradora.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMCadSeguradora);
end;

procedure TfrmCadSeguradora.prc_Consultar;
begin
  fDMCadSeguradora.cdsSeguradora.Close;
  fDMCadSeguradora.sdsSeguradora.CommandText := fDMCadSeguradora.ctCommand + ' WHERE 0 = 0 ';
  if Trim(Edit4.Text) <> '' then
    fDMCadSeguradora.sdsSeguradora.CommandText := fDMCadSeguradora.sdsSeguradora.CommandText + ' AND NOME LIKE ' + QuotedStr('%'+Edit4.Text+'%');
  fDMCadSeguradora.cdsSeguradora.Open;
end;

procedure TfrmCadSeguradora.btnConsultarClick(Sender: TObject);
begin
  prc_Consultar;
end;

procedure TfrmCadSeguradora.btnCancelarClick(Sender: TObject);
begin
  if (fDMCadSeguradora.cdsSeguradora.State in [dsBrowse]) or not(fDMCadSeguradora.cdsSeguradora.Active) then
  begin
    RzPageControl1.ActivePage := TS_Consulta;
    exit;
  end;

  if MessageDlg('Deseja cancelar alteração/inclusão do registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  fDMCadSeguradora.cdsSeguradora.CancelUpdates;
  TS_Consulta.TabEnabled    := True;
  RzPageControl1.ActivePage := TS_Consulta;
  pnlCadastro.Enabled       := not(pnlCadastro.Enabled);
  btnConfirmar.Enabled      := not(btnConfirmar.Enabled);
  btnAlterar.Enabled        := not(btnAlterar.Enabled);
end;

procedure TfrmCadSeguradora.SMDBGrid1DblClick(Sender: TObject);
begin
  RzPageControl1.ActivePage := TS_Cadastro;
end;

procedure TfrmCadSeguradora.btnAlterarClick(Sender: TObject);
begin
  if (fDMCadSeguradora.cdsSeguradora.IsEmpty) or not(fDMCadSeguradora.cdsSeguradora.Active) or (fDMCadSeguradora.cdsSeguradoraID.AsInteger < 1) then
    exit;

  DBEdit2.ReadOnly := True;
  fDMCadSeguradora.cdsSeguradora.Edit;

  TS_Consulta.TabEnabled := False;
  btnAlterar.Enabled     := False;
  btnConfirmar.Enabled   := True;
  pnlCadastro.Enabled    := True;

end;

procedure TfrmCadSeguradora.btnConfirmarClick(Sender: TObject);
begin
  prc_Gravar_Registro;
end;

procedure TfrmCadSeguradora.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMCadSeguradora);
end;

procedure TfrmCadSeguradora.btnInserirClick(Sender: TObject);
begin
  prc_Inserir_Registro;
end;

procedure TfrmCadSeguradora.Edit4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmCadSeguradora.btnPesquisarClick(Sender: TObject);
begin
  pnlPesquisa.Visible := not(pnlPesquisa.Visible);
  if pnlPesquisa.Visible then
    Edit4.SetFocus
  else
    prc_Limpar_Edit_Consulta;
end;

procedure TfrmCadSeguradora.prc_Limpar_Edit_Consulta;
begin
  Edit4.Clear;
end;

procedure TfrmCadSeguradora.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose := fnc_Encerrar_Tela(fDMCadSeguradora.cdsSeguradora);
end;


procedure TfrmCadSeguradora.SMDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if fDMCadSeguradora.cdsSeguradoraINATIVO.AsString = 'S' then
    AFont.Color := clRed;
end;

procedure TfrmCadSeguradora.DBEdit6Enter(Sender: TObject);
begin
  fDMCadSeguradora.cdsSeguradoraCNPJ.EditMask := '00.000.000/0000-00';
end;

procedure TfrmCadSeguradora.DBEdit6Exit(Sender: TObject);
var
  vAux: String;
begin
  vAux := Monta_Numero(DBEdit6.Text,0);
  if (trim(vAux) = '') or (copy(vAux,1,9) = '000000000') then
    exit;
  if not ValidaCNPJ(DBEdit6.Text) then
  begin
    ShowMessage('CNPJ incorreto!');
    fDMCadSeguradora.cdsSeguradoraCNPJ.Clear;
    DBEdit6.SetFocus;
  end;
end;

end.
