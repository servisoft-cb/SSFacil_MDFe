unit UEventos_MDFe;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Grids, DBGrids, SMDBGrid, UDMCadMDFe, NxCollection;

type
  TfrmEventosMDFe = class(TForm)
    pnlTop: TPanel;
    pnlPrincipal: TPanel;
    SMDBGrid1: TSMDBGrid;
    btnInserir: TNxButton;
    btnExcluir: TNxButton;
    procedure btnInserirClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    fDMCadMDFe: TDMCadMDFe;
  end;

var
  frmEventosMDFe: TfrmEventosMDFe;

implementation

{$R *.dfm}

procedure TfrmEventosMDFe.btnInserirClick(Sender: TObject);
begin
  Close;
  ModalResult := mrOK;
end;

procedure TfrmEventosMDFe.btnExcluirClick(Sender: TObject);
begin
  Close;
end;

end.
