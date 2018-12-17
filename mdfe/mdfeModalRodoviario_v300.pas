
{**********************************************************************************************************************}
{                                                                                                                      }
{                                                   XML Data Binding                                                   }
{                                                                                                                      }
{         Generated on: 16/03/2017 09:07:35                                                                            }
{       Generated from: E:\pessoal\!desenvolvimento\cleomar\FlexDocs\MDFe_Util\Schemas\mdfeModalRodoviario_v3.00.xsd   }
{                                                                                                                      }
{**********************************************************************************************************************}

unit mdfeModalRodoviario_v300;

interface

uses xmldom, XMLDoc, XMLIntf;

type

{ Forward Decls }

  IXMLRodo = interface;
  IXMLRodo_infANTT = interface;
  IXMLRodo_infANTT_infCIOT = interface;
  IXMLRodo_infANTT_infCIOTList = interface;
  IXMLRodo_infANTT_valePed = interface;
  IXMLRodo_infANTT_valePed_disp = interface;
  IXMLRodo_infANTT_infContratante = interface;
  IXMLRodo_infANTT_infContratanteList = interface;
  IXMLRodo_veicTracao = interface;
  IXMLRodo_veicTracao_prop = interface;
  IXMLRodo_veicTracao_condutor = interface;
  IXMLRodo_veicTracao_condutorList = interface;
  IXMLRodo_veicReboque = interface;
  IXMLRodo_veicReboqueList = interface;
  IXMLRodo_veicReboque_prop = interface;
  IXMLRodo_lacRodo = interface;
  IXMLRodo_lacRodoList = interface;

{ IXMLRodo }

  IXMLRodo = interface(IXMLNode)
    ['{25BA4835-E7A6-4313-B221-2DF020D7D808}']
    { Property Accessors }
    function Get_InfANTT: IXMLRodo_infANTT;
    function Get_VeicTracao: IXMLRodo_veicTracao;
    function Get_VeicReboque: IXMLRodo_veicReboqueList;
    function Get_CodAgPorto: WideString;
    function Get_LacRodo: IXMLRodo_lacRodoList;
    procedure Set_CodAgPorto(Value: WideString);
    { Methods & Properties }
    property InfANTT: IXMLRodo_infANTT read Get_InfANTT;
    property VeicTracao: IXMLRodo_veicTracao read Get_VeicTracao;
    property VeicReboque: IXMLRodo_veicReboqueList read Get_VeicReboque;
    property CodAgPorto: WideString read Get_CodAgPorto write Set_CodAgPorto;
    property LacRodo: IXMLRodo_lacRodoList read Get_LacRodo;
  end;

{ IXMLRodo_infANTT }

  IXMLRodo_infANTT = interface(IXMLNode)
    ['{9E02BAB4-8ED2-4085-AF0E-BAB5158BE6E4}']
    { Property Accessors }
    function Get_RNTRC: WideString;
    function Get_InfCIOT: IXMLRodo_infANTT_infCIOTList;
    function Get_ValePed: IXMLRodo_infANTT_valePed;
    function Get_InfContratante: IXMLRodo_infANTT_infContratanteList;
    procedure Set_RNTRC(Value: WideString);
    { Methods & Properties }
    property RNTRC: WideString read Get_RNTRC write Set_RNTRC;
    property InfCIOT: IXMLRodo_infANTT_infCIOTList read Get_InfCIOT;
    property ValePed: IXMLRodo_infANTT_valePed read Get_ValePed;
    property InfContratante: IXMLRodo_infANTT_infContratanteList read Get_InfContratante;
  end;

{ IXMLRodo_infANTT_infCIOT }

  IXMLRodo_infANTT_infCIOT = interface(IXMLNode)
    ['{201FD468-ED40-4E4F-BC06-4C71165640E2}']
    { Property Accessors }
    function Get_CIOT: WideString;
    function Get_CPF: WideString;
    function Get_CNPJ: WideString;
    procedure Set_CIOT(Value: WideString);
    procedure Set_CPF(Value: WideString);
    procedure Set_CNPJ(Value: WideString);
    { Methods & Properties }
    property CIOT: WideString read Get_CIOT write Set_CIOT;
    property CPF: WideString read Get_CPF write Set_CPF;
    property CNPJ: WideString read Get_CNPJ write Set_CNPJ;
  end;

{ IXMLRodo_infANTT_infCIOTList }

  IXMLRodo_infANTT_infCIOTList = interface(IXMLNodeCollection)
    ['{023B26CA-126E-4D72-9931-D3DA413C4FBF}']
    { Methods & Properties }
    function Add: IXMLRodo_infANTT_infCIOT;
    function Insert(const Index: Integer): IXMLRodo_infANTT_infCIOT;

    function Get_Item(Index: Integer): IXMLRodo_infANTT_infCIOT;
    property Items[Index: Integer]: IXMLRodo_infANTT_infCIOT read Get_Item; default;
  end;

{ IXMLRodo_infANTT_valePed }

  IXMLRodo_infANTT_valePed = interface(IXMLNodeCollection)
    ['{85ADEC6E-4185-407F-A36A-21372F2E9556}']
    { Property Accessors }
    function Get_Disp(Index: Integer): IXMLRodo_infANTT_valePed_disp;
    { Methods & Properties }
    function Add: IXMLRodo_infANTT_valePed_disp;
    function Insert(const Index: Integer): IXMLRodo_infANTT_valePed_disp;
    property Disp[Index: Integer]: IXMLRodo_infANTT_valePed_disp read Get_Disp; default;
  end;

{ IXMLRodo_infANTT_valePed_disp }

  IXMLRodo_infANTT_valePed_disp = interface(IXMLNode)
    ['{C4701A72-8D25-4542-9418-AB82518FB022}']
    { Property Accessors }
    function Get_CNPJForn: WideString;
    function Get_CNPJPg: WideString;
    function Get_CPFPg: WideString;
    function Get_NCompra: WideString;
    function Get_VValePed: WideString;
    procedure Set_CNPJForn(Value: WideString);
    procedure Set_CNPJPg(Value: WideString);
    procedure Set_CPFPg(Value: WideString);
    procedure Set_NCompra(Value: WideString);
    procedure Set_VValePed(Value: WideString);
    { Methods & Properties }
    property CNPJForn: WideString read Get_CNPJForn write Set_CNPJForn;
    property CNPJPg: WideString read Get_CNPJPg write Set_CNPJPg;
    property CPFPg: WideString read Get_CPFPg write Set_CPFPg;
    property NCompra: WideString read Get_NCompra write Set_NCompra;
    property VValePed: WideString read Get_VValePed write Set_VValePed;
  end;

{ IXMLRodo_infANTT_infContratante }

  IXMLRodo_infANTT_infContratante = interface(IXMLNode)
    ['{8BF854D5-276C-4693-8E63-FF8C9FD0A55C}']
    { Property Accessors }
    function Get_CPF: WideString;
    function Get_CNPJ: WideString;
    procedure Set_CPF(Value: WideString);
    procedure Set_CNPJ(Value: WideString);
    { Methods & Properties }
    property CPF: WideString read Get_CPF write Set_CPF;
    property CNPJ: WideString read Get_CNPJ write Set_CNPJ;
  end;

{ IXMLRodo_infANTT_infContratanteList }

  IXMLRodo_infANTT_infContratanteList = interface(IXMLNodeCollection)
    ['{E283E202-B585-418B-9627-F6335D49A737}']
    { Methods & Properties }
    function Add: IXMLRodo_infANTT_infContratante;
    function Insert(const Index: Integer): IXMLRodo_infANTT_infContratante;

    function Get_Item(Index: Integer): IXMLRodo_infANTT_infContratante;
    property Items[Index: Integer]: IXMLRodo_infANTT_infContratante read Get_Item; default;
  end;

{ IXMLRodo_veicTracao }

  IXMLRodo_veicTracao = interface(IXMLNode)
    ['{59DBE891-B0B6-466C-95DD-2498BC4F55D1}']
    { Property Accessors }
    function Get_CInt: WideString;
    function Get_Placa: WideString;
    function Get_RENAVAM: WideString;
    function Get_Tara: WideString;
    function Get_CapKG: WideString;
    function Get_CapM3: WideString;
    function Get_Prop: IXMLRodo_veicTracao_prop;
    function Get_Condutor: IXMLRodo_veicTracao_condutorList;
    function Get_TpRod: WideString;
    function Get_TpCar: WideString;
    function Get_UF: WideString;
    procedure Set_CInt(Value: WideString);
    procedure Set_Placa(Value: WideString);
    procedure Set_RENAVAM(Value: WideString);
    procedure Set_Tara(Value: WideString);
    procedure Set_CapKG(Value: WideString);
    procedure Set_CapM3(Value: WideString);
    procedure Set_TpRod(Value: WideString);
    procedure Set_TpCar(Value: WideString);
    procedure Set_UF(Value: WideString);
    { Methods & Properties }
    property CInt: WideString read Get_CInt write Set_CInt;
    property Placa: WideString read Get_Placa write Set_Placa;
    property RENAVAM: WideString read Get_RENAVAM write Set_RENAVAM;
    property Tara: WideString read Get_Tara write Set_Tara;
    property CapKG: WideString read Get_CapKG write Set_CapKG;
    property CapM3: WideString read Get_CapM3 write Set_CapM3;
    property Prop: IXMLRodo_veicTracao_prop read Get_Prop;
    property Condutor: IXMLRodo_veicTracao_condutorList read Get_Condutor;
    property TpRod: WideString read Get_TpRod write Set_TpRod;
    property TpCar: WideString read Get_TpCar write Set_TpCar;
    property UF: WideString read Get_UF write Set_UF;
  end;

{ IXMLRodo_veicTracao_prop }

  IXMLRodo_veicTracao_prop = interface(IXMLNode)
    ['{0569D174-1CFE-4D5B-8D87-5BAF08505FD2}']
    { Property Accessors }
    function Get_CPF: WideString;
    function Get_CNPJ: WideString;
    function Get_RNTRC: WideString;
    function Get_XNome: WideString;
    function Get_IE: WideString;
    function Get_UF: WideString;
    function Get_TpProp: WideString;
    procedure Set_CPF(Value: WideString);
    procedure Set_CNPJ(Value: WideString);
    procedure Set_RNTRC(Value: WideString);
    procedure Set_XNome(Value: WideString);
    procedure Set_IE(Value: WideString);
    procedure Set_UF(Value: WideString);
    procedure Set_TpProp(Value: WideString);
    { Methods & Properties }
    property CPF: WideString read Get_CPF write Set_CPF;
    property CNPJ: WideString read Get_CNPJ write Set_CNPJ;
    property RNTRC: WideString read Get_RNTRC write Set_RNTRC;
    property XNome: WideString read Get_XNome write Set_XNome;
    property IE: WideString read Get_IE write Set_IE;
    property UF: WideString read Get_UF write Set_UF;
    property TpProp: WideString read Get_TpProp write Set_TpProp;
  end;

{ IXMLRodo_veicTracao_condutor }

  IXMLRodo_veicTracao_condutor = interface(IXMLNode)
    ['{75619D9D-EE85-4A66-A247-28AFE106D723}']
    { Property Accessors }
    function Get_XNome: WideString;
    function Get_CPF: WideString;
    procedure Set_XNome(Value: WideString);
    procedure Set_CPF(Value: WideString);
    { Methods & Properties }
    property XNome: WideString read Get_XNome write Set_XNome;
    property CPF: WideString read Get_CPF write Set_CPF;
  end;

{ IXMLRodo_veicTracao_condutorList }

  IXMLRodo_veicTracao_condutorList = interface(IXMLNodeCollection)
    ['{E5744DEB-B751-4E8D-AD8F-84992C1863DC}']
    { Methods & Properties }
    function Add: IXMLRodo_veicTracao_condutor;
    function Insert(const Index: Integer): IXMLRodo_veicTracao_condutor;

    function Get_Item(Index: Integer): IXMLRodo_veicTracao_condutor;
    property Items[Index: Integer]: IXMLRodo_veicTracao_condutor read Get_Item; default;
  end;

{ IXMLRodo_veicReboque }

  IXMLRodo_veicReboque = interface(IXMLNode)
    ['{D3618BC7-D7B6-451C-B4A9-5084FF9FD312}']
    { Property Accessors }
    function Get_CInt: WideString;
    function Get_Placa: WideString;
    function Get_RENAVAM: WideString;
    function Get_Tara: WideString;
    function Get_CapKG: WideString;
    function Get_CapM3: WideString;
    function Get_Prop: IXMLRodo_veicReboque_prop;
    function Get_TpCar: WideString;
    function Get_UF: WideString;
    procedure Set_CInt(Value: WideString);
    procedure Set_Placa(Value: WideString);
    procedure Set_RENAVAM(Value: WideString);
    procedure Set_Tara(Value: WideString);
    procedure Set_CapKG(Value: WideString);
    procedure Set_CapM3(Value: WideString);
    procedure Set_TpCar(Value: WideString);
    procedure Set_UF(Value: WideString);
    { Methods & Properties }
    property CInt: WideString read Get_CInt write Set_CInt;
    property Placa: WideString read Get_Placa write Set_Placa;
    property RENAVAM: WideString read Get_RENAVAM write Set_RENAVAM;
    property Tara: WideString read Get_Tara write Set_Tara;
    property CapKG: WideString read Get_CapKG write Set_CapKG;
    property CapM3: WideString read Get_CapM3 write Set_CapM3;
    property Prop: IXMLRodo_veicReboque_prop read Get_Prop;
    property TpCar: WideString read Get_TpCar write Set_TpCar;
    property UF: WideString read Get_UF write Set_UF;
  end;

{ IXMLRodo_veicReboqueList }

  IXMLRodo_veicReboqueList = interface(IXMLNodeCollection)
    ['{0B2742C1-3B2C-4A07-A1DB-7379F4A1F958}']
    { Methods & Properties }
    function Add: IXMLRodo_veicReboque;
    function Insert(const Index: Integer): IXMLRodo_veicReboque;

    function Get_Item(Index: Integer): IXMLRodo_veicReboque;
    property Items[Index: Integer]: IXMLRodo_veicReboque read Get_Item; default;
  end;

{ IXMLRodo_veicReboque_prop }

  IXMLRodo_veicReboque_prop = interface(IXMLNode)
    ['{CE3270EB-94F2-40D3-8AE0-3829FCD975BB}']
    { Property Accessors }
    function Get_CPF: WideString;
    function Get_CNPJ: WideString;
    function Get_RNTRC: WideString;
    function Get_XNome: WideString;
    function Get_IE: WideString;
    function Get_UF: WideString;
    function Get_TpProp: WideString;
    procedure Set_CPF(Value: WideString);
    procedure Set_CNPJ(Value: WideString);
    procedure Set_RNTRC(Value: WideString);
    procedure Set_XNome(Value: WideString);
    procedure Set_IE(Value: WideString);
    procedure Set_UF(Value: WideString);
    procedure Set_TpProp(Value: WideString);
    { Methods & Properties }
    property CPF: WideString read Get_CPF write Set_CPF;
    property CNPJ: WideString read Get_CNPJ write Set_CNPJ;
    property RNTRC: WideString read Get_RNTRC write Set_RNTRC;
    property XNome: WideString read Get_XNome write Set_XNome;
    property IE: WideString read Get_IE write Set_IE;
    property UF: WideString read Get_UF write Set_UF;
    property TpProp: WideString read Get_TpProp write Set_TpProp;
  end;

{ IXMLRodo_lacRodo }

  IXMLRodo_lacRodo = interface(IXMLNode)
    ['{EC6EFE4E-AA98-4864-929E-FDA7299AE5D5}']
    { Property Accessors }
    function Get_NLacre: WideString;
    procedure Set_NLacre(Value: WideString);
    { Methods & Properties }
    property NLacre: WideString read Get_NLacre write Set_NLacre;
  end;

{ IXMLRodo_lacRodoList }

  IXMLRodo_lacRodoList = interface(IXMLNodeCollection)
    ['{D33540AF-B9F2-4D6E-8E7E-F00E736576F4}']
    { Methods & Properties }
    function Add: IXMLRodo_lacRodo;
    function Insert(const Index: Integer): IXMLRodo_lacRodo;

    function Get_Item(Index: Integer): IXMLRodo_lacRodo;
    property Items[Index: Integer]: IXMLRodo_lacRodo read Get_Item; default;
  end;

{ Forward Decls }

  TXMLRodo = class;
  TXMLRodo_infANTT = class;
  TXMLRodo_infANTT_infCIOT = class;
  TXMLRodo_infANTT_infCIOTList = class;
  TXMLRodo_infANTT_valePed = class;
  TXMLRodo_infANTT_valePed_disp = class;
  TXMLRodo_infANTT_infContratante = class;
  TXMLRodo_infANTT_infContratanteList = class;
  TXMLRodo_veicTracao = class;
  TXMLRodo_veicTracao_prop = class;
  TXMLRodo_veicTracao_condutor = class;
  TXMLRodo_veicTracao_condutorList = class;
  TXMLRodo_veicReboque = class;
  TXMLRodo_veicReboqueList = class;
  TXMLRodo_veicReboque_prop = class;
  TXMLRodo_lacRodo = class;
  TXMLRodo_lacRodoList = class;

{ TXMLRodo }

  TXMLRodo = class(TXMLNode, IXMLRodo)
  private
    FVeicReboque: IXMLRodo_veicReboqueList;
    FLacRodo: IXMLRodo_lacRodoList;
  protected
    { IXMLRodo }
    function Get_InfANTT: IXMLRodo_infANTT;
    function Get_VeicTracao: IXMLRodo_veicTracao;
    function Get_VeicReboque: IXMLRodo_veicReboqueList;
    function Get_CodAgPorto: WideString;
    function Get_LacRodo: IXMLRodo_lacRodoList;
    procedure Set_CodAgPorto(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLRodo_infANTT }

  TXMLRodo_infANTT = class(TXMLNode, IXMLRodo_infANTT)
  private
    FInfCIOT: IXMLRodo_infANTT_infCIOTList;
    FInfContratante: IXMLRodo_infANTT_infContratanteList;
  protected
    { IXMLRodo_infANTT }
    function Get_RNTRC: WideString;
    function Get_InfCIOT: IXMLRodo_infANTT_infCIOTList;
    function Get_ValePed: IXMLRodo_infANTT_valePed;
    function Get_InfContratante: IXMLRodo_infANTT_infContratanteList;
    procedure Set_RNTRC(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLRodo_infANTT_infCIOT }

  TXMLRodo_infANTT_infCIOT = class(TXMLNode, IXMLRodo_infANTT_infCIOT)
  protected
    { IXMLRodo_infANTT_infCIOT }
    function Get_CIOT: WideString;
    function Get_CPF: WideString;
    function Get_CNPJ: WideString;
    procedure Set_CIOT(Value: WideString);
    procedure Set_CPF(Value: WideString);
    procedure Set_CNPJ(Value: WideString);
  end;

{ TXMLRodo_infANTT_infCIOTList }

  TXMLRodo_infANTT_infCIOTList = class(TXMLNodeCollection, IXMLRodo_infANTT_infCIOTList)
  protected
    { IXMLRodo_infANTT_infCIOTList }
    function Add: IXMLRodo_infANTT_infCIOT;
    function Insert(const Index: Integer): IXMLRodo_infANTT_infCIOT;

    function Get_Item(Index: Integer): IXMLRodo_infANTT_infCIOT;
  end;

{ TXMLRodo_infANTT_valePed }

  TXMLRodo_infANTT_valePed = class(TXMLNodeCollection, IXMLRodo_infANTT_valePed)
  protected
    { IXMLRodo_infANTT_valePed }
    function Get_Disp(Index: Integer): IXMLRodo_infANTT_valePed_disp;
    function Add: IXMLRodo_infANTT_valePed_disp;
    function Insert(const Index: Integer): IXMLRodo_infANTT_valePed_disp;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLRodo_infANTT_valePed_disp }

  TXMLRodo_infANTT_valePed_disp = class(TXMLNode, IXMLRodo_infANTT_valePed_disp)
  protected
    { IXMLRodo_infANTT_valePed_disp }
    function Get_CNPJForn: WideString;
    function Get_CNPJPg: WideString;
    function Get_CPFPg: WideString;
    function Get_NCompra: WideString;
    function Get_VValePed: WideString;
    procedure Set_CNPJForn(Value: WideString);
    procedure Set_CNPJPg(Value: WideString);
    procedure Set_CPFPg(Value: WideString);
    procedure Set_NCompra(Value: WideString);
    procedure Set_VValePed(Value: WideString);
  end;

{ TXMLRodo_infANTT_infContratante }

  TXMLRodo_infANTT_infContratante = class(TXMLNode, IXMLRodo_infANTT_infContratante)
  protected
    { IXMLRodo_infANTT_infContratante }
    function Get_CPF: WideString;
    function Get_CNPJ: WideString;
    procedure Set_CPF(Value: WideString);
    procedure Set_CNPJ(Value: WideString);
  end;

{ TXMLRodo_infANTT_infContratanteList }

  TXMLRodo_infANTT_infContratanteList = class(TXMLNodeCollection, IXMLRodo_infANTT_infContratanteList)
  protected
    { IXMLRodo_infANTT_infContratanteList }
    function Add: IXMLRodo_infANTT_infContratante;
    function Insert(const Index: Integer): IXMLRodo_infANTT_infContratante;

    function Get_Item(Index: Integer): IXMLRodo_infANTT_infContratante;
  end;

{ TXMLRodo_veicTracao }

  TXMLRodo_veicTracao = class(TXMLNode, IXMLRodo_veicTracao)
  private
    FCondutor: IXMLRodo_veicTracao_condutorList;
  protected
    { IXMLRodo_veicTracao }
    function Get_CInt: WideString;
    function Get_Placa: WideString;
    function Get_RENAVAM: WideString;
    function Get_Tara: WideString;
    function Get_CapKG: WideString;
    function Get_CapM3: WideString;
    function Get_Prop: IXMLRodo_veicTracao_prop;
    function Get_Condutor: IXMLRodo_veicTracao_condutorList;
    function Get_TpRod: WideString;
    function Get_TpCar: WideString;
    function Get_UF: WideString;
    procedure Set_CInt(Value: WideString);
    procedure Set_Placa(Value: WideString);
    procedure Set_RENAVAM(Value: WideString);
    procedure Set_Tara(Value: WideString);
    procedure Set_CapKG(Value: WideString);
    procedure Set_CapM3(Value: WideString);
    procedure Set_TpRod(Value: WideString);
    procedure Set_TpCar(Value: WideString);
    procedure Set_UF(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLRodo_veicTracao_prop }

  TXMLRodo_veicTracao_prop = class(TXMLNode, IXMLRodo_veicTracao_prop)
  protected
    { IXMLRodo_veicTracao_prop }
    function Get_CPF: WideString;
    function Get_CNPJ: WideString;
    function Get_RNTRC: WideString;
    function Get_XNome: WideString;
    function Get_IE: WideString;
    function Get_UF: WideString;
    function Get_TpProp: WideString;
    procedure Set_CPF(Value: WideString);
    procedure Set_CNPJ(Value: WideString);
    procedure Set_RNTRC(Value: WideString);
    procedure Set_XNome(Value: WideString);
    procedure Set_IE(Value: WideString);
    procedure Set_UF(Value: WideString);
    procedure Set_TpProp(Value: WideString);
  end;

{ TXMLRodo_veicTracao_condutor }

  TXMLRodo_veicTracao_condutor = class(TXMLNode, IXMLRodo_veicTracao_condutor)
  protected
    { IXMLRodo_veicTracao_condutor }
    function Get_XNome: WideString;
    function Get_CPF: WideString;
    procedure Set_XNome(Value: WideString);
    procedure Set_CPF(Value: WideString);
  end;

{ TXMLRodo_veicTracao_condutorList }

  TXMLRodo_veicTracao_condutorList = class(TXMLNodeCollection, IXMLRodo_veicTracao_condutorList)
  protected
    { IXMLRodo_veicTracao_condutorList }
    function Add: IXMLRodo_veicTracao_condutor;
    function Insert(const Index: Integer): IXMLRodo_veicTracao_condutor;

    function Get_Item(Index: Integer): IXMLRodo_veicTracao_condutor;
  end;

{ TXMLRodo_veicReboque }

  TXMLRodo_veicReboque = class(TXMLNode, IXMLRodo_veicReboque)
  protected
    { IXMLRodo_veicReboque }
    function Get_CInt: WideString;
    function Get_Placa: WideString;
    function Get_RENAVAM: WideString;
    function Get_Tara: WideString;
    function Get_CapKG: WideString;
    function Get_CapM3: WideString;
    function Get_Prop: IXMLRodo_veicReboque_prop;
    function Get_TpCar: WideString;
    function Get_UF: WideString;
    procedure Set_CInt(Value: WideString);
    procedure Set_Placa(Value: WideString);
    procedure Set_RENAVAM(Value: WideString);
    procedure Set_Tara(Value: WideString);
    procedure Set_CapKG(Value: WideString);
    procedure Set_CapM3(Value: WideString);
    procedure Set_TpCar(Value: WideString);
    procedure Set_UF(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLRodo_veicReboqueList }

  TXMLRodo_veicReboqueList = class(TXMLNodeCollection, IXMLRodo_veicReboqueList)
  protected
    { IXMLRodo_veicReboqueList }
    function Add: IXMLRodo_veicReboque;
    function Insert(const Index: Integer): IXMLRodo_veicReboque;

    function Get_Item(Index: Integer): IXMLRodo_veicReboque;
  end;

{ TXMLRodo_veicReboque_prop }

  TXMLRodo_veicReboque_prop = class(TXMLNode, IXMLRodo_veicReboque_prop)
  protected
    { IXMLRodo_veicReboque_prop }
    function Get_CPF: WideString;
    function Get_CNPJ: WideString;
    function Get_RNTRC: WideString;
    function Get_XNome: WideString;
    function Get_IE: WideString;
    function Get_UF: WideString;
    function Get_TpProp: WideString;
    procedure Set_CPF(Value: WideString);
    procedure Set_CNPJ(Value: WideString);
    procedure Set_RNTRC(Value: WideString);
    procedure Set_XNome(Value: WideString);
    procedure Set_IE(Value: WideString);
    procedure Set_UF(Value: WideString);
    procedure Set_TpProp(Value: WideString);
  end;

{ TXMLRodo_lacRodo }

  TXMLRodo_lacRodo = class(TXMLNode, IXMLRodo_lacRodo)
  protected
    { IXMLRodo_lacRodo }
    function Get_NLacre: WideString;
    procedure Set_NLacre(Value: WideString);
  end;

{ TXMLRodo_lacRodoList }

  TXMLRodo_lacRodoList = class(TXMLNodeCollection, IXMLRodo_lacRodoList)
  protected
    { IXMLRodo_lacRodoList }
    function Add: IXMLRodo_lacRodo;
    function Insert(const Index: Integer): IXMLRodo_lacRodo;

    function Get_Item(Index: Integer): IXMLRodo_lacRodo;
  end;

{ Global Functions }

function Getrodo(Doc: IXMLDocument): IXMLRodo;
function Loadrodo(const FileName: string): IXMLRodo;
function Newrodo: IXMLRodo;

const
  TargetNamespace = 'http://www.portalfiscal.inf.br/mdfe';

implementation

{ Global Functions }

function Getrodo(Doc: IXMLDocument): IXMLRodo;
begin
  Result := Doc.GetDocBinding('rodo', TXMLRodo, TargetNamespace) as IXMLRodo;
end;

function Loadrodo(const FileName: string): IXMLRodo;
begin
  Result := LoadXMLDocument(FileName).GetDocBinding('rodo', TXMLRodo, TargetNamespace) as IXMLRodo;
end;

function Newrodo: IXMLRodo;
begin
  Result := NewXMLDocument.GetDocBinding('rodo', TXMLRodo, TargetNamespace) as IXMLRodo;
end;

{ TXMLRodo }

procedure TXMLRodo.AfterConstruction;
begin
  RegisterChildNode('infANTT', TXMLRodo_infANTT);
  RegisterChildNode('veicTracao', TXMLRodo_veicTracao);
  RegisterChildNode('veicReboque', TXMLRodo_veicReboque);
  RegisterChildNode('lacRodo', TXMLRodo_lacRodo);
  FVeicReboque := CreateCollection(TXMLRodo_veicReboqueList, IXMLRodo_veicReboque, 'veicReboque') as IXMLRodo_veicReboqueList;
  FLacRodo := CreateCollection(TXMLRodo_lacRodoList, IXMLRodo_lacRodo, 'lacRodo') as IXMLRodo_lacRodoList;
  inherited;
end;

function TXMLRodo.Get_InfANTT: IXMLRodo_infANTT;
begin
  Result := ChildNodes['infANTT'] as IXMLRodo_infANTT;
end;

function TXMLRodo.Get_VeicTracao: IXMLRodo_veicTracao;
begin
  Result := ChildNodes['veicTracao'] as IXMLRodo_veicTracao;
end;

function TXMLRodo.Get_VeicReboque: IXMLRodo_veicReboqueList;
begin
  Result := FVeicReboque;
end;

function TXMLRodo.Get_CodAgPorto: WideString;
begin
  Result := ChildNodes['codAgPorto'].Text;
end;

procedure TXMLRodo.Set_CodAgPorto(Value: WideString);
begin
  ChildNodes['codAgPorto'].NodeValue := Value;
end;

function TXMLRodo.Get_LacRodo: IXMLRodo_lacRodoList;
begin
  Result := FLacRodo;
end;

{ TXMLRodo_infANTT }

procedure TXMLRodo_infANTT.AfterConstruction;
begin
  RegisterChildNode('infCIOT', TXMLRodo_infANTT_infCIOT);
  RegisterChildNode('valePed', TXMLRodo_infANTT_valePed);
  RegisterChildNode('infContratante', TXMLRodo_infANTT_infContratante);
  FInfCIOT := CreateCollection(TXMLRodo_infANTT_infCIOTList, IXMLRodo_infANTT_infCIOT, 'infCIOT') as IXMLRodo_infANTT_infCIOTList;
  FInfContratante := CreateCollection(TXMLRodo_infANTT_infContratanteList, IXMLRodo_infANTT_infContratante, 'infContratante') as IXMLRodo_infANTT_infContratanteList;
  inherited;
end;

function TXMLRodo_infANTT.Get_RNTRC: WideString;
begin
  Result := ChildNodes['RNTRC'].Text;
end;

procedure TXMLRodo_infANTT.Set_RNTRC(Value: WideString);
begin
  ChildNodes['RNTRC'].NodeValue := Value;
end;

function TXMLRodo_infANTT.Get_InfCIOT: IXMLRodo_infANTT_infCIOTList;
begin
  Result := FInfCIOT;
end;

function TXMLRodo_infANTT.Get_ValePed: IXMLRodo_infANTT_valePed;
begin
  Result := ChildNodes['valePed'] as IXMLRodo_infANTT_valePed;
end;

function TXMLRodo_infANTT.Get_InfContratante: IXMLRodo_infANTT_infContratanteList;
begin
  Result := FInfContratante;
end;

{ TXMLRodo_infANTT_infCIOT }

function TXMLRodo_infANTT_infCIOT.Get_CIOT: WideString;
begin
  Result := ChildNodes['CIOT'].Text;
end;

procedure TXMLRodo_infANTT_infCIOT.Set_CIOT(Value: WideString);
begin
  ChildNodes['CIOT'].NodeValue := Value;
end;

function TXMLRodo_infANTT_infCIOT.Get_CPF: WideString;
begin
  Result := ChildNodes['CPF'].Text;
end;

procedure TXMLRodo_infANTT_infCIOT.Set_CPF(Value: WideString);
begin
  ChildNodes['CPF'].NodeValue := Value;
end;

function TXMLRodo_infANTT_infCIOT.Get_CNPJ: WideString;
begin
  Result := ChildNodes['CNPJ'].Text;
end;

procedure TXMLRodo_infANTT_infCIOT.Set_CNPJ(Value: WideString);
begin
  ChildNodes['CNPJ'].NodeValue := Value;
end;

{ TXMLRodo_infANTT_infCIOTList }

function TXMLRodo_infANTT_infCIOTList.Add: IXMLRodo_infANTT_infCIOT;
begin
  Result := AddItem(-1) as IXMLRodo_infANTT_infCIOT;
end;

function TXMLRodo_infANTT_infCIOTList.Insert(const Index: Integer): IXMLRodo_infANTT_infCIOT;
begin
  Result := AddItem(Index) as IXMLRodo_infANTT_infCIOT;
end;

function TXMLRodo_infANTT_infCIOTList.Get_Item(Index: Integer): IXMLRodo_infANTT_infCIOT;
begin
  Result := List[Index] as IXMLRodo_infANTT_infCIOT;
end;

{ TXMLRodo_infANTT_valePed }

procedure TXMLRodo_infANTT_valePed.AfterConstruction;
begin
  RegisterChildNode('disp', TXMLRodo_infANTT_valePed_disp);
  ItemTag := 'disp';
  ItemInterface := IXMLRodo_infANTT_valePed_disp;
  inherited;
end;

function TXMLRodo_infANTT_valePed.Get_Disp(Index: Integer): IXMLRodo_infANTT_valePed_disp;
begin
  Result := List[Index] as IXMLRodo_infANTT_valePed_disp;
end;

function TXMLRodo_infANTT_valePed.Add: IXMLRodo_infANTT_valePed_disp;
begin
  Result := AddItem(-1) as IXMLRodo_infANTT_valePed_disp;
end;

function TXMLRodo_infANTT_valePed.Insert(const Index: Integer): IXMLRodo_infANTT_valePed_disp;
begin
  Result := AddItem(Index) as IXMLRodo_infANTT_valePed_disp;
end;

{ TXMLRodo_infANTT_valePed_disp }

function TXMLRodo_infANTT_valePed_disp.Get_CNPJForn: WideString;
begin
  Result := ChildNodes['CNPJForn'].Text;
end;

procedure TXMLRodo_infANTT_valePed_disp.Set_CNPJForn(Value: WideString);
begin
  ChildNodes['CNPJForn'].NodeValue := Value;
end;

function TXMLRodo_infANTT_valePed_disp.Get_CNPJPg: WideString;
begin
  Result := ChildNodes['CNPJPg'].Text;
end;

procedure TXMLRodo_infANTT_valePed_disp.Set_CNPJPg(Value: WideString);
begin
  ChildNodes['CNPJPg'].NodeValue := Value;
end;

function TXMLRodo_infANTT_valePed_disp.Get_CPFPg: WideString;
begin
  Result := ChildNodes['CPFPg'].Text;
end;

procedure TXMLRodo_infANTT_valePed_disp.Set_CPFPg(Value: WideString);
begin
  ChildNodes['CPFPg'].NodeValue := Value;
end;

function TXMLRodo_infANTT_valePed_disp.Get_NCompra: WideString;
begin
  Result := ChildNodes['nCompra'].Text;
end;

procedure TXMLRodo_infANTT_valePed_disp.Set_NCompra(Value: WideString);
begin
  ChildNodes['nCompra'].NodeValue := Value;
end;

function TXMLRodo_infANTT_valePed_disp.Get_VValePed: WideString;
begin
  Result := ChildNodes['vValePed'].Text;
end;

procedure TXMLRodo_infANTT_valePed_disp.Set_VValePed(Value: WideString);
begin
  ChildNodes['vValePed'].NodeValue := Value;
end;

{ TXMLRodo_infANTT_infContratante }

function TXMLRodo_infANTT_infContratante.Get_CPF: WideString;
begin
  Result := ChildNodes['CPF'].Text;
end;

procedure TXMLRodo_infANTT_infContratante.Set_CPF(Value: WideString);
begin
  ChildNodes['CPF'].NodeValue := Value;
end;

function TXMLRodo_infANTT_infContratante.Get_CNPJ: WideString;
begin
  Result := ChildNodes['CNPJ'].Text;
end;

procedure TXMLRodo_infANTT_infContratante.Set_CNPJ(Value: WideString);
begin
  ChildNodes['CNPJ'].NodeValue := Value;
end;

{ TXMLRodo_infANTT_infContratanteList }

function TXMLRodo_infANTT_infContratanteList.Add: IXMLRodo_infANTT_infContratante;
begin
  Result := AddItem(-1) as IXMLRodo_infANTT_infContratante;
end;

function TXMLRodo_infANTT_infContratanteList.Insert(const Index: Integer): IXMLRodo_infANTT_infContratante;
begin
  Result := AddItem(Index) as IXMLRodo_infANTT_infContratante;
end;

function TXMLRodo_infANTT_infContratanteList.Get_Item(Index: Integer): IXMLRodo_infANTT_infContratante;
begin
  Result := List[Index] as IXMLRodo_infANTT_infContratante;
end;

{ TXMLRodo_veicTracao }

procedure TXMLRodo_veicTracao.AfterConstruction;
begin
  RegisterChildNode('prop', TXMLRodo_veicTracao_prop);
  RegisterChildNode('condutor', TXMLRodo_veicTracao_condutor);
  FCondutor := CreateCollection(TXMLRodo_veicTracao_condutorList, IXMLRodo_veicTracao_condutor, 'condutor') as IXMLRodo_veicTracao_condutorList;
  inherited;
end;

function TXMLRodo_veicTracao.Get_CInt: WideString;
begin
  Result := ChildNodes['cInt'].Text;
end;

procedure TXMLRodo_veicTracao.Set_CInt(Value: WideString);
begin
  ChildNodes['cInt'].NodeValue := Value;
end;

function TXMLRodo_veicTracao.Get_Placa: WideString;
begin
  Result := ChildNodes['placa'].Text;
end;

procedure TXMLRodo_veicTracao.Set_Placa(Value: WideString);
begin
  ChildNodes['placa'].NodeValue := Value;
end;

function TXMLRodo_veicTracao.Get_RENAVAM: WideString;
begin
  Result := ChildNodes['RENAVAM'].Text;
end;

procedure TXMLRodo_veicTracao.Set_RENAVAM(Value: WideString);
begin
  ChildNodes['RENAVAM'].NodeValue := Value;
end;

function TXMLRodo_veicTracao.Get_Tara: WideString;
begin
  Result := ChildNodes['tara'].Text;
end;

procedure TXMLRodo_veicTracao.Set_Tara(Value: WideString);
begin
  ChildNodes['tara'].NodeValue := Value;
end;

function TXMLRodo_veicTracao.Get_CapKG: WideString;
begin
  Result := ChildNodes['capKG'].Text;
end;

procedure TXMLRodo_veicTracao.Set_CapKG(Value: WideString);
begin
  ChildNodes['capKG'].NodeValue := Value;
end;

function TXMLRodo_veicTracao.Get_CapM3: WideString;
begin
  Result := ChildNodes['capM3'].Text;
end;

procedure TXMLRodo_veicTracao.Set_CapM3(Value: WideString);
begin
  ChildNodes['capM3'].NodeValue := Value;
end;

function TXMLRodo_veicTracao.Get_Prop: IXMLRodo_veicTracao_prop;
begin
  Result := ChildNodes['prop'] as IXMLRodo_veicTracao_prop;
end;

function TXMLRodo_veicTracao.Get_Condutor: IXMLRodo_veicTracao_condutorList;
begin
  Result := FCondutor;
end;

function TXMLRodo_veicTracao.Get_TpRod: WideString;
begin
  Result := ChildNodes['tpRod'].Text;
end;

procedure TXMLRodo_veicTracao.Set_TpRod(Value: WideString);
begin
  ChildNodes['tpRod'].NodeValue := Value;
end;

function TXMLRodo_veicTracao.Get_TpCar: WideString;
begin
  Result := ChildNodes['tpCar'].Text;
end;

procedure TXMLRodo_veicTracao.Set_TpCar(Value: WideString);
begin
  ChildNodes['tpCar'].NodeValue := Value;
end;

function TXMLRodo_veicTracao.Get_UF: WideString;
begin
  Result := ChildNodes['UF'].Text;
end;

procedure TXMLRodo_veicTracao.Set_UF(Value: WideString);
begin
  ChildNodes['UF'].NodeValue := Value;
end;

{ TXMLRodo_veicTracao_prop }

function TXMLRodo_veicTracao_prop.Get_CPF: WideString;
begin
  Result := ChildNodes['CPF'].Text;
end;

procedure TXMLRodo_veicTracao_prop.Set_CPF(Value: WideString);
begin
  ChildNodes['CPF'].NodeValue := Value;
end;

function TXMLRodo_veicTracao_prop.Get_CNPJ: WideString;
begin
  Result := ChildNodes['CNPJ'].Text;
end;

procedure TXMLRodo_veicTracao_prop.Set_CNPJ(Value: WideString);
begin
  ChildNodes['CNPJ'].NodeValue := Value;
end;

function TXMLRodo_veicTracao_prop.Get_RNTRC: WideString;
begin
  Result := ChildNodes['RNTRC'].Text;
end;

procedure TXMLRodo_veicTracao_prop.Set_RNTRC(Value: WideString);
begin
  ChildNodes['RNTRC'].NodeValue := Value;
end;

function TXMLRodo_veicTracao_prop.Get_XNome: WideString;
begin
  Result := ChildNodes['xNome'].Text;
end;

procedure TXMLRodo_veicTracao_prop.Set_XNome(Value: WideString);
begin
  ChildNodes['xNome'].NodeValue := Value;
end;

function TXMLRodo_veicTracao_prop.Get_IE: WideString;
begin
  Result := ChildNodes['IE'].Text;
end;

procedure TXMLRodo_veicTracao_prop.Set_IE(Value: WideString);
begin
  ChildNodes['IE'].NodeValue := Value;
end;

function TXMLRodo_veicTracao_prop.Get_UF: WideString;
begin
  Result := ChildNodes['UF'].Text;
end;

procedure TXMLRodo_veicTracao_prop.Set_UF(Value: WideString);
begin
  ChildNodes['UF'].NodeValue := Value;
end;

function TXMLRodo_veicTracao_prop.Get_TpProp: WideString;
begin
  Result := ChildNodes['tpProp'].Text;
end;

procedure TXMLRodo_veicTracao_prop.Set_TpProp(Value: WideString);
begin
  ChildNodes['tpProp'].NodeValue := Value;
end;

{ TXMLRodo_veicTracao_condutor }

function TXMLRodo_veicTracao_condutor.Get_XNome: WideString;
begin
  Result := ChildNodes['xNome'].Text;
end;

procedure TXMLRodo_veicTracao_condutor.Set_XNome(Value: WideString);
begin
  ChildNodes['xNome'].NodeValue := Value;
end;

function TXMLRodo_veicTracao_condutor.Get_CPF: WideString;
begin
  Result := ChildNodes['CPF'].Text;
end;

procedure TXMLRodo_veicTracao_condutor.Set_CPF(Value: WideString);
begin
  ChildNodes['CPF'].NodeValue := Value;
end;

{ TXMLRodo_veicTracao_condutorList }

function TXMLRodo_veicTracao_condutorList.Add: IXMLRodo_veicTracao_condutor;
begin
  Result := AddItem(-1) as IXMLRodo_veicTracao_condutor;
end;

function TXMLRodo_veicTracao_condutorList.Insert(const Index: Integer): IXMLRodo_veicTracao_condutor;
begin
  Result := AddItem(Index) as IXMLRodo_veicTracao_condutor;
end;

function TXMLRodo_veicTracao_condutorList.Get_Item(Index: Integer): IXMLRodo_veicTracao_condutor;
begin
  Result := List[Index] as IXMLRodo_veicTracao_condutor;
end;

{ TXMLRodo_veicReboque }

procedure TXMLRodo_veicReboque.AfterConstruction;
begin
  RegisterChildNode('prop', TXMLRodo_veicReboque_prop);
  inherited;
end;

function TXMLRodo_veicReboque.Get_CInt: WideString;
begin
  Result := ChildNodes['cInt'].Text;
end;

procedure TXMLRodo_veicReboque.Set_CInt(Value: WideString);
begin
  ChildNodes['cInt'].NodeValue := Value;
end;

function TXMLRodo_veicReboque.Get_Placa: WideString;
begin
  Result := ChildNodes['placa'].Text;
end;

procedure TXMLRodo_veicReboque.Set_Placa(Value: WideString);
begin
  ChildNodes['placa'].NodeValue := Value;
end;

function TXMLRodo_veicReboque.Get_RENAVAM: WideString;
begin
  Result := ChildNodes['RENAVAM'].Text;
end;

procedure TXMLRodo_veicReboque.Set_RENAVAM(Value: WideString);
begin
  ChildNodes['RENAVAM'].NodeValue := Value;
end;

function TXMLRodo_veicReboque.Get_Tara: WideString;
begin
  Result := ChildNodes['tara'].Text;
end;

procedure TXMLRodo_veicReboque.Set_Tara(Value: WideString);
begin
  ChildNodes['tara'].NodeValue := Value;
end;

function TXMLRodo_veicReboque.Get_CapKG: WideString;
begin
  Result := ChildNodes['capKG'].Text;
end;

procedure TXMLRodo_veicReboque.Set_CapKG(Value: WideString);
begin
  ChildNodes['capKG'].NodeValue := Value;
end;

function TXMLRodo_veicReboque.Get_CapM3: WideString;
begin
  Result := ChildNodes['capM3'].Text;
end;

procedure TXMLRodo_veicReboque.Set_CapM3(Value: WideString);
begin
  ChildNodes['capM3'].NodeValue := Value;
end;

function TXMLRodo_veicReboque.Get_Prop: IXMLRodo_veicReboque_prop;
begin
  Result := ChildNodes['prop'] as IXMLRodo_veicReboque_prop;
end;

function TXMLRodo_veicReboque.Get_TpCar: WideString;
begin
  Result := ChildNodes['tpCar'].Text;
end;

procedure TXMLRodo_veicReboque.Set_TpCar(Value: WideString);
begin
  ChildNodes['tpCar'].NodeValue := Value;
end;

function TXMLRodo_veicReboque.Get_UF: WideString;
begin
  Result := ChildNodes['UF'].Text;
end;

procedure TXMLRodo_veicReboque.Set_UF(Value: WideString);
begin
  ChildNodes['UF'].NodeValue := Value;
end;

{ TXMLRodo_veicReboqueList }

function TXMLRodo_veicReboqueList.Add: IXMLRodo_veicReboque;
begin
  Result := AddItem(-1) as IXMLRodo_veicReboque;
end;

function TXMLRodo_veicReboqueList.Insert(const Index: Integer): IXMLRodo_veicReboque;
begin
  Result := AddItem(Index) as IXMLRodo_veicReboque;
end;

function TXMLRodo_veicReboqueList.Get_Item(Index: Integer): IXMLRodo_veicReboque;
begin
  Result := List[Index] as IXMLRodo_veicReboque;
end;

{ TXMLRodo_veicReboque_prop }

function TXMLRodo_veicReboque_prop.Get_CPF: WideString;
begin
  Result := ChildNodes['CPF'].Text;
end;

procedure TXMLRodo_veicReboque_prop.Set_CPF(Value: WideString);
begin
  ChildNodes['CPF'].NodeValue := Value;
end;

function TXMLRodo_veicReboque_prop.Get_CNPJ: WideString;
begin
  Result := ChildNodes['CNPJ'].Text;
end;

procedure TXMLRodo_veicReboque_prop.Set_CNPJ(Value: WideString);
begin
  ChildNodes['CNPJ'].NodeValue := Value;
end;

function TXMLRodo_veicReboque_prop.Get_RNTRC: WideString;
begin
  Result := ChildNodes['RNTRC'].Text;
end;

procedure TXMLRodo_veicReboque_prop.Set_RNTRC(Value: WideString);
begin
  ChildNodes['RNTRC'].NodeValue := Value;
end;

function TXMLRodo_veicReboque_prop.Get_XNome: WideString;
begin
  Result := ChildNodes['xNome'].Text;
end;

procedure TXMLRodo_veicReboque_prop.Set_XNome(Value: WideString);
begin
  ChildNodes['xNome'].NodeValue := Value;
end;

function TXMLRodo_veicReboque_prop.Get_IE: WideString;
begin
  Result := ChildNodes['IE'].Text;
end;

procedure TXMLRodo_veicReboque_prop.Set_IE(Value: WideString);
begin
  ChildNodes['IE'].NodeValue := Value;
end;

function TXMLRodo_veicReboque_prop.Get_UF: WideString;
begin
  Result := ChildNodes['UF'].Text;
end;

procedure TXMLRodo_veicReboque_prop.Set_UF(Value: WideString);
begin
  ChildNodes['UF'].NodeValue := Value;
end;

function TXMLRodo_veicReboque_prop.Get_TpProp: WideString;
begin
  Result := ChildNodes['tpProp'].Text;
end;

procedure TXMLRodo_veicReboque_prop.Set_TpProp(Value: WideString);
begin
  ChildNodes['tpProp'].NodeValue := Value;
end;

{ TXMLRodo_lacRodo }

function TXMLRodo_lacRodo.Get_NLacre: WideString;
begin
  Result := ChildNodes['nLacre'].Text;
end;

procedure TXMLRodo_lacRodo.Set_NLacre(Value: WideString);
begin
  ChildNodes['nLacre'].NodeValue := Value;
end;

{ TXMLRodo_lacRodoList }

function TXMLRodo_lacRodoList.Add: IXMLRodo_lacRodo;
begin
  Result := AddItem(-1) as IXMLRodo_lacRodo;
end;

function TXMLRodo_lacRodoList.Insert(const Index: Integer): IXMLRodo_lacRodo;
begin
  Result := AddItem(Index) as IXMLRodo_lacRodo;
end;

function TXMLRodo_lacRodoList.Get_Item(Index: Integer): IXMLRodo_lacRodo;
begin
  Result := List[Index] as IXMLRodo_lacRodo;
end;

end.