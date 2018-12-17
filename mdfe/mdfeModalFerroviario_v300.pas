
{***********************************************************************************************************************}
{                                                                                                                       }
{                                                   XML Data Binding                                                    }
{                                                                                                                       }
{         Generated on: 16/03/2017 09:07:14                                                                             }
{       Generated from: E:\pessoal\!desenvolvimento\cleomar\FlexDocs\MDFe_Util\Schemas\mdfeModalFerroviario_v3.00.xsd   }
{                                                                                                                       }
{***********************************************************************************************************************}

unit mdfeModalFerroviario_v300;

interface

uses xmldom, XMLDoc, XMLIntf;

type

{ Forward Decls }

  IXMLFerrov = interface;
  IXMLFerrov_trem = interface;
  IXMLFerrov_vag = interface;
  IXMLFerrov_vagList = interface;

{ IXMLFerrov }

  IXMLFerrov = interface(IXMLNode)
    ['{19599314-02D6-48B8-99A9-EC1C2271C3FA}']
    { Property Accessors }
    function Get_Trem: IXMLFerrov_trem;
    function Get_Vag: IXMLFerrov_vagList;
    { Methods & Properties }
    property Trem: IXMLFerrov_trem read Get_Trem;
    property Vag: IXMLFerrov_vagList read Get_Vag;
  end;

{ IXMLFerrov_trem }

  IXMLFerrov_trem = interface(IXMLNode)
    ['{00469190-601A-497E-BD09-66E06F3E8717}']
    { Property Accessors }
    function Get_XPref: WideString;
    function Get_DhTrem: WideString;
    function Get_XOri: WideString;
    function Get_XDest: WideString;
    function Get_QVag: WideString;
    procedure Set_XPref(Value: WideString);
    procedure Set_DhTrem(Value: WideString);
    procedure Set_XOri(Value: WideString);
    procedure Set_XDest(Value: WideString);
    procedure Set_QVag(Value: WideString);
    { Methods & Properties }
    property XPref: WideString read Get_XPref write Set_XPref;
    property DhTrem: WideString read Get_DhTrem write Set_DhTrem;
    property XOri: WideString read Get_XOri write Set_XOri;
    property XDest: WideString read Get_XDest write Set_XDest;
    property QVag: WideString read Get_QVag write Set_QVag;
  end;

{ IXMLFerrov_vag }

  IXMLFerrov_vag = interface(IXMLNode)
    ['{148F720B-A5DC-444F-B611-6B93E69BC8C2}']
    { Property Accessors }
    function Get_PesoBC: WideString;
    function Get_PesoR: WideString;
    function Get_TpVag: WideString;
    function Get_Serie: WideString;
    function Get_NVag: WideString;
    function Get_NSeq: WideString;
    function Get_TU: WideString;
    procedure Set_PesoBC(Value: WideString);
    procedure Set_PesoR(Value: WideString);
    procedure Set_TpVag(Value: WideString);
    procedure Set_Serie(Value: WideString);
    procedure Set_NVag(Value: WideString);
    procedure Set_NSeq(Value: WideString);
    procedure Set_TU(Value: WideString);
    { Methods & Properties }
    property PesoBC: WideString read Get_PesoBC write Set_PesoBC;
    property PesoR: WideString read Get_PesoR write Set_PesoR;
    property TpVag: WideString read Get_TpVag write Set_TpVag;
    property Serie: WideString read Get_Serie write Set_Serie;
    property NVag: WideString read Get_NVag write Set_NVag;
    property NSeq: WideString read Get_NSeq write Set_NSeq;
    property TU: WideString read Get_TU write Set_TU;
  end;

{ IXMLFerrov_vagList }

  IXMLFerrov_vagList = interface(IXMLNodeCollection)
    ['{28D34430-6034-4F18-A867-B777DDFAB630}']
    { Methods & Properties }
    function Add: IXMLFerrov_vag;
    function Insert(const Index: Integer): IXMLFerrov_vag;

    function Get_Item(Index: Integer): IXMLFerrov_vag;
    property Items[Index: Integer]: IXMLFerrov_vag read Get_Item; default;
  end;

{ Forward Decls }

  TXMLFerrov = class;
  TXMLFerrov_trem = class;
  TXMLFerrov_vag = class;
  TXMLFerrov_vagList = class;

{ TXMLFerrov }

  TXMLFerrov = class(TXMLNode, IXMLFerrov )
  private
    FVag: IXMLFerrov_vagList;
  protected
    { IXMLFerrov }
    function Get_Trem: IXMLFerrov_trem;
    function Get_Vag: IXMLFerrov_vagList;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLFerrov_trem }

  TXMLFerrov_trem = class(TXMLNode, IXMLFerrov_trem)
  protected
    { IXMLFerrov_trem }
    function Get_XPref: WideString;
    function Get_DhTrem: WideString;
    function Get_XOri: WideString;
    function Get_XDest: WideString;
    function Get_QVag: WideString;
    procedure Set_XPref(Value: WideString);
    procedure Set_DhTrem(Value: WideString);
    procedure Set_XOri(Value: WideString);
    procedure Set_XDest(Value: WideString);
    procedure Set_QVag(Value: WideString);
  end;

{ TXMLFerrov_vag }

  TXMLFerrov_vag = class(TXMLNode, IXMLFerrov_vag)
  protected
    { IXMLFerrov_vag }
    function Get_PesoBC: WideString;
    function Get_PesoR: WideString;
    function Get_TpVag: WideString;
    function Get_Serie: WideString;
    function Get_NVag: WideString;
    function Get_NSeq: WideString;
    function Get_TU: WideString;
    procedure Set_PesoBC(Value: WideString);
    procedure Set_PesoR(Value: WideString);
    procedure Set_TpVag(Value: WideString);
    procedure Set_Serie(Value: WideString);
    procedure Set_NVag(Value: WideString);
    procedure Set_NSeq(Value: WideString);
    procedure Set_TU(Value: WideString);
  end;

{ TXMLFerrov_vagList }

  TXMLFerrov_vagList = class(TXMLNodeCollection, IXMLFerrov_vagList)
  protected
    { IXMLFerrov_vagList }
    function Add: IXMLFerrov_vag;
    function Insert(const Index: Integer): IXMLFerrov_vag;

    function Get_Item(Index: Integer): IXMLFerrov_vag;
  end;

{ Global Functions }

function Getferrov(Doc: IXMLDocument): IXMLFerrov;
function Loadferrov(const FileName: string): IXMLFerrov;
function Newferrov: IXMLFerrov;

const
  TargetNamespace = 'http://www.portalfiscal.inf.br/mdfe';

implementation

{ Global Functions }

function Getferrov(Doc: IXMLDocument): IXMLFerrov;
begin
  Result := Doc.GetDocBinding('ferrov', TXMLFerrov, TargetNamespace) as IXMLFerrov;
end;

function Loadferrov(const FileName: string): IXMLFerrov;
begin
  Result := LoadXMLDocument(FileName).GetDocBinding('ferrov', TXMLFerrov, TargetNamespace) as IXMLFerrov;
end;

function Newferrov: IXMLFerrov;
begin
  Result := NewXMLDocument.GetDocBinding('ferrov', TXMLFerrov, TargetNamespace) as IXMLFerrov;
end;

{ TXMLFerrov }

procedure TXMLFerrov.AfterConstruction;
begin
  RegisterChildNode('trem', TXMLFerrov_trem);
  RegisterChildNode('vag', TXMLFerrov_vag);
  FVag := CreateCollection(TXMLFerrov_vagList, IXMLFerrov_vag, 'vag') as IXMLFerrov_vagList;
  inherited;
end;

function TXMLFerrov.Get_Trem: IXMLFerrov_trem;
begin
  Result := ChildNodes['trem'] as IXMLFerrov_trem;
end;

function TXMLFerrov.Get_Vag: IXMLFerrov_vagList;
begin
  Result := FVag;
end;

{ TXMLFerrov_trem }

function TXMLFerrov_trem.Get_XPref: WideString;
begin
  Result := ChildNodes['xPref'].Text;
end;

procedure TXMLFerrov_trem.Set_XPref(Value: WideString);
begin
  ChildNodes['xPref'].NodeValue := Value;
end;

function TXMLFerrov_trem.Get_DhTrem: WideString;
begin
  Result := ChildNodes['dhTrem'].Text;
end;

procedure TXMLFerrov_trem.Set_DhTrem(Value: WideString);
begin
  ChildNodes['dhTrem'].NodeValue := Value;
end;

function TXMLFerrov_trem.Get_XOri: WideString;
begin
  Result := ChildNodes['xOri'].Text;
end;

procedure TXMLFerrov_trem.Set_XOri(Value: WideString);
begin
  ChildNodes['xOri'].NodeValue := Value;
end;

function TXMLFerrov_trem.Get_XDest: WideString;
begin
  Result := ChildNodes['xDest'].Text;
end;

procedure TXMLFerrov_trem.Set_XDest(Value: WideString);
begin
  ChildNodes['xDest'].NodeValue := Value;
end;

function TXMLFerrov_trem.Get_QVag: WideString;
begin
  Result := ChildNodes['qVag'].Text;
end;

procedure TXMLFerrov_trem.Set_QVag(Value: WideString);
begin
  ChildNodes['qVag'].NodeValue := Value;
end;

{ TXMLFerrov_vag }

function TXMLFerrov_vag.Get_PesoBC: WideString;
begin
  Result := ChildNodes['pesoBC'].Text;
end;

procedure TXMLFerrov_vag.Set_PesoBC(Value: WideString);
begin
  ChildNodes['pesoBC'].NodeValue := Value;
end;

function TXMLFerrov_vag.Get_PesoR: WideString;
begin
  Result := ChildNodes['pesoR'].Text;
end;

procedure TXMLFerrov_vag.Set_PesoR(Value: WideString);
begin
  ChildNodes['pesoR'].NodeValue := Value;
end;

function TXMLFerrov_vag.Get_TpVag: WideString;
begin
  Result := ChildNodes['tpVag'].Text;
end;

procedure TXMLFerrov_vag.Set_TpVag(Value: WideString);
begin
  ChildNodes['tpVag'].NodeValue := Value;
end;

function TXMLFerrov_vag.Get_Serie: WideString;
begin
  Result := ChildNodes['serie'].Text;
end;

procedure TXMLFerrov_vag.Set_Serie(Value: WideString);
begin
  ChildNodes['serie'].NodeValue := Value;
end;

function TXMLFerrov_vag.Get_NVag: WideString;
begin
  Result := ChildNodes['nVag'].Text;
end;

procedure TXMLFerrov_vag.Set_NVag(Value: WideString);
begin
  ChildNodes['nVag'].NodeValue := Value;
end;

function TXMLFerrov_vag.Get_NSeq: WideString;
begin
  Result := ChildNodes['nSeq'].Text;
end;

procedure TXMLFerrov_vag.Set_NSeq(Value: WideString);
begin
  ChildNodes['nSeq'].NodeValue := Value;
end;

function TXMLFerrov_vag.Get_TU: WideString;
begin
  Result := ChildNodes['TU'].Text;
end;

procedure TXMLFerrov_vag.Set_TU(Value: WideString);
begin
  ChildNodes['TU'].NodeValue := Value;
end;

{ TXMLFerrov_vagList }

function TXMLFerrov_vagList.Add: IXMLFerrov_vag;
begin
  Result := AddItem(-1) as IXMLFerrov_vag;
end;

function TXMLFerrov_vagList.Insert(const Index: Integer): IXMLFerrov_vag;
begin
  Result := AddItem(Index) as IXMLFerrov_vag;
end;

function TXMLFerrov_vagList.Get_Item(Index: Integer): IXMLFerrov_vag;
begin
  Result := List[Index] as IXMLFerrov_vag;
end;

end.