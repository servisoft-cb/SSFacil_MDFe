
{***********************************************************************************************************************************}
{                                                                                                                                   }
{                                                         XML Data Binding                                                          }
{                                                                                                                                   }
{         Generated on: 26/09/2019 09:12:45                                                                                         }
{       Generated from: C:\Users\edson.alanis\Google Drive\!desenvolvimento\cleomar\FlexDocs\MDFe_Util\Schemas\enviMDFe_v3.00.xsd   }
{                                                                                                                                   }
{***********************************************************************************************************************************}

unit enviMDFe_v300;

interface

uses xmldom, XMLDoc, XMLIntf;

type

{ Forward Decls }

  IXMLTEnviMDFe = interface;
  IXMLTMDFe = interface;
  IXMLInfMDFe = interface;
  IXMLIde = interface;
  IXMLInfMunCarrega = interface;
  IXMLInfMunCarregaList = interface;
  IXMLInfPercurso = interface;
  IXMLInfPercursoList = interface;
  IXMLEmit = interface;
  IXMLTEndeEmi = interface;
  IXMLInfModal = interface;
  IXMLInfDoc = interface;
  IXMLInfMunDescarga = interface;
  IXMLInfCTe = interface;
  IXMLInfCTeList = interface;
  IXMLTUnidadeTransp = interface;
  IXMLTUnidadeTranspList = interface;
  IXMLLacUnidTransp = interface;
  IXMLLacUnidTranspList = interface;
  IXMLTUnidCarga = interface;
  IXMLTUnidCargaList = interface;
  IXMLLacUnidCarga = interface;
  IXMLLacUnidCargaList = interface;
  IXMLPeri = interface;
  IXMLPeriList = interface;
  IXMLInfEntregaParcial = interface;
  IXMLInfNFe = interface;
  IXMLInfNFeList = interface;
  IXMLInfMDFeTransp = interface;
  IXMLInfMDFeTranspList = interface;
  IXMLSeg = interface;
  IXMLSegList = interface;
  IXMLInfResp = interface;
  IXMLInfSeg = interface;
  IXMLTot = interface;
  IXMLLacres = interface;
  IXMLLacresList = interface;
  IXMLAutXML = interface;
  IXMLAutXMLList = interface;
  IXMLInfAdic = interface;
  IXMLTRespTec = interface;
  IXMLInfMDFeSupl = interface;
  IXMLSignatureType_ds = interface;
  IXMLSignedInfoType_ds = interface;
  IXMLCanonicalizationMethod_ds = interface;
  IXMLSignatureMethod_ds = interface;
  IXMLReferenceType_ds = interface;
  IXMLTransformsType_ds = interface;
  IXMLTransformType_ds = interface;
  IXMLDigestMethod_ds = interface;
  IXMLSignatureValueType_ds = interface;
  IXMLKeyInfoType_ds = interface;
  IXMLX509DataType_ds = interface;
  IXMLTRetMDFe = interface;
  IXMLTProtMDFe = interface;
  IXMLInfProt = interface;
  IXMLInfFisco = interface;
  IXMLTRetEnviMDFe = interface;
  IXMLInfRec = interface;
  IXMLTEndereco = interface;
  IXMLTEndernac = interface;
  IXMLTEnderFer = interface;
  IXMLTEndOrg = interface;
  IXMLTLocal = interface;
  IXMLTEndReEnt = interface;
  IXMLTNFeNF = interface;
  IXMLInfNF = interface;
  IXMLEmi = interface;
  IXMLDest = interface;
  IXMLNAverList = interface;

{ IXMLTEnviMDFe }

  IXMLTEnviMDFe = interface(IXMLNode)
    ['{C80826E7-9022-49C3-BE5E-FED81CF81754}']
    { Property Accessors }
    function Get_Versao: WideString;
    function Get_IdLote: WideString;
    function Get_MDFe: IXMLTMDFe;
    procedure Set_Versao(Value: WideString);
    procedure Set_IdLote(Value: WideString);
    { Methods & Properties }
    property Versao: WideString read Get_Versao write Set_Versao;
    property IdLote: WideString read Get_IdLote write Set_IdLote;
    property MDFe: IXMLTMDFe read Get_MDFe;
  end;

{ IXMLTMDFe }

  IXMLTMDFe = interface(IXMLNode)
    ['{D4AA6968-F9B2-4E13-B248-21D82AFAF86C}']
    { Property Accessors }
    function Get_InfMDFe: IXMLInfMDFe;
    function Get_InfMDFeSupl: IXMLInfMDFeSupl;
    function Get_Signature: IXMLSignatureType_ds;
    { Methods & Properties }
    property InfMDFe: IXMLInfMDFe read Get_InfMDFe;
    property InfMDFeSupl: IXMLInfMDFeSupl read Get_InfMDFeSupl;
    property Signature: IXMLSignatureType_ds read Get_Signature;
  end;

{ IXMLInfMDFe }

  IXMLInfMDFe = interface(IXMLNode)
    ['{B0CB5E13-4AFA-4BD2-B307-E0F090357A91}']
    { Property Accessors }
    function Get_Versao: WideString;
    function Get_Id: WideString;
    function Get_Ide: IXMLIde;
    function Get_Emit: IXMLEmit;
    function Get_InfModal: IXMLInfModal;
    function Get_InfDoc: IXMLInfDoc;
    function Get_Seg: IXMLSegList;
    function Get_Tot: IXMLTot;
    function Get_Lacres: IXMLLacresList;
    function Get_AutXML: IXMLAutXMLList;
    function Get_InfAdic: IXMLInfAdic;
    function Get_InfRespTec: IXMLTRespTec;
    procedure Set_Versao(Value: WideString);
    procedure Set_Id(Value: WideString);
    { Methods & Properties }
    property Versao: WideString read Get_Versao write Set_Versao;
    property Id: WideString read Get_Id write Set_Id;
    property Ide: IXMLIde read Get_Ide;
    property Emit: IXMLEmit read Get_Emit;
    property InfModal: IXMLInfModal read Get_InfModal;
    property InfDoc: IXMLInfDoc read Get_InfDoc;
    property Seg: IXMLSegList read Get_Seg;
    property Tot: IXMLTot read Get_Tot;
    property Lacres: IXMLLacresList read Get_Lacres;
    property AutXML: IXMLAutXMLList read Get_AutXML;
    property InfAdic: IXMLInfAdic read Get_InfAdic;
    property InfRespTec: IXMLTRespTec read Get_InfRespTec;
  end;

{ IXMLIde }

  IXMLIde = interface(IXMLNode)
    ['{0703D9EB-0079-4407-B03C-CE127033F097}']
    { Property Accessors }
    function Get_CUF: WideString;
    function Get_TpAmb: WideString;
    function Get_TpEmit: WideString;
    function Get_TpTransp: WideString;
    function Get_Mod_: WideString;
    function Get_Serie: WideString;
    function Get_NMDF: WideString;
    function Get_CMDF: WideString;
    function Get_CDV: WideString;
    function Get_Modal: WideString;
    function Get_DhEmi: WideString;
    function Get_TpEmis: WideString;
    function Get_ProcEmi: WideString;
    function Get_VerProc: WideString;
    function Get_UFIni: WideString;
    function Get_UFFim: WideString;
    function Get_InfMunCarrega: IXMLInfMunCarregaList;
    function Get_InfPercurso: IXMLInfPercursoList;
    function Get_DhIniViagem: WideString;
    function Get_IndCanalVerde: WideString;
    function Get_IndCarregaPosterior: WideString;
    procedure Set_CUF(Value: WideString);
    procedure Set_TpAmb(Value: WideString);
    procedure Set_TpEmit(Value: WideString);
    procedure Set_TpTransp(Value: WideString);
    procedure Set_Mod_(Value: WideString);
    procedure Set_Serie(Value: WideString);
    procedure Set_NMDF(Value: WideString);
    procedure Set_CMDF(Value: WideString);
    procedure Set_CDV(Value: WideString);
    procedure Set_Modal(Value: WideString);
    procedure Set_DhEmi(Value: WideString);
    procedure Set_TpEmis(Value: WideString);
    procedure Set_ProcEmi(Value: WideString);
    procedure Set_VerProc(Value: WideString);
    procedure Set_UFIni(Value: WideString);
    procedure Set_UFFim(Value: WideString);
    procedure Set_DhIniViagem(Value: WideString);
    procedure Set_IndCanalVerde(Value: WideString);
    procedure Set_IndCarregaPosterior(Value: WideString);
    { Methods & Properties }
    property CUF: WideString read Get_CUF write Set_CUF;
    property TpAmb: WideString read Get_TpAmb write Set_TpAmb;
    property TpEmit: WideString read Get_TpEmit write Set_TpEmit;
    property TpTransp: WideString read Get_TpTransp write Set_TpTransp;
    property Mod_: WideString read Get_Mod_ write Set_Mod_;
    property Serie: WideString read Get_Serie write Set_Serie;
    property NMDF: WideString read Get_NMDF write Set_NMDF;
    property CMDF: WideString read Get_CMDF write Set_CMDF;
    property CDV: WideString read Get_CDV write Set_CDV;
    property Modal: WideString read Get_Modal write Set_Modal;
    property DhEmi: WideString read Get_DhEmi write Set_DhEmi;
    property TpEmis: WideString read Get_TpEmis write Set_TpEmis;
    property ProcEmi: WideString read Get_ProcEmi write Set_ProcEmi;
    property VerProc: WideString read Get_VerProc write Set_VerProc;
    property UFIni: WideString read Get_UFIni write Set_UFIni;
    property UFFim: WideString read Get_UFFim write Set_UFFim;
    property InfMunCarrega: IXMLInfMunCarregaList read Get_InfMunCarrega;
    property InfPercurso: IXMLInfPercursoList read Get_InfPercurso;
    property DhIniViagem: WideString read Get_DhIniViagem write Set_DhIniViagem;
    property IndCanalVerde: WideString read Get_IndCanalVerde write Set_IndCanalVerde;
    property IndCarregaPosterior: WideString read Get_IndCarregaPosterior write Set_IndCarregaPosterior;
  end;

{ IXMLInfMunCarrega }

  IXMLInfMunCarrega = interface(IXMLNode)
    ['{18D34B78-7C14-4B6E-8286-850CAAB592B9}']
    { Property Accessors }
    function Get_CMunCarrega: WideString;
    function Get_XMunCarrega: WideString;
    procedure Set_CMunCarrega(Value: WideString);
    procedure Set_XMunCarrega(Value: WideString);
    { Methods & Properties }
    property CMunCarrega: WideString read Get_CMunCarrega write Set_CMunCarrega;
    property XMunCarrega: WideString read Get_XMunCarrega write Set_XMunCarrega;
  end;

{ IXMLInfMunCarregaList }

  IXMLInfMunCarregaList = interface(IXMLNodeCollection)
    ['{4ACC4361-7635-4A1C-AB5A-4EB397FEE564}']
    { Methods & Properties }
    function Add: IXMLInfMunCarrega;
    function Insert(const Index: Integer): IXMLInfMunCarrega;

    function Get_Item(Index: Integer): IXMLInfMunCarrega;
    property Items[Index: Integer]: IXMLInfMunCarrega read Get_Item; default;
  end;

{ IXMLInfPercurso }

  IXMLInfPercurso = interface(IXMLNode)
    ['{FEFD56C7-2144-4A93-8FFF-F0507C4C1236}']
    { Property Accessors }
    function Get_UFPer: WideString;
    procedure Set_UFPer(Value: WideString);
    { Methods & Properties }
    property UFPer: WideString read Get_UFPer write Set_UFPer;
  end;

{ IXMLInfPercursoList }

  IXMLInfPercursoList = interface(IXMLNodeCollection)
    ['{DD506AA8-DF77-4C48-AF82-B3EE30033793}']
    { Methods & Properties }
    function Add: IXMLInfPercurso;
    function Insert(const Index: Integer): IXMLInfPercurso;

    function Get_Item(Index: Integer): IXMLInfPercurso;
    property Items[Index: Integer]: IXMLInfPercurso read Get_Item; default;
  end;

{ IXMLEmit }

  IXMLEmit = interface(IXMLNode)
    ['{38A9FB3D-59D4-4E29-9507-5B0816A50DB0}']
    { Property Accessors }
    function Get_CNPJ: WideString;
    function Get_CPF: WideString;
    function Get_IE: WideString;
    function Get_XNome: WideString;
    function Get_XFant: WideString;
    function Get_EnderEmit: IXMLTEndeEmi;
    procedure Set_CNPJ(Value: WideString);
    procedure Set_CPF(Value: WideString);
    procedure Set_IE(Value: WideString);
    procedure Set_XNome(Value: WideString);
    procedure Set_XFant(Value: WideString);
    { Methods & Properties }
    property CNPJ: WideString read Get_CNPJ write Set_CNPJ;
    property CPF: WideString read Get_CPF write Set_CPF;
    property IE: WideString read Get_IE write Set_IE;
    property XNome: WideString read Get_XNome write Set_XNome;
    property XFant: WideString read Get_XFant write Set_XFant;
    property EnderEmit: IXMLTEndeEmi read Get_EnderEmit;
  end;

{ IXMLTEndeEmi }

  IXMLTEndeEmi = interface(IXMLNode)
    ['{A3192FCA-38A6-4A5E-AA4C-C8D21D49A63A}']
    { Property Accessors }
    function Get_XLgr: WideString;
    function Get_Nro: WideString;
    function Get_XCpl: WideString;
    function Get_XBairro: WideString;
    function Get_CMun: WideString;
    function Get_XMun: WideString;
    function Get_CEP: WideString;
    function Get_UF: WideString;
    function Get_Fone: WideString;
    function Get_Email: WideString;
    procedure Set_XLgr(Value: WideString);
    procedure Set_Nro(Value: WideString);
    procedure Set_XCpl(Value: WideString);
    procedure Set_XBairro(Value: WideString);
    procedure Set_CMun(Value: WideString);
    procedure Set_XMun(Value: WideString);
    procedure Set_CEP(Value: WideString);
    procedure Set_UF(Value: WideString);
    procedure Set_Fone(Value: WideString);
    procedure Set_Email(Value: WideString);
    { Methods & Properties }
    property XLgr: WideString read Get_XLgr write Set_XLgr;
    property Nro: WideString read Get_Nro write Set_Nro;
    property XCpl: WideString read Get_XCpl write Set_XCpl;
    property XBairro: WideString read Get_XBairro write Set_XBairro;
    property CMun: WideString read Get_CMun write Set_CMun;
    property XMun: WideString read Get_XMun write Set_XMun;
    property CEP: WideString read Get_CEP write Set_CEP;
    property UF: WideString read Get_UF write Set_UF;
    property Fone: WideString read Get_Fone write Set_Fone;
    property Email: WideString read Get_Email write Set_Email;
  end;

{ IXMLInfModal }

  IXMLInfModal = interface(IXMLNode)
    ['{36F72D57-2476-4EB3-BC1A-601BBEC0FD27}']
    { Property Accessors }
    function Get_VersaoModal: WideString;
    procedure Set_VersaoModal(Value: WideString);
    { Methods & Properties }
    property VersaoModal: WideString read Get_VersaoModal write Set_VersaoModal;
  end;

{ IXMLInfDoc }

  IXMLInfDoc = interface(IXMLNodeCollection)
    ['{2384AB51-CF1F-417A-AF74-FB565D03DDE0}']
    { Property Accessors }
    function Get_InfMunDescarga(Index: Integer): IXMLInfMunDescarga;
    { Methods & Properties }
    function Add: IXMLInfMunDescarga;
    function Insert(const Index: Integer): IXMLInfMunDescarga;
    property InfMunDescarga[Index: Integer]: IXMLInfMunDescarga read Get_InfMunDescarga; default;
  end;

{ IXMLInfMunDescarga }

  IXMLInfMunDescarga = interface(IXMLNode)
    ['{1FFC9E67-1838-4F15-B941-987EAD73B3C1}']
    { Property Accessors }
    function Get_CMunDescarga: WideString;
    function Get_XMunDescarga: WideString;
    function Get_InfCTe: IXMLInfCTeList;
    function Get_InfNFe: IXMLInfNFeList;
    function Get_InfMDFeTransp: IXMLInfMDFeTranspList;
    procedure Set_CMunDescarga(Value: WideString);
    procedure Set_XMunDescarga(Value: WideString);
    { Methods & Properties }
    property CMunDescarga: WideString read Get_CMunDescarga write Set_CMunDescarga;
    property XMunDescarga: WideString read Get_XMunDescarga write Set_XMunDescarga;
    property InfCTe: IXMLInfCTeList read Get_InfCTe;
    property InfNFe: IXMLInfNFeList read Get_InfNFe;
    property InfMDFeTransp: IXMLInfMDFeTranspList read Get_InfMDFeTransp;
  end;

{ IXMLInfCTe }

  IXMLInfCTe = interface(IXMLNode)
    ['{C0B65EBC-9F3A-4937-B5F2-F7622065A730}']
    { Property Accessors }
    function Get_ChCTe: WideString;
    function Get_SegCodBarra: WideString;
    function Get_IndReentrega: WideString;
    function Get_InfUnidTransp: IXMLTUnidadeTranspList;
    function Get_Peri: IXMLPeriList;
    function Get_InfEntregaParcial: IXMLInfEntregaParcial;
    procedure Set_ChCTe(Value: WideString);
    procedure Set_SegCodBarra(Value: WideString);
    procedure Set_IndReentrega(Value: WideString);
    { Methods & Properties }
    property ChCTe: WideString read Get_ChCTe write Set_ChCTe;
    property SegCodBarra: WideString read Get_SegCodBarra write Set_SegCodBarra;
    property IndReentrega: WideString read Get_IndReentrega write Set_IndReentrega;
    property InfUnidTransp: IXMLTUnidadeTranspList read Get_InfUnidTransp;
    property Peri: IXMLPeriList read Get_Peri;
    property InfEntregaParcial: IXMLInfEntregaParcial read Get_InfEntregaParcial;
  end;

{ IXMLInfCTeList }

  IXMLInfCTeList = interface(IXMLNodeCollection)
    ['{92617478-3A87-4265-95B3-561A51231617}']
    { Methods & Properties }
    function Add: IXMLInfCTe;
    function Insert(const Index: Integer): IXMLInfCTe;

    function Get_Item(Index: Integer): IXMLInfCTe;
    property Items[Index: Integer]: IXMLInfCTe read Get_Item; default;
  end;

{ IXMLTUnidadeTransp }

  IXMLTUnidadeTransp = interface(IXMLNode)
    ['{30963975-3C1B-4DA7-BF23-848213645813}']
    { Property Accessors }
    function Get_TpUnidTransp: WideString;
    function Get_IdUnidTransp: WideString;
    function Get_LacUnidTransp: IXMLLacUnidTranspList;
    function Get_InfUnidCarga: IXMLTUnidCargaList;
    function Get_QtdRat: WideString;
    procedure Set_TpUnidTransp(Value: WideString);
    procedure Set_IdUnidTransp(Value: WideString);
    procedure Set_QtdRat(Value: WideString);
    { Methods & Properties }
    property TpUnidTransp: WideString read Get_TpUnidTransp write Set_TpUnidTransp;
    property IdUnidTransp: WideString read Get_IdUnidTransp write Set_IdUnidTransp;
    property LacUnidTransp: IXMLLacUnidTranspList read Get_LacUnidTransp;
    property InfUnidCarga: IXMLTUnidCargaList read Get_InfUnidCarga;
    property QtdRat: WideString read Get_QtdRat write Set_QtdRat;
  end;

{ IXMLTUnidadeTranspList }

  IXMLTUnidadeTranspList = interface(IXMLNodeCollection)
    ['{C6022E91-9632-4CBA-A94B-60D5C3C1D934}']
    { Methods & Properties }
    function Add: IXMLTUnidadeTransp;
    function Insert(const Index: Integer): IXMLTUnidadeTransp;

    function Get_Item(Index: Integer): IXMLTUnidadeTransp;
    property Items[Index: Integer]: IXMLTUnidadeTransp read Get_Item; default;
  end;

{ IXMLLacUnidTransp }

  IXMLLacUnidTransp = interface(IXMLNode)
    ['{907BF527-6589-40A4-8CDE-0A5403C47E7F}']
    { Property Accessors }
    function Get_NLacre: WideString;
    procedure Set_NLacre(Value: WideString);
    { Methods & Properties }
    property NLacre: WideString read Get_NLacre write Set_NLacre;
  end;

{ IXMLLacUnidTranspList }

  IXMLLacUnidTranspList = interface(IXMLNodeCollection)
    ['{E78811EF-3A14-45D9-BD13-B1605BF87EE6}']
    { Methods & Properties }
    function Add: IXMLLacUnidTransp;
    function Insert(const Index: Integer): IXMLLacUnidTransp;

    function Get_Item(Index: Integer): IXMLLacUnidTransp;
    property Items[Index: Integer]: IXMLLacUnidTransp read Get_Item; default;
  end;

{ IXMLTUnidCarga }

  IXMLTUnidCarga = interface(IXMLNode)
    ['{C1A89B92-8642-4C81-9782-D7B40C7394BC}']
    { Property Accessors }
    function Get_TpUnidCarga: WideString;
    function Get_IdUnidCarga: WideString;
    function Get_LacUnidCarga: IXMLLacUnidCargaList;
    function Get_QtdRat: WideString;
    procedure Set_TpUnidCarga(Value: WideString);
    procedure Set_IdUnidCarga(Value: WideString);
    procedure Set_QtdRat(Value: WideString);
    { Methods & Properties }
    property TpUnidCarga: WideString read Get_TpUnidCarga write Set_TpUnidCarga;
    property IdUnidCarga: WideString read Get_IdUnidCarga write Set_IdUnidCarga;
    property LacUnidCarga: IXMLLacUnidCargaList read Get_LacUnidCarga;
    property QtdRat: WideString read Get_QtdRat write Set_QtdRat;
  end;

{ IXMLTUnidCargaList }

  IXMLTUnidCargaList = interface(IXMLNodeCollection)
    ['{0D9719A3-E725-4A94-A72E-FCC08E516906}']
    { Methods & Properties }
    function Add: IXMLTUnidCarga;
    function Insert(const Index: Integer): IXMLTUnidCarga;

    function Get_Item(Index: Integer): IXMLTUnidCarga;
    property Items[Index: Integer]: IXMLTUnidCarga read Get_Item; default;
  end;

{ IXMLLacUnidCarga }

  IXMLLacUnidCarga = interface(IXMLNode)
    ['{11BE0934-EF68-44DF-8720-2FC2457C9C46}']
    { Property Accessors }
    function Get_NLacre: WideString;
    procedure Set_NLacre(Value: WideString);
    { Methods & Properties }
    property NLacre: WideString read Get_NLacre write Set_NLacre;
  end;

{ IXMLLacUnidCargaList }

  IXMLLacUnidCargaList = interface(IXMLNodeCollection)
    ['{EB063C2A-C637-4969-A69D-F515FDAC8557}']
    { Methods & Properties }
    function Add: IXMLLacUnidCarga;
    function Insert(const Index: Integer): IXMLLacUnidCarga;

    function Get_Item(Index: Integer): IXMLLacUnidCarga;
    property Items[Index: Integer]: IXMLLacUnidCarga read Get_Item; default;
  end;

{ IXMLPeri }

  IXMLPeri = interface(IXMLNode)
    ['{5C73D062-E2F9-4FB3-90FD-42A9FE130E19}']
    { Property Accessors }
    function Get_NONU: WideString;
    function Get_XNomeAE: WideString;
    function Get_XClaRisco: WideString;
    function Get_GrEmb: WideString;
    function Get_QTotProd: WideString;
    function Get_QVolTipo: WideString;
    procedure Set_NONU(Value: WideString);
    procedure Set_XNomeAE(Value: WideString);
    procedure Set_XClaRisco(Value: WideString);
    procedure Set_GrEmb(Value: WideString);
    procedure Set_QTotProd(Value: WideString);
    procedure Set_QVolTipo(Value: WideString);
    { Methods & Properties }
    property NONU: WideString read Get_NONU write Set_NONU;
    property XNomeAE: WideString read Get_XNomeAE write Set_XNomeAE;
    property XClaRisco: WideString read Get_XClaRisco write Set_XClaRisco;
    property GrEmb: WideString read Get_GrEmb write Set_GrEmb;
    property QTotProd: WideString read Get_QTotProd write Set_QTotProd;
    property QVolTipo: WideString read Get_QVolTipo write Set_QVolTipo;
  end;

{ IXMLPeriList }

  IXMLPeriList = interface(IXMLNodeCollection)
    ['{68B94570-E94F-48C1-8F65-B84A2D54D073}']
    { Methods & Properties }
    function Add: IXMLPeri;
    function Insert(const Index: Integer): IXMLPeri;

    function Get_Item(Index: Integer): IXMLPeri;
    property Items[Index: Integer]: IXMLPeri read Get_Item; default;
  end;

{ IXMLInfEntregaParcial }

  IXMLInfEntregaParcial = interface(IXMLNode)
    ['{C588C879-8F44-4CB9-9F3E-A159A3B8552F}']
    { Property Accessors }
    function Get_QtdTotal: WideString;
    function Get_QtdParcial: WideString;
    procedure Set_QtdTotal(Value: WideString);
    procedure Set_QtdParcial(Value: WideString);
    { Methods & Properties }
    property QtdTotal: WideString read Get_QtdTotal write Set_QtdTotal;
    property QtdParcial: WideString read Get_QtdParcial write Set_QtdParcial;
  end;

{ IXMLInfNFe }

  IXMLInfNFe = interface(IXMLNode)
    ['{BF9E1CEE-D3BD-4C8D-B425-4980D3337EDC}']
    { Property Accessors }
    function Get_ChNFe: WideString;
    function Get_SegCodBarra: WideString;
    function Get_IndReentrega: WideString;
    function Get_InfUnidTransp: IXMLTUnidadeTranspList;
    function Get_Peri: IXMLPeriList;
    procedure Set_ChNFe(Value: WideString);
    procedure Set_SegCodBarra(Value: WideString);
    procedure Set_IndReentrega(Value: WideString);
    { Methods & Properties }
    property ChNFe: WideString read Get_ChNFe write Set_ChNFe;
    property SegCodBarra: WideString read Get_SegCodBarra write Set_SegCodBarra;
    property IndReentrega: WideString read Get_IndReentrega write Set_IndReentrega;
    property InfUnidTransp: IXMLTUnidadeTranspList read Get_InfUnidTransp;
    property Peri: IXMLPeriList read Get_Peri;
  end;

{ IXMLInfNFeList }

  IXMLInfNFeList = interface(IXMLNodeCollection)
    ['{E43D12CD-5890-4FDD-A51A-B1FE1E9E5217}']
    { Methods & Properties }
    function Add: IXMLInfNFe;
    function Insert(const Index: Integer): IXMLInfNFe;

    function Get_Item(Index: Integer): IXMLInfNFe;
    property Items[Index: Integer]: IXMLInfNFe read Get_Item; default;
  end;

{ IXMLInfMDFeTransp }

  IXMLInfMDFeTransp = interface(IXMLNode)
    ['{EDEA77D2-447F-45F5-8908-907D6EFA4CA0}']
    { Property Accessors }
    function Get_ChMDFe: WideString;
    function Get_IndReentrega: WideString;
    function Get_InfUnidTransp: IXMLTUnidadeTranspList;
    function Get_Peri: IXMLPeriList;
    procedure Set_ChMDFe(Value: WideString);
    procedure Set_IndReentrega(Value: WideString);
    { Methods & Properties }
    property ChMDFe: WideString read Get_ChMDFe write Set_ChMDFe;
    property IndReentrega: WideString read Get_IndReentrega write Set_IndReentrega;
    property InfUnidTransp: IXMLTUnidadeTranspList read Get_InfUnidTransp;
    property Peri: IXMLPeriList read Get_Peri;
  end;

{ IXMLInfMDFeTranspList }

  IXMLInfMDFeTranspList = interface(IXMLNodeCollection)
    ['{60398C1A-11BE-42F4-BF87-2CC1E23D17D5}']
    { Methods & Properties }
    function Add: IXMLInfMDFeTransp;
    function Insert(const Index: Integer): IXMLInfMDFeTransp;

    function Get_Item(Index: Integer): IXMLInfMDFeTransp;
    property Items[Index: Integer]: IXMLInfMDFeTransp read Get_Item; default;
  end;

{ IXMLSeg }

  IXMLSeg = interface(IXMLNode)
    ['{AD58EA51-1688-4CF0-8F79-838457D58FFD}']
    { Property Accessors }
    function Get_InfResp: IXMLInfResp;
    function Get_InfSeg: IXMLInfSeg;
    function Get_NApol: WideString;
    function Get_NAver: IXMLNAverList;
    procedure Set_NApol(Value: WideString);
    { Methods & Properties }
    property InfResp: IXMLInfResp read Get_InfResp;
    property InfSeg: IXMLInfSeg read Get_InfSeg;
    property NApol: WideString read Get_NApol write Set_NApol;
    property NAver: IXMLNAverList read Get_NAver;
  end;

{ IXMLSegList }

  IXMLSegList = interface(IXMLNodeCollection)
    ['{10CB6B7D-C2F5-4B2D-9EFC-7625371897EC}']
    { Methods & Properties }
    function Add: IXMLSeg;
    function Insert(const Index: Integer): IXMLSeg;

    function Get_Item(Index: Integer): IXMLSeg;
    property Items[Index: Integer]: IXMLSeg read Get_Item; default;
  end;

{ IXMLInfResp }

  IXMLInfResp = interface(IXMLNode)
    ['{9DE6145C-FBFE-425B-B343-B34632830221}']
    { Property Accessors }
    function Get_RespSeg: WideString;
    function Get_CNPJ: WideString;
    function Get_CPF: WideString;
    procedure Set_RespSeg(Value: WideString);
    procedure Set_CNPJ(Value: WideString);
    procedure Set_CPF(Value: WideString);
    { Methods & Properties }
    property RespSeg: WideString read Get_RespSeg write Set_RespSeg;
    property CNPJ: WideString read Get_CNPJ write Set_CNPJ;
    property CPF: WideString read Get_CPF write Set_CPF;
  end;

{ IXMLInfSeg }

  IXMLInfSeg = interface(IXMLNode)
    ['{55F795AE-FB2A-4666-885F-5A2040106896}']
    { Property Accessors }
    function Get_XSeg: WideString;
    function Get_CNPJ: WideString;
    procedure Set_XSeg(Value: WideString);
    procedure Set_CNPJ(Value: WideString);
    { Methods & Properties }
    property XSeg: WideString read Get_XSeg write Set_XSeg;
    property CNPJ: WideString read Get_CNPJ write Set_CNPJ;
  end;

{ IXMLTot }

  IXMLTot = interface(IXMLNode)
    ['{4DA6FFA1-99D8-4A98-8063-A1CC4FF03E60}']
    { Property Accessors }
    function Get_QCTe: WideString;
    function Get_QNFe: WideString;
    function Get_QMDFe: WideString;
    function Get_VCarga: WideString;
    function Get_CUnid: WideString;
    function Get_QCarga: WideString;
    procedure Set_QCTe(Value: WideString);
    procedure Set_QNFe(Value: WideString);
    procedure Set_QMDFe(Value: WideString);
    procedure Set_VCarga(Value: WideString);
    procedure Set_CUnid(Value: WideString);
    procedure Set_QCarga(Value: WideString);
    { Methods & Properties }
    property QCTe: WideString read Get_QCTe write Set_QCTe;
    property QNFe: WideString read Get_QNFe write Set_QNFe;
    property QMDFe: WideString read Get_QMDFe write Set_QMDFe;
    property VCarga: WideString read Get_VCarga write Set_VCarga;
    property CUnid: WideString read Get_CUnid write Set_CUnid;
    property QCarga: WideString read Get_QCarga write Set_QCarga;
  end;

{ IXMLLacres }

  IXMLLacres = interface(IXMLNode)
    ['{BE94FBFD-42F7-4227-AFC1-721C501E2626}']
    { Property Accessors }
    function Get_NLacre: WideString;
    procedure Set_NLacre(Value: WideString);
    { Methods & Properties }
    property NLacre: WideString read Get_NLacre write Set_NLacre;
  end;

{ IXMLLacresList }

  IXMLLacresList = interface(IXMLNodeCollection)
    ['{12355A82-239B-4E15-9721-CB16AED58F92}']
    { Methods & Properties }
    function Add: IXMLLacres;
    function Insert(const Index: Integer): IXMLLacres;

    function Get_Item(Index: Integer): IXMLLacres;
    property Items[Index: Integer]: IXMLLacres read Get_Item; default;
  end;

{ IXMLAutXML }

  IXMLAutXML = interface(IXMLNode)
    ['{34D6104B-91BC-4C4A-BF45-32336C407711}']
    { Property Accessors }
    function Get_CNPJ: WideString;
    function Get_CPF: WideString;
    procedure Set_CNPJ(Value: WideString);
    procedure Set_CPF(Value: WideString);
    { Methods & Properties }
    property CNPJ: WideString read Get_CNPJ write Set_CNPJ;
    property CPF: WideString read Get_CPF write Set_CPF;
  end;

{ IXMLAutXMLList }

  IXMLAutXMLList = interface(IXMLNodeCollection)
    ['{8E088435-17C4-4EB8-A931-7EE3E1BAE9E3}']
    { Methods & Properties }
    function Add: IXMLAutXML;
    function Insert(const Index: Integer): IXMLAutXML;

    function Get_Item(Index: Integer): IXMLAutXML;
    property Items[Index: Integer]: IXMLAutXML read Get_Item; default;
  end;

{ IXMLInfAdic }

  IXMLInfAdic = interface(IXMLNode)
    ['{36B33A16-DC94-4ECF-ADD7-AE10A375978A}']
    { Property Accessors }
    function Get_InfAdFisco: WideString;
    function Get_InfCpl: WideString;
    procedure Set_InfAdFisco(Value: WideString);
    procedure Set_InfCpl(Value: WideString);
    { Methods & Properties }
    property InfAdFisco: WideString read Get_InfAdFisco write Set_InfAdFisco;
    property InfCpl: WideString read Get_InfCpl write Set_InfCpl;
  end;

{ IXMLTRespTec }

  IXMLTRespTec = interface(IXMLNode)
    ['{414FCA99-9AA6-4ABB-81B0-73D972E8B74C}']
    { Property Accessors }
    function Get_CNPJ: WideString;
    function Get_XContato: WideString;
    function Get_Email: WideString;
    function Get_Fone: WideString;
    function Get_IdCSRT: WideString;
    function Get_HashCSRT: WideString;
    procedure Set_CNPJ(Value: WideString);
    procedure Set_XContato(Value: WideString);
    procedure Set_Email(Value: WideString);
    procedure Set_Fone(Value: WideString);
    procedure Set_IdCSRT(Value: WideString);
    procedure Set_HashCSRT(Value: WideString);
    { Methods & Properties }
    property CNPJ: WideString read Get_CNPJ write Set_CNPJ;
    property XContato: WideString read Get_XContato write Set_XContato;
    property Email: WideString read Get_Email write Set_Email;
    property Fone: WideString read Get_Fone write Set_Fone;
    property IdCSRT: WideString read Get_IdCSRT write Set_IdCSRT;
    property HashCSRT: WideString read Get_HashCSRT write Set_HashCSRT;
  end;

{ IXMLInfMDFeSupl }

  IXMLInfMDFeSupl = interface(IXMLNode)
    ['{34A55CCE-10E9-4A8F-8853-C423E0128C3C}']
    { Property Accessors }
    function Get_QrCodMDFe: WideString;
    procedure Set_QrCodMDFe(Value: WideString);
    { Methods & Properties }
    property QrCodMDFe: WideString read Get_QrCodMDFe write Set_QrCodMDFe;
  end;

{ IXMLSignatureType_ds }

  IXMLSignatureType_ds = interface(IXMLNode)
    ['{917B2EBD-C56D-46AF-9764-128F73B9A8F3}']
    { Property Accessors }
    function Get_Id: WideString;
    function Get_SignedInfo: IXMLSignedInfoType_ds;
    function Get_SignatureValue: IXMLSignatureValueType_ds;
    function Get_KeyInfo: IXMLKeyInfoType_ds;
    procedure Set_Id(Value: WideString);
    { Methods & Properties }
    property Id: WideString read Get_Id write Set_Id;
    property SignedInfo: IXMLSignedInfoType_ds read Get_SignedInfo;
    property SignatureValue: IXMLSignatureValueType_ds read Get_SignatureValue;
    property KeyInfo: IXMLKeyInfoType_ds read Get_KeyInfo;
  end;

{ IXMLSignedInfoType_ds }

  IXMLSignedInfoType_ds = interface(IXMLNode)
    ['{CC01E0AE-7275-4BD3-A0FF-5CC55D1C1CD0}']
    { Property Accessors }
    function Get_Id: WideString;
    function Get_CanonicalizationMethod: IXMLCanonicalizationMethod_ds;
    function Get_SignatureMethod: IXMLSignatureMethod_ds;
    function Get_Reference: IXMLReferenceType_ds;
    procedure Set_Id(Value: WideString);
    { Methods & Properties }
    property Id: WideString read Get_Id write Set_Id;
    property CanonicalizationMethod: IXMLCanonicalizationMethod_ds read Get_CanonicalizationMethod;
    property SignatureMethod: IXMLSignatureMethod_ds read Get_SignatureMethod;
    property Reference: IXMLReferenceType_ds read Get_Reference;
  end;

{ IXMLCanonicalizationMethod_ds }

  IXMLCanonicalizationMethod_ds = interface(IXMLNode)
    ['{41EF0EFB-8006-4938-A73A-42FFCED8CE14}']
    { Property Accessors }
    function Get_Algorithm: WideString;
    procedure Set_Algorithm(Value: WideString);
    { Methods & Properties }
    property Algorithm: WideString read Get_Algorithm write Set_Algorithm;
  end;

{ IXMLSignatureMethod_ds }

  IXMLSignatureMethod_ds = interface(IXMLNode)
    ['{FF487EC4-4203-46AC-BB11-3F5C088026F2}']
    { Property Accessors }
    function Get_Algorithm: WideString;
    procedure Set_Algorithm(Value: WideString);
    { Methods & Properties }
    property Algorithm: WideString read Get_Algorithm write Set_Algorithm;
  end;

{ IXMLReferenceType_ds }

  IXMLReferenceType_ds = interface(IXMLNode)
    ['{C58B0A44-F629-44B8-937A-31ACD61A04D0}']
    { Property Accessors }
    function Get_Id: WideString;
    function Get_URI: WideString;
    function Get_Type_: WideString;
    function Get_Transforms: IXMLTransformsType_ds;
    function Get_DigestMethod: IXMLDigestMethod_ds;
    function Get_DigestValue: WideString;
    procedure Set_Id(Value: WideString);
    procedure Set_URI(Value: WideString);
    procedure Set_Type_(Value: WideString);
    procedure Set_DigestValue(Value: WideString);
    { Methods & Properties }
    property Id: WideString read Get_Id write Set_Id;
    property URI: WideString read Get_URI write Set_URI;
    property Type_: WideString read Get_Type_ write Set_Type_;
    property Transforms: IXMLTransformsType_ds read Get_Transforms;
    property DigestMethod: IXMLDigestMethod_ds read Get_DigestMethod;
    property DigestValue: WideString read Get_DigestValue write Set_DigestValue;
  end;

{ IXMLTransformsType_ds }

  IXMLTransformsType_ds = interface(IXMLNodeCollection)
    ['{CAF4ECBD-100D-4592-BBD1-0416E2550A5D}']
    { Property Accessors }
    function Get_Transform(Index: Integer): IXMLTransformType_ds;
    { Methods & Properties }
    function Add: IXMLTransformType_ds;
    function Insert(const Index: Integer): IXMLTransformType_ds;
    property Transform[Index: Integer]: IXMLTransformType_ds read Get_Transform; default;
  end;

{ IXMLTransformType_ds }

  IXMLTransformType_ds = interface(IXMLNodeCollection)
    ['{874101CB-BFE1-45BA-BF8F-D56F6AD53F22}']
    { Property Accessors }
    function Get_Algorithm: WideString;
    function Get_XPath(Index: Integer): WideString;
    procedure Set_Algorithm(Value: WideString);
    { Methods & Properties }
    function Add(const XPath: WideString): IXMLNode;
    function Insert(const Index: Integer; const XPath: WideString): IXMLNode;
    property Algorithm: WideString read Get_Algorithm write Set_Algorithm;
    property XPath[Index: Integer]: WideString read Get_XPath; default;
  end;

{ IXMLDigestMethod_ds }

  IXMLDigestMethod_ds = interface(IXMLNode)
    ['{2B73EC12-C0A3-4BD1-858C-5FD12E1625F5}']
    { Property Accessors }
    function Get_Algorithm: WideString;
    procedure Set_Algorithm(Value: WideString);
    { Methods & Properties }
    property Algorithm: WideString read Get_Algorithm write Set_Algorithm;
  end;

{ IXMLSignatureValueType_ds }

  IXMLSignatureValueType_ds = interface(IXMLNode)
    ['{40D978DF-D50D-4783-8CE0-0CFBFA55D739}']
    { Property Accessors }
    function Get_Id: WideString;
    procedure Set_Id(Value: WideString);
    { Methods & Properties }
    property Id: WideString read Get_Id write Set_Id;
  end;

{ IXMLKeyInfoType_ds }

  IXMLKeyInfoType_ds = interface(IXMLNode)
    ['{D8C98B7F-6C70-4361-B188-3E448CCE8264}']
    { Property Accessors }
    function Get_Id: WideString;
    function Get_X509Data: IXMLX509DataType_ds;
    procedure Set_Id(Value: WideString);
    { Methods & Properties }
    property Id: WideString read Get_Id write Set_Id;
    property X509Data: IXMLX509DataType_ds read Get_X509Data;
  end;

{ IXMLX509DataType_ds }

  IXMLX509DataType_ds = interface(IXMLNode)
    ['{032DE806-416E-4033-B240-E716F3C7E2EA}']
    { Property Accessors }
    function Get_X509Certificate: WideString;
    procedure Set_X509Certificate(Value: WideString);
    { Methods & Properties }
    property X509Certificate: WideString read Get_X509Certificate write Set_X509Certificate;
  end;

{ IXMLTRetMDFe }

  IXMLTRetMDFe = interface(IXMLNode)
    ['{4FBE3BF3-A785-4173-A6A6-9A6D93E6BD7C}']
    { Property Accessors }
    function Get_Versao: WideString;
    function Get_TpAmb: WideString;
    function Get_CUF: WideString;
    function Get_VerAplic: WideString;
    function Get_CStat: WideString;
    function Get_XMotivo: WideString;
    function Get_ProtMDFe: IXMLTProtMDFe;
    procedure Set_Versao(Value: WideString);
    procedure Set_TpAmb(Value: WideString);
    procedure Set_CUF(Value: WideString);
    procedure Set_VerAplic(Value: WideString);
    procedure Set_CStat(Value: WideString);
    procedure Set_XMotivo(Value: WideString);
    { Methods & Properties }
    property Versao: WideString read Get_Versao write Set_Versao;
    property TpAmb: WideString read Get_TpAmb write Set_TpAmb;
    property CUF: WideString read Get_CUF write Set_CUF;
    property VerAplic: WideString read Get_VerAplic write Set_VerAplic;
    property CStat: WideString read Get_CStat write Set_CStat;
    property XMotivo: WideString read Get_XMotivo write Set_XMotivo;
    property ProtMDFe: IXMLTProtMDFe read Get_ProtMDFe;
  end;

{ IXMLTProtMDFe }

  IXMLTProtMDFe = interface(IXMLNode)
    ['{27250DED-39EF-4A1D-8695-B8F28876B83C}']
    { Property Accessors }
    function Get_Versao: WideString;
    function Get_InfProt: IXMLInfProt;
    function Get_InfFisco: IXMLInfFisco;
    function Get_Signature: IXMLSignatureType_ds;
    procedure Set_Versao(Value: WideString);
    { Methods & Properties }
    property Versao: WideString read Get_Versao write Set_Versao;
    property InfProt: IXMLInfProt read Get_InfProt;
    property InfFisco: IXMLInfFisco read Get_InfFisco;
    property Signature: IXMLSignatureType_ds read Get_Signature;
  end;

{ IXMLInfProt }

  IXMLInfProt = interface(IXMLNode)
    ['{E4299920-16A1-4381-85FD-42CC77BE9667}']
    { Property Accessors }
    function Get_Id: WideString;
    function Get_TpAmb: WideString;
    function Get_VerAplic: WideString;
    function Get_ChMDFe: WideString;
    function Get_DhRecbto: WideString;
    function Get_NProt: WideString;
    function Get_DigVal: WideString;
    function Get_CStat: WideString;
    function Get_XMotivo: WideString;
    procedure Set_Id(Value: WideString);
    procedure Set_TpAmb(Value: WideString);
    procedure Set_VerAplic(Value: WideString);
    procedure Set_ChMDFe(Value: WideString);
    procedure Set_DhRecbto(Value: WideString);
    procedure Set_NProt(Value: WideString);
    procedure Set_DigVal(Value: WideString);
    procedure Set_CStat(Value: WideString);
    procedure Set_XMotivo(Value: WideString);
    { Methods & Properties }
    property Id: WideString read Get_Id write Set_Id;
    property TpAmb: WideString read Get_TpAmb write Set_TpAmb;
    property VerAplic: WideString read Get_VerAplic write Set_VerAplic;
    property ChMDFe: WideString read Get_ChMDFe write Set_ChMDFe;
    property DhRecbto: WideString read Get_DhRecbto write Set_DhRecbto;
    property NProt: WideString read Get_NProt write Set_NProt;
    property DigVal: WideString read Get_DigVal write Set_DigVal;
    property CStat: WideString read Get_CStat write Set_CStat;
    property XMotivo: WideString read Get_XMotivo write Set_XMotivo;
  end;

{ IXMLInfFisco }

  IXMLInfFisco = interface(IXMLNode)
    ['{47254CA3-8F81-4109-A481-21DF9A01E176}']
    { Property Accessors }
    function Get_CMsg: WideString;
    function Get_XMsg: WideString;
    procedure Set_CMsg(Value: WideString);
    procedure Set_XMsg(Value: WideString);
    { Methods & Properties }
    property CMsg: WideString read Get_CMsg write Set_CMsg;
    property XMsg: WideString read Get_XMsg write Set_XMsg;
  end;

{ IXMLTRetEnviMDFe }

  IXMLTRetEnviMDFe = interface(IXMLNode)
    ['{45B51B18-FCD4-4E8E-8DBD-2D73D564569D}']
    { Property Accessors }
    function Get_Versao: WideString;
    function Get_TpAmb: WideString;
    function Get_CUF: WideString;
    function Get_VerAplic: WideString;
    function Get_CStat: WideString;
    function Get_XMotivo: WideString;
    function Get_InfRec: IXMLInfRec;
    procedure Set_Versao(Value: WideString);
    procedure Set_TpAmb(Value: WideString);
    procedure Set_CUF(Value: WideString);
    procedure Set_VerAplic(Value: WideString);
    procedure Set_CStat(Value: WideString);
    procedure Set_XMotivo(Value: WideString);
    { Methods & Properties }
    property Versao: WideString read Get_Versao write Set_Versao;
    property TpAmb: WideString read Get_TpAmb write Set_TpAmb;
    property CUF: WideString read Get_CUF write Set_CUF;
    property VerAplic: WideString read Get_VerAplic write Set_VerAplic;
    property CStat: WideString read Get_CStat write Set_CStat;
    property XMotivo: WideString read Get_XMotivo write Set_XMotivo;
    property InfRec: IXMLInfRec read Get_InfRec;
  end;

{ IXMLInfRec }

  IXMLInfRec = interface(IXMLNode)
    ['{29CDE8E5-D86D-4E2B-8A45-C42DF743FCCD}']
    { Property Accessors }
    function Get_NRec: WideString;
    function Get_DhRecbto: WideString;
    function Get_TMed: Integer;
    procedure Set_NRec(Value: WideString);
    procedure Set_DhRecbto(Value: WideString);
    procedure Set_TMed(Value: Integer);
    { Methods & Properties }
    property NRec: WideString read Get_NRec write Set_NRec;
    property DhRecbto: WideString read Get_DhRecbto write Set_DhRecbto;
    property TMed: Integer read Get_TMed write Set_TMed;
  end;

{ IXMLTEndereco }

  IXMLTEndereco = interface(IXMLNode)
    ['{4FB1B14D-B272-4313-80BB-D28FDF221FCC}']
    { Property Accessors }
    function Get_XLgr: WideString;
    function Get_Nro: WideString;
    function Get_XCpl: WideString;
    function Get_XBairro: WideString;
    function Get_CMun: WideString;
    function Get_XMun: WideString;
    function Get_CEP: WideString;
    function Get_UF: WideString;
    function Get_CPais: WideString;
    function Get_XPais: WideString;
    procedure Set_XLgr(Value: WideString);
    procedure Set_Nro(Value: WideString);
    procedure Set_XCpl(Value: WideString);
    procedure Set_XBairro(Value: WideString);
    procedure Set_CMun(Value: WideString);
    procedure Set_XMun(Value: WideString);
    procedure Set_CEP(Value: WideString);
    procedure Set_UF(Value: WideString);
    procedure Set_CPais(Value: WideString);
    procedure Set_XPais(Value: WideString);
    { Methods & Properties }
    property XLgr: WideString read Get_XLgr write Set_XLgr;
    property Nro: WideString read Get_Nro write Set_Nro;
    property XCpl: WideString read Get_XCpl write Set_XCpl;
    property XBairro: WideString read Get_XBairro write Set_XBairro;
    property CMun: WideString read Get_CMun write Set_CMun;
    property XMun: WideString read Get_XMun write Set_XMun;
    property CEP: WideString read Get_CEP write Set_CEP;
    property UF: WideString read Get_UF write Set_UF;
    property CPais: WideString read Get_CPais write Set_CPais;
    property XPais: WideString read Get_XPais write Set_XPais;
  end;

{ IXMLTEndernac }

  IXMLTEndernac = interface(IXMLNode)
    ['{CEC2C853-DAA4-4021-85F3-2731237613F5}']
    { Property Accessors }
    function Get_XLgr: WideString;
    function Get_Nro: WideString;
    function Get_XCpl: WideString;
    function Get_XBairro: WideString;
    function Get_CMun: WideString;
    function Get_XMun: WideString;
    function Get_CEP: WideString;
    function Get_UF: WideString;
    procedure Set_XLgr(Value: WideString);
    procedure Set_Nro(Value: WideString);
    procedure Set_XCpl(Value: WideString);
    procedure Set_XBairro(Value: WideString);
    procedure Set_CMun(Value: WideString);
    procedure Set_XMun(Value: WideString);
    procedure Set_CEP(Value: WideString);
    procedure Set_UF(Value: WideString);
    { Methods & Properties }
    property XLgr: WideString read Get_XLgr write Set_XLgr;
    property Nro: WideString read Get_Nro write Set_Nro;
    property XCpl: WideString read Get_XCpl write Set_XCpl;
    property XBairro: WideString read Get_XBairro write Set_XBairro;
    property CMun: WideString read Get_CMun write Set_CMun;
    property XMun: WideString read Get_XMun write Set_XMun;
    property CEP: WideString read Get_CEP write Set_CEP;
    property UF: WideString read Get_UF write Set_UF;
  end;

{ IXMLTEnderFer }

  IXMLTEnderFer = interface(IXMLNode)
    ['{D1019F4D-A0BF-4975-97A1-00BDC68E8796}']
    { Property Accessors }
    function Get_XLgr: WideString;
    function Get_Nro: WideString;
    function Get_XCpl: WideString;
    function Get_XBairro: WideString;
    function Get_CMun: WideString;
    function Get_XMun: WideString;
    function Get_CEP: WideString;
    function Get_UF: WideString;
    procedure Set_XLgr(Value: WideString);
    procedure Set_Nro(Value: WideString);
    procedure Set_XCpl(Value: WideString);
    procedure Set_XBairro(Value: WideString);
    procedure Set_CMun(Value: WideString);
    procedure Set_XMun(Value: WideString);
    procedure Set_CEP(Value: WideString);
    procedure Set_UF(Value: WideString);
    { Methods & Properties }
    property XLgr: WideString read Get_XLgr write Set_XLgr;
    property Nro: WideString read Get_Nro write Set_Nro;
    property XCpl: WideString read Get_XCpl write Set_XCpl;
    property XBairro: WideString read Get_XBairro write Set_XBairro;
    property CMun: WideString read Get_CMun write Set_CMun;
    property XMun: WideString read Get_XMun write Set_XMun;
    property CEP: WideString read Get_CEP write Set_CEP;
    property UF: WideString read Get_UF write Set_UF;
  end;

{ IXMLTEndOrg }

  IXMLTEndOrg = interface(IXMLNode)
    ['{AC207DE3-4E62-45A0-AB45-370D8DBDE77F}']
    { Property Accessors }
    function Get_XLgr: WideString;
    function Get_Nro: WideString;
    function Get_XCpl: WideString;
    function Get_XBairro: WideString;
    function Get_CMun: WideString;
    function Get_XMun: WideString;
    function Get_CEP: WideString;
    function Get_UF: WideString;
    function Get_CPais: WideString;
    function Get_XPais: WideString;
    function Get_Fone: WideString;
    procedure Set_XLgr(Value: WideString);
    procedure Set_Nro(Value: WideString);
    procedure Set_XCpl(Value: WideString);
    procedure Set_XBairro(Value: WideString);
    procedure Set_CMun(Value: WideString);
    procedure Set_XMun(Value: WideString);
    procedure Set_CEP(Value: WideString);
    procedure Set_UF(Value: WideString);
    procedure Set_CPais(Value: WideString);
    procedure Set_XPais(Value: WideString);
    procedure Set_Fone(Value: WideString);
    { Methods & Properties }
    property XLgr: WideString read Get_XLgr write Set_XLgr;
    property Nro: WideString read Get_Nro write Set_Nro;
    property XCpl: WideString read Get_XCpl write Set_XCpl;
    property XBairro: WideString read Get_XBairro write Set_XBairro;
    property CMun: WideString read Get_CMun write Set_CMun;
    property XMun: WideString read Get_XMun write Set_XMun;
    property CEP: WideString read Get_CEP write Set_CEP;
    property UF: WideString read Get_UF write Set_UF;
    property CPais: WideString read Get_CPais write Set_CPais;
    property XPais: WideString read Get_XPais write Set_XPais;
    property Fone: WideString read Get_Fone write Set_Fone;
  end;

{ IXMLTLocal }

  IXMLTLocal = interface(IXMLNode)
    ['{85BB4A0B-9D3C-4881-9976-8B52BEB2F41E}']
    { Property Accessors }
    function Get_CMun: WideString;
    function Get_XMun: WideString;
    function Get_UF: WideString;
    procedure Set_CMun(Value: WideString);
    procedure Set_XMun(Value: WideString);
    procedure Set_UF(Value: WideString);
    { Methods & Properties }
    property CMun: WideString read Get_CMun write Set_CMun;
    property XMun: WideString read Get_XMun write Set_XMun;
    property UF: WideString read Get_UF write Set_UF;
  end;

{ IXMLTEndReEnt }

  IXMLTEndReEnt = interface(IXMLNode)
    ['{ABDA93E3-DF47-4F28-AC1A-5275896C4031}']
    { Property Accessors }
    function Get_CNPJ: WideString;
    function Get_CPF: WideString;
    function Get_XNome: WideString;
    function Get_XLgr: WideString;
    function Get_Nro: WideString;
    function Get_XCpl: WideString;
    function Get_XBairro: WideString;
    function Get_CMun: WideString;
    function Get_XMun: WideString;
    function Get_UF: WideString;
    procedure Set_CNPJ(Value: WideString);
    procedure Set_CPF(Value: WideString);
    procedure Set_XNome(Value: WideString);
    procedure Set_XLgr(Value: WideString);
    procedure Set_Nro(Value: WideString);
    procedure Set_XCpl(Value: WideString);
    procedure Set_XBairro(Value: WideString);
    procedure Set_CMun(Value: WideString);
    procedure Set_XMun(Value: WideString);
    procedure Set_UF(Value: WideString);
    { Methods & Properties }
    property CNPJ: WideString read Get_CNPJ write Set_CNPJ;
    property CPF: WideString read Get_CPF write Set_CPF;
    property XNome: WideString read Get_XNome write Set_XNome;
    property XLgr: WideString read Get_XLgr write Set_XLgr;
    property Nro: WideString read Get_Nro write Set_Nro;
    property XCpl: WideString read Get_XCpl write Set_XCpl;
    property XBairro: WideString read Get_XBairro write Set_XBairro;
    property CMun: WideString read Get_CMun write Set_CMun;
    property XMun: WideString read Get_XMun write Set_XMun;
    property UF: WideString read Get_UF write Set_UF;
  end;

{ IXMLTNFeNF }

  IXMLTNFeNF = interface(IXMLNode)
    ['{43357FF5-56C3-49B2-A61A-90477321F7C5}']
    { Property Accessors }
    function Get_InfNFe: IXMLInfNFe;
    function Get_InfNF: IXMLInfNF;
    { Methods & Properties }
    property InfNFe: IXMLInfNFe read Get_InfNFe;
    property InfNF: IXMLInfNF read Get_InfNF;
  end;

{ IXMLInfNF }

  IXMLInfNF = interface(IXMLNode)
    ['{9E1E86F4-61B4-4804-87DF-592D85D72FC4}']
    { Property Accessors }
    function Get_Emi: IXMLEmi;
    function Get_Dest: IXMLDest;
    function Get_Serie: WideString;
    function Get_NNF: WideString;
    function Get_DEmi: WideString;
    function Get_VNF: WideString;
    function Get_PIN: WideString;
    procedure Set_Serie(Value: WideString);
    procedure Set_NNF(Value: WideString);
    procedure Set_DEmi(Value: WideString);
    procedure Set_VNF(Value: WideString);
    procedure Set_PIN(Value: WideString);
    { Methods & Properties }
    property Emi: IXMLEmi read Get_Emi;
    property Dest: IXMLDest read Get_Dest;
    property Serie: WideString read Get_Serie write Set_Serie;
    property NNF: WideString read Get_NNF write Set_NNF;
    property DEmi: WideString read Get_DEmi write Set_DEmi;
    property VNF: WideString read Get_VNF write Set_VNF;
    property PIN: WideString read Get_PIN write Set_PIN;
  end;

{ IXMLEmi }

  IXMLEmi = interface(IXMLNode)
    ['{E863C7AE-D7B6-4B10-AEFA-DB731BF32288}']
    { Property Accessors }
    function Get_CNPJ: WideString;
    function Get_XNome: WideString;
    function Get_UF: WideString;
    procedure Set_CNPJ(Value: WideString);
    procedure Set_XNome(Value: WideString);
    procedure Set_UF(Value: WideString);
    { Methods & Properties }
    property CNPJ: WideString read Get_CNPJ write Set_CNPJ;
    property XNome: WideString read Get_XNome write Set_XNome;
    property UF: WideString read Get_UF write Set_UF;
  end;

{ IXMLDest }

  IXMLDest = interface(IXMLNode)
    ['{9DB0EE0A-3929-464E-A42D-C2331F3131B6}']
    { Property Accessors }
    function Get_CNPJ: WideString;
    function Get_CPF: WideString;
    function Get_XNome: WideString;
    function Get_UF: WideString;
    procedure Set_CNPJ(Value: WideString);
    procedure Set_CPF(Value: WideString);
    procedure Set_XNome(Value: WideString);
    procedure Set_UF(Value: WideString);
    { Methods & Properties }
    property CNPJ: WideString read Get_CNPJ write Set_CNPJ;
    property CPF: WideString read Get_CPF write Set_CPF;
    property XNome: WideString read Get_XNome write Set_XNome;
    property UF: WideString read Get_UF write Set_UF;
  end;

{ IXMLNAverList }

  IXMLNAverList = interface(IXMLNodeCollection)
    ['{54886B12-7653-4FDB-B764-7434E8B741BD}']
    { Methods & Properties }
    function Add(const Value: WideString): IXMLNode;
    function Insert(const Index: Integer; const Value: WideString): IXMLNode;

    function Get_Item(Index: Integer): WideString;
    property Items[Index: Integer]: WideString read Get_Item; default;
  end;

{ Forward Decls }

  TXMLTEnviMDFe = class;
  TXMLTMDFe = class;
  TXMLInfMDFe = class;
  TXMLIde = class;
  TXMLInfMunCarrega = class;
  TXMLInfMunCarregaList = class;
  TXMLInfPercurso = class;
  TXMLInfPercursoList = class;
  TXMLEmit = class;
  TXMLTEndeEmi = class;
  TXMLInfModal = class;
  TXMLInfDoc = class;
  TXMLInfMunDescarga = class;
  TXMLInfCTe = class;
  TXMLInfCTeList = class;
  TXMLTUnidadeTransp = class;
  TXMLTUnidadeTranspList = class;
  TXMLLacUnidTransp = class;
  TXMLLacUnidTranspList = class;
  TXMLTUnidCarga = class;
  TXMLTUnidCargaList = class;
  TXMLLacUnidCarga = class;
  TXMLLacUnidCargaList = class;
  TXMLPeri = class;
  TXMLPeriList = class;
  TXMLInfEntregaParcial = class;
  TXMLInfNFe = class;
  TXMLInfNFeList = class;
  TXMLInfMDFeTransp = class;
  TXMLInfMDFeTranspList = class;
  TXMLSeg = class;
  TXMLSegList = class;
  TXMLInfResp = class;
  TXMLInfSeg = class;
  TXMLTot = class;
  TXMLLacres = class;
  TXMLLacresList = class;
  TXMLAutXML = class;
  TXMLAutXMLList = class;
  TXMLInfAdic = class;
  TXMLTRespTec = class;
  TXMLInfMDFeSupl = class;
  TXMLSignatureType_ds = class;
  TXMLSignedInfoType_ds = class;
  TXMLCanonicalizationMethod_ds = class;
  TXMLSignatureMethod_ds = class;
  TXMLReferenceType_ds = class;
  TXMLTransformsType_ds = class;
  TXMLTransformType_ds = class;
  TXMLDigestMethod_ds = class;
  TXMLSignatureValueType_ds = class;
  TXMLKeyInfoType_ds = class;
  TXMLX509DataType_ds = class;
  TXMLTRetMDFe = class;
  TXMLTProtMDFe = class;
  TXMLInfProt = class;
  TXMLInfFisco = class;
  TXMLTRetEnviMDFe = class;
  TXMLInfRec = class;
  TXMLTEndereco = class;
  TXMLTEndernac = class;
  TXMLTEnderFer = class;
  TXMLTEndOrg = class;
  TXMLTLocal = class;
  TXMLTEndReEnt = class;
  TXMLTNFeNF = class;
  TXMLInfNF = class;
  TXMLEmi = class;
  TXMLDest = class;
  TXMLNAverList = class;

{ TXMLTEnviMDFe }

  TXMLTEnviMDFe = class(TXMLNode, IXMLTEnviMDFe)
  protected
    { IXMLTEnviMDFe }
    function Get_Versao: WideString;
    function Get_IdLote: WideString;
    function Get_MDFe: IXMLTMDFe;
    procedure Set_Versao(Value: WideString);
    procedure Set_IdLote(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLTMDFe }

  TXMLTMDFe = class(TXMLNode, IXMLTMDFe)
  protected
    { IXMLTMDFe }
    function Get_InfMDFe: IXMLInfMDFe;
    function Get_InfMDFeSupl: IXMLInfMDFeSupl;
    function Get_Signature: IXMLSignatureType_ds;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLInfMDFe }

  TXMLInfMDFe = class(TXMLNode, IXMLInfMDFe)
  private
    FSeg: IXMLSegList;
    FLacres: IXMLLacresList;
    FAutXML: IXMLAutXMLList;
  protected
    { IXMLInfMDFe }
    function Get_Versao: WideString;
    function Get_Id: WideString;
    function Get_Ide: IXMLIde;
    function Get_Emit: IXMLEmit;
    function Get_InfModal: IXMLInfModal;
    function Get_InfDoc: IXMLInfDoc;
    function Get_Seg: IXMLSegList;
    function Get_Tot: IXMLTot;
    function Get_Lacres: IXMLLacresList;
    function Get_AutXML: IXMLAutXMLList;
    function Get_InfAdic: IXMLInfAdic;
    function Get_InfRespTec: IXMLTRespTec;
    procedure Set_Versao(Value: WideString);
    procedure Set_Id(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLIde }

  TXMLIde = class(TXMLNode, IXMLIde)
  private
    FInfMunCarrega: IXMLInfMunCarregaList;
    FInfPercurso: IXMLInfPercursoList;
  protected
    { IXMLIde }
    function Get_CUF: WideString;
    function Get_TpAmb: WideString;
    function Get_TpEmit: WideString;
    function Get_TpTransp: WideString;
    function Get_Mod_: WideString;
    function Get_Serie: WideString;
    function Get_NMDF: WideString;
    function Get_CMDF: WideString;
    function Get_CDV: WideString;
    function Get_Modal: WideString;
    function Get_DhEmi: WideString;
    function Get_TpEmis: WideString;
    function Get_ProcEmi: WideString;
    function Get_VerProc: WideString;
    function Get_UFIni: WideString;
    function Get_UFFim: WideString;
    function Get_InfMunCarrega: IXMLInfMunCarregaList;
    function Get_InfPercurso: IXMLInfPercursoList;
    function Get_DhIniViagem: WideString;
    function Get_IndCanalVerde: WideString;
    function Get_IndCarregaPosterior: WideString;
    procedure Set_CUF(Value: WideString);
    procedure Set_TpAmb(Value: WideString);
    procedure Set_TpEmit(Value: WideString);
    procedure Set_TpTransp(Value: WideString);
    procedure Set_Mod_(Value: WideString);
    procedure Set_Serie(Value: WideString);
    procedure Set_NMDF(Value: WideString);
    procedure Set_CMDF(Value: WideString);
    procedure Set_CDV(Value: WideString);
    procedure Set_Modal(Value: WideString);
    procedure Set_DhEmi(Value: WideString);
    procedure Set_TpEmis(Value: WideString);
    procedure Set_ProcEmi(Value: WideString);
    procedure Set_VerProc(Value: WideString);
    procedure Set_UFIni(Value: WideString);
    procedure Set_UFFim(Value: WideString);
    procedure Set_DhIniViagem(Value: WideString);
    procedure Set_IndCanalVerde(Value: WideString);
    procedure Set_IndCarregaPosterior(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLInfMunCarrega }

  TXMLInfMunCarrega = class(TXMLNode, IXMLInfMunCarrega)
  protected
    { IXMLInfMunCarrega }
    function Get_CMunCarrega: WideString;
    function Get_XMunCarrega: WideString;
    procedure Set_CMunCarrega(Value: WideString);
    procedure Set_XMunCarrega(Value: WideString);
  end;

{ TXMLInfMunCarregaList }

  TXMLInfMunCarregaList = class(TXMLNodeCollection, IXMLInfMunCarregaList)
  protected
    { IXMLInfMunCarregaList }
    function Add: IXMLInfMunCarrega;
    function Insert(const Index: Integer): IXMLInfMunCarrega;

    function Get_Item(Index: Integer): IXMLInfMunCarrega;
  end;

{ TXMLInfPercurso }

  TXMLInfPercurso = class(TXMLNode, IXMLInfPercurso)
  protected
    { IXMLInfPercurso }
    function Get_UFPer: WideString;
    procedure Set_UFPer(Value: WideString);
  end;

{ TXMLInfPercursoList }

  TXMLInfPercursoList = class(TXMLNodeCollection, IXMLInfPercursoList)
  protected
    { IXMLInfPercursoList }
    function Add: IXMLInfPercurso;
    function Insert(const Index: Integer): IXMLInfPercurso;

    function Get_Item(Index: Integer): IXMLInfPercurso;
  end;

{ TXMLEmit }

  TXMLEmit = class(TXMLNode, IXMLEmit)
  protected
    { IXMLEmit }
    function Get_CNPJ: WideString;
    function Get_CPF: WideString;
    function Get_IE: WideString;
    function Get_XNome: WideString;
    function Get_XFant: WideString;
    function Get_EnderEmit: IXMLTEndeEmi;
    procedure Set_CNPJ(Value: WideString);
    procedure Set_CPF(Value: WideString);
    procedure Set_IE(Value: WideString);
    procedure Set_XNome(Value: WideString);
    procedure Set_XFant(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLTEndeEmi }

  TXMLTEndeEmi = class(TXMLNode, IXMLTEndeEmi)
  protected
    { IXMLTEndeEmi }
    function Get_XLgr: WideString;
    function Get_Nro: WideString;
    function Get_XCpl: WideString;
    function Get_XBairro: WideString;
    function Get_CMun: WideString;
    function Get_XMun: WideString;
    function Get_CEP: WideString;
    function Get_UF: WideString;
    function Get_Fone: WideString;
    function Get_Email: WideString;
    procedure Set_XLgr(Value: WideString);
    procedure Set_Nro(Value: WideString);
    procedure Set_XCpl(Value: WideString);
    procedure Set_XBairro(Value: WideString);
    procedure Set_CMun(Value: WideString);
    procedure Set_XMun(Value: WideString);
    procedure Set_CEP(Value: WideString);
    procedure Set_UF(Value: WideString);
    procedure Set_Fone(Value: WideString);
    procedure Set_Email(Value: WideString);
  end;

{ TXMLInfModal }

  TXMLInfModal = class(TXMLNode, IXMLInfModal)
  protected
    { IXMLInfModal }
    function Get_VersaoModal: WideString;
    procedure Set_VersaoModal(Value: WideString);
  end;

{ TXMLInfDoc }

  TXMLInfDoc = class(TXMLNodeCollection, IXMLInfDoc)
  protected
    { IXMLInfDoc }
    function Get_InfMunDescarga(Index: Integer): IXMLInfMunDescarga;
    function Add: IXMLInfMunDescarga;
    function Insert(const Index: Integer): IXMLInfMunDescarga;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLInfMunDescarga }

  TXMLInfMunDescarga = class(TXMLNode, IXMLInfMunDescarga)
  private
    FInfCTe: IXMLInfCTeList;
    FInfNFe: IXMLInfNFeList;
    FInfMDFeTransp: IXMLInfMDFeTranspList;
  protected
    { IXMLInfMunDescarga }
    function Get_CMunDescarga: WideString;
    function Get_XMunDescarga: WideString;
    function Get_InfCTe: IXMLInfCTeList;
    function Get_InfNFe: IXMLInfNFeList;
    function Get_InfMDFeTransp: IXMLInfMDFeTranspList;
    procedure Set_CMunDescarga(Value: WideString);
    procedure Set_XMunDescarga(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLInfCTe }

  TXMLInfCTe = class(TXMLNode, IXMLInfCTe)
  private
    FInfUnidTransp: IXMLTUnidadeTranspList;
    FPeri: IXMLPeriList;
  protected
    { IXMLInfCTe }
    function Get_ChCTe: WideString;
    function Get_SegCodBarra: WideString;
    function Get_IndReentrega: WideString;
    function Get_InfUnidTransp: IXMLTUnidadeTranspList;
    function Get_Peri: IXMLPeriList;
    function Get_InfEntregaParcial: IXMLInfEntregaParcial;
    procedure Set_ChCTe(Value: WideString);
    procedure Set_SegCodBarra(Value: WideString);
    procedure Set_IndReentrega(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLInfCTeList }

  TXMLInfCTeList = class(TXMLNodeCollection, IXMLInfCTeList)
  protected
    { IXMLInfCTeList }
    function Add: IXMLInfCTe;
    function Insert(const Index: Integer): IXMLInfCTe;

    function Get_Item(Index: Integer): IXMLInfCTe;
  end;

{ TXMLTUnidadeTransp }

  TXMLTUnidadeTransp = class(TXMLNode, IXMLTUnidadeTransp)
  private
    FLacUnidTransp: IXMLLacUnidTranspList;
    FInfUnidCarga: IXMLTUnidCargaList;
  protected
    { IXMLTUnidadeTransp }
    function Get_TpUnidTransp: WideString;
    function Get_IdUnidTransp: WideString;
    function Get_LacUnidTransp: IXMLLacUnidTranspList;
    function Get_InfUnidCarga: IXMLTUnidCargaList;
    function Get_QtdRat: WideString;
    procedure Set_TpUnidTransp(Value: WideString);
    procedure Set_IdUnidTransp(Value: WideString);
    procedure Set_QtdRat(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLTUnidadeTranspList }

  TXMLTUnidadeTranspList = class(TXMLNodeCollection, IXMLTUnidadeTranspList)
  protected
    { IXMLTUnidadeTranspList }
    function Add: IXMLTUnidadeTransp;
    function Insert(const Index: Integer): IXMLTUnidadeTransp;

    function Get_Item(Index: Integer): IXMLTUnidadeTransp;
  end;

{ TXMLLacUnidTransp }

  TXMLLacUnidTransp = class(TXMLNode, IXMLLacUnidTransp)
  protected
    { IXMLLacUnidTransp }
    function Get_NLacre: WideString;
    procedure Set_NLacre(Value: WideString);
  end;

{ TXMLLacUnidTranspList }

  TXMLLacUnidTranspList = class(TXMLNodeCollection, IXMLLacUnidTranspList)
  protected
    { IXMLLacUnidTranspList }
    function Add: IXMLLacUnidTransp;
    function Insert(const Index: Integer): IXMLLacUnidTransp;

    function Get_Item(Index: Integer): IXMLLacUnidTransp;
  end;

{ TXMLTUnidCarga }

  TXMLTUnidCarga = class(TXMLNode, IXMLTUnidCarga)
  private
    FLacUnidCarga: IXMLLacUnidCargaList;
  protected
    { IXMLTUnidCarga }
    function Get_TpUnidCarga: WideString;
    function Get_IdUnidCarga: WideString;
    function Get_LacUnidCarga: IXMLLacUnidCargaList;
    function Get_QtdRat: WideString;
    procedure Set_TpUnidCarga(Value: WideString);
    procedure Set_IdUnidCarga(Value: WideString);
    procedure Set_QtdRat(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLTUnidCargaList }

  TXMLTUnidCargaList = class(TXMLNodeCollection, IXMLTUnidCargaList)
  protected
    { IXMLTUnidCargaList }
    function Add: IXMLTUnidCarga;
    function Insert(const Index: Integer): IXMLTUnidCarga;

    function Get_Item(Index: Integer): IXMLTUnidCarga;
  end;

{ TXMLLacUnidCarga }

  TXMLLacUnidCarga = class(TXMLNode, IXMLLacUnidCarga)
  protected
    { IXMLLacUnidCarga }
    function Get_NLacre: WideString;
    procedure Set_NLacre(Value: WideString);
  end;

{ TXMLLacUnidCargaList }

  TXMLLacUnidCargaList = class(TXMLNodeCollection, IXMLLacUnidCargaList)
  protected
    { IXMLLacUnidCargaList }
    function Add: IXMLLacUnidCarga;
    function Insert(const Index: Integer): IXMLLacUnidCarga;

    function Get_Item(Index: Integer): IXMLLacUnidCarga;
  end;

{ TXMLPeri }

  TXMLPeri = class(TXMLNode, IXMLPeri)
  protected
    { IXMLPeri }
    function Get_NONU: WideString;
    function Get_XNomeAE: WideString;
    function Get_XClaRisco: WideString;
    function Get_GrEmb: WideString;
    function Get_QTotProd: WideString;
    function Get_QVolTipo: WideString;
    procedure Set_NONU(Value: WideString);
    procedure Set_XNomeAE(Value: WideString);
    procedure Set_XClaRisco(Value: WideString);
    procedure Set_GrEmb(Value: WideString);
    procedure Set_QTotProd(Value: WideString);
    procedure Set_QVolTipo(Value: WideString);
  end;

{ TXMLPeriList }

  TXMLPeriList = class(TXMLNodeCollection, IXMLPeriList)
  protected
    { IXMLPeriList }
    function Add: IXMLPeri;
    function Insert(const Index: Integer): IXMLPeri;

    function Get_Item(Index: Integer): IXMLPeri;
  end;

{ TXMLInfEntregaParcial }

  TXMLInfEntregaParcial = class(TXMLNode, IXMLInfEntregaParcial)
  protected
    { IXMLInfEntregaParcial }
    function Get_QtdTotal: WideString;
    function Get_QtdParcial: WideString;
    procedure Set_QtdTotal(Value: WideString);
    procedure Set_QtdParcial(Value: WideString);
  end;

{ TXMLInfNFe }

  TXMLInfNFe = class(TXMLNode, IXMLInfNFe)
  private
    FInfUnidTransp: IXMLTUnidadeTranspList;
    FPeri: IXMLPeriList;
  protected
    { IXMLInfNFe }
    function Get_ChNFe: WideString;
    function Get_SegCodBarra: WideString;
    function Get_IndReentrega: WideString;
    function Get_InfUnidTransp: IXMLTUnidadeTranspList;
    function Get_Peri: IXMLPeriList;
    procedure Set_ChNFe(Value: WideString);
    procedure Set_SegCodBarra(Value: WideString);
    procedure Set_IndReentrega(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLInfNFeList }

  TXMLInfNFeList = class(TXMLNodeCollection, IXMLInfNFeList)
  protected
    { IXMLInfNFeList }
    function Add: IXMLInfNFe;
    function Insert(const Index: Integer): IXMLInfNFe;

    function Get_Item(Index: Integer): IXMLInfNFe;
  end;

{ TXMLInfMDFeTransp }

  TXMLInfMDFeTransp = class(TXMLNode, IXMLInfMDFeTransp)
  private
    FInfUnidTransp: IXMLTUnidadeTranspList;
    FPeri: IXMLPeriList;
  protected
    { IXMLInfMDFeTransp }
    function Get_ChMDFe: WideString;
    function Get_IndReentrega: WideString;
    function Get_InfUnidTransp: IXMLTUnidadeTranspList;
    function Get_Peri: IXMLPeriList;
    procedure Set_ChMDFe(Value: WideString);
    procedure Set_IndReentrega(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLInfMDFeTranspList }

  TXMLInfMDFeTranspList = class(TXMLNodeCollection, IXMLInfMDFeTranspList)
  protected
    { IXMLInfMDFeTranspList }
    function Add: IXMLInfMDFeTransp;
    function Insert(const Index: Integer): IXMLInfMDFeTransp;

    function Get_Item(Index: Integer): IXMLInfMDFeTransp;
  end;

{ TXMLSeg }

  TXMLSeg = class(TXMLNode, IXMLSeg)
  private
    FNAver: IXMLNAverList;
  protected
    { IXMLSeg }
    function Get_InfResp: IXMLInfResp;
    function Get_InfSeg: IXMLInfSeg;
    function Get_NApol: WideString;
    function Get_NAver: IXMLNAverList;
    procedure Set_NApol(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLSegList }

  TXMLSegList = class(TXMLNodeCollection, IXMLSegList)
  protected
    { IXMLSegList }
    function Add: IXMLSeg;
    function Insert(const Index: Integer): IXMLSeg;

    function Get_Item(Index: Integer): IXMLSeg;
  end;

{ TXMLInfResp }

  TXMLInfResp = class(TXMLNode, IXMLInfResp)
  protected
    { IXMLInfResp }
    function Get_RespSeg: WideString;
    function Get_CNPJ: WideString;
    function Get_CPF: WideString;
    procedure Set_RespSeg(Value: WideString);
    procedure Set_CNPJ(Value: WideString);
    procedure Set_CPF(Value: WideString);
  end;

{ TXMLInfSeg }

  TXMLInfSeg = class(TXMLNode, IXMLInfSeg)
  protected
    { IXMLInfSeg }
    function Get_XSeg: WideString;
    function Get_CNPJ: WideString;
    procedure Set_XSeg(Value: WideString);
    procedure Set_CNPJ(Value: WideString);
  end;

{ TXMLTot }

  TXMLTot = class(TXMLNode, IXMLTot)
  protected
    { IXMLTot }
    function Get_QCTe: WideString;
    function Get_QNFe: WideString;
    function Get_QMDFe: WideString;
    function Get_VCarga: WideString;
    function Get_CUnid: WideString;
    function Get_QCarga: WideString;
    procedure Set_QCTe(Value: WideString);
    procedure Set_QNFe(Value: WideString);
    procedure Set_QMDFe(Value: WideString);
    procedure Set_VCarga(Value: WideString);
    procedure Set_CUnid(Value: WideString);
    procedure Set_QCarga(Value: WideString);
  end;

{ TXMLLacres }

  TXMLLacres = class(TXMLNode, IXMLLacres)
  protected
    { IXMLLacres }
    function Get_NLacre: WideString;
    procedure Set_NLacre(Value: WideString);
  end;

{ TXMLLacresList }

  TXMLLacresList = class(TXMLNodeCollection, IXMLLacresList)
  protected
    { IXMLLacresList }
    function Add: IXMLLacres;
    function Insert(const Index: Integer): IXMLLacres;

    function Get_Item(Index: Integer): IXMLLacres;
  end;

{ TXMLAutXML }

  TXMLAutXML = class(TXMLNode, IXMLAutXML)
  protected
    { IXMLAutXML }
    function Get_CNPJ: WideString;
    function Get_CPF: WideString;
    procedure Set_CNPJ(Value: WideString);
    procedure Set_CPF(Value: WideString);
  end;

{ TXMLAutXMLList }

  TXMLAutXMLList = class(TXMLNodeCollection, IXMLAutXMLList)
  protected
    { IXMLAutXMLList }
    function Add: IXMLAutXML;
    function Insert(const Index: Integer): IXMLAutXML;

    function Get_Item(Index: Integer): IXMLAutXML;
  end;

{ TXMLInfAdic }

  TXMLInfAdic = class(TXMLNode, IXMLInfAdic)
  protected
    { IXMLInfAdic }
    function Get_InfAdFisco: WideString;
    function Get_InfCpl: WideString;
    procedure Set_InfAdFisco(Value: WideString);
    procedure Set_InfCpl(Value: WideString);
  end;

{ TXMLTRespTec }

  TXMLTRespTec = class(TXMLNode, IXMLTRespTec)
  protected
    { IXMLTRespTec }
    function Get_CNPJ: WideString;
    function Get_XContato: WideString;
    function Get_Email: WideString;
    function Get_Fone: WideString;
    function Get_IdCSRT: WideString;
    function Get_HashCSRT: WideString;
    procedure Set_CNPJ(Value: WideString);
    procedure Set_XContato(Value: WideString);
    procedure Set_Email(Value: WideString);
    procedure Set_Fone(Value: WideString);
    procedure Set_IdCSRT(Value: WideString);
    procedure Set_HashCSRT(Value: WideString);
  end;

{ TXMLInfMDFeSupl }

  TXMLInfMDFeSupl = class(TXMLNode, IXMLInfMDFeSupl)
  protected
    { IXMLInfMDFeSupl }
    function Get_QrCodMDFe: WideString;
    procedure Set_QrCodMDFe(Value: WideString);
  end;

{ TXMLSignatureType_ds }

  TXMLSignatureType_ds = class(TXMLNode, IXMLSignatureType_ds)
  protected
    { IXMLSignatureType_ds }
    function Get_Id: WideString;
    function Get_SignedInfo: IXMLSignedInfoType_ds;
    function Get_SignatureValue: IXMLSignatureValueType_ds;
    function Get_KeyInfo: IXMLKeyInfoType_ds;
    procedure Set_Id(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLSignedInfoType_ds }

  TXMLSignedInfoType_ds = class(TXMLNode, IXMLSignedInfoType_ds)
  protected
    { IXMLSignedInfoType_ds }
    function Get_Id: WideString;
    function Get_CanonicalizationMethod: IXMLCanonicalizationMethod_ds;
    function Get_SignatureMethod: IXMLSignatureMethod_ds;
    function Get_Reference: IXMLReferenceType_ds;
    procedure Set_Id(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCanonicalizationMethod_ds }

  TXMLCanonicalizationMethod_ds = class(TXMLNode, IXMLCanonicalizationMethod_ds)
  protected
    { IXMLCanonicalizationMethod_ds }
    function Get_Algorithm: WideString;
    procedure Set_Algorithm(Value: WideString);
  end;

{ TXMLSignatureMethod_ds }

  TXMLSignatureMethod_ds = class(TXMLNode, IXMLSignatureMethod_ds)
  protected
    { IXMLSignatureMethod_ds }
    function Get_Algorithm: WideString;
    procedure Set_Algorithm(Value: WideString);
  end;

{ TXMLReferenceType_ds }

  TXMLReferenceType_ds = class(TXMLNode, IXMLReferenceType_ds)
  protected
    { IXMLReferenceType_ds }
    function Get_Id: WideString;
    function Get_URI: WideString;
    function Get_Type_: WideString;
    function Get_Transforms: IXMLTransformsType_ds;
    function Get_DigestMethod: IXMLDigestMethod_ds;
    function Get_DigestValue: WideString;
    procedure Set_Id(Value: WideString);
    procedure Set_URI(Value: WideString);
    procedure Set_Type_(Value: WideString);
    procedure Set_DigestValue(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLTransformsType_ds }

  TXMLTransformsType_ds = class(TXMLNodeCollection, IXMLTransformsType_ds)
  protected
    { IXMLTransformsType_ds }
    function Get_Transform(Index: Integer): IXMLTransformType_ds;
    function Add: IXMLTransformType_ds;
    function Insert(const Index: Integer): IXMLTransformType_ds;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLTransformType_ds }

  TXMLTransformType_ds = class(TXMLNodeCollection, IXMLTransformType_ds)
  protected
    { IXMLTransformType_ds }
    function Get_Algorithm: WideString;
    function Get_XPath(Index: Integer): WideString;
    procedure Set_Algorithm(Value: WideString);
    function Add(const XPath: WideString): IXMLNode;
    function Insert(const Index: Integer; const XPath: WideString): IXMLNode;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLDigestMethod_ds }

  TXMLDigestMethod_ds = class(TXMLNode, IXMLDigestMethod_ds)
  protected
    { IXMLDigestMethod_ds }
    function Get_Algorithm: WideString;
    procedure Set_Algorithm(Value: WideString);
  end;

{ TXMLSignatureValueType_ds }

  TXMLSignatureValueType_ds = class(TXMLNode, IXMLSignatureValueType_ds)
  protected
    { IXMLSignatureValueType_ds }
    function Get_Id: WideString;
    procedure Set_Id(Value: WideString);
  end;

{ TXMLKeyInfoType_ds }

  TXMLKeyInfoType_ds = class(TXMLNode, IXMLKeyInfoType_ds)
  protected
    { IXMLKeyInfoType_ds }
    function Get_Id: WideString;
    function Get_X509Data: IXMLX509DataType_ds;
    procedure Set_Id(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLX509DataType_ds }

  TXMLX509DataType_ds = class(TXMLNode, IXMLX509DataType_ds)
  protected
    { IXMLX509DataType_ds }
    function Get_X509Certificate: WideString;
    procedure Set_X509Certificate(Value: WideString);
  end;

{ TXMLTRetMDFe }

  TXMLTRetMDFe = class(TXMLNode, IXMLTRetMDFe)
  protected
    { IXMLTRetMDFe }
    function Get_Versao: WideString;
    function Get_TpAmb: WideString;
    function Get_CUF: WideString;
    function Get_VerAplic: WideString;
    function Get_CStat: WideString;
    function Get_XMotivo: WideString;
    function Get_ProtMDFe: IXMLTProtMDFe;
    procedure Set_Versao(Value: WideString);
    procedure Set_TpAmb(Value: WideString);
    procedure Set_CUF(Value: WideString);
    procedure Set_VerAplic(Value: WideString);
    procedure Set_CStat(Value: WideString);
    procedure Set_XMotivo(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLTProtMDFe }

  TXMLTProtMDFe = class(TXMLNode, IXMLTProtMDFe)
  protected
    { IXMLTProtMDFe }
    function Get_Versao: WideString;
    function Get_InfProt: IXMLInfProt;
    function Get_InfFisco: IXMLInfFisco;
    function Get_Signature: IXMLSignatureType_ds;
    procedure Set_Versao(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLInfProt }

  TXMLInfProt = class(TXMLNode, IXMLInfProt)
  protected
    { IXMLInfProt }
    function Get_Id: WideString;
    function Get_TpAmb: WideString;
    function Get_VerAplic: WideString;
    function Get_ChMDFe: WideString;
    function Get_DhRecbto: WideString;
    function Get_NProt: WideString;
    function Get_DigVal: WideString;
    function Get_CStat: WideString;
    function Get_XMotivo: WideString;
    procedure Set_Id(Value: WideString);
    procedure Set_TpAmb(Value: WideString);
    procedure Set_VerAplic(Value: WideString);
    procedure Set_ChMDFe(Value: WideString);
    procedure Set_DhRecbto(Value: WideString);
    procedure Set_NProt(Value: WideString);
    procedure Set_DigVal(Value: WideString);
    procedure Set_CStat(Value: WideString);
    procedure Set_XMotivo(Value: WideString);
  end;

{ TXMLInfFisco }

  TXMLInfFisco = class(TXMLNode, IXMLInfFisco)
  protected
    { IXMLInfFisco }
    function Get_CMsg: WideString;
    function Get_XMsg: WideString;
    procedure Set_CMsg(Value: WideString);
    procedure Set_XMsg(Value: WideString);
  end;

{ TXMLTRetEnviMDFe }

  TXMLTRetEnviMDFe = class(TXMLNode, IXMLTRetEnviMDFe)
  protected
    { IXMLTRetEnviMDFe }
    function Get_Versao: WideString;
    function Get_TpAmb: WideString;
    function Get_CUF: WideString;
    function Get_VerAplic: WideString;
    function Get_CStat: WideString;
    function Get_XMotivo: WideString;
    function Get_InfRec: IXMLInfRec;
    procedure Set_Versao(Value: WideString);
    procedure Set_TpAmb(Value: WideString);
    procedure Set_CUF(Value: WideString);
    procedure Set_VerAplic(Value: WideString);
    procedure Set_CStat(Value: WideString);
    procedure Set_XMotivo(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLInfRec }

  TXMLInfRec = class(TXMLNode, IXMLInfRec)
  protected
    { IXMLInfRec }
    function Get_NRec: WideString;
    function Get_DhRecbto: WideString;
    function Get_TMed: Integer;
    procedure Set_NRec(Value: WideString);
    procedure Set_DhRecbto(Value: WideString);
    procedure Set_TMed(Value: Integer);
  end;

{ TXMLTEndereco }

  TXMLTEndereco = class(TXMLNode, IXMLTEndereco)
  protected
    { IXMLTEndereco }
    function Get_XLgr: WideString;
    function Get_Nro: WideString;
    function Get_XCpl: WideString;
    function Get_XBairro: WideString;
    function Get_CMun: WideString;
    function Get_XMun: WideString;
    function Get_CEP: WideString;
    function Get_UF: WideString;
    function Get_CPais: WideString;
    function Get_XPais: WideString;
    procedure Set_XLgr(Value: WideString);
    procedure Set_Nro(Value: WideString);
    procedure Set_XCpl(Value: WideString);
    procedure Set_XBairro(Value: WideString);
    procedure Set_CMun(Value: WideString);
    procedure Set_XMun(Value: WideString);
    procedure Set_CEP(Value: WideString);
    procedure Set_UF(Value: WideString);
    procedure Set_CPais(Value: WideString);
    procedure Set_XPais(Value: WideString);
  end;

{ TXMLTEndernac }

  TXMLTEndernac = class(TXMLNode, IXMLTEndernac)
  protected
    { IXMLTEndernac }
    function Get_XLgr: WideString;
    function Get_Nro: WideString;
    function Get_XCpl: WideString;
    function Get_XBairro: WideString;
    function Get_CMun: WideString;
    function Get_XMun: WideString;
    function Get_CEP: WideString;
    function Get_UF: WideString;
    procedure Set_XLgr(Value: WideString);
    procedure Set_Nro(Value: WideString);
    procedure Set_XCpl(Value: WideString);
    procedure Set_XBairro(Value: WideString);
    procedure Set_CMun(Value: WideString);
    procedure Set_XMun(Value: WideString);
    procedure Set_CEP(Value: WideString);
    procedure Set_UF(Value: WideString);
  end;

{ TXMLTEnderFer }

  TXMLTEnderFer = class(TXMLNode, IXMLTEnderFer)
  protected
    { IXMLTEnderFer }
    function Get_XLgr: WideString;
    function Get_Nro: WideString;
    function Get_XCpl: WideString;
    function Get_XBairro: WideString;
    function Get_CMun: WideString;
    function Get_XMun: WideString;
    function Get_CEP: WideString;
    function Get_UF: WideString;
    procedure Set_XLgr(Value: WideString);
    procedure Set_Nro(Value: WideString);
    procedure Set_XCpl(Value: WideString);
    procedure Set_XBairro(Value: WideString);
    procedure Set_CMun(Value: WideString);
    procedure Set_XMun(Value: WideString);
    procedure Set_CEP(Value: WideString);
    procedure Set_UF(Value: WideString);
  end;

{ TXMLTEndOrg }

  TXMLTEndOrg = class(TXMLNode, IXMLTEndOrg)
  protected
    { IXMLTEndOrg }
    function Get_XLgr: WideString;
    function Get_Nro: WideString;
    function Get_XCpl: WideString;
    function Get_XBairro: WideString;
    function Get_CMun: WideString;
    function Get_XMun: WideString;
    function Get_CEP: WideString;
    function Get_UF: WideString;
    function Get_CPais: WideString;
    function Get_XPais: WideString;
    function Get_Fone: WideString;
    procedure Set_XLgr(Value: WideString);
    procedure Set_Nro(Value: WideString);
    procedure Set_XCpl(Value: WideString);
    procedure Set_XBairro(Value: WideString);
    procedure Set_CMun(Value: WideString);
    procedure Set_XMun(Value: WideString);
    procedure Set_CEP(Value: WideString);
    procedure Set_UF(Value: WideString);
    procedure Set_CPais(Value: WideString);
    procedure Set_XPais(Value: WideString);
    procedure Set_Fone(Value: WideString);
  end;

{ TXMLTLocal }

  TXMLTLocal = class(TXMLNode, IXMLTLocal)
  protected
    { IXMLTLocal }
    function Get_CMun: WideString;
    function Get_XMun: WideString;
    function Get_UF: WideString;
    procedure Set_CMun(Value: WideString);
    procedure Set_XMun(Value: WideString);
    procedure Set_UF(Value: WideString);
  end;

{ TXMLTEndReEnt }

  TXMLTEndReEnt = class(TXMLNode, IXMLTEndReEnt)
  protected
    { IXMLTEndReEnt }
    function Get_CNPJ: WideString;
    function Get_CPF: WideString;
    function Get_XNome: WideString;
    function Get_XLgr: WideString;
    function Get_Nro: WideString;
    function Get_XCpl: WideString;
    function Get_XBairro: WideString;
    function Get_CMun: WideString;
    function Get_XMun: WideString;
    function Get_UF: WideString;
    procedure Set_CNPJ(Value: WideString);
    procedure Set_CPF(Value: WideString);
    procedure Set_XNome(Value: WideString);
    procedure Set_XLgr(Value: WideString);
    procedure Set_Nro(Value: WideString);
    procedure Set_XCpl(Value: WideString);
    procedure Set_XBairro(Value: WideString);
    procedure Set_CMun(Value: WideString);
    procedure Set_XMun(Value: WideString);
    procedure Set_UF(Value: WideString);
  end;

{ TXMLTNFeNF }

  TXMLTNFeNF = class(TXMLNode, IXMLTNFeNF)
  protected
    { IXMLTNFeNF }
    function Get_InfNFe: IXMLInfNFe;
    function Get_InfNF: IXMLInfNF;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLInfNF }

  TXMLInfNF = class(TXMLNode, IXMLInfNF)
  protected
    { IXMLInfNF }
    function Get_Emi: IXMLEmi;
    function Get_Dest: IXMLDest;
    function Get_Serie: WideString;
    function Get_NNF: WideString;
    function Get_DEmi: WideString;
    function Get_VNF: WideString;
    function Get_PIN: WideString;
    procedure Set_Serie(Value: WideString);
    procedure Set_NNF(Value: WideString);
    procedure Set_DEmi(Value: WideString);
    procedure Set_VNF(Value: WideString);
    procedure Set_PIN(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLEmi }

  TXMLEmi = class(TXMLNode, IXMLEmi)
  protected
    { IXMLEmi }
    function Get_CNPJ: WideString;
    function Get_XNome: WideString;
    function Get_UF: WideString;
    procedure Set_CNPJ(Value: WideString);
    procedure Set_XNome(Value: WideString);
    procedure Set_UF(Value: WideString);
  end;

{ TXMLDest }

  TXMLDest = class(TXMLNode, IXMLDest)
  protected
    { IXMLDest }
    function Get_CNPJ: WideString;
    function Get_CPF: WideString;
    function Get_XNome: WideString;
    function Get_UF: WideString;
    procedure Set_CNPJ(Value: WideString);
    procedure Set_CPF(Value: WideString);
    procedure Set_XNome(Value: WideString);
    procedure Set_UF(Value: WideString);
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

function GetenviMDFe(Doc: IXMLDocument): IXMLTEnviMDFe;
function LoadenviMDFe(const FileName: string): IXMLTEnviMDFe;
function NewenviMDFe: IXMLTEnviMDFe;

const
  TargetNamespace = 'http://www.portalfiscal.inf.br/mdfe';

implementation

uses xmlutil;

{ Global Functions }

function GetenviMDFe(Doc: IXMLDocument): IXMLTEnviMDFe;
begin
  Result := Doc.GetDocBinding('enviMDFe', TXMLTEnviMDFe, TargetNamespace) as IXMLTEnviMDFe;
end;

function LoadenviMDFe(const FileName: string): IXMLTEnviMDFe;
begin
  Result := LoadXMLDocument(FileName).GetDocBinding('enviMDFe', TXMLTEnviMDFe, TargetNamespace) as IXMLTEnviMDFe;
end;

function NewenviMDFe: IXMLTEnviMDFe;
begin
  Result := NewXMLDocument.GetDocBinding('enviMDFe', TXMLTEnviMDFe, TargetNamespace) as IXMLTEnviMDFe;
end;

{ TXMLTEnviMDFe }

procedure TXMLTEnviMDFe.AfterConstruction;
begin
  RegisterChildNode('MDFe', TXMLTMDFe);
  inherited;
end;

function TXMLTEnviMDFe.Get_Versao: WideString;
begin
  Result := AttributeNodes['versao'].Text;
end;

procedure TXMLTEnviMDFe.Set_Versao(Value: WideString);
begin
  SetAttribute('versao', Value);
end;

function TXMLTEnviMDFe.Get_IdLote: WideString;
begin
  Result := ChildNodes['idLote'].Text;
end;

procedure TXMLTEnviMDFe.Set_IdLote(Value: WideString);
begin
  ChildNodes['idLote'].NodeValue := Value;
end;

function TXMLTEnviMDFe.Get_MDFe: IXMLTMDFe;
begin
  Result := ChildNodes['MDFe'] as IXMLTMDFe;
end;

{ TXMLTMDFe }

procedure TXMLTMDFe.AfterConstruction;
begin
  RegisterChildNode('infMDFe', TXMLInfMDFe);
  RegisterChildNode('infMDFeSupl', TXMLInfMDFeSupl);
  RegisterChildNode('Signature', TXMLSignatureType_ds);
  inherited;
end;

function TXMLTMDFe.Get_InfMDFe: IXMLInfMDFe;
begin
  Result := ChildNodes['infMDFe'] as IXMLInfMDFe;
end;

function TXMLTMDFe.Get_InfMDFeSupl: IXMLInfMDFeSupl;
begin
  Result := ChildNodes['infMDFeSupl'] as IXMLInfMDFeSupl;
end;

function TXMLTMDFe.Get_Signature: IXMLSignatureType_ds;
begin
  Result := ChildNodes['Signature'] as IXMLSignatureType_ds;
end;

{ TXMLInfMDFe }

procedure TXMLInfMDFe.AfterConstruction;
begin
  RegisterChildNode('ide', TXMLIde);
  RegisterChildNode('emit', TXMLEmit);
  RegisterChildNode('infModal', TXMLInfModal);
  RegisterChildNode('infDoc', TXMLInfDoc);
  RegisterChildNode('seg', TXMLSeg);
  RegisterChildNode('tot', TXMLTot);
  RegisterChildNode('lacres', TXMLLacres);
  RegisterChildNode('autXML', TXMLAutXML);
  RegisterChildNode('infAdic', TXMLInfAdic);
  RegisterChildNode('infRespTec', TXMLTRespTec);
  FSeg := CreateCollection(TXMLSegList, IXMLSeg, 'seg') as IXMLSegList;
  FLacres := CreateCollection(TXMLLacresList, IXMLLacres, 'lacres') as IXMLLacresList;
  FAutXML := CreateCollection(TXMLAutXMLList, IXMLAutXML, 'autXML') as IXMLAutXMLList;
  inherited;
end;

function TXMLInfMDFe.Get_Versao: WideString;
begin
  Result := AttributeNodes['versao'].Text;
end;

procedure TXMLInfMDFe.Set_Versao(Value: WideString);
begin
  SetAttribute('versao', Value);
end;

function TXMLInfMDFe.Get_Id: WideString;
begin
  Result := AttributeNodes['Id'].Text;
end;

procedure TXMLInfMDFe.Set_Id(Value: WideString);
begin
  SetAttribute('Id', Value);
end;

function TXMLInfMDFe.Get_Ide: IXMLIde;
begin
  Result := ChildNodes['ide'] as IXMLIde;
end;

function TXMLInfMDFe.Get_Emit: IXMLEmit;
begin
  Result := ChildNodes['emit'] as IXMLEmit;
end;

function TXMLInfMDFe.Get_InfModal: IXMLInfModal;
begin
  Result := ChildNodes['infModal'] as IXMLInfModal;
end;

function TXMLInfMDFe.Get_InfDoc: IXMLInfDoc;
begin
  Result := ChildNodes['infDoc'] as IXMLInfDoc;
end;

function TXMLInfMDFe.Get_Seg: IXMLSegList;
begin
  Result := FSeg;
end;

function TXMLInfMDFe.Get_Tot: IXMLTot;
begin
  Result := ChildNodes['tot'] as IXMLTot;
end;

function TXMLInfMDFe.Get_Lacres: IXMLLacresList;
begin
  Result := FLacres;
end;

function TXMLInfMDFe.Get_AutXML: IXMLAutXMLList;
begin
  Result := FAutXML;
end;

function TXMLInfMDFe.Get_InfAdic: IXMLInfAdic;
begin
  Result := ChildNodes['infAdic'] as IXMLInfAdic;
end;

function TXMLInfMDFe.Get_InfRespTec: IXMLTRespTec;
begin
  Result := ChildNodes['infRespTec'] as IXMLTRespTec;
end;

{ TXMLIde }

procedure TXMLIde.AfterConstruction;
begin
  RegisterChildNode('infMunCarrega', TXMLInfMunCarrega);
  RegisterChildNode('infPercurso', TXMLInfPercurso);
  FInfMunCarrega := CreateCollection(TXMLInfMunCarregaList, IXMLInfMunCarrega, 'infMunCarrega') as IXMLInfMunCarregaList;
  FInfPercurso := CreateCollection(TXMLInfPercursoList, IXMLInfPercurso, 'infPercurso') as IXMLInfPercursoList;
  inherited;
end;

function TXMLIde.Get_CUF: WideString;
begin
  Result := ChildNodes['cUF'].Text;
end;

procedure TXMLIde.Set_CUF(Value: WideString);
begin
  ChildNodes['cUF'].NodeValue := Value;
end;

function TXMLIde.Get_TpAmb: WideString;
begin
  Result := ChildNodes['tpAmb'].Text;
end;

procedure TXMLIde.Set_TpAmb(Value: WideString);
begin
  ChildNodes['tpAmb'].NodeValue := Value;
end;

function TXMLIde.Get_TpEmit: WideString;
begin
  Result := ChildNodes['tpEmit'].Text;
end;

procedure TXMLIde.Set_TpEmit(Value: WideString);
begin
  ChildNodes['tpEmit'].NodeValue := Value;
end;

function TXMLIde.Get_TpTransp: WideString;
begin
  Result := ChildNodes['tpTransp'].Text;
end;

procedure TXMLIde.Set_TpTransp(Value: WideString);
begin
  ChildNodes['tpTransp'].NodeValue := Value;
end;

function TXMLIde.Get_Mod_: WideString;
begin
  Result := ChildNodes['mod'].Text;
end;

procedure TXMLIde.Set_Mod_(Value: WideString);
begin
  ChildNodes['mod'].NodeValue := Value;
end;

function TXMLIde.Get_Serie: WideString;
begin
  Result := ChildNodes['serie'].Text;
end;

procedure TXMLIde.Set_Serie(Value: WideString);
begin
  ChildNodes['serie'].NodeValue := Value;
end;

function TXMLIde.Get_NMDF: WideString;
begin
  Result := ChildNodes['nMDF'].Text;
end;

procedure TXMLIde.Set_NMDF(Value: WideString);
begin
  ChildNodes['nMDF'].NodeValue := Value;
end;

function TXMLIde.Get_CMDF: WideString;
begin
  Result := ChildNodes['cMDF'].Text;
end;

procedure TXMLIde.Set_CMDF(Value: WideString);
begin
  ChildNodes['cMDF'].NodeValue := Value;
end;

function TXMLIde.Get_CDV: WideString;
begin
  Result := ChildNodes['cDV'].Text;
end;

procedure TXMLIde.Set_CDV(Value: WideString);
begin
  ChildNodes['cDV'].NodeValue := Value;
end;

function TXMLIde.Get_Modal: WideString;
begin
  Result := ChildNodes['modal'].Text;
end;

procedure TXMLIde.Set_Modal(Value: WideString);
begin
  ChildNodes['modal'].NodeValue := Value;
end;

function TXMLIde.Get_DhEmi: WideString;
begin
  Result := ChildNodes['dhEmi'].Text;
end;

procedure TXMLIde.Set_DhEmi(Value: WideString);
begin
  ChildNodes['dhEmi'].NodeValue := Value;
end;

function TXMLIde.Get_TpEmis: WideString;
begin
  Result := ChildNodes['tpEmis'].Text;
end;

procedure TXMLIde.Set_TpEmis(Value: WideString);
begin
  ChildNodes['tpEmis'].NodeValue := Value;
end;

function TXMLIde.Get_ProcEmi: WideString;
begin
  Result := ChildNodes['procEmi'].Text;
end;

procedure TXMLIde.Set_ProcEmi(Value: WideString);
begin
  ChildNodes['procEmi'].NodeValue := Value;
end;

function TXMLIde.Get_VerProc: WideString;
begin
  Result := ChildNodes['verProc'].Text;
end;

procedure TXMLIde.Set_VerProc(Value: WideString);
begin
  ChildNodes['verProc'].NodeValue := Value;
end;

function TXMLIde.Get_UFIni: WideString;
begin
  Result := ChildNodes['UFIni'].Text;
end;

procedure TXMLIde.Set_UFIni(Value: WideString);
begin
  ChildNodes['UFIni'].NodeValue := Value;
end;

function TXMLIde.Get_UFFim: WideString;
begin
  Result := ChildNodes['UFFim'].Text;
end;

procedure TXMLIde.Set_UFFim(Value: WideString);
begin
  ChildNodes['UFFim'].NodeValue := Value;
end;

function TXMLIde.Get_InfMunCarrega: IXMLInfMunCarregaList;
begin
  Result := FInfMunCarrega;
end;

function TXMLIde.Get_InfPercurso: IXMLInfPercursoList;
begin
  Result := FInfPercurso;
end;

function TXMLIde.Get_DhIniViagem: WideString;
begin
  Result := ChildNodes['dhIniViagem'].Text;
end;

procedure TXMLIde.Set_DhIniViagem(Value: WideString);
begin
  ChildNodes['dhIniViagem'].NodeValue := Value;
end;

function TXMLIde.Get_IndCanalVerde: WideString;
begin
  Result := ChildNodes['indCanalVerde'].Text;
end;

procedure TXMLIde.Set_IndCanalVerde(Value: WideString);
begin
  ChildNodes['indCanalVerde'].NodeValue := Value;
end;

function TXMLIde.Get_IndCarregaPosterior: WideString;
begin
  Result := ChildNodes['indCarregaPosterior'].Text;
end;

procedure TXMLIde.Set_IndCarregaPosterior(Value: WideString);
begin
  ChildNodes['indCarregaPosterior'].NodeValue := Value;
end;

{ TXMLInfMunCarrega }

function TXMLInfMunCarrega.Get_CMunCarrega: WideString;
begin
  Result := ChildNodes['cMunCarrega'].Text;
end;

procedure TXMLInfMunCarrega.Set_CMunCarrega(Value: WideString);
begin
  ChildNodes['cMunCarrega'].NodeValue := Value;
end;

function TXMLInfMunCarrega.Get_XMunCarrega: WideString;
begin
  Result := ChildNodes['xMunCarrega'].Text;
end;

procedure TXMLInfMunCarrega.Set_XMunCarrega(Value: WideString);
begin
  ChildNodes['xMunCarrega'].NodeValue := Value;
end;

{ TXMLInfMunCarregaList }

function TXMLInfMunCarregaList.Add: IXMLInfMunCarrega;
begin
  Result := AddItem(-1) as IXMLInfMunCarrega;
end;

function TXMLInfMunCarregaList.Insert(const Index: Integer): IXMLInfMunCarrega;
begin
  Result := AddItem(Index) as IXMLInfMunCarrega;
end;

function TXMLInfMunCarregaList.Get_Item(Index: Integer): IXMLInfMunCarrega;
begin
  Result := List[Index] as IXMLInfMunCarrega;
end;

{ TXMLInfPercurso }

function TXMLInfPercurso.Get_UFPer: WideString;
begin
  Result := ChildNodes['UFPer'].Text;
end;

procedure TXMLInfPercurso.Set_UFPer(Value: WideString);
begin
  ChildNodes['UFPer'].NodeValue := Value;
end;

{ TXMLInfPercursoList }

function TXMLInfPercursoList.Add: IXMLInfPercurso;
begin
  Result := AddItem(-1) as IXMLInfPercurso;
end;

function TXMLInfPercursoList.Insert(const Index: Integer): IXMLInfPercurso;
begin
  Result := AddItem(Index) as IXMLInfPercurso;
end;

function TXMLInfPercursoList.Get_Item(Index: Integer): IXMLInfPercurso;
begin
  Result := List[Index] as IXMLInfPercurso;
end;

{ TXMLEmit }

procedure TXMLEmit.AfterConstruction;
begin
  RegisterChildNode('enderEmit', TXMLTEndeEmi);
  inherited;
end;

function TXMLEmit.Get_CNPJ: WideString;
begin
  Result := ChildNodes['CNPJ'].Text;
end;

procedure TXMLEmit.Set_CNPJ(Value: WideString);
begin
  ChildNodes['CNPJ'].NodeValue := Value;
end;

function TXMLEmit.Get_CPF: WideString;
begin
  Result := ChildNodes['CPF'].Text;
end;

procedure TXMLEmit.Set_CPF(Value: WideString);
begin
  ChildNodes['CPF'].NodeValue := Value;
end;

function TXMLEmit.Get_IE: WideString;
begin
  Result := ChildNodes['IE'].Text;
end;

procedure TXMLEmit.Set_IE(Value: WideString);
begin
  ChildNodes['IE'].NodeValue := Value;
end;

function TXMLEmit.Get_XNome: WideString;
begin
  Result := ChildNodes['xNome'].Text;
end;

procedure TXMLEmit.Set_XNome(Value: WideString);
begin
  ChildNodes['xNome'].NodeValue := Value;
end;

function TXMLEmit.Get_XFant: WideString;
begin
  Result := ChildNodes['xFant'].Text;
end;

procedure TXMLEmit.Set_XFant(Value: WideString);
begin
  ChildNodes['xFant'].NodeValue := Value;
end;

function TXMLEmit.Get_EnderEmit: IXMLTEndeEmi;
begin
  Result := ChildNodes['enderEmit'] as IXMLTEndeEmi;
end;

{ TXMLTEndeEmi }

function TXMLTEndeEmi.Get_XLgr: WideString;
begin
  Result := ChildNodes['xLgr'].Text;
end;

procedure TXMLTEndeEmi.Set_XLgr(Value: WideString);
begin
  ChildNodes['xLgr'].NodeValue := Value;
end;

function TXMLTEndeEmi.Get_Nro: WideString;
begin
  Result := ChildNodes['nro'].Text;
end;

procedure TXMLTEndeEmi.Set_Nro(Value: WideString);
begin
  ChildNodes['nro'].NodeValue := Value;
end;

function TXMLTEndeEmi.Get_XCpl: WideString;
begin
  Result := ChildNodes['xCpl'].Text;
end;

procedure TXMLTEndeEmi.Set_XCpl(Value: WideString);
begin
  ChildNodes['xCpl'].NodeValue := Value;
end;

function TXMLTEndeEmi.Get_XBairro: WideString;
begin
  Result := ChildNodes['xBairro'].Text;
end;

procedure TXMLTEndeEmi.Set_XBairro(Value: WideString);
begin
  ChildNodes['xBairro'].NodeValue := Value;
end;

function TXMLTEndeEmi.Get_CMun: WideString;
begin
  Result := ChildNodes['cMun'].Text;
end;

procedure TXMLTEndeEmi.Set_CMun(Value: WideString);
begin
  ChildNodes['cMun'].NodeValue := Value;
end;

function TXMLTEndeEmi.Get_XMun: WideString;
begin
  Result := ChildNodes['xMun'].Text;
end;

procedure TXMLTEndeEmi.Set_XMun(Value: WideString);
begin
  ChildNodes['xMun'].NodeValue := Value;
end;

function TXMLTEndeEmi.Get_CEP: WideString;
begin
  Result := ChildNodes['CEP'].Text;
end;

procedure TXMLTEndeEmi.Set_CEP(Value: WideString);
begin
  ChildNodes['CEP'].NodeValue := Value;
end;

function TXMLTEndeEmi.Get_UF: WideString;
begin
  Result := ChildNodes['UF'].Text;
end;

procedure TXMLTEndeEmi.Set_UF(Value: WideString);
begin
  ChildNodes['UF'].NodeValue := Value;
end;

function TXMLTEndeEmi.Get_Fone: WideString;
begin
  Result := ChildNodes['fone'].Text;
end;

procedure TXMLTEndeEmi.Set_Fone(Value: WideString);
begin
  ChildNodes['fone'].NodeValue := Value;
end;

function TXMLTEndeEmi.Get_Email: WideString;
begin
  Result := ChildNodes['email'].Text;
end;

procedure TXMLTEndeEmi.Set_Email(Value: WideString);
begin
  ChildNodes['email'].NodeValue := Value;
end;

{ TXMLInfModal }

function TXMLInfModal.Get_VersaoModal: WideString;
begin
  Result := AttributeNodes['versaoModal'].Text;
end;

procedure TXMLInfModal.Set_VersaoModal(Value: WideString);
begin
  SetAttribute('versaoModal', Value);
end;

{ TXMLInfDoc }

procedure TXMLInfDoc.AfterConstruction;
begin
  RegisterChildNode('infMunDescarga', TXMLInfMunDescarga);
  ItemTag := 'infMunDescarga';
  ItemInterface := IXMLInfMunDescarga;
  inherited;
end;

function TXMLInfDoc.Get_InfMunDescarga(Index: Integer): IXMLInfMunDescarga;
begin
  Result := List[Index] as IXMLInfMunDescarga;
end;

function TXMLInfDoc.Add: IXMLInfMunDescarga;
begin
  Result := AddItem(-1) as IXMLInfMunDescarga;
end;

function TXMLInfDoc.Insert(const Index: Integer): IXMLInfMunDescarga;
begin
  Result := AddItem(Index) as IXMLInfMunDescarga;
end;

{ TXMLInfMunDescarga }

procedure TXMLInfMunDescarga.AfterConstruction;
begin
  RegisterChildNode('infCTe', TXMLInfCTe);
  RegisterChildNode('infNFe', TXMLInfNFe);
  RegisterChildNode('infMDFeTransp', TXMLInfMDFeTransp);
  FInfCTe := CreateCollection(TXMLInfCTeList, IXMLInfCTe, 'infCTe') as IXMLInfCTeList;
  FInfNFe := CreateCollection(TXMLInfNFeList, IXMLInfNFe, 'infNFe') as IXMLInfNFeList;
  FInfMDFeTransp := CreateCollection(TXMLInfMDFeTranspList, IXMLInfMDFeTransp, 'infMDFeTransp') as IXMLInfMDFeTranspList;
  inherited;
end;

function TXMLInfMunDescarga.Get_CMunDescarga: WideString;
begin
  Result := ChildNodes['cMunDescarga'].Text;
end;

procedure TXMLInfMunDescarga.Set_CMunDescarga(Value: WideString);
begin
  ChildNodes['cMunDescarga'].NodeValue := Value;
end;

function TXMLInfMunDescarga.Get_XMunDescarga: WideString;
begin
  Result := ChildNodes['xMunDescarga'].Text;
end;

procedure TXMLInfMunDescarga.Set_XMunDescarga(Value: WideString);
begin
  ChildNodes['xMunDescarga'].NodeValue := Value;
end;

function TXMLInfMunDescarga.Get_InfCTe: IXMLInfCTeList;
begin
  Result := FInfCTe;
end;

function TXMLInfMunDescarga.Get_InfNFe: IXMLInfNFeList;
begin
  Result := FInfNFe;
end;

function TXMLInfMunDescarga.Get_InfMDFeTransp: IXMLInfMDFeTranspList;
begin
  Result := FInfMDFeTransp;
end;

{ TXMLInfCTe }

procedure TXMLInfCTe.AfterConstruction;
begin
  RegisterChildNode('infUnidTransp', TXMLTUnidadeTransp);
  RegisterChildNode('peri', TXMLPeri);
  RegisterChildNode('infEntregaParcial', TXMLInfEntregaParcial);
  FInfUnidTransp := CreateCollection(TXMLTUnidadeTranspList, IXMLTUnidadeTransp, 'infUnidTransp') as IXMLTUnidadeTranspList;
  FPeri := CreateCollection(TXMLPeriList, IXMLPeri, 'peri') as IXMLPeriList;
  inherited;
end;

function TXMLInfCTe.Get_ChCTe: WideString;
begin
  Result := ChildNodes['chCTe'].Text;
end;

procedure TXMLInfCTe.Set_ChCTe(Value: WideString);
begin
  ChildNodes['chCTe'].NodeValue := Value;
end;

function TXMLInfCTe.Get_SegCodBarra: WideString;
begin
  Result := ChildNodes['SegCodBarra'].Text;
end;

procedure TXMLInfCTe.Set_SegCodBarra(Value: WideString);
begin
  ChildNodes['SegCodBarra'].NodeValue := Value;
end;

function TXMLInfCTe.Get_IndReentrega: WideString;
begin
  Result := ChildNodes['indReentrega'].Text;
end;

procedure TXMLInfCTe.Set_IndReentrega(Value: WideString);
begin
  ChildNodes['indReentrega'].NodeValue := Value;
end;

function TXMLInfCTe.Get_InfUnidTransp: IXMLTUnidadeTranspList;
begin
  Result := FInfUnidTransp;
end;

function TXMLInfCTe.Get_Peri: IXMLPeriList;
begin
  Result := FPeri;
end;

function TXMLInfCTe.Get_InfEntregaParcial: IXMLInfEntregaParcial;
begin
  Result := ChildNodes['infEntregaParcial'] as IXMLInfEntregaParcial;
end;

{ TXMLInfCTeList }

function TXMLInfCTeList.Add: IXMLInfCTe;
begin
  Result := AddItem(-1) as IXMLInfCTe;
end;

function TXMLInfCTeList.Insert(const Index: Integer): IXMLInfCTe;
begin
  Result := AddItem(Index) as IXMLInfCTe;
end;

function TXMLInfCTeList.Get_Item(Index: Integer): IXMLInfCTe;
begin
  Result := List[Index] as IXMLInfCTe;
end;

{ TXMLTUnidadeTransp }

procedure TXMLTUnidadeTransp.AfterConstruction;
begin
  RegisterChildNode('lacUnidTransp', TXMLLacUnidTransp);
  RegisterChildNode('infUnidCarga', TXMLTUnidCarga);
  FLacUnidTransp := CreateCollection(TXMLLacUnidTranspList, IXMLLacUnidTransp, 'lacUnidTransp') as IXMLLacUnidTranspList;
  FInfUnidCarga := CreateCollection(TXMLTUnidCargaList, IXMLTUnidCarga, 'infUnidCarga') as IXMLTUnidCargaList;
  inherited;
end;

function TXMLTUnidadeTransp.Get_TpUnidTransp: WideString;
begin
  Result := ChildNodes['tpUnidTransp'].Text;
end;

procedure TXMLTUnidadeTransp.Set_TpUnidTransp(Value: WideString);
begin
  ChildNodes['tpUnidTransp'].NodeValue := Value;
end;

function TXMLTUnidadeTransp.Get_IdUnidTransp: WideString;
begin
  Result := ChildNodes['idUnidTransp'].Text;
end;

procedure TXMLTUnidadeTransp.Set_IdUnidTransp(Value: WideString);
begin
  ChildNodes['idUnidTransp'].NodeValue := Value;
end;

function TXMLTUnidadeTransp.Get_LacUnidTransp: IXMLLacUnidTranspList;
begin
  Result := FLacUnidTransp;
end;

function TXMLTUnidadeTransp.Get_InfUnidCarga: IXMLTUnidCargaList;
begin
  Result := FInfUnidCarga;
end;

function TXMLTUnidadeTransp.Get_QtdRat: WideString;
begin
  Result := ChildNodes['qtdRat'].Text;
end;

procedure TXMLTUnidadeTransp.Set_QtdRat(Value: WideString);
begin
  ChildNodes['qtdRat'].NodeValue := Value;
end;

{ TXMLTUnidadeTranspList }

function TXMLTUnidadeTranspList.Add: IXMLTUnidadeTransp;
begin
  Result := AddItem(-1) as IXMLTUnidadeTransp;
end;

function TXMLTUnidadeTranspList.Insert(const Index: Integer): IXMLTUnidadeTransp;
begin
  Result := AddItem(Index) as IXMLTUnidadeTransp;
end;

function TXMLTUnidadeTranspList.Get_Item(Index: Integer): IXMLTUnidadeTransp;
begin
  Result := List[Index] as IXMLTUnidadeTransp;
end;

{ TXMLLacUnidTransp }

function TXMLLacUnidTransp.Get_NLacre: WideString;
begin
  Result := ChildNodes['nLacre'].Text;
end;

procedure TXMLLacUnidTransp.Set_NLacre(Value: WideString);
begin
  ChildNodes['nLacre'].NodeValue := Value;
end;

{ TXMLLacUnidTranspList }

function TXMLLacUnidTranspList.Add: IXMLLacUnidTransp;
begin
  Result := AddItem(-1) as IXMLLacUnidTransp;
end;

function TXMLLacUnidTranspList.Insert(const Index: Integer): IXMLLacUnidTransp;
begin
  Result := AddItem(Index) as IXMLLacUnidTransp;
end;

function TXMLLacUnidTranspList.Get_Item(Index: Integer): IXMLLacUnidTransp;
begin
  Result := List[Index] as IXMLLacUnidTransp;
end;

{ TXMLTUnidCarga }

procedure TXMLTUnidCarga.AfterConstruction;
begin
  RegisterChildNode('lacUnidCarga', TXMLLacUnidCarga);
  FLacUnidCarga := CreateCollection(TXMLLacUnidCargaList, IXMLLacUnidCarga, 'lacUnidCarga') as IXMLLacUnidCargaList;
  inherited;
end;

function TXMLTUnidCarga.Get_TpUnidCarga: WideString;
begin
  Result := ChildNodes['tpUnidCarga'].Text;
end;

procedure TXMLTUnidCarga.Set_TpUnidCarga(Value: WideString);
begin
  ChildNodes['tpUnidCarga'].NodeValue := Value;
end;

function TXMLTUnidCarga.Get_IdUnidCarga: WideString;
begin
  Result := ChildNodes['idUnidCarga'].Text;
end;

procedure TXMLTUnidCarga.Set_IdUnidCarga(Value: WideString);
begin
  ChildNodes['idUnidCarga'].NodeValue := Value;
end;

function TXMLTUnidCarga.Get_LacUnidCarga: IXMLLacUnidCargaList;
begin
  Result := FLacUnidCarga;
end;

function TXMLTUnidCarga.Get_QtdRat: WideString;
begin
  Result := ChildNodes['qtdRat'].Text;
end;

procedure TXMLTUnidCarga.Set_QtdRat(Value: WideString);
begin
  ChildNodes['qtdRat'].NodeValue := Value;
end;

{ TXMLTUnidCargaList }

function TXMLTUnidCargaList.Add: IXMLTUnidCarga;
begin
  Result := AddItem(-1) as IXMLTUnidCarga;
end;

function TXMLTUnidCargaList.Insert(const Index: Integer): IXMLTUnidCarga;
begin
  Result := AddItem(Index) as IXMLTUnidCarga;
end;

function TXMLTUnidCargaList.Get_Item(Index: Integer): IXMLTUnidCarga;
begin
  Result := List[Index] as IXMLTUnidCarga;
end;

{ TXMLLacUnidCarga }

function TXMLLacUnidCarga.Get_NLacre: WideString;
begin
  Result := ChildNodes['nLacre'].Text;
end;

procedure TXMLLacUnidCarga.Set_NLacre(Value: WideString);
begin
  ChildNodes['nLacre'].NodeValue := Value;
end;

{ TXMLLacUnidCargaList }

function TXMLLacUnidCargaList.Add: IXMLLacUnidCarga;
begin
  Result := AddItem(-1) as IXMLLacUnidCarga;
end;

function TXMLLacUnidCargaList.Insert(const Index: Integer): IXMLLacUnidCarga;
begin
  Result := AddItem(Index) as IXMLLacUnidCarga;
end;

function TXMLLacUnidCargaList.Get_Item(Index: Integer): IXMLLacUnidCarga;
begin
  Result := List[Index] as IXMLLacUnidCarga;
end;

{ TXMLPeri }

function TXMLPeri.Get_NONU: WideString;
begin
  Result := ChildNodes['nONU'].Text;
end;

procedure TXMLPeri.Set_NONU(Value: WideString);
begin
  ChildNodes['nONU'].NodeValue := Value;
end;

function TXMLPeri.Get_XNomeAE: WideString;
begin
  Result := ChildNodes['xNomeAE'].Text;
end;

procedure TXMLPeri.Set_XNomeAE(Value: WideString);
begin
  ChildNodes['xNomeAE'].NodeValue := Value;
end;

function TXMLPeri.Get_XClaRisco: WideString;
begin
  Result := ChildNodes['xClaRisco'].Text;
end;

procedure TXMLPeri.Set_XClaRisco(Value: WideString);
begin
  ChildNodes['xClaRisco'].NodeValue := Value;
end;

function TXMLPeri.Get_GrEmb: WideString;
begin
  Result := ChildNodes['grEmb'].Text;
end;

procedure TXMLPeri.Set_GrEmb(Value: WideString);
begin
  ChildNodes['grEmb'].NodeValue := Value;
end;

function TXMLPeri.Get_QTotProd: WideString;
begin
  Result := ChildNodes['qTotProd'].Text;
end;

procedure TXMLPeri.Set_QTotProd(Value: WideString);
begin
  ChildNodes['qTotProd'].NodeValue := Value;
end;

function TXMLPeri.Get_QVolTipo: WideString;
begin
  Result := ChildNodes['qVolTipo'].Text;
end;

procedure TXMLPeri.Set_QVolTipo(Value: WideString);
begin
  ChildNodes['qVolTipo'].NodeValue := Value;
end;

{ TXMLPeriList }

function TXMLPeriList.Add: IXMLPeri;
begin
  Result := AddItem(-1) as IXMLPeri;
end;

function TXMLPeriList.Insert(const Index: Integer): IXMLPeri;
begin
  Result := AddItem(Index) as IXMLPeri;
end;

function TXMLPeriList.Get_Item(Index: Integer): IXMLPeri;
begin
  Result := List[Index] as IXMLPeri;
end;

{ TXMLInfEntregaParcial }

function TXMLInfEntregaParcial.Get_QtdTotal: WideString;
begin
  Result := ChildNodes['qtdTotal'].Text;
end;

procedure TXMLInfEntregaParcial.Set_QtdTotal(Value: WideString);
begin
  ChildNodes['qtdTotal'].NodeValue := Value;
end;

function TXMLInfEntregaParcial.Get_QtdParcial: WideString;
begin
  Result := ChildNodes['qtdParcial'].Text;
end;

procedure TXMLInfEntregaParcial.Set_QtdParcial(Value: WideString);
begin
  ChildNodes['qtdParcial'].NodeValue := Value;
end;

{ TXMLInfNFe }

procedure TXMLInfNFe.AfterConstruction;
begin
  RegisterChildNode('infUnidTransp', TXMLTUnidadeTransp);
  RegisterChildNode('peri', TXMLPeri);
  FInfUnidTransp := CreateCollection(TXMLTUnidadeTranspList, IXMLTUnidadeTransp, 'infUnidTransp') as IXMLTUnidadeTranspList;
  FPeri := CreateCollection(TXMLPeriList, IXMLPeri, 'peri') as IXMLPeriList;
  inherited;
end;

function TXMLInfNFe.Get_ChNFe: WideString;
begin
  Result := ChildNodes['chNFe'].Text;
end;

procedure TXMLInfNFe.Set_ChNFe(Value: WideString);
begin
  ChildNodes['chNFe'].NodeValue := Value;
end;

function TXMLInfNFe.Get_SegCodBarra: WideString;
begin
  Result := ChildNodes['SegCodBarra'].Text;
end;

procedure TXMLInfNFe.Set_SegCodBarra(Value: WideString);
begin
  ChildNodes['SegCodBarra'].NodeValue := Value;
end;

function TXMLInfNFe.Get_IndReentrega: WideString;
begin
  Result := ChildNodes['indReentrega'].Text;
end;

procedure TXMLInfNFe.Set_IndReentrega(Value: WideString);
begin
  ChildNodes['indReentrega'].NodeValue := Value;
end;

function TXMLInfNFe.Get_InfUnidTransp: IXMLTUnidadeTranspList;
begin
  Result := FInfUnidTransp;
end;

function TXMLInfNFe.Get_Peri: IXMLPeriList;
begin
  Result := FPeri;
end;

{ TXMLInfNFeList }

function TXMLInfNFeList.Add: IXMLInfNFe;
begin
  Result := AddItem(-1) as IXMLInfNFe;
end;

function TXMLInfNFeList.Insert(const Index: Integer): IXMLInfNFe;
begin
  Result := AddItem(Index) as IXMLInfNFe;
end;

function TXMLInfNFeList.Get_Item(Index: Integer): IXMLInfNFe;
begin
  Result := List[Index] as IXMLInfNFe;
end;

{ TXMLInfMDFeTransp }

procedure TXMLInfMDFeTransp.AfterConstruction;
begin
  RegisterChildNode('infUnidTransp', TXMLTUnidadeTransp);
  RegisterChildNode('peri', TXMLPeri);
  FInfUnidTransp := CreateCollection(TXMLTUnidadeTranspList, IXMLTUnidadeTransp, 'infUnidTransp') as IXMLTUnidadeTranspList;
  FPeri := CreateCollection(TXMLPeriList, IXMLPeri, 'peri') as IXMLPeriList;
  inherited;
end;

function TXMLInfMDFeTransp.Get_ChMDFe: WideString;
begin
  Result := ChildNodes['chMDFe'].Text;
end;

procedure TXMLInfMDFeTransp.Set_ChMDFe(Value: WideString);
begin
  ChildNodes['chMDFe'].NodeValue := Value;
end;

function TXMLInfMDFeTransp.Get_IndReentrega: WideString;
begin
  Result := ChildNodes['indReentrega'].Text;
end;

procedure TXMLInfMDFeTransp.Set_IndReentrega(Value: WideString);
begin
  ChildNodes['indReentrega'].NodeValue := Value;
end;

function TXMLInfMDFeTransp.Get_InfUnidTransp: IXMLTUnidadeTranspList;
begin
  Result := FInfUnidTransp;
end;

function TXMLInfMDFeTransp.Get_Peri: IXMLPeriList;
begin
  Result := FPeri;
end;

{ TXMLInfMDFeTranspList }

function TXMLInfMDFeTranspList.Add: IXMLInfMDFeTransp;
begin
  Result := AddItem(-1) as IXMLInfMDFeTransp;
end;

function TXMLInfMDFeTranspList.Insert(const Index: Integer): IXMLInfMDFeTransp;
begin
  Result := AddItem(Index) as IXMLInfMDFeTransp;
end;

function TXMLInfMDFeTranspList.Get_Item(Index: Integer): IXMLInfMDFeTransp;
begin
  Result := List[Index] as IXMLInfMDFeTransp;
end;

{ TXMLSeg }

procedure TXMLSeg.AfterConstruction;
begin
  RegisterChildNode('infResp', TXMLInfResp);
  RegisterChildNode('infSeg', TXMLInfSeg);
  FNAver := CreateCollection(TXMLNAverList, IXMLNode, 'nAver') as IXMLNAverList;
  inherited;
end;

function TXMLSeg.Get_InfResp: IXMLInfResp;
begin
  Result := ChildNodes['infResp'] as IXMLInfResp;
end;

function TXMLSeg.Get_InfSeg: IXMLInfSeg;
begin
  Result := ChildNodes['infSeg'] as IXMLInfSeg;
end;

function TXMLSeg.Get_NApol: WideString;
begin
  Result := ChildNodes['nApol'].Text;
end;

procedure TXMLSeg.Set_NApol(Value: WideString);
begin
  ChildNodes['nApol'].NodeValue := Value;
end;

function TXMLSeg.Get_NAver: IXMLNAverList;
begin
  Result := FNAver;
end;

{ TXMLSegList }

function TXMLSegList.Add: IXMLSeg;
begin
  Result := AddItem(-1) as IXMLSeg;
end;

function TXMLSegList.Insert(const Index: Integer): IXMLSeg;
begin
  Result := AddItem(Index) as IXMLSeg;
end;

function TXMLSegList.Get_Item(Index: Integer): IXMLSeg;
begin
  Result := List[Index] as IXMLSeg;
end;

{ TXMLInfResp }

function TXMLInfResp.Get_RespSeg: WideString;
begin
  Result := ChildNodes['respSeg'].Text;
end;

procedure TXMLInfResp.Set_RespSeg(Value: WideString);
begin
  ChildNodes['respSeg'].NodeValue := Value;
end;

function TXMLInfResp.Get_CNPJ: WideString;
begin
  Result := ChildNodes['CNPJ'].Text;
end;

procedure TXMLInfResp.Set_CNPJ(Value: WideString);
begin
  ChildNodes['CNPJ'].NodeValue := Value;
end;

function TXMLInfResp.Get_CPF: WideString;
begin
  Result := ChildNodes['CPF'].Text;
end;

procedure TXMLInfResp.Set_CPF(Value: WideString);
begin
  ChildNodes['CPF'].NodeValue := Value;
end;

{ TXMLInfSeg }

function TXMLInfSeg.Get_XSeg: WideString;
begin
  Result := ChildNodes['xSeg'].Text;
end;

procedure TXMLInfSeg.Set_XSeg(Value: WideString);
begin
  ChildNodes['xSeg'].NodeValue := Value;
end;

function TXMLInfSeg.Get_CNPJ: WideString;
begin
  Result := ChildNodes['CNPJ'].Text;
end;

procedure TXMLInfSeg.Set_CNPJ(Value: WideString);
begin
  ChildNodes['CNPJ'].NodeValue := Value;
end;

{ TXMLTot }

function TXMLTot.Get_QCTe: WideString;
begin
  Result := ChildNodes['qCTe'].Text;
end;

procedure TXMLTot.Set_QCTe(Value: WideString);
begin
  ChildNodes['qCTe'].NodeValue := Value;
end;

function TXMLTot.Get_QNFe: WideString;
begin
  Result := ChildNodes['qNFe'].Text;
end;

procedure TXMLTot.Set_QNFe(Value: WideString);
begin
  ChildNodes['qNFe'].NodeValue := Value;
end;

function TXMLTot.Get_QMDFe: WideString;
begin
  Result := ChildNodes['qMDFe'].Text;
end;

procedure TXMLTot.Set_QMDFe(Value: WideString);
begin
  ChildNodes['qMDFe'].NodeValue := Value;
end;

function TXMLTot.Get_VCarga: WideString;
begin
  Result := ChildNodes['vCarga'].Text;
end;

procedure TXMLTot.Set_VCarga(Value: WideString);
begin
  ChildNodes['vCarga'].NodeValue := Value;
end;

function TXMLTot.Get_CUnid: WideString;
begin
  Result := ChildNodes['cUnid'].Text;
end;

procedure TXMLTot.Set_CUnid(Value: WideString);
begin
  ChildNodes['cUnid'].NodeValue := Value;
end;

function TXMLTot.Get_QCarga: WideString;
begin
  Result := ChildNodes['qCarga'].Text;
end;

procedure TXMLTot.Set_QCarga(Value: WideString);
begin
  ChildNodes['qCarga'].NodeValue := Value;
end;

{ TXMLLacres }

function TXMLLacres.Get_NLacre: WideString;
begin
  Result := ChildNodes['nLacre'].Text;
end;

procedure TXMLLacres.Set_NLacre(Value: WideString);
begin
  ChildNodes['nLacre'].NodeValue := Value;
end;

{ TXMLLacresList }

function TXMLLacresList.Add: IXMLLacres;
begin
  Result := AddItem(-1) as IXMLLacres;
end;

function TXMLLacresList.Insert(const Index: Integer): IXMLLacres;
begin
  Result := AddItem(Index) as IXMLLacres;
end;

function TXMLLacresList.Get_Item(Index: Integer): IXMLLacres;
begin
  Result := List[Index] as IXMLLacres;
end;

{ TXMLAutXML }

function TXMLAutXML.Get_CNPJ: WideString;
begin
  Result := ChildNodes['CNPJ'].Text;
end;

procedure TXMLAutXML.Set_CNPJ(Value: WideString);
begin
  ChildNodes['CNPJ'].NodeValue := Value;
end;

function TXMLAutXML.Get_CPF: WideString;
begin
  Result := ChildNodes['CPF'].Text;
end;

procedure TXMLAutXML.Set_CPF(Value: WideString);
begin
  ChildNodes['CPF'].NodeValue := Value;
end;

{ TXMLAutXMLList }

function TXMLAutXMLList.Add: IXMLAutXML;
begin
  Result := AddItem(-1) as IXMLAutXML;
end;

function TXMLAutXMLList.Insert(const Index: Integer): IXMLAutXML;
begin
  Result := AddItem(Index) as IXMLAutXML;
end;

function TXMLAutXMLList.Get_Item(Index: Integer): IXMLAutXML;
begin
  Result := List[Index] as IXMLAutXML;
end;

{ TXMLInfAdic }

function TXMLInfAdic.Get_InfAdFisco: WideString;
begin
  Result := ChildNodes['infAdFisco'].Text;
end;

procedure TXMLInfAdic.Set_InfAdFisco(Value: WideString);
begin
  ChildNodes['infAdFisco'].NodeValue := Value;
end;

function TXMLInfAdic.Get_InfCpl: WideString;
begin
  Result := ChildNodes['infCpl'].Text;
end;

procedure TXMLInfAdic.Set_InfCpl(Value: WideString);
begin
  ChildNodes['infCpl'].NodeValue := Value;
end;

{ TXMLTRespTec }

function TXMLTRespTec.Get_CNPJ: WideString;
begin
  Result := ChildNodes['CNPJ'].Text;
end;

procedure TXMLTRespTec.Set_CNPJ(Value: WideString);
begin
  ChildNodes['CNPJ'].NodeValue := Value;
end;

function TXMLTRespTec.Get_XContato: WideString;
begin
  Result := ChildNodes['xContato'].Text;
end;

procedure TXMLTRespTec.Set_XContato(Value: WideString);
begin
  ChildNodes['xContato'].NodeValue := Value;
end;

function TXMLTRespTec.Get_Email: WideString;
begin
  Result := ChildNodes['email'].Text;
end;

procedure TXMLTRespTec.Set_Email(Value: WideString);
begin
  ChildNodes['email'].NodeValue := Value;
end;

function TXMLTRespTec.Get_Fone: WideString;
begin
  Result := ChildNodes['fone'].Text;
end;

procedure TXMLTRespTec.Set_Fone(Value: WideString);
begin
  ChildNodes['fone'].NodeValue := Value;
end;

function TXMLTRespTec.Get_IdCSRT: WideString;
begin
  Result := ChildNodes['idCSRT'].Text;
end;

procedure TXMLTRespTec.Set_IdCSRT(Value: WideString);
begin
  ChildNodes['idCSRT'].NodeValue := Value;
end;

function TXMLTRespTec.Get_HashCSRT: WideString;
begin
  Result := ChildNodes['hashCSRT'].Text;
end;

procedure TXMLTRespTec.Set_HashCSRT(Value: WideString);
begin
  ChildNodes['hashCSRT'].NodeValue := Value;
end;

{ TXMLInfMDFeSupl }

function TXMLInfMDFeSupl.Get_QrCodMDFe: WideString;
begin
  Result := ChildNodes['qrCodMDFe'].Text;
end;

procedure TXMLInfMDFeSupl.Set_QrCodMDFe(Value: WideString);
begin
  ChildNodes['qrCodMDFe'].NodeValue := Value;
end;

{ TXMLSignatureType_ds }

procedure TXMLSignatureType_ds.AfterConstruction;
begin
  RegisterChildNode('SignedInfo', TXMLSignedInfoType_ds);
  RegisterChildNode('SignatureValue', TXMLSignatureValueType_ds);
  RegisterChildNode('KeyInfo', TXMLKeyInfoType_ds);
  inherited;
end;

function TXMLSignatureType_ds.Get_Id: WideString;
begin
  Result := AttributeNodes['Id'].Text;
end;

procedure TXMLSignatureType_ds.Set_Id(Value: WideString);
begin
  SetAttribute('Id', Value);
end;

function TXMLSignatureType_ds.Get_SignedInfo: IXMLSignedInfoType_ds;
begin
  Result := ChildNodes['SignedInfo'] as IXMLSignedInfoType_ds;
end;

function TXMLSignatureType_ds.Get_SignatureValue: IXMLSignatureValueType_ds;
begin
  Result := ChildNodes['SignatureValue'] as IXMLSignatureValueType_ds;
end;

function TXMLSignatureType_ds.Get_KeyInfo: IXMLKeyInfoType_ds;
begin
  Result := ChildNodes['KeyInfo'] as IXMLKeyInfoType_ds;
end;

{ TXMLSignedInfoType_ds }

procedure TXMLSignedInfoType_ds.AfterConstruction;
begin
  RegisterChildNode('CanonicalizationMethod', TXMLCanonicalizationMethod_ds);
  RegisterChildNode('SignatureMethod', TXMLSignatureMethod_ds);
  RegisterChildNode('Reference', TXMLReferenceType_ds);
  inherited;
end;

function TXMLSignedInfoType_ds.Get_Id: WideString;
begin
  Result := AttributeNodes['Id'].Text;
end;

procedure TXMLSignedInfoType_ds.Set_Id(Value: WideString);
begin
  SetAttribute('Id', Value);
end;

function TXMLSignedInfoType_ds.Get_CanonicalizationMethod: IXMLCanonicalizationMethod_ds;
begin
  Result := ChildNodes['CanonicalizationMethod'] as IXMLCanonicalizationMethod_ds;
end;

function TXMLSignedInfoType_ds.Get_SignatureMethod: IXMLSignatureMethod_ds;
begin
  Result := ChildNodes['SignatureMethod'] as IXMLSignatureMethod_ds;
end;

function TXMLSignedInfoType_ds.Get_Reference: IXMLReferenceType_ds;
begin
  Result := ChildNodes['Reference'] as IXMLReferenceType_ds;
end;

{ TXMLCanonicalizationMethod_ds }

function TXMLCanonicalizationMethod_ds.Get_Algorithm: WideString;
begin
  Result := AttributeNodes['Algorithm'].Text;
end;

procedure TXMLCanonicalizationMethod_ds.Set_Algorithm(Value: WideString);
begin
  SetAttribute('Algorithm', Value);
end;

{ TXMLSignatureMethod_ds }

function TXMLSignatureMethod_ds.Get_Algorithm: WideString;
begin
  Result := AttributeNodes['Algorithm'].Text;
end;

procedure TXMLSignatureMethod_ds.Set_Algorithm(Value: WideString);
begin
  SetAttribute('Algorithm', Value);
end;

{ TXMLReferenceType_ds }

procedure TXMLReferenceType_ds.AfterConstruction;
begin
  RegisterChildNode('Transforms', TXMLTransformsType_ds);
  RegisterChildNode('DigestMethod', TXMLDigestMethod_ds);
  inherited;
end;

function TXMLReferenceType_ds.Get_Id: WideString;
begin
  Result := AttributeNodes['Id'].Text;
end;

procedure TXMLReferenceType_ds.Set_Id(Value: WideString);
begin
  SetAttribute('Id', Value);
end;

function TXMLReferenceType_ds.Get_URI: WideString;
begin
  Result := AttributeNodes['URI'].Text;
end;

procedure TXMLReferenceType_ds.Set_URI(Value: WideString);
begin
  SetAttribute('URI', Value);
end;

function TXMLReferenceType_ds.Get_Type_: WideString;
begin
  Result := AttributeNodes['Type'].Text;
end;

procedure TXMLReferenceType_ds.Set_Type_(Value: WideString);
begin
  SetAttribute('Type', Value);
end;

function TXMLReferenceType_ds.Get_Transforms: IXMLTransformsType_ds;
begin
  Result := ChildNodes['Transforms'] as IXMLTransformsType_ds;
end;

function TXMLReferenceType_ds.Get_DigestMethod: IXMLDigestMethod_ds;
begin
  Result := ChildNodes['DigestMethod'] as IXMLDigestMethod_ds;
end;

function TXMLReferenceType_ds.Get_DigestValue: WideString;
begin
  Result := ChildNodes['DigestValue'].Text;
end;

procedure TXMLReferenceType_ds.Set_DigestValue(Value: WideString);
begin
  ChildNodes['DigestValue'].NodeValue := Value;
end;

{ TXMLTransformsType_ds }

procedure TXMLTransformsType_ds.AfterConstruction;
begin
  RegisterChildNode('Transform', TXMLTransformType_ds);
  ItemTag := 'Transform';
  ItemInterface := IXMLTransformType_ds;
  inherited;
end;

function TXMLTransformsType_ds.Get_Transform(Index: Integer): IXMLTransformType_ds;
begin
  Result := List[Index] as IXMLTransformType_ds;
end;

function TXMLTransformsType_ds.Add: IXMLTransformType_ds;
begin
  Result := AddItem(-1) as IXMLTransformType_ds;
end;

function TXMLTransformsType_ds.Insert(const Index: Integer): IXMLTransformType_ds;
begin
  Result := AddItem(Index) as IXMLTransformType_ds;
end;

{ TXMLTransformType_ds }

procedure TXMLTransformType_ds.AfterConstruction;
begin
  ItemTag := 'XPath';
  ItemInterface := IXMLNode;
  inherited;
end;

function TXMLTransformType_ds.Get_Algorithm: WideString;
begin
  Result := AttributeNodes['Algorithm'].Text;
end;

procedure TXMLTransformType_ds.Set_Algorithm(Value: WideString);
begin
  SetAttribute('Algorithm', Value);
end;

function TXMLTransformType_ds.Get_XPath(Index: Integer): WideString;
begin
  Result := List[Index].Text;
end;

function TXMLTransformType_ds.Add(const XPath: WideString): IXMLNode;
begin
  Result := AddItem(-1);
  Result.NodeValue := XPath;
end;

function TXMLTransformType_ds.Insert(const Index: Integer; const XPath: WideString): IXMLNode;
begin
  Result := AddItem(Index);
  Result.NodeValue := XPath;
end;

{ TXMLDigestMethod_ds }

function TXMLDigestMethod_ds.Get_Algorithm: WideString;
begin
  Result := AttributeNodes['Algorithm'].Text;
end;

procedure TXMLDigestMethod_ds.Set_Algorithm(Value: WideString);
begin
  SetAttribute('Algorithm', Value);
end;

{ TXMLSignatureValueType_ds }

function TXMLSignatureValueType_ds.Get_Id: WideString;
begin
  Result := AttributeNodes['Id'].Text;
end;

procedure TXMLSignatureValueType_ds.Set_Id(Value: WideString);
begin
  SetAttribute('Id', Value);
end;

{ TXMLKeyInfoType_ds }

procedure TXMLKeyInfoType_ds.AfterConstruction;
begin
  RegisterChildNode('X509Data', TXMLX509DataType_ds);
  inherited;
end;

function TXMLKeyInfoType_ds.Get_Id: WideString;
begin
  Result := AttributeNodes['Id'].Text;
end;

procedure TXMLKeyInfoType_ds.Set_Id(Value: WideString);
begin
  SetAttribute('Id', Value);
end;

function TXMLKeyInfoType_ds.Get_X509Data: IXMLX509DataType_ds;
begin
  Result := ChildNodes['X509Data'] as IXMLX509DataType_ds;
end;

{ TXMLX509DataType_ds }

function TXMLX509DataType_ds.Get_X509Certificate: WideString;
begin
  Result := ChildNodes['X509Certificate'].Text;
end;

procedure TXMLX509DataType_ds.Set_X509Certificate(Value: WideString);
begin
  ChildNodes['X509Certificate'].NodeValue := Value;
end;

{ TXMLTRetMDFe }

procedure TXMLTRetMDFe.AfterConstruction;
begin
  RegisterChildNode('protMDFe', TXMLTProtMDFe);
  inherited;
end;

function TXMLTRetMDFe.Get_Versao: WideString;
begin
  Result := AttributeNodes['versao'].Text;
end;

procedure TXMLTRetMDFe.Set_Versao(Value: WideString);
begin
  SetAttribute('versao', Value);
end;

function TXMLTRetMDFe.Get_TpAmb: WideString;
begin
  Result := ChildNodes['tpAmb'].Text;
end;

procedure TXMLTRetMDFe.Set_TpAmb(Value: WideString);
begin
  ChildNodes['tpAmb'].NodeValue := Value;
end;

function TXMLTRetMDFe.Get_CUF: WideString;
begin
  Result := ChildNodes['cUF'].Text;
end;

procedure TXMLTRetMDFe.Set_CUF(Value: WideString);
begin
  ChildNodes['cUF'].NodeValue := Value;
end;

function TXMLTRetMDFe.Get_VerAplic: WideString;
begin
  Result := ChildNodes['verAplic'].Text;
end;

procedure TXMLTRetMDFe.Set_VerAplic(Value: WideString);
begin
  ChildNodes['verAplic'].NodeValue := Value;
end;

function TXMLTRetMDFe.Get_CStat: WideString;
begin
  Result := ChildNodes['cStat'].Text;
end;

procedure TXMLTRetMDFe.Set_CStat(Value: WideString);
begin
  ChildNodes['cStat'].NodeValue := Value;
end;

function TXMLTRetMDFe.Get_XMotivo: WideString;
begin
  Result := ChildNodes['xMotivo'].Text;
end;

procedure TXMLTRetMDFe.Set_XMotivo(Value: WideString);
begin
  ChildNodes['xMotivo'].NodeValue := Value;
end;

function TXMLTRetMDFe.Get_ProtMDFe: IXMLTProtMDFe;
begin
  Result := ChildNodes['protMDFe'] as IXMLTProtMDFe;
end;

{ TXMLTProtMDFe }

procedure TXMLTProtMDFe.AfterConstruction;
begin
  RegisterChildNode('infProt', TXMLInfProt);
  RegisterChildNode('infFisco', TXMLInfFisco);
  RegisterChildNode('Signature', TXMLSignatureType_ds);
  inherited;
end;

function TXMLTProtMDFe.Get_Versao: WideString;
begin
  Result := AttributeNodes['versao'].Text;
end;

procedure TXMLTProtMDFe.Set_Versao(Value: WideString);
begin
  SetAttribute('versao', Value);
end;

function TXMLTProtMDFe.Get_InfProt: IXMLInfProt;
begin
  Result := ChildNodes['infProt'] as IXMLInfProt;
end;

function TXMLTProtMDFe.Get_InfFisco: IXMLInfFisco;
begin
  Result := ChildNodes['infFisco'] as IXMLInfFisco;
end;

function TXMLTProtMDFe.Get_Signature: IXMLSignatureType_ds;
begin
  Result := ChildNodes['Signature'] as IXMLSignatureType_ds;
end;

{ TXMLInfProt }

function TXMLInfProt.Get_Id: WideString;
begin
  Result := AttributeNodes['Id'].Text;
end;

procedure TXMLInfProt.Set_Id(Value: WideString);
begin
  SetAttribute('Id', Value);
end;

function TXMLInfProt.Get_TpAmb: WideString;
begin
  Result := ChildNodes['tpAmb'].Text;
end;

procedure TXMLInfProt.Set_TpAmb(Value: WideString);
begin
  ChildNodes['tpAmb'].NodeValue := Value;
end;

function TXMLInfProt.Get_VerAplic: WideString;
begin
  Result := ChildNodes['verAplic'].Text;
end;

procedure TXMLInfProt.Set_VerAplic(Value: WideString);
begin
  ChildNodes['verAplic'].NodeValue := Value;
end;

function TXMLInfProt.Get_ChMDFe: WideString;
begin
  Result := ChildNodes['chMDFe'].Text;
end;

procedure TXMLInfProt.Set_ChMDFe(Value: WideString);
begin
  ChildNodes['chMDFe'].NodeValue := Value;
end;

function TXMLInfProt.Get_DhRecbto: WideString;
begin
  Result := ChildNodes['dhRecbto'].Text;
end;

procedure TXMLInfProt.Set_DhRecbto(Value: WideString);
begin
  ChildNodes['dhRecbto'].NodeValue := Value;
end;

function TXMLInfProt.Get_NProt: WideString;
begin
  Result := ChildNodes['nProt'].Text;
end;

procedure TXMLInfProt.Set_NProt(Value: WideString);
begin
  ChildNodes['nProt'].NodeValue := Value;
end;

function TXMLInfProt.Get_DigVal: WideString;
begin
  Result := ChildNodes['digVal'].Text;
end;

procedure TXMLInfProt.Set_DigVal(Value: WideString);
begin
  ChildNodes['digVal'].NodeValue := Value;
end;

function TXMLInfProt.Get_CStat: WideString;
begin
  Result := ChildNodes['cStat'].Text;
end;

procedure TXMLInfProt.Set_CStat(Value: WideString);
begin
  ChildNodes['cStat'].NodeValue := Value;
end;

function TXMLInfProt.Get_XMotivo: WideString;
begin
  Result := ChildNodes['xMotivo'].Text;
end;

procedure TXMLInfProt.Set_XMotivo(Value: WideString);
begin
  ChildNodes['xMotivo'].NodeValue := Value;
end;

{ TXMLInfFisco }

function TXMLInfFisco.Get_CMsg: WideString;
begin
  Result := ChildNodes['cMsg'].Text;
end;

procedure TXMLInfFisco.Set_CMsg(Value: WideString);
begin
  ChildNodes['cMsg'].NodeValue := Value;
end;

function TXMLInfFisco.Get_XMsg: WideString;
begin
  Result := ChildNodes['xMsg'].Text;
end;

procedure TXMLInfFisco.Set_XMsg(Value: WideString);
begin
  ChildNodes['xMsg'].NodeValue := Value;
end;

{ TXMLTRetEnviMDFe }

procedure TXMLTRetEnviMDFe.AfterConstruction;
begin
  RegisterChildNode('infRec', TXMLInfRec);
  inherited;
end;

function TXMLTRetEnviMDFe.Get_Versao: WideString;
begin
  Result := AttributeNodes['versao'].Text;
end;

procedure TXMLTRetEnviMDFe.Set_Versao(Value: WideString);
begin
  SetAttribute('versao', Value);
end;

function TXMLTRetEnviMDFe.Get_TpAmb: WideString;
begin
  Result := ChildNodes['tpAmb'].Text;
end;

procedure TXMLTRetEnviMDFe.Set_TpAmb(Value: WideString);
begin
  ChildNodes['tpAmb'].NodeValue := Value;
end;

function TXMLTRetEnviMDFe.Get_CUF: WideString;
begin
  Result := ChildNodes['cUF'].Text;
end;

procedure TXMLTRetEnviMDFe.Set_CUF(Value: WideString);
begin
  ChildNodes['cUF'].NodeValue := Value;
end;

function TXMLTRetEnviMDFe.Get_VerAplic: WideString;
begin
  Result := ChildNodes['verAplic'].Text;
end;

procedure TXMLTRetEnviMDFe.Set_VerAplic(Value: WideString);
begin
  ChildNodes['verAplic'].NodeValue := Value;
end;

function TXMLTRetEnviMDFe.Get_CStat: WideString;
begin
  Result := ChildNodes['cStat'].Text;
end;

procedure TXMLTRetEnviMDFe.Set_CStat(Value: WideString);
begin
  ChildNodes['cStat'].NodeValue := Value;
end;

function TXMLTRetEnviMDFe.Get_XMotivo: WideString;
begin
  Result := ChildNodes['xMotivo'].Text;
end;

procedure TXMLTRetEnviMDFe.Set_XMotivo(Value: WideString);
begin
  ChildNodes['xMotivo'].NodeValue := Value;
end;

function TXMLTRetEnviMDFe.Get_InfRec: IXMLInfRec;
begin
  Result := ChildNodes['infRec'] as IXMLInfRec;
end;

{ TXMLInfRec }

function TXMLInfRec.Get_NRec: WideString;
begin
  Result := ChildNodes['nRec'].Text;
end;

procedure TXMLInfRec.Set_NRec(Value: WideString);
begin
  ChildNodes['nRec'].NodeValue := Value;
end;

function TXMLInfRec.Get_DhRecbto: WideString;
begin
  Result := ChildNodes['dhRecbto'].Text;
end;

procedure TXMLInfRec.Set_DhRecbto(Value: WideString);
begin
  ChildNodes['dhRecbto'].NodeValue := Value;
end;

function TXMLInfRec.Get_TMed: Integer;
begin
  Result := ChildNodes['tMed'].NodeValue;
end;

procedure TXMLInfRec.Set_TMed(Value: Integer);
begin
  ChildNodes['tMed'].NodeValue := Value;
end;

{ TXMLTEndereco }

function TXMLTEndereco.Get_XLgr: WideString;
begin
  Result := ChildNodes['xLgr'].Text;
end;

procedure TXMLTEndereco.Set_XLgr(Value: WideString);
begin
  ChildNodes['xLgr'].NodeValue := Value;
end;

function TXMLTEndereco.Get_Nro: WideString;
begin
  Result := ChildNodes['nro'].Text;
end;

procedure TXMLTEndereco.Set_Nro(Value: WideString);
begin
  ChildNodes['nro'].NodeValue := Value;
end;

function TXMLTEndereco.Get_XCpl: WideString;
begin
  Result := ChildNodes['xCpl'].Text;
end;

procedure TXMLTEndereco.Set_XCpl(Value: WideString);
begin
  ChildNodes['xCpl'].NodeValue := Value;
end;

function TXMLTEndereco.Get_XBairro: WideString;
begin
  Result := ChildNodes['xBairro'].Text;
end;

procedure TXMLTEndereco.Set_XBairro(Value: WideString);
begin
  ChildNodes['xBairro'].NodeValue := Value;
end;

function TXMLTEndereco.Get_CMun: WideString;
begin
  Result := ChildNodes['cMun'].Text;
end;

procedure TXMLTEndereco.Set_CMun(Value: WideString);
begin
  ChildNodes['cMun'].NodeValue := Value;
end;

function TXMLTEndereco.Get_XMun: WideString;
begin
  Result := ChildNodes['xMun'].Text;
end;

procedure TXMLTEndereco.Set_XMun(Value: WideString);
begin
  ChildNodes['xMun'].NodeValue := Value;
end;

function TXMLTEndereco.Get_CEP: WideString;
begin
  Result := ChildNodes['CEP'].Text;
end;

procedure TXMLTEndereco.Set_CEP(Value: WideString);
begin
  ChildNodes['CEP'].NodeValue := Value;
end;

function TXMLTEndereco.Get_UF: WideString;
begin
  Result := ChildNodes['UF'].Text;
end;

procedure TXMLTEndereco.Set_UF(Value: WideString);
begin
  ChildNodes['UF'].NodeValue := Value;
end;

function TXMLTEndereco.Get_CPais: WideString;
begin
  Result := ChildNodes['cPais'].Text;
end;

procedure TXMLTEndereco.Set_CPais(Value: WideString);
begin
  ChildNodes['cPais'].NodeValue := Value;
end;

function TXMLTEndereco.Get_XPais: WideString;
begin
  Result := ChildNodes['xPais'].Text;
end;

procedure TXMLTEndereco.Set_XPais(Value: WideString);
begin
  ChildNodes['xPais'].NodeValue := Value;
end;

{ TXMLTEndernac }

function TXMLTEndernac.Get_XLgr: WideString;
begin
  Result := ChildNodes['xLgr'].Text;
end;

procedure TXMLTEndernac.Set_XLgr(Value: WideString);
begin
  ChildNodes['xLgr'].NodeValue := Value;
end;

function TXMLTEndernac.Get_Nro: WideString;
begin
  Result := ChildNodes['nro'].Text;
end;

procedure TXMLTEndernac.Set_Nro(Value: WideString);
begin
  ChildNodes['nro'].NodeValue := Value;
end;

function TXMLTEndernac.Get_XCpl: WideString;
begin
  Result := ChildNodes['xCpl'].Text;
end;

procedure TXMLTEndernac.Set_XCpl(Value: WideString);
begin
  ChildNodes['xCpl'].NodeValue := Value;
end;

function TXMLTEndernac.Get_XBairro: WideString;
begin
  Result := ChildNodes['xBairro'].Text;
end;

procedure TXMLTEndernac.Set_XBairro(Value: WideString);
begin
  ChildNodes['xBairro'].NodeValue := Value;
end;

function TXMLTEndernac.Get_CMun: WideString;
begin
  Result := ChildNodes['cMun'].Text;
end;

procedure TXMLTEndernac.Set_CMun(Value: WideString);
begin
  ChildNodes['cMun'].NodeValue := Value;
end;

function TXMLTEndernac.Get_XMun: WideString;
begin
  Result := ChildNodes['xMun'].Text;
end;

procedure TXMLTEndernac.Set_XMun(Value: WideString);
begin
  ChildNodes['xMun'].NodeValue := Value;
end;

function TXMLTEndernac.Get_CEP: WideString;
begin
  Result := ChildNodes['CEP'].Text;
end;

procedure TXMLTEndernac.Set_CEP(Value: WideString);
begin
  ChildNodes['CEP'].NodeValue := Value;
end;

function TXMLTEndernac.Get_UF: WideString;
begin
  Result := ChildNodes['UF'].Text;
end;

procedure TXMLTEndernac.Set_UF(Value: WideString);
begin
  ChildNodes['UF'].NodeValue := Value;
end;

{ TXMLTEnderFer }

function TXMLTEnderFer.Get_XLgr: WideString;
begin
  Result := ChildNodes['xLgr'].Text;
end;

procedure TXMLTEnderFer.Set_XLgr(Value: WideString);
begin
  ChildNodes['xLgr'].NodeValue := Value;
end;

function TXMLTEnderFer.Get_Nro: WideString;
begin
  Result := ChildNodes['nro'].Text;
end;

procedure TXMLTEnderFer.Set_Nro(Value: WideString);
begin
  ChildNodes['nro'].NodeValue := Value;
end;

function TXMLTEnderFer.Get_XCpl: WideString;
begin
  Result := ChildNodes['xCpl'].Text;
end;

procedure TXMLTEnderFer.Set_XCpl(Value: WideString);
begin
  ChildNodes['xCpl'].NodeValue := Value;
end;

function TXMLTEnderFer.Get_XBairro: WideString;
begin
  Result := ChildNodes['xBairro'].Text;
end;

procedure TXMLTEnderFer.Set_XBairro(Value: WideString);
begin
  ChildNodes['xBairro'].NodeValue := Value;
end;

function TXMLTEnderFer.Get_CMun: WideString;
begin
  Result := ChildNodes['cMun'].Text;
end;

procedure TXMLTEnderFer.Set_CMun(Value: WideString);
begin
  ChildNodes['cMun'].NodeValue := Value;
end;

function TXMLTEnderFer.Get_XMun: WideString;
begin
  Result := ChildNodes['xMun'].Text;
end;

procedure TXMLTEnderFer.Set_XMun(Value: WideString);
begin
  ChildNodes['xMun'].NodeValue := Value;
end;

function TXMLTEnderFer.Get_CEP: WideString;
begin
  Result := ChildNodes['CEP'].Text;
end;

procedure TXMLTEnderFer.Set_CEP(Value: WideString);
begin
  ChildNodes['CEP'].NodeValue := Value;
end;

function TXMLTEnderFer.Get_UF: WideString;
begin
  Result := ChildNodes['UF'].Text;
end;

procedure TXMLTEnderFer.Set_UF(Value: WideString);
begin
  ChildNodes['UF'].NodeValue := Value;
end;

{ TXMLTEndOrg }

function TXMLTEndOrg.Get_XLgr: WideString;
begin
  Result := ChildNodes['xLgr'].Text;
end;

procedure TXMLTEndOrg.Set_XLgr(Value: WideString);
begin
  ChildNodes['xLgr'].NodeValue := Value;
end;

function TXMLTEndOrg.Get_Nro: WideString;
begin
  Result := ChildNodes['nro'].Text;
end;

procedure TXMLTEndOrg.Set_Nro(Value: WideString);
begin
  ChildNodes['nro'].NodeValue := Value;
end;

function TXMLTEndOrg.Get_XCpl: WideString;
begin
  Result := ChildNodes['xCpl'].Text;
end;

procedure TXMLTEndOrg.Set_XCpl(Value: WideString);
begin
  ChildNodes['xCpl'].NodeValue := Value;
end;

function TXMLTEndOrg.Get_XBairro: WideString;
begin
  Result := ChildNodes['xBairro'].Text;
end;

procedure TXMLTEndOrg.Set_XBairro(Value: WideString);
begin
  ChildNodes['xBairro'].NodeValue := Value;
end;

function TXMLTEndOrg.Get_CMun: WideString;
begin
  Result := ChildNodes['cMun'].Text;
end;

procedure TXMLTEndOrg.Set_CMun(Value: WideString);
begin
  ChildNodes['cMun'].NodeValue := Value;
end;

function TXMLTEndOrg.Get_XMun: WideString;
begin
  Result := ChildNodes['xMun'].Text;
end;

procedure TXMLTEndOrg.Set_XMun(Value: WideString);
begin
  ChildNodes['xMun'].NodeValue := Value;
end;

function TXMLTEndOrg.Get_CEP: WideString;
begin
  Result := ChildNodes['CEP'].Text;
end;

procedure TXMLTEndOrg.Set_CEP(Value: WideString);
begin
  ChildNodes['CEP'].NodeValue := Value;
end;

function TXMLTEndOrg.Get_UF: WideString;
begin
  Result := ChildNodes['UF'].Text;
end;

procedure TXMLTEndOrg.Set_UF(Value: WideString);
begin
  ChildNodes['UF'].NodeValue := Value;
end;

function TXMLTEndOrg.Get_CPais: WideString;
begin
  Result := ChildNodes['cPais'].Text;
end;

procedure TXMLTEndOrg.Set_CPais(Value: WideString);
begin
  ChildNodes['cPais'].NodeValue := Value;
end;

function TXMLTEndOrg.Get_XPais: WideString;
begin
  Result := ChildNodes['xPais'].Text;
end;

procedure TXMLTEndOrg.Set_XPais(Value: WideString);
begin
  ChildNodes['xPais'].NodeValue := Value;
end;

function TXMLTEndOrg.Get_Fone: WideString;
begin
  Result := ChildNodes['fone'].Text;
end;

procedure TXMLTEndOrg.Set_Fone(Value: WideString);
begin
  ChildNodes['fone'].NodeValue := Value;
end;

{ TXMLTLocal }

function TXMLTLocal.Get_CMun: WideString;
begin
  Result := ChildNodes['cMun'].Text;
end;

procedure TXMLTLocal.Set_CMun(Value: WideString);
begin
  ChildNodes['cMun'].NodeValue := Value;
end;

function TXMLTLocal.Get_XMun: WideString;
begin
  Result := ChildNodes['xMun'].Text;
end;

procedure TXMLTLocal.Set_XMun(Value: WideString);
begin
  ChildNodes['xMun'].NodeValue := Value;
end;

function TXMLTLocal.Get_UF: WideString;
begin
  Result := ChildNodes['UF'].Text;
end;

procedure TXMLTLocal.Set_UF(Value: WideString);
begin
  ChildNodes['UF'].NodeValue := Value;
end;

{ TXMLTEndReEnt }

function TXMLTEndReEnt.Get_CNPJ: WideString;
begin
  Result := ChildNodes['CNPJ'].Text;
end;

procedure TXMLTEndReEnt.Set_CNPJ(Value: WideString);
begin
  ChildNodes['CNPJ'].NodeValue := Value;
end;

function TXMLTEndReEnt.Get_CPF: WideString;
begin
  Result := ChildNodes['CPF'].Text;
end;

procedure TXMLTEndReEnt.Set_CPF(Value: WideString);
begin
  ChildNodes['CPF'].NodeValue := Value;
end;

function TXMLTEndReEnt.Get_XNome: WideString;
begin
  Result := ChildNodes['xNome'].Text;
end;

procedure TXMLTEndReEnt.Set_XNome(Value: WideString);
begin
  ChildNodes['xNome'].NodeValue := Value;
end;

function TXMLTEndReEnt.Get_XLgr: WideString;
begin
  Result := ChildNodes['xLgr'].Text;
end;

procedure TXMLTEndReEnt.Set_XLgr(Value: WideString);
begin
  ChildNodes['xLgr'].NodeValue := Value;
end;

function TXMLTEndReEnt.Get_Nro: WideString;
begin
  Result := ChildNodes['nro'].Text;
end;

procedure TXMLTEndReEnt.Set_Nro(Value: WideString);
begin
  ChildNodes['nro'].NodeValue := Value;
end;

function TXMLTEndReEnt.Get_XCpl: WideString;
begin
  Result := ChildNodes['xCpl'].Text;
end;

procedure TXMLTEndReEnt.Set_XCpl(Value: WideString);
begin
  ChildNodes['xCpl'].NodeValue := Value;
end;

function TXMLTEndReEnt.Get_XBairro: WideString;
begin
  Result := ChildNodes['xBairro'].Text;
end;

procedure TXMLTEndReEnt.Set_XBairro(Value: WideString);
begin
  ChildNodes['xBairro'].NodeValue := Value;
end;

function TXMLTEndReEnt.Get_CMun: WideString;
begin
  Result := ChildNodes['cMun'].Text;
end;

procedure TXMLTEndReEnt.Set_CMun(Value: WideString);
begin
  ChildNodes['cMun'].NodeValue := Value;
end;

function TXMLTEndReEnt.Get_XMun: WideString;
begin
  Result := ChildNodes['xMun'].Text;
end;

procedure TXMLTEndReEnt.Set_XMun(Value: WideString);
begin
  ChildNodes['xMun'].NodeValue := Value;
end;

function TXMLTEndReEnt.Get_UF: WideString;
begin
  Result := ChildNodes['UF'].Text;
end;

procedure TXMLTEndReEnt.Set_UF(Value: WideString);
begin
  ChildNodes['UF'].NodeValue := Value;
end;

{ TXMLTNFeNF }

procedure TXMLTNFeNF.AfterConstruction;
begin
  RegisterChildNode('infNFe', TXMLInfNFe);
  RegisterChildNode('infNF', TXMLInfNF);
  inherited;
end;

function TXMLTNFeNF.Get_InfNFe: IXMLInfNFe;
begin
  Result := ChildNodes['infNFe'] as IXMLInfNFe;
end;

function TXMLTNFeNF.Get_InfNF: IXMLInfNF;
begin
  Result := ChildNodes['infNF'] as IXMLInfNF;
end;

{ TXMLInfNF }

procedure TXMLInfNF.AfterConstruction;
begin
  RegisterChildNode('emi', TXMLEmi);
  RegisterChildNode('dest', TXMLDest);
  inherited;
end;

function TXMLInfNF.Get_Emi: IXMLEmi;
begin
  Result := ChildNodes['emi'] as IXMLEmi;
end;

function TXMLInfNF.Get_Dest: IXMLDest;
begin
  Result := ChildNodes['dest'] as IXMLDest;
end;

function TXMLInfNF.Get_Serie: WideString;
begin
  Result := ChildNodes['serie'].Text;
end;

procedure TXMLInfNF.Set_Serie(Value: WideString);
begin
  ChildNodes['serie'].NodeValue := Value;
end;

function TXMLInfNF.Get_NNF: WideString;
begin
  Result := ChildNodes['nNF'].Text;
end;

procedure TXMLInfNF.Set_NNF(Value: WideString);
begin
  ChildNodes['nNF'].NodeValue := Value;
end;

function TXMLInfNF.Get_DEmi: WideString;
begin
  Result := ChildNodes['dEmi'].Text;
end;

procedure TXMLInfNF.Set_DEmi(Value: WideString);
begin
  ChildNodes['dEmi'].NodeValue := Value;
end;

function TXMLInfNF.Get_VNF: WideString;
begin
  Result := ChildNodes['vNF'].Text;
end;

procedure TXMLInfNF.Set_VNF(Value: WideString);
begin
  ChildNodes['vNF'].NodeValue := Value;
end;

function TXMLInfNF.Get_PIN: WideString;
begin
  Result := ChildNodes['PIN'].Text;
end;

procedure TXMLInfNF.Set_PIN(Value: WideString);
begin
  ChildNodes['PIN'].NodeValue := Value;
end;

{ TXMLEmi }

function TXMLEmi.Get_CNPJ: WideString;
begin
  Result := ChildNodes['CNPJ'].Text;
end;

procedure TXMLEmi.Set_CNPJ(Value: WideString);
begin
  ChildNodes['CNPJ'].NodeValue := Value;
end;

function TXMLEmi.Get_XNome: WideString;
begin
  Result := ChildNodes['xNome'].Text;
end;

procedure TXMLEmi.Set_XNome(Value: WideString);
begin
  ChildNodes['xNome'].NodeValue := Value;
end;

function TXMLEmi.Get_UF: WideString;
begin
  Result := ChildNodes['UF'].Text;
end;

procedure TXMLEmi.Set_UF(Value: WideString);
begin
  ChildNodes['UF'].NodeValue := Value;
end;

{ TXMLDest }

function TXMLDest.Get_CNPJ: WideString;
begin
  Result := ChildNodes['CNPJ'].Text;
end;

procedure TXMLDest.Set_CNPJ(Value: WideString);
begin
  ChildNodes['CNPJ'].NodeValue := Value;
end;

function TXMLDest.Get_CPF: WideString;
begin
  Result := ChildNodes['CPF'].Text;
end;

procedure TXMLDest.Set_CPF(Value: WideString);
begin
  ChildNodes['CPF'].NodeValue := Value;
end;

function TXMLDest.Get_XNome: WideString;
begin
  Result := ChildNodes['xNome'].Text;
end;

procedure TXMLDest.Set_XNome(Value: WideString);
begin
  ChildNodes['xNome'].NodeValue := Value;
end;

function TXMLDest.Get_UF: WideString;
begin
  Result := ChildNodes['UF'].Text;
end;

procedure TXMLDest.Set_UF(Value: WideString);
begin
  ChildNodes['UF'].NodeValue := Value;
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
