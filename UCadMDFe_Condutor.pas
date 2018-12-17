unit UCadMDFe_Condutor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, SMDBGrid, ExtCtrls, StdCtrls, UDMCadMDFe,
  RxLookup, Buttons;

type
  TfrmCadMDFe_Condutor = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Panel3: TPanel;
    BitBtn4: TBitBtn;
    BitBtn1: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure SMDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SMDBGrid1DblClick(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    fDMCadMDFe: TDMCadMDFe;
    
  end;

var
  frmCadMDFe_Condutor: TfrmCadMDFe_Condutor;

implementation

uses rsDBUtils;

{$R *.dfm}

procedure TfrmCadMDFe_Condutor.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmCadMDFe_Condutor.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMCadMDFe);

end;

procedure TfrmCadMDFe_Condutor.SMDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  Close;
end;

procedure TfrmCadMDFe_Condutor.SMDBGrid1DblClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmCadMDFe_Condutor.BitBtn4Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmCadMDFe_Condutor.BitBtn1Click(Sender: TObject);
begin
  if trim(RxDBLookupCombo1.Text) = '' then
  begin
    MessageDlg('*** Condutor não infomado!', mtInformation, [mbOk], 0);
    exit;
  end;
  fDMCadMDFe.vID_Condutor_Novo := RxDBLookupCombo1.KeyValue;
  Close;
end;

end.
