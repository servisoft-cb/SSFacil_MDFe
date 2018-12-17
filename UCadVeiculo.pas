unit UCadVeiculo;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Buttons, Grids, SMDBGrid, UDMCadVeiculo, Mask, 
  UCBase, StdCtrls, RxDBComb, DBCtrls, ExtCtrls, DBGrids, RzTabs, DB, NxCollection, SqlExpr, RxLookup;

type
  TfrmCadVeiculo = class(TForm)
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
    RxDBLookupCombo1: TRxDBLookupCombo;
    Label3: TLabel;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    Label9: TLabel;
    DBEdit7: TDBEdit;
    Label10: TLabel;
    RxDBLookupCombo2: TRxDBLookupCombo;
    DBCheckBox1: TDBCheckBox;
    RxDBComboBox1: TRxDBComboBox;
    Label11: TLabel;
    Label12: TLabel;
    RxDBComboBox2: TRxDBComboBox;
    Label13: TLabel;
    RxDBComboBox3: TRxDBComboBox;
    Label14: TLabel;
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
  private
    { Private declarations }
    fDMCadVeiculo: TDMCadVeiculo;
    procedure prc_Inserir_Registro;
    procedure prc_Excluir_Registro;
    procedure prc_Gravar_Registro;
    procedure prc_Consultar;
    procedure prc_Limpar_Edit_Consulta;
  public
    { Public declarations }      
  end;

var
  frmCadVeiculo: TfrmCadVeiculo;

implementation

uses DmdDatabase, rsDBUtils, UMenu, uUtilPadrao;

{$R *.dfm}

procedure TfrmCadVeiculo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmCadVeiculo.btnExcluirClick(Sender: TObject);
begin
  if fDMCadVeiculo.cdsVeiculo.IsEmpty then
    exit;

  if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  prc_Excluir_Registro;
end;

procedure TfrmCadVeiculo.prc_Excluir_Registro;
begin
  fDMCadVeiculo.prc_Excluir;
end;

procedure TfrmCadVeiculo.prc_Gravar_Registro;
begin
  fDMCadVeiculo.prc_Gravar;
  if fDMCadVeiculo.cdsVeiculo.State in [dsEdit,dsInsert] then
  begin
    MessageDlg(fDMCadVeiculo.vMsgVeiculo, mtError, [mbOk], 0);
    exit;
  end;
  TS_Consulta.TabEnabled    := not(TS_Consulta.TabEnabled);
  RzPageControl1.ActivePage := TS_Consulta;
  pnlCadastro.Enabled       := not(pnlCadastro.Enabled);
  btnConfirmar.Enabled      := not(btnConfirmar.Enabled);
  btnAlterar.Enabled        := not(btnAlterar.Enabled);
end;

procedure TfrmCadVeiculo.prc_Inserir_Registro;
begin
  fDMCadVeiculo.prc_Inserir;

  if fDMCadVeiculo.cdsVeiculo.State in [dsBrowse] then
    exit;
  DBEdit2.ReadOnly := False;

  RzPageControl1.ActivePage := TS_Cadastro;

  TS_Consulta.TabEnabled := False;
  btnAlterar.Enabled     := False;
  btnConfirmar.Enabled   := True;
  pnlCadastro.Enabled    := True;
  DBEdit2.SetFocus;
end;

procedure TfrmCadVeiculo.FormShow(Sender: TObject);
begin
  fDMCadVeiculo := TDMCadVeiculo.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMCadVeiculo);
end;

procedure TfrmCadVeiculo.prc_Consultar;
begin
  fDMCadVeiculo.cdsVeiculo.Close;
  fDMCadVeiculo.sdsVeiculo.CommandText := fDMCadVeiculo.ctCommand + ' WHERE 0 = 0 ';
  if Trim(Edit4.Text) <> '' then
    fDMCadVeiculo.sdsVeiculo.CommandText := fDMCadVeiculo.sdsVeiculo.CommandText + ' AND NOME LIKE ' + QuotedStr('%'+Edit4.Text+'%');
  fDMCadVeiculo.cdsVeiculo.Open;
end;

procedure TfrmCadVeiculo.btnConsultarClick(Sender: TObject);
begin
  prc_Consultar;
end;

procedure TfrmCadVeiculo.btnCancelarClick(Sender: TObject);
begin
  if (fDMCadVeiculo.cdsVeiculo.State in [dsBrowse]) or not(fDMCadVeiculo.cdsVeiculo.Active) then
  begin
    RzPageControl1.ActivePage := TS_Consulta;
    exit;
  end;

  if MessageDlg('Deseja cancelar alteração/inclusão do registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  fDMCadVeiculo.cdsVeiculo.CancelUpdates;
  TS_Consulta.TabEnabled    := True;
  RzPageControl1.ActivePage := TS_Consulta;
  pnlCadastro.Enabled       := not(pnlCadastro.Enabled);
  btnConfirmar.Enabled      := not(btnConfirmar.Enabled);
  btnAlterar.Enabled        := not(btnAlterar.Enabled);
end;

procedure TfrmCadVeiculo.SMDBGrid1DblClick(Sender: TObject);
begin
  RzPageControl1.ActivePage := TS_Cadastro;
end;

procedure TfrmCadVeiculo.btnAlterarClick(Sender: TObject);
begin
  if (fDMCadVeiculo.cdsVeiculo.IsEmpty) or not(fDMCadVeiculo.cdsVeiculo.Active) or (fDMCadVeiculo.cdsVeiculoID.AsInteger < 1) then
    exit;

  DBEdit2.ReadOnly := True;
  fDMCadVeiculo.cdsVeiculo.Edit;

  TS_Consulta.TabEnabled := False;
  btnAlterar.Enabled     := False;
  btnConfirmar.Enabled   := True;
  pnlCadastro.Enabled    := True;
end;

procedure TfrmCadVeiculo.btnConfirmarClick(Sender: TObject);
begin
  prc_Gravar_Registro;
end;

procedure TfrmCadVeiculo.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMCadVeiculo);
end;

procedure TfrmCadVeiculo.btnInserirClick(Sender: TObject);
begin
  prc_Inserir_Registro;
end;

procedure TfrmCadVeiculo.Edit4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmCadVeiculo.btnPesquisarClick(Sender: TObject);
begin
  pnlPesquisa.Visible := not(pnlPesquisa.Visible);
  if pnlPesquisa.Visible then
    Edit4.SetFocus
  else
    prc_Limpar_Edit_Consulta;
end;

procedure TfrmCadVeiculo.prc_Limpar_Edit_Consulta;
begin
  Edit4.Clear;
end;

procedure TfrmCadVeiculo.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose := fnc_Encerrar_Tela(fDMCadVeiculo.cdsVeiculo);
end;

end.
