unit UCadCondutor;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Buttons, Grids, SMDBGrid, UDMCadCondutor, Mask, 
  UCBase, StdCtrls, RxDBComb, DBCtrls, ExtCtrls, DBGrids, RzTabs, DB, NxCollection, SqlExpr,
  RxLookup;

type
  TfrmCadCondutor = class(TForm)
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
    fDMCadCondutor: TDMCadCondutor;
    procedure prc_Inserir_Registro;
    procedure prc_Excluir_Registro;
    procedure prc_Gravar_Registro;
    procedure prc_Consultar;
    procedure prc_Limpar_Edit_Consulta;

  public
    { Public declarations }

  end;

var
  frmCadCondutor: TfrmCadCondutor;

implementation

uses DmdDatabase, rsDBUtils, UMenu, uUtilPadrao;

{$R *.dfm}

procedure TfrmCadCondutor.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmCadCondutor.btnExcluirClick(Sender: TObject);
begin
  if fDMCadCondutor.cdsCondutor.IsEmpty then
    exit;

  if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  prc_Excluir_Registro;
end;

procedure TfrmCadCondutor.prc_Excluir_Registro;
begin
  fDMCadCondutor.prc_Excluir;
end;

procedure TfrmCadCondutor.prc_Gravar_Registro;
begin
  fDMCadCondutor.prc_Gravar;
  if fDMCadCondutor.cdsCondutor.State in [dsEdit,dsInsert] then
  begin
    MessageDlg(fDMCadCondutor.vMsgCondutor, mtError, [mbOk], 0);
    exit;
  end;
  TS_Consulta.TabEnabled    := not(TS_Consulta.TabEnabled);
  RzPageControl1.ActivePage := TS_Consulta;
  pnlCadastro.Enabled       := not(pnlCadastro.Enabled);
  btnConfirmar.Enabled      := not(btnConfirmar.Enabled);
  btnAlterar.Enabled        := not(btnAlterar.Enabled);
end;

procedure TfrmCadCondutor.prc_Inserir_Registro;
begin
  fDMCadCondutor.prc_Inserir;

  if fDMCadCondutor.cdsCondutor.State in [dsBrowse] then
    exit;
  DBEdit2.ReadOnly := False;

  RzPageControl1.ActivePage := TS_Cadastro;

  TS_Consulta.TabEnabled := False;
  btnAlterar.Enabled     := False;
  btnConfirmar.Enabled   := True;
  pnlCadastro.Enabled    := True;
  DBEdit2.SetFocus;
end;

procedure TfrmCadCondutor.FormShow(Sender: TObject);
begin
  fDMCadCondutor := TDMCadCondutor.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMCadCondutor);
end;

procedure TfrmCadCondutor.prc_Consultar;
begin
  fDMCadCondutor.cdsCondutor.Close;
  fDMCadCondutor.sdsCondutor.CommandText := fDMCadCondutor.ctCommand + ' WHERE 0 = 0 ';
  if Trim(Edit4.Text) <> '' then
    fDMCadCondutor.sdsCondutor.CommandText := fDMCadCondutor.sdsCondutor.CommandText + ' AND NOME LIKE ' + QuotedStr('%'+Edit4.Text+'%');
  fDMCadCondutor.cdsCondutor.Open;
end;

procedure TfrmCadCondutor.btnConsultarClick(Sender: TObject);
begin
  prc_Consultar;
end;

procedure TfrmCadCondutor.btnCancelarClick(Sender: TObject);
begin
  if (fDMCadCondutor.cdsCondutor.State in [dsBrowse]) or not(fDMCadCondutor.cdsCondutor.Active) then
  begin
    RzPageControl1.ActivePage := TS_Consulta;
    exit;
  end;

  if MessageDlg('Deseja cancelar alteração/inclusão do registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  fDMCadCondutor.cdsCondutor.CancelUpdates;
  TS_Consulta.TabEnabled    := True;
  RzPageControl1.ActivePage := TS_Consulta;
  pnlCadastro.Enabled       := not(pnlCadastro.Enabled);
  btnConfirmar.Enabled      := not(btnConfirmar.Enabled);
  btnAlterar.Enabled        := not(btnAlterar.Enabled);
end;

procedure TfrmCadCondutor.SMDBGrid1DblClick(Sender: TObject);
begin
  RzPageControl1.ActivePage := TS_Cadastro;
end;

procedure TfrmCadCondutor.btnAlterarClick(Sender: TObject);
begin
  if (fDMCadCondutor.cdsCondutor.IsEmpty) or not(fDMCadCondutor.cdsCondutor.Active) or (fDMCadCondutor.cdsCondutorID.AsInteger < 1) then
    exit;

  DBEdit2.ReadOnly := True;
  fDMCadCondutor.cdsCondutor.Edit;

  TS_Consulta.TabEnabled := False;
  btnAlterar.Enabled     := False;
  btnConfirmar.Enabled   := True;
  pnlCadastro.Enabled    := True;

end;

procedure TfrmCadCondutor.btnConfirmarClick(Sender: TObject);
begin
  prc_Gravar_Registro;
end;

procedure TfrmCadCondutor.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMCadCondutor);
end;

procedure TfrmCadCondutor.btnInserirClick(Sender: TObject);
begin
  prc_Inserir_Registro;
end;

procedure TfrmCadCondutor.Edit4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmCadCondutor.btnPesquisarClick(Sender: TObject);
begin
  pnlPesquisa.Visible := not(pnlPesquisa.Visible);
  if pnlPesquisa.Visible then
    Edit4.SetFocus
  else
    prc_Limpar_Edit_Consulta;
end;

procedure TfrmCadCondutor.prc_Limpar_Edit_Consulta;
begin
  Edit4.Clear;
end;

procedure TfrmCadCondutor.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose := fnc_Encerrar_Tela(fDMCadCondutor.cdsCondutor);
end;


procedure TfrmCadCondutor.SMDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if fDMCadCondutor.cdsCondutorINATIVO.AsString = 'S' then
    AFont.Color := clRed;
end;

procedure TfrmCadCondutor.DBEdit6Enter(Sender: TObject);
begin
  fDMCadCondutor.cdsCondutorCPF.EditMask := '000.000.000-00';
end;

procedure TfrmCadCondutor.DBEdit6Exit(Sender: TObject);
var
  vNomeAux: String;
  vAux: String;
begin
  vAux := Monta_Numero(DBEdit6.Text,0);
  if (trim(vAux) = '') or (copy(vAux,1,9) = '000000000') then
    exit;
  if not ValidaCPF(DBEdit6.Text) then
  begin
    ShowMessage('CPF incorreto!');
    fDMCadCondutor.cdsCondutorCPF.Clear;
    DBEdit6.SetFocus;
  end;
end;

end.
