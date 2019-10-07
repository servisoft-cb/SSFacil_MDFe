
{*****************************************************************************************************************************************}
{                                                                                                                                         }
{                                                            XML Data Binding                                                             }
{                                                                                                                                         }
{         Generated on: 26/09/2019 09:16:27                                                                                               }
{       Generated from: C:\Users\edson.alanis\Google Drive\!desenvolvimento\cleomar\FlexDocs\MDFe_Util\Schemas\mdfeModalAereo_v3.00.xsd   }
{                                                                                                                                         }
{*****************************************************************************************************************************************}

unit mdfeModalAereo_v300;

interface

uses xmldom, XMLDoc, XMLIntf;

type

{ Forward Decls }

  IXMLAereo = interface;

{ IXMLAereo }

  IXMLAereo = interface(IXMLNode)
    ['{D0FEBC44-7CF5-4660-B7CD-3B031C97EC6E}']
    { Property Accessors }
    function Get_Nac: WideString;
    function Get_Matr: WideString;
    function Get_NVoo: WideString;
    function Get_CAerEmb: WideString;
    function Get_CAerDes: WideString;
    function Get_DVoo: WideString;
    procedure Set_Nac(Value: WideString);
    procedure Set_Matr(Value: WideString);
    procedure Set_NVoo(Value: WideString);
    procedure Set_CAerEmb(Value: WideString);
    procedure Set_CAerDes(Value: WideString);
    procedure Set_DVoo(Value: WideString);
    { Methods & Properties }
    property Nac: WideString read Get_Nac write Set_Nac;
    property Matr: WideString read Get_Matr write Set_Matr;
    property NVoo: WideString read Get_NVoo write Set_NVoo;
    property CAerEmb: WideString read Get_CAerEmb write Set_CAerEmb;
    property CAerDes: WideString read Get_CAerDes write Set_CAerDes;
    property DVoo: WideString read Get_DVoo write Set_DVoo;
  end;

{ Forward Decls }

  TXMLAereo = class;

{ TXMLAereo }

  TXMLAereo = class(TXMLNode, IXMLAereo)
  protected
    { IXMLAereo }
    function Get_Nac: WideString;
    function Get_Matr: WideString;
    function Get_NVoo: WideString;
    function Get_CAerEmb: WideString;
    function Get_CAerDes: WideString;
    function Get_DVoo: WideString;
    procedure Set_Nac(Value: WideString);
    procedure Set_Matr(Value: WideString);
    procedure Set_NVoo(Value: WideString);
    procedure Set_CAerEmb(Value: WideString);
    procedure Set_CAerDes(Value: WideString);
    procedure Set_DVoo(Value: WideString);
  end;

{ Global Functions }

function Getaereo(Doc: IXMLDocument): IXMLAereo;
function Loadaereo(const FileName: string): IXMLAereo;
function Newaereo: IXMLAereo;

const
  TargetNamespace = 'http://www.portalfiscal.inf.br/mdfe';

implementation

uses xmlutil;

{ Global Functions }

function Getaereo(Doc: IXMLDocument): IXMLAereo;
begin
  Result := Doc.GetDocBinding('aereo', TXMLAereo, TargetNamespace) as IXMLAereo;
end;

function Loadaereo(const FileName: string): IXMLAereo;
begin
  Result := LoadXMLDocument(FileName).GetDocBinding('aereo', TXMLAereo, TargetNamespace) as IXMLAereo;
end;

function Newaereo: IXMLAereo;
begin
  Result := NewXMLDocument.GetDocBinding('aereo', TXMLAereo, TargetNamespace) as IXMLAereo;
end;

{ TXMLAereo }

function TXMLAereo.Get_Nac: WideString;
begin
  Result := ChildNodes['nac'].Text;
end;

procedure TXMLAereo.Set_Nac(Value: WideString);
begin
  ChildNodes['nac'].NodeValue := Value;
end;

function TXMLAereo.Get_Matr: WideString;
begin
  Result := ChildNodes['matr'].Text;
end;

procedure TXMLAereo.Set_Matr(Value: WideString);
begin
  ChildNodes['matr'].NodeValue := Value;
end;

function TXMLAereo.Get_NVoo: WideString;
begin
  Result := ChildNodes['nVoo'].Text;
end;

procedure TXMLAereo.Set_NVoo(Value: WideString);
begin
  ChildNodes['nVoo'].NodeValue := Value;
end;

function TXMLAereo.Get_CAerEmb: WideString;
begin
  Result := ChildNodes['cAerEmb'].Text;
end;

procedure TXMLAereo.Set_CAerEmb(Value: WideString);
begin
  ChildNodes['cAerEmb'].NodeValue := Value;
end;

function TXMLAereo.Get_CAerDes: WideString;
begin
  Result := ChildNodes['cAerDes'].Text;
end;

procedure TXMLAereo.Set_CAerDes(Value: WideString);
begin
  ChildNodes['cAerDes'].NodeValue := Value;
end;

function TXMLAereo.Get_DVoo: WideString;
begin
  Result := ChildNodes['dVoo'].Text;
end;

procedure TXMLAereo.Set_DVoo(Value: WideString);
begin
  ChildNodes['dVoo'].NodeValue := Value;
end;

end.
