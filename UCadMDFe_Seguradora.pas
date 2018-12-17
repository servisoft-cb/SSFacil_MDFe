unit UCadMDFe_Seguradora;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UDMCadMDFe, NxCollection, StdCtrls, RxLookup, RzCmboBx,
  RzDBCmbo, ExtCtrls, DBCtrls, Mask, RzPanel, Buttons, DB;

type
  TfrmCadMDFe_Seguradora = class(TForm)
    gbxVendedor: TRzGroupBox;
    Label1: TLabel;
    DBEdit6: TDBEdit;
    DBRadioGroup1: TDBRadioGroup;
    RzDBComboBox1: TRzDBComboBox;
    RzGroupBox1: TRzGroupBox;
    Label20: TLabel;
    Label19: TLabel;
    DBEdit4: TDBEdit;
    RxDBLookupCombo2: TRxDBLookupCombo;
    Panel3: TPanel;
    BitBtn4: TBitBtn;
    BitBtn1: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure DBEdit6Enter(Sender: TObject);
    procedure DBEdit6Exit(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    fDMCadMDFe: TDMCadMDFe;
    
  end;

var
  frmCadMDFe_Seguradora: TfrmCadMDFe_Seguradora;

implementation

uses rsDBUtils, uUtilPadrao;

{$R *.dfm}

procedure TfrmCadMDFe_Seguradora.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if fDMCadMDFe.cdsMDFe_Seguradora.State in [dsEdit,dsInsert] then
    fDMCadMDFe.cdsMDFe_Seguradora.Cancel;
  Action := Cafree;
end;

procedure TfrmCadMDFe_Seguradora.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMCadMDFe);
end;

procedure TfrmCadMDFe_Seguradora.DBEdit6Enter(Sender: TObject);
begin
  if fDMCadMDFe.cdsMDFe_SeguradoraPESSOA_RESP_SEG.AsString = 'J' then
    fDMCadMDFe.cdsMDFe_SeguradoraCNPJ_CPF_RESP_SEG.EditMask := '00.000.000/0000-00'
  else
  if fDMCadMDFe.cdsMDFe_SeguradoraPESSOA_RESP_SEG.AsString = 'F' then
    fDMCadMDFe.cdsMDFe_SeguradoraCNPJ_CPF_RESP_SEG.EditMask := '000.000.000-00'
  else
    fDMCadMDFe.cdsMDFe_SeguradoraCNPJ_CPF_RESP_SEG.EditMask := '';
end;

procedure TfrmCadMDFe_Seguradora.DBEdit6Exit(Sender: TObject);
var
  vAux: String;
begin
  vAux := Monta_Numero(DBEdit6.Text,0);
  if (trim(vAux) = '') or (copy(vAux,1,9) = '000000000') then
    exit;
  if fDMCadMDFe.cdsMDFe_SeguradoraPESSOA_RESP_SEG.AsString = 'J' then
  begin
    if not ValidaCNPJ(DBEdit6.Text) then
    begin
      ShowMessage('CNPJ incorreto!');
      fDMCadMDFe.cdsMDFe_SeguradoraCNPJ_CPF_RESP_SEG.Clear;
      DBEdit6.SetFocus;
    end;
  end
  else
  if fDMCadMDFe.cdsMDFe_SeguradoraPESSOA_RESP_SEG.AsString = 'F' then
  begin
    if not ValidaCPF(DBEdit6.Text) then
    begin
      ShowMessage('CPF incorreto!');
      fDMCadMDFe.cdsMDFe_SeguradoraCNPJ_CPF_RESP_SEG.Clear;
      DBEdit6.SetFocus;
    end;
  end;
end;

procedure TfrmCadMDFe_Seguradora.BitBtn1Click(Sender: TObject);
begin
  fDMCadMDFe.vMsgMDFe := '';
  if (fDMCadMDFe.cdsMDFe_SeguradoraRESPONSAVEL_SEGURO.AsString <> '1') and (fDMCadMDFe.cdsMDFe_SeguradoraRESPONSAVEL_SEGURO.AsString <> '2') then
    fDMCadMDFe.vMsgMDFe := fDMCadMDFe.vMsgMDFe + #13 + '*** Não foi informado o Responsável pelo seguro!';
  if fDMCadMDFe.cdsMDFe_SeguradoraID_SEGURADORA.AsInteger <= 0 then
    fDMCadMDFe.vMsgMDFe := fDMCadMDFe.vMsgMDFe + #13 + '*** Não foi informada a Seguradora!';
  if trim(fDMCadMDFe.vMsgMDFe) <> '' then
  begin
    MessageDlg(fDMCadMDFe.vMsgMDFe, mtError, [mbOk], 0);
    exit;
  end;
  fDMCadMDFe.cdsMDFe_Seguradora.Post;
  Close;
end;

procedure TfrmCadMDFe_Seguradora.BitBtn4Click(Sender: TObject);
begin
  if MessageDlg('Deseja cancelar a inclusão/alteração?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;
  Close;
end;

end.
