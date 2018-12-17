unit UCadMDFe_Enc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, SMDBGrid, ExtCtrls, StdCtrls, UDMCadMDFe;

type
  TfrmCadMDFe_Enc = class(TForm)
    SMDBGrid1: TSMDBGrid;
    Panel1: TPanel;
    Label1: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure SMDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SMDBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    fDMCadMDFe: TDMCadMDFe;
    
  end;

var
  frmCadMDFe_Enc: TfrmCadMDFe_Enc;

implementation

uses rsDBUtils;

{$R *.dfm}

procedure TfrmCadMDFe_Enc.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmCadMDFe_Enc.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMCadMDFe);

end;

procedure TfrmCadMDFe_Enc.SMDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  Close;
end;

procedure TfrmCadMDFe_Enc.SMDBGrid1DblClick(Sender: TObject);
begin
  Close;
end;

end.
