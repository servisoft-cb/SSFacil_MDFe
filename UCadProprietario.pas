unit UCadProprietario;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Buttons, Grids, SMDBGrid, UDMCadProprietario, Mask, 
  UCBase, StdCtrls, RxDBComb, DBCtrls, ExtCtrls, DBGrids, RzTabs, DB, NxCollection, SqlExpr,
  RxLookup;

type
  TfrmCadProprietario = class(TForm)
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
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    Label12: TLabel;
    RxDBComboBox2: TRxDBComboBox;
    Label13: TLabel;
    RxDBComboBox1: TRxDBComboBox;
    Label14: TLabel;
    DBEdit6: TDBEdit;
    Label15: TLabel;
    RxDBLookupCombo3: TRxDBLookupCombo;
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
    procedure RxDBComboBox1Exit(Sender: TObject);
    procedure DBEdit6Enter(Sender: TObject);
    procedure DBEdit6Exit(Sender: TObject);
  private
    { Private declarations }
    fDMCadProprietario: TDMCadProprietario;
    procedure prc_Inserir_Registro;
    procedure prc_Excluir_Registro;
    procedure prc_Gravar_Registro;
    procedure prc_Consultar;
    procedure prc_Limpar_Edit_Consulta;

  public
    { Public declarations }

  end;

var
  frmCadProprietario: TfrmCadProprietario;

implementation

uses DmdDatabase, rsDBUtils, UMenu, uUtilPadrao;

{$R *.dfm}

procedure TfrmCadProprietario.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmCadProprietario.btnExcluirClick(Sender: TObject);
begin
  if fDMCadProprietario.cdsProprietario_Vei.IsEmpty then
    exit;

  if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  prc_Excluir_Registro;
end;

procedure TfrmCadProprietario.prc_Excluir_Registro;
begin
  fDMCadProprietario.prc_Excluir;
end;

procedure TfrmCadProprietario.prc_Gravar_Registro;
begin
  fDMCadProprietario.prc_Gravar;
  if fDMCadProprietario.cdsProprietario_Vei.State in [dsEdit,dsInsert] then
  begin
    MessageDlg(fDMCadProprietario.vMsgProprietario, mtError, [mbOk], 0);
    exit;
  end;
  TS_Consulta.TabEnabled    := not(TS_Consulta.TabEnabled);
  RzPageControl1.ActivePage := TS_Consulta;
  pnlCadastro.Enabled       := not(pnlCadastro.Enabled);
  btnConfirmar.Enabled      := not(btnConfirmar.Enabled);
  btnAlterar.Enabled        := not(btnAlterar.Enabled);
end;

procedure TfrmCadProprietario.prc_Inserir_Registro;
begin
  fDMCadProprietario.prc_Inserir;

  if fDMCadProprietario.cdsProprietario_Vei.State in [dsBrowse] then
    exit;
  DBEdit2.ReadOnly := False;

  RzPageControl1.ActivePage := TS_Cadastro;

  TS_Consulta.TabEnabled := False;
  btnAlterar.Enabled     := False;
  btnConfirmar.Enabled   := True;
  pnlCadastro.Enabled    := True;
  DBEdit2.SetFocus;
end;

procedure TfrmCadProprietario.FormShow(Sender: TObject);
begin
  fDMCadProprietario := TDMCadProprietario.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMCadProprietario);
end;

procedure TfrmCadProprietario.prc_Consultar;
begin
  fDMCadProprietario.cdsProprietario_Vei.Close;
  fDMCadProprietario.sdsProprietario_Vei.CommandText := fDMCadProprietario.ctCommand + ' WHERE 0 = 0 ';
  if Trim(Edit4.Text) <> '' then
    fDMCadProprietario.sdsProprietario_Vei.CommandText := fDMCadProprietario.sdsProprietario_Vei.CommandText + ' AND NOME LIKE ' + QuotedStr('%'+Edit4.Text+'%');
  fDMCadProprietario.cdsProprietario_Vei.Open;
end;

procedure TfrmCadProprietario.btnConsultarClick(Sender: TObject);
begin
  prc_Consultar;
end;

procedure TfrmCadProprietario.btnCancelarClick(Sender: TObject);
begin
  if (fDMCadProprietario.cdsProprietario_Vei.State in [dsBrowse]) or not(fDMCadProprietario.cdsProprietario_Vei.Active) then
  begin
    RzPageControl1.ActivePage := TS_Consulta;
    exit;
  end;

  if MessageDlg('Deseja cancelar alteração/inclusão do registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  fDMCadProprietario.cdsProprietario_Vei.CancelUpdates;
  TS_Consulta.TabEnabled    := True;
  RzPageControl1.ActivePage := TS_Consulta;
  pnlCadastro.Enabled       := not(pnlCadastro.Enabled);
  btnConfirmar.Enabled      := not(btnConfirmar.Enabled);
  btnAlterar.Enabled        := not(btnAlterar.Enabled);
end;

procedure TfrmCadProprietario.SMDBGrid1DblClick(Sender: TObject);
begin
  RzPageControl1.ActivePage := TS_Cadastro;
end;

procedure TfrmCadProprietario.btnAlterarClick(Sender: TObject);
begin
  if (fDMCadProprietario.cdsProprietario_Vei.IsEmpty) or not(fDMCadProprietario.cdsProprietario_Vei.Active) or (fDMCadProprietario.cdsProprietario_VeiID.AsInteger < 1) then
    exit;

  DBEdit2.ReadOnly := True;
  fDMCadProprietario.cdsProprietario_Vei.Edit;

  TS_Consulta.TabEnabled := False;
  btnAlterar.Enabled     := False;
  btnConfirmar.Enabled   := True;
  pnlCadastro.Enabled    := True;

end;

procedure TfrmCadProprietario.btnConfirmarClick(Sender: TObject);
begin
  prc_Gravar_Registro;
end;

procedure TfrmCadProprietario.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMCadProprietario);
end;

procedure TfrmCadProprietario.btnInserirClick(Sender: TObject);
begin
  prc_Inserir_Registro;
end;

procedure TfrmCadProprietario.Edit4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmCadProprietario.btnPesquisarClick(Sender: TObject);
begin
  pnlPesquisa.Visible := not(pnlPesquisa.Visible);
  if pnlPesquisa.Visible then
    Edit4.SetFocus
  else
    prc_Limpar_Edit_Consulta;
end;

procedure TfrmCadProprietario.prc_Limpar_Edit_Consulta;
begin
  Edit4.Clear;
end;

procedure TfrmCadProprietario.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose := fnc_Encerrar_Tela(fDMCadProprietario.cdsProprietario_Vei);
end;


procedure TfrmCadProprietario.SMDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if fDMCadProprietario.cdsProprietario_VeiINATIVO.AsString = 'S' then
    AFont.Color := clRed;
end;

procedure TfrmCadProprietario.RxDBComboBox1Exit(Sender: TObject);
begin
  if RxDBComboBox1.ItemIndex = 0 then
    fDMCadProprietario.cdsProprietario_VeiCNPJ_CPF.EditMask := '00.000.000/0000-00'
  else
  if RxDBComboBox1.ItemIndex = 1 then
    fDMCadProprietario.cdsProprietario_VeiCNPJ_CPF.EditMask := '000.000.000-00'
  else
    fDMCadProprietario.cdsProprietario_VeiCNPJ_CPF.EditMask := '';
end;

procedure TfrmCadProprietario.DBEdit6Enter(Sender: TObject);
begin
  if fDMCadProprietario.cdsProprietario_VeiPESSOA.AsString = 'J' then
    fDMCadProprietario.cdsProprietario_VeiCNPJ_CPF.EditMask := '00.000.000/0000-00'
  else
  if fDMCadProprietario.cdsProprietario_VeiPESSOA.AsString = 'F' then
    fDMCadProprietario.cdsProprietario_VeiCNPJ_CPF.EditMask := '000.000.000-00'
  else
    fDMCadProprietario.cdsProprietario_VeiCNPJ_CPF.EditMask := '';
end;

procedure TfrmCadProprietario.DBEdit6Exit(Sender: TObject);
var
  vAux: String;
begin
  vAux := Monta_Numero(DBEdit6.Text,0);
  if (trim(vAux) = '') or (copy(vAux,1,9) = '000000000') then
    exit;
  if fDMCadProprietario.cdsProprietario_VeiPESSOA.AsString = 'J' then
  begin
    if not ValidaCNPJ(DBEdit6.Text) then
    begin
      ShowMessage('CNPJ incorreto!');
      fDMCadProprietario.cdsProprietario_VeiCNPJ_CPF.Clear;
      DBEdit6.SetFocus;
    end;
  end
  else
  if fDMCadProprietario.cdsProprietario_VeiPESSOA.AsString = 'F' then
  begin
    if not ValidaCPF(DBEdit6.Text) then
    begin
      ShowMessage('CPF incorreto!');
      fDMCadProprietario.cdsProprietario_VeiCNPJ_CPF.Clear;
      DBEdit6.SetFocus;
    end;
  end;
end;

end.
