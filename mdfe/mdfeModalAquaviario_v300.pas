
{**********************************************************************************************************************************************}
{                                                                                                                                              }
{                                                               XML Data Binding                                                               }
{                                                                                                                                              }
{         Generated on: 26/09/2019 09:30:19                                                                                                    }
{       Generated from: C:\Users\edson.alanis\Google Drive\!desenvolvimento\cleomar\FlexDocs\MDFe_Util\Schemas\mdfeModalAquaviario_v3.00.xsd   }
{                                                                                                                                              }
{**********************************************************************************************************************************************}

unit mdfeModalAquaviario_v300;

interface

uses xmldom, XMLDoc, XMLIntf;

type

{ Forward Decls }

  IXMLAquav = interface;
  IXMLAquav_infTermCarreg = interface;
  IXMLAquav_infTermCarregList = interface;
  IXMLAquav_infTermDescarreg = interface;
  IXMLAquav_infTermDescarregList = interface;
  IXMLAquav_infEmbComb = interface;
  IXMLAquav_infEmbCombList = interface;
  IXMLAquav_infUnidCargaVazia = interface;
  IXMLAquav_infUnidCargaVaziaList = interface;
  IXMLAquav_infUnidTranspVazia = interface;
  IXMLAquav_infUnidTranspVaziaList = interface;
  IXMLNAverList = interface;

{ IXMLAquav }

  IXMLAquav = interface(IXMLNode)
    ['{07953126-3575-45FB-8641-9A7CD14678F6}']
    { Property Accessors }
    function Get_Irin: WideString;
    function Get_TpEmb: WideString;
    function Get_CEmbar: WideString;
    function Get_XEmbar: WideString;
    function Get_NViag: WideString;
    function Get_CPrtEmb: WideString;
    function Get_CPrtDest: WideString;
    function Get_PrtTrans: WideString;
    function Get_TpNav: WideString;
    function Get_InfTermCarreg: IXMLAquav_infTermCarregList;
    function Get_InfTermDescarreg: IXMLAquav_infTermDescarregList;
    function Get_InfEmbComb: IXMLAquav_infEmbCombList;
    function Get_InfUnidCargaVazia: IXMLAquav_infUnidCargaVaziaList;
    function Get_InfUnidTranspVazia: IXMLAquav_infUnidTranspVaziaList;
    procedure Set_Irin(Value: WideString);
    procedure Set_TpEmb(Value: WideString);
    procedure Set_CEmbar(Value: WideString);
    procedure Set_XEmbar(Value: WideString);
    procedure Set_NViag(Value: WideString);
    procedure Set_CPrtEmb(Value: WideString);
    procedure Set_CPrtDest(Value: WideString);
    procedure Set_PrtTrans(Value: WideString);
    procedure Set_TpNav(Value: WideString);
    { Methods & Properties }
    property Irin: WideString read Get_Irin write Set_Irin;
    property TpEmb: WideString read Get_TpEmb write Set_TpEmb;
    property CEmbar: WideString read Get_CEmbar write Set_CEmbar;
    property XEmbar: WideString read Get_XEmbar write Set_XEmbar;
    property NViag: WideString read Get_NViag write Set_NViag;
    property CPrtEmb: WideString read Get_CPrtEmb write Set_CPrtEmb;
    property CPrtDest: WideString read Get_CPrtDest write Set_CPrtDest;
    property PrtTrans: WideString read Get_PrtTrans write Set_PrtTrans;
    property TpNav: WideString read Get_TpNav write Set_TpNav;
    property InfTermCarreg: IXMLAquav_infTermCarregList read Get_InfTermCarreg;
    property InfTermDescarreg: IXMLAquav_infTermDescarregList read Get_InfTermDescarreg;
    property InfEmbComb: IXMLAquav_infEmbCombList read Get_InfEmbComb;
    property InfUnidCargaVazia: IXMLAquav_infUnidCargaVaziaList read Get_InfUnidCargaVazia;
    property InfUnidTranspVazia: IXMLAquav_infUnidTranspVaziaList read Get_InfUnidTranspVazia;
  end;

{ IXMLAquav_infTermCarreg }

  IXMLAquav_infTermCarreg = interface(IXMLNode)
    ['{062A30D1-FAE7-4A65-815F-ED224571B472}']
    { Property Accessors }
    function Get_CTermCarreg: WideString;
    function Get_XTermCarreg: WideString;
    procedure Set_CTermCarreg(Value: WideString);
    procedure Set_XTermCarreg(Value: WideString);
    { Methods & Properties }
    property CTermCarreg: WideString read Get_CTermCarreg write Set_CTermCarreg;
    property XTermCarreg: WideString read Get_XTermCarreg write Set_XTermCarreg;
  end;

{ IXMLAquav_infTermCarregList }

  IXMLAquav_infTermCarregList = interface(IXMLNodeCollection)
    ['{097CA7E5-CB5B-4D38-AE28-F81DEB29034B}']
    { Methods & Properties }
    function Add: IXMLAquav_infTermCarreg;
    function Insert(const Index: Integer): IXMLAquav_infTermCarreg;

    function Get_Item(Index: Integer): IXMLAquav_infTermCarreg;
    property Items[Index: Integer]: IXMLAquav_infTermCarreg read Get_Item; default;
  end;

{ IXMLAquav_infTermDescarreg }

  IXMLAquav_infTermDescarreg = interface(IXMLNode)
    ['{BC27BD58-323A-4112-8F0A-30D7EAA6F159}']
    { Property Accessors }
    function Get_CTermDescarreg: WideString;
    function Get_XTermDescarreg: WideString;
    procedure Set_CTermDescarreg(Value: WideString);
    procedure Set_XTermDescarreg(Value: WideString);
    { Methods & Properties }
    property CTermDescarreg: WideString read Get_CTermDescarreg write Set_CTermDescarreg;
    property XTermDescarreg: WideString read Get_XTermDescarreg write Set_XTermDescarreg;
  end;

{ IXMLAquav_infTermDescarregList }

  IXMLAquav_infTermDescarregList = interface(IXMLNodeCollection)
    ['{83A4E849-51FA-4ECA-88CB-8A58F3126E4F}']
    { Methods & Properties }
    function Add: IXMLAquav_infTermDescarreg;
    function Insert(const Index: Integer): IXMLAquav_infTermDescarreg;

    function Get_Item(Index: Integer): IXMLAquav_infTermDescarreg;
    property Items[Index: Integer]: IXMLAquav_infTermDescarreg read Get_Item; default;
  end;

{ IXMLAquav_infEmbComb }

  IXMLAquav_infEmbComb = interface(IXMLNode)
    ['{6FEC7CAB-B48B-40A6-BC81-6E6A470F0BEF}']
    { Property Accessors }
    function Get_CEmbComb: WideString;
    function Get_XBalsa: WideString;
    procedure Set_CEmbComb(Value: WideString);
    procedure Set_XBalsa(Value: WideString);
    { Methods & Properties }
    property CEmbComb: WideString read Get_CEmbComb write Set_CEmbComb;
    property XBalsa: WideString read Get_XBalsa write Set_XBalsa;
  end;

{ IXMLAquav_infEmbCombList }

  IXMLAquav_infEmbCombList = interface(IXMLNodeCollection)
    ['{4D9CEED6-66C6-421D-A70C-D5BA806D8ADE}']
    { Methods & Properties }
    function Add: IXMLAquav_infEmbComb;
    function Insert(const Index: Integer): IXMLAquav_infEmbComb;

    function Get_Item(Index: Integer): IXMLAquav_infEmbComb;
    property Items[Index: Integer]: IXMLAquav_infEmbComb read Get_Item; default;
  end;

{ IXMLAquav_infUnidCargaVazia }

  IXMLAquav_infUnidCargaVazia = interface(IXMLNode)
    ['{8C560CAB-F9CD-4234-BFD7-464A91A0BB24}']
    { Property Accessors }
    function Get_IdUnidCargaVazia: WideString;
    function Get_TpUnidCargaVazia: WideString;
    procedure Set_IdUnidCargaVazia(Value: WideString);
    procedure Set_TpUnidCargaVazia(Value: WideString);
    { Methods & Properties }
    property IdUnidCargaVazia: WideString read Get_IdUnidCargaVazia write Set_IdUnidCargaVazia;
    property TpUnidCargaVazia: WideString read Get_TpUnidCargaVazia write Set_TpUnidCargaVazia;
  end;

{ IXMLAquav_infUnidCargaVaziaList }

  IXMLAquav_infUnidCargaVaziaList = interface(IXMLNodeCollection)
    ['{DE5AB632-FA58-494D-887A-1091EC8A4F80}']
    { Methods & Properties }
    function Add: IXMLAquav_infUnidCargaVazia;
    function Insert(const Index: Integer): IXMLAquav_infUnidCargaVazia;

    function Get_Item(Index: Integer): IXMLAquav_infUnidCargaVazia;
    property Items[Index: Integer]: IXMLAquav_infUnidCargaVazia read Get_Item; default;
  end;

{ IXMLAquav_infUnidTranspVazia }

  IXMLAquav_infUnidTranspVazia = interface(IXMLNode)
    ['{0FAD554D-D5D1-4865-B9D8-6DC0B43EFAB8}']
    { Property Accessors }
    function Get_IdUnidTranspVazia: WideString;
    function Get_TpUnidTranspVazia: WideString;
    procedure Set_IdUnidTranspVazia(Value: WideString);
    procedure Set_TpUnidTranspVazia(Value: WideString);
    { Methods & Properties }
    property IdUnidTranspVazia: WideString read Get_IdUnidTranspVazia write Set_IdUnidTranspVazia;
    property TpUnidTranspVazia: WideString read Get_TpUnidTranspVazia write Set_TpUnidTranspVazia;
  end;

{ IXMLAquav_infUnidTranspVaziaList }

  IXMLAquav_infUnidTranspVaziaList = interface(IXMLNodeCollection)
    ['{0DEC4E1D-93CE-4AEB-8E0A-2EA24A79F716}']
    { Methods & Properties }
    function Add: IXMLAquav_infUnidTranspVazia;
    function Insert(const Index: Integer): IXMLAquav_infUnidTranspVazia;

    function Get_Item(Index: Integer): IXMLAquav_infUnidTranspVazia;
    property Items[Index: Integer]: IXMLAquav_infUnidTranspVazia read Get_Item; default;
  end;

{ IXMLNAverList }

  IXMLNAverList = interface(IXMLNodeCollection)
    ['{1CECD955-DA07-44BF-89E7-2BDB21E40BC5}']
    { Methods & Properties }
    function Add(const Value: WideString): IXMLNode;
    function Insert(const Index: Integer; const Value: WideString): IXMLNode;

    function Get_Item(Index: Integer): WideString;
    property Items[Index: Integer]: WideString read Get_Item; default;
  end;

{ Forward Decls }

  TXMLAquav = class;
  TXMLAquav_infTermCarreg = class;
  TXMLAquav_infTermCarregList = class;
  TXMLAquav_infTermDescarreg = class;
  TXMLAquav_infTermDescarregList = class;
  TXMLAquav_infEmbComb = class;
  TXMLAquav_infEmbCombList = class;
  TXMLAquav_infUnidCargaVazia = class;
  TXMLAquav_infUnidCargaVaziaList = class;
  TXMLAquav_infUnidTranspVazia = class;
  TXMLAquav_infUnidTranspVaziaList = class;
  TXMLNAverList = class;

{ TXMLAquav }

  TXMLAquav = class(TXMLNode, IXMLAquav)
  private
    FInfTermCarreg: IXMLAquav_infTermCarregList;
    FInfTermDescarreg: IXMLAquav_infTermDescarregList;
    FInfEmbComb: IXMLAquav_infEmbCombList;
    FInfUnidCargaVazia: IXMLAquav_infUnidCargaVaziaList;
    FInfUnidTranspVazia: IXMLAquav_infUnidTranspVaziaList;
  protected
    { IXMLAquav }
    function Get_Irin: WideString;
    function Get_TpEmb: WideString;
    function Get_CEmbar: WideString;
    function Get_XEmbar: WideString;
    function Get_NViag: WideString;
    function Get_CPrtEmb: WideString;
    function Get_CPrtDest: WideString;
    function Get_PrtTrans: WideString;
    function Get_TpNav: WideString;
    function Get_InfTermCarreg: IXMLAquav_infTermCarregList;
    function Get_InfTermDescarreg: IXMLAquav_infTermDescarregList;
    function Get_InfEmbComb: IXMLAquav_infEmbCombList;
    function Get_InfUnidCargaVazia: IXMLAquav_infUnidCargaVaziaList;
    function Get_InfUnidTranspVazia: IXMLAquav_infUnidTranspVaziaList;
    procedure Set_Irin(Value: WideString);
    procedure Set_TpEmb(Value: WideString);
    procedure Set_CEmbar(Value: WideString);
    procedure Set_XEmbar(Value: WideString);
    procedure Set_NViag(Value: WideString);
    procedure Set_CPrtEmb(Value: WideString);
    procedure Set_CPrtDest(Value: WideString);
    procedure Set_PrtTrans(Value: WideString);
    procedure Set_TpNav(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLAquav_infTermCarreg }

  TXMLAquav_infTermCarreg = class(TXMLNode, IXMLAquav_infTermCarreg)
  protected
    { IXMLAquav_infTermCarreg }
    function Get_CTermCarreg: WideString;
    function Get_XTermCarreg: WideString;
    procedure Set_CTermCarreg(Value: WideString);
    procedure Set_XTermCarreg(Value: WideString);
  end;

{ TXMLAquav_infTermCarregList }

  TXMLAquav_infTermCarregList = class(TXMLNodeCollection, IXMLAquav_infTermCarregList)
  protected
    { IXMLAquav_infTermCarregList }
    function Add: IXMLAquav_infTermCarreg;
    function Insert(const Index: Integer): IXMLAquav_infTermCarreg;

    function Get_Item(Index: Integer): IXMLAquav_infTermCarreg;
  end;

{ TXMLAquav_infTermDescarreg }

  TXMLAquav_infTermDescarreg = class(TXMLNode, IXMLAquav_infTermDescarreg)
  protected
    { IXMLAquav_infTermDescarreg }
    function Get_CTermDescarreg: WideString;
    function Get_XTermDescarreg: WideString;
    procedure Set_CTermDescarreg(Value: WideString);
    procedure Set_XTermDescarreg(Value: WideString);
  end;

{ TXMLAquav_infTermDescarregList }

  TXMLAquav_infTermDescarregList = class(TXMLNodeCollection, IXMLAquav_infTermDescarregList)
  protected
    { IXMLAquav_infTermDescarregList }
    function Add: IXMLAquav_infTermDescarreg;
    function Insert(const Index: Integer): IXMLAquav_infTermDescarreg;

    function Get_Item(Index: Integer): IXMLAquav_infTermDescarreg;
  end;

{ TXMLAquav_infEmbComb }

  TXMLAquav_infEmbComb = class(TXMLNode, IXMLAquav_infEmbComb)
  protected
    { IXMLAquav_infEmbComb }
    function Get_CEmbComb: WideString;
    function Get_XBalsa: WideString;
    procedure Set_CEmbComb(Value: WideString);
    procedure Set_XBalsa(Value: WideString);
  end;

{ TXMLAquav_infEmbCombList }

  TXMLAquav_infEmbCombList = class(TXMLNodeCollection, IXMLAquav_infEmbCombList)
  protected
    { IXMLAquav_infEmbCombList }
    function Add: IXMLAquav_infEmbComb;
    function Insert(const Index: Integer): IXMLAquav_infEmbComb;

    function Get_Item(Index: Integer): IXMLAquav_infEmbComb;
  end;

{ TXMLAquav_infUnidCargaVazia }

  TXMLAquav_infUnidCargaVazia = class(TXMLNode, IXMLAquav_infUnidCargaVazia)
  protected
    { IXMLAquav_infUnidCargaVazia }
    function Get_IdUnidCargaVazia: WideString;
    function Get_TpUnidCargaVazia: WideString;
    procedure Set_IdUnidCargaVazia(Value: WideString);
    procedure Set_TpUnidCargaVazia(Value: WideString);
  end;

{ TXMLAquav_infUnidCargaVaziaList }

  TXMLAquav_infUnidCargaVaziaList = class(TXMLNodeCollection, IXMLAquav_infUnidCargaVaziaList)
  protected
    { IXMLAquav_infUnidCargaVaziaList }
    function Add: IXMLAquav_infUnidCargaVazia;
    function Insert(const Index: Integer): IXMLAquav_infUnidCargaVazia;

    function Get_Item(Index: Integer): IXMLAquav_infUnidCargaVazia;
  end;

{ TXMLAquav_infUnidTranspVazia }

  TXMLAquav_infUnidTranspVazia = class(TXMLNode, IXMLAquav_infUnidTranspVazia)
  protected
    { IXMLAquav_infUnidTranspVazia }
    function Get_IdUnidTranspVazia: WideString;
    function Get_TpUnidTranspVazia: WideString;
    procedure Set_IdUnidTranspVazia(Value: WideString);
    procedure Set_TpUnidTranspVazia(Value: WideString);
  end;

{ TXMLAquav_infUnidTranspVaziaList }

  TXMLAquav_infUnidTranspVaziaList = class(TXMLNodeCollection, IXMLAquav_infUnidTranspVaziaList)
  protected
    { IXMLAquav_infUnidTranspVaziaList }
    function Add: IXMLAquav_infUnidTranspVazia;
    function Insert(const Index: Integer): IXMLAquav_infUnidTranspVazia;

    function Get_Item(Index: Integer): IXMLAquav_infUnidTranspVazia;
  end;

{ TXMLNAverList }

  TXMLNAverList = class(TXMLNodeCollection, IXMLNAverList)
  protected
    { IXMLNAverList }
    function Add(const Value: WideString): IXMLNode;
    function Insert(const Index: Integer; const Value: WideString): IXMLNode;

    function Get_Item(Index: Integer): WideString;
  end;

{ Global Functions }

function Getaquav(Doc: IXMLDocument): IXMLAquav;
function Loadaquav(const FileName: string): IXMLAquav;
function Newaquav: IXMLAquav;

const
  TargetNamespace = 'http://www.portalfiscal.inf.br/mdfe';

implementation

uses xmlutil;

{ Global Functions }

function Getaquav(Doc: IXMLDocument): IXMLAquav;
begin
  Result := Doc.GetDocBinding('aquav', TXMLAquav, TargetNamespace) as IXMLAquav;
end;

function Loadaquav(const FileName: string): IXMLAquav;
begin
  Result := LoadXMLDocument(FileName).GetDocBinding('aquav', TXMLAquav, TargetNamespace) as IXMLAquav;
end;

function Newaquav: IXMLAquav;
begin
  Result := NewXMLDocument.GetDocBinding('aquav', TXMLAquav, TargetNamespace) as IXMLAquav;
end;

{ TXMLAquav }

procedure TXMLAquav.AfterConstruction;
begin
  RegisterChildNode('infTermCarreg', TXMLAquav_infTermCarreg);
  RegisterChildNode('infTermDescarreg', TXMLAquav_infTermDescarreg);
  RegisterChildNode('infEmbComb', TXMLAquav_infEmbComb);
  RegisterChildNode('infUnidCargaVazia', TXMLAquav_infUnidCargaVazia);
  RegisterChildNode('infUnidTranspVazia', TXMLAquav_infUnidTranspVazia);
  FInfTermCarreg := CreateCollection(TXMLAquav_infTermCarregList, IXMLAquav_infTermCarreg, 'infTermCarreg') as IXMLAquav_infTermCarregList;
  FInfTermDescarreg := CreateCollection(TXMLAquav_infTermDescarregList, IXMLAquav_infTermDescarreg, 'infTermDescarreg') as IXMLAquav_infTermDescarregList;
  FInfEmbComb := CreateCollection(TXMLAquav_infEmbCombList, IXMLAquav_infEmbComb, 'infEmbComb') as IXMLAquav_infEmbCombList;
  FInfUnidCargaVazia := CreateCollection(TXMLAquav_infUnidCargaVaziaList, IXMLAquav_infUnidCargaVazia, 'infUnidCargaVazia') as IXMLAquav_infUnidCargaVaziaList;
  FInfUnidTranspVazia := CreateCollection(TXMLAquav_infUnidTranspVaziaList, IXMLAquav_infUnidTranspVazia, 'infUnidTranspVazia') as IXMLAquav_infUnidTranspVaziaList;
  inherited;
end;

function TXMLAquav.Get_Irin: WideString;
begin
  Result := ChildNodes['irin'].Text;
end;

procedure TXMLAquav.Set_Irin(Value: WideString);
begin
  ChildNodes['irin'].NodeValue := Value;
end;

function TXMLAquav.Get_TpEmb: WideString;
begin
  Result := ChildNodes['tpEmb'].Text;
end;

procedure TXMLAquav.Set_TpEmb(Value: WideString);
begin
  ChildNodes['tpEmb'].NodeValue := Value;
end;

function TXMLAquav.Get_CEmbar: WideString;
begin
  Result := ChildNodes['cEmbar'].Text;
end;

procedure TXMLAquav.Set_CEmbar(Value: WideString);
begin
  ChildNodes['cEmbar'].NodeValue := Value;
end;

function TXMLAquav.Get_XEmbar: WideString;
begin
  Result := ChildNodes['xEmbar'].Text;
end;

procedure TXMLAquav.Set_XEmbar(Value: WideString);
begin
  ChildNodes['xEmbar'].NodeValue := Value;
end;

function TXMLAquav.Get_NViag: WideString;
begin
  Result := ChildNodes['nViag'].Text;
end;

procedure TXMLAquav.Set_NViag(Value: WideString);
begin
  ChildNodes['nViag'].NodeValue := Value;
end;

function TXMLAquav.Get_CPrtEmb: WideString;
begin
  Result := ChildNodes['cPrtEmb'].Text;
end;

procedure TXMLAquav.Set_CPrtEmb(Value: WideString);
begin
  ChildNodes['cPrtEmb'].NodeValue := Value;
end;

function TXMLAquav.Get_CPrtDest: WideString;
begin
  Result := ChildNodes['cPrtDest'].Text;
end;

procedure TXMLAquav.Set_CPrtDest(Value: WideString);
begin
  ChildNodes['cPrtDest'].NodeValue := Value;
end;

function TXMLAquav.Get_PrtTrans: WideString;
begin
  Result := ChildNodes['prtTrans'].Text;
end;

procedure TXMLAquav.Set_PrtTrans(Value: WideString);
begin
  ChildNodes['prtTrans'].NodeValue := Value;
end;

function TXMLAquav.Get_TpNav: WideString;
begin
  Result := ChildNodes['tpNav'].Text;
end;

procedure TXMLAquav.Set_TpNav(Value: WideString);
begin
  ChildNodes['tpNav'].NodeValue := Value;
end;

function TXMLAquav.Get_InfTermCarreg: IXMLAquav_infTermCarregList;
begin
  Result := FInfTermCarreg;
end;

function TXMLAquav.Get_InfTermDescarreg: IXMLAquav_infTermDescarregList;
begin
  Result := FInfTermDescarreg;
end;

function TXMLAquav.Get_InfEmbComb: IXMLAquav_infEmbCombList;
begin
  Result := FInfEmbComb;
end;

function TXMLAquav.Get_InfUnidCargaVazia: IXMLAquav_infUnidCargaVaziaList;
begin
  Result := FInfUnidCargaVazia;
end;

function TXMLAquav.Get_InfUnidTranspVazia: IXMLAquav_infUnidTranspVaziaList;
begin
  Result := FInfUnidTranspVazia;
end;

{ TXMLAquav_infTermCarreg }

function TXMLAquav_infTermCarreg.Get_CTermCarreg: WideString;
begin
  Result := ChildNodes['cTermCarreg'].Text;
end;

procedure TXMLAquav_infTermCarreg.Set_CTermCarreg(Value: WideString);
begin
  ChildNodes['cTermCarreg'].NodeValue := Value;
end;

function TXMLAquav_infTermCarreg.Get_XTermCarreg: WideString;
begin
  Result := ChildNodes['xTermCarreg'].Text;
end;

procedure TXMLAquav_infTermCarreg.Set_XTermCarreg(Value: WideString);
begin
  ChildNodes['xTermCarreg'].NodeValue := Value;
end;

{ TXMLAquav_infTermCarregList }

function TXMLAquav_infTermCarregList.Add: IXMLAquav_infTermCarreg;
begin
  Result := AddItem(-1) as IXMLAquav_infTermCarreg;
end;

function TXMLAquav_infTermCarregList.Insert(const Index: Integer): IXMLAquav_infTermCarreg;
begin
  Result := AddItem(Index) as IXMLAquav_infTermCarreg;
end;

function TXMLAquav_infTermCarregList.Get_Item(Index: Integer): IXMLAquav_infTermCarreg;
begin
  Result := List[Index] as IXMLAquav_infTermCarreg;
end;

{ TXMLAquav_infTermDescarreg }

function TXMLAquav_infTermDescarreg.Get_CTermDescarreg: WideString;
begin
  Result := ChildNodes['cTermDescarreg'].Text;
end;

procedure TXMLAquav_infTermDescarreg.Set_CTermDescarreg(Value: WideString);
begin
  ChildNodes['cTermDescarreg'].NodeValue := Value;
end;

function TXMLAquav_infTermDescarreg.Get_XTermDescarreg: WideString;
begin
  Result := ChildNodes['xTermDescarreg'].Text;
end;

procedure TXMLAquav_infTermDescarreg.Set_XTermDescarreg(Value: WideString);
begin
  ChildNodes['xTermDescarreg'].NodeValue := Value;
end;

{ TXMLAquav_infTermDescarregList }

function TXMLAquav_infTermDescarregList.Add: IXMLAquav_infTermDescarreg;
begin
  Result := AddItem(-1) as IXMLAquav_infTermDescarreg;
end;

function TXMLAquav_infTermDescarregList.Insert(const Index: Integer): IXMLAquav_infTermDescarreg;
begin
  Result := AddItem(Index) as IXMLAquav_infTermDescarreg;
end;

function TXMLAquav_infTermDescarregList.Get_Item(Index: Integer): IXMLAquav_infTermDescarreg;
begin
  Result := List[Index] as IXMLAquav_infTermDescarreg;
end;

{ TXMLAquav_infEmbComb }

function TXMLAquav_infEmbComb.Get_CEmbComb: WideString;
begin
  Result := ChildNodes['cEmbComb'].Text;
end;

procedure TXMLAquav_infEmbComb.Set_CEmbComb(Value: WideString);
begin
  ChildNodes['cEmbComb'].NodeValue := Value;
end;

function TXMLAquav_infEmbComb.Get_XBalsa: WideString;
begin
  Result := ChildNodes['xBalsa'].Text;
end;

procedure TXMLAquav_infEmbComb.Set_XBalsa(Value: WideString);
begin
  ChildNodes['xBalsa'].NodeValue := Value;
end;

{ TXMLAquav_infEmbCombList }

function TXMLAquav_infEmbCombList.Add: IXMLAquav_infEmbComb;
begin
  Result := AddItem(-1) as IXMLAquav_infEmbComb;
end;

function TXMLAquav_infEmbCombList.Insert(const Index: Integer): IXMLAquav_infEmbComb;
begin
  Result := AddItem(Index) as IXMLAquav_infEmbComb;
end;

function TXMLAquav_infEmbCombList.Get_Item(Index: Integer): IXMLAquav_infEmbComb;
begin
  Result := List[Index] as IXMLAquav_infEmbComb;
end;

{ TXMLAquav_infUnidCargaVazia }

function TXMLAquav_infUnidCargaVazia.Get_IdUnidCargaVazia: WideString;
begin
  Result := ChildNodes['idUnidCargaVazia'].Text;
end;

procedure TXMLAquav_infUnidCargaVazia.Set_IdUnidCargaVazia(Value: WideString);
begin
  ChildNodes['idUnidCargaVazia'].NodeValue := Value;
end;

function TXMLAquav_infUnidCargaVazia.Get_TpUnidCargaVazia: WideString;
begin
  Result := ChildNodes['tpUnidCargaVazia'].Text;
end;

procedure TXMLAquav_infUnidCargaVazia.Set_TpUnidCargaVazia(Value: WideString);
begin
  ChildNodes['tpUnidCargaVazia'].NodeValue := Value;
end;

{ TXMLAquav_infUnidCargaVaziaList }

function TXMLAquav_infUnidCargaVaziaList.Add: IXMLAquav_infUnidCargaVazia;
begin
  Result := AddItem(-1) as IXMLAquav_infUnidCargaVazia;
end;

function TXMLAquav_infUnidCargaVaziaList.Insert(const Index: Integer): IXMLAquav_infUnidCargaVazia;
begin
  Result := AddItem(Index) as IXMLAquav_infUnidCargaVazia;
end;

function TXMLAquav_infUnidCargaVaziaList.Get_Item(Index: Integer): IXMLAquav_infUnidCargaVazia;
begin
  Result := List[Index] as IXMLAquav_infUnidCargaVazia;
end;

{ TXMLAquav_infUnidTranspVazia }

function TXMLAquav_infUnidTranspVazia.Get_IdUnidTranspVazia: WideString;
begin
  Result := ChildNodes['idUnidTranspVazia'].Text;
end;

procedure TXMLAquav_infUnidTranspVazia.Set_IdUnidTranspVazia(Value: WideString);
begin
  ChildNodes['idUnidTranspVazia'].NodeValue := Value;
end;

function TXMLAquav_infUnidTranspVazia.Get_TpUnidTranspVazia: WideString;
begin
  Result := ChildNodes['tpUnidTranspVazia'].Text;
end;

procedure TXMLAquav_infUnidTranspVazia.Set_TpUnidTranspVazia(Value: WideString);
begin
  ChildNodes['tpUnidTranspVazia'].NodeValue := Value;
end;

{ TXMLAquav_infUnidTranspVaziaList }

function TXMLAquav_infUnidTranspVaziaList.Add: IXMLAquav_infUnidTranspVazia;
begin
  Result := AddItem(-1) as IXMLAquav_infUnidTranspVazia;
end;

function TXMLAquav_infUnidTranspVaziaList.Insert(const Index: Integer): IXMLAquav_infUnidTranspVazia;
begin
  Result := AddItem(Index) as IXMLAquav_infUnidTranspVazia;
end;

function TXMLAquav_infUnidTranspVaziaList.Get_Item(Index: Integer): IXMLAquav_infUnidTranspVazia;
begin
  Result := List[Index] as IXMLAquav_infUnidTranspVazia;
end;

{ TXMLNAverList }

function TXMLNAverList.Add(const Value: WideString): IXMLNode;
begin
  Result := AddItem(-1);
  Result.NodeValue := Value;
end;

function TXMLNAverList.Insert(const Index: Integer; const Value: WideString): IXMLNode;
begin
  Result := AddItem(Index);
  Result.NodeValue := Value;
end;

function TXMLNAverList.Get_Item(Index: Integer): WideString;
begin
  Result := List[Index].NodeValue;
end;

end.