unit UDMCadMDFe;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr, LogTypes, DBXpress, DBTables;

type
  TDMCadMDFe = class(TDataModule)
    sdsMDFe: TSQLDataSet;
    dspMDFe: TDataSetProvider;
    cdsMDFe: TClientDataSet;
    dsMDFe: TDataSource;
    sdsUF: TSQLDataSet;
    dspUF: TDataSetProvider;
    cdsUF: TClientDataSet;
    dsUF: TDataSource;
    sdsProprietario_Vei: TSQLDataSet;
    dspProprietario_Vei: TDataSetProvider;
    cdsProprietario_Vei: TClientDataSet;
    dsProprietario_Vei: TDataSource;
    cdsProprietario_VeiID: TIntegerField;
    cdsProprietario_VeiNOME: TStringField;
    cdsProprietario_VeiCNPJ_CPF: TStringField;
    cdsProprietario_VeiINSC_ESTADUAL: TStringField;
    cdsProprietario_VeiUF: TStringField;
    cdsProprietario_VeiTIPO_REG: TStringField;
    cdsProprietario_VeiRNTRC: TStringField;
    sdsMDFeID: TIntegerField;
    sdsMDFeTIPO_AMBIENTE: TStringField;
    sdsMDFeTIPO_EMITENTE: TStringField;
    sdsMDFeTIPO_TRANSPORTADOR: TStringField;
    sdsMDFeSERIE: TStringField;
    sdsMDFeNUM_MANIFESTO: TIntegerField;
    sdsMDFeMODALIDADE_TRANSP: TStringField;
    sdsMDFeDTEMISSAO: TDateField;
    sdsMDFeHREMISSAO: TTimeField;
    sdsMDFeFORMA_EMISSAO: TStringField;
    sdsMDFeTIPO_EMISSAO: TStringField;
    sdsMDFeVERSAO_EMISSAO: TStringField;
    sdsMDFeUF_CARREGAMENTO: TStringField;
    sdsMDFeUF_DESCARREGAMENTO: TStringField;
    sdsMDFeCHAVE_ACESSO: TStringField;
    sdsMDFeQTD_NFE: TIntegerField;
    sdsMDFeQTD_MDFE: TIntegerField;
    sdsMDFeVLR_TOTAL: TFloatField;
    sdsMDFeUNIDADE_PESO: TStringField;
    sdsMDFePESO_BRUTO: TFloatField;
    sdsMDFeINF_FISCO: TMemoField;
    sdsMDFeINF_ADICIONAIS: TMemoField;
    cdsMDFeID: TIntegerField;
    cdsMDFeTIPO_AMBIENTE: TStringField;
    cdsMDFeTIPO_EMITENTE: TStringField;
    cdsMDFeTIPO_TRANSPORTADOR: TStringField;
    cdsMDFeSERIE: TStringField;
    cdsMDFeNUM_MANIFESTO: TIntegerField;
    cdsMDFeMODALIDADE_TRANSP: TStringField;
    cdsMDFeDTEMISSAO: TDateField;
    cdsMDFeHREMISSAO: TTimeField;
    cdsMDFeFORMA_EMISSAO: TStringField;
    cdsMDFeTIPO_EMISSAO: TStringField;
    cdsMDFeVERSAO_EMISSAO: TStringField;
    cdsMDFeUF_CARREGAMENTO: TStringField;
    cdsMDFeUF_DESCARREGAMENTO: TStringField;
    cdsMDFeCHAVE_ACESSO: TStringField;
    cdsMDFeQTD_NFE: TIntegerField;
    cdsMDFeQTD_MDFE: TIntegerField;
    cdsMDFeVLR_TOTAL: TFloatField;
    cdsMDFeUNIDADE_PESO: TStringField;
    cdsMDFePESO_BRUTO: TFloatField;
    cdsMDFeINF_FISCO: TMemoField;
    cdsMDFeINF_ADICIONAIS: TMemoField;
    dsMDFe_Mestre: TDataSource;
    sdsMDFe_AutXML: TSQLDataSet;
    sdsMDFe_AutXMLID: TIntegerField;
    sdsMDFe_AutXMLITEM: TIntegerField;
    sdsMDFe_AutXMLPESSOA: TStringField;
    sdsMDFe_AutXMLCNPJ_CPF: TStringField;
    cdsMDFesdsMDFe_AutXML: TDataSetField;
    cdsMDFe_AutXML: TClientDataSet;
    cdsMDFe_AutXMLID: TIntegerField;
    cdsMDFe_AutXMLITEM: TIntegerField;
    cdsMDFe_AutXMLPESSOA: TStringField;
    cdsMDFe_AutXMLCNPJ_CPF: TStringField;
    dsMDFe_AutXML: TDataSource;
    sdsMDFe_Averbacao: TSQLDataSet;
    cdsMDFe_Averbacao: TClientDataSet;
    dsMDFe_Averbacao: TDataSource;
    cdsMDFesdsMDFe_Cidade_Des: TDataSetField;
    cdsMDFesdsMDFe_CIOT: TDataSetField;
    cdsMDFesdsMDFe_Condutor: TDataSetField;
    cdsMDFesdsMDFe_Contratante: TDataSetField;
    cdsMDFesdsMDFe_Lacre: TDataSetField;
    cdsMDFesdsMDFe_Pedagio: TDataSetField;
    cdsMDFesdsMDFe_Percurso: TDataSetField;
    cdsMDFesdsMDFe_Reboque: TDataSetField;
    sdsMDFe_Aereo: TSQLDataSet;
    sdsMDFe_AereoID: TIntegerField;
    sdsMDFe_AereoNACIONALIDADE: TStringField;
    sdsMDFe_AereoMATRICULA: TStringField;
    sdsMDFe_AereoNUMERO_VOO: TStringField;
    sdsMDFe_AereoAERODROMO_EMB: TStringField;
    sdsMDFe_AereoAERODROMO_DEST: TStringField;
    sdsMDFe_AereoDTVOO: TDateField;
    cdsMDFe_Aereo: TClientDataSet;
    cdsMDFesdsMDFe_Aereo: TDataSetField;
    cdsMDFe_AereoID: TIntegerField;
    cdsMDFe_AereoNACIONALIDADE: TStringField;
    cdsMDFe_AereoMATRICULA: TStringField;
    cdsMDFe_AereoNUMERO_VOO: TStringField;
    cdsMDFe_AereoAERODROMO_EMB: TStringField;
    cdsMDFe_AereoAERODROMO_DEST: TStringField;
    cdsMDFe_AereoDTVOO: TDateField;
    dsMDFe_Aereo: TDataSource;
    sdsMDFeFILIAL: TIntegerField;
    cdsMDFeFILIAL: TIntegerField;
    cdsMDFesdsMDFe_Cidade_Car: TDataSetField;
    sdsConsulta: TSQLDataSet;
    dspConsulta: TDataSetProvider;
    cdsConsulta: TClientDataSet;
    dsConsulta: TDataSource;
    sdsFilial: TSQLDataSet;
    dspFilial: TDataSetProvider;
    cdsFilial: TClientDataSet;
    dsFilial: TDataSource;
    cdsFilialID: TIntegerField;
    cdsFilialNOME: TStringField;
    cdsFilialNOME_INTERNO: TStringField;
    cdsFilialCNPJ_CPF: TStringField;
    qFilial_MDFe: TSQLQuery;
    qFilial_MDFeID: TIntegerField;
    qFilial_MDFeTIPO_EMITENTE: TStringField;
    qFilial_MDFeTIPO_TRANSPORTADOR: TStringField;
    qFilial_MDFeTIPO_AMBIENTE: TStringField;
    cdsFilialUF: TStringField;
    sdsSeguradora: TSQLDataSet;
    dspSeguradora: TDataSetProvider;
    cdsSeguradora: TClientDataSet;
    dsSeguradora: TDataSource;
    cdsSeguradoraID: TIntegerField;
    cdsSeguradoraNOME: TStringField;
    cdsSeguradoraCNPJ: TStringField;
    cdsSeguradoraINATIVO: TStringField;
    qFilial_Download: TSQLQuery;
    qFilial_DownloadID: TIntegerField;
    qFilial_DownloadITEM: TIntegerField;
    qFilial_DownloadPESSOA: TStringField;
    qFilial_DownloadCNPJ_CPF: TStringField;
    sdsCidade: TSQLDataSet;
    dspCidade: TDataSetProvider;
    cdsCidade: TClientDataSet;
    dsCidade: TDataSource;
    cdsCidadeID: TIntegerField;
    cdsCidadeNOME: TStringField;
    cdsCidadeUF: TStringField;
    qCidade: TSQLQuery;
    qCidadeID: TIntegerField;
    qCidadeNOME: TStringField;
    qCidadeUF: TStringField;
    qFilial_MDFeRNTRC: TStringField;
    sdsVeiculo: TSQLDataSet;
    dspVeiculo: TDataSetProvider;
    cdsVeiculo: TClientDataSet;
    dsVeiculo: TDataSource;
    cdsVeiculoID: TIntegerField;
    cdsVeiculoNOME: TStringField;
    cdsVeiculoPLACA: TStringField;
    cdsVeiculoUF_PLACA: TStringField;
    cdsVeiculoCAPACIDADE: TIntegerField;
    cdsVeiculoRENAVAM: TStringField;
    cdsVeiculoTARA_KG: TFloatField;
    cdsVeiculoCAPACIDADE_KG: TFloatField;
    cdsVeiculoCAPACIDADE_M3: TFloatField;
    cdsVeiculoID_PROPRIETARIO: TIntegerField;
    cdsVeiculoINATIVO: TStringField;
    cdsVeiculoTIPO_RODADO: TStringField;
    cdsVeiculoTIPO_CARROCERIA: TStringField;
    cdsVeiculoTIPO_VEICULO: TStringField;
    sdsMDFeID_VEICULO: TIntegerField;
    cdsMDFeID_VEICULO: TIntegerField;
    sdsMDFeCOD_AG_PORTO: TStringField;
    cdsMDFeCOD_AG_PORTO: TStringField;
    sdsMDFeRNTRC: TStringField;
    cdsMDFeRNTRC: TStringField;
    qVeiculo: TSQLQuery;
    qVeiculoID: TIntegerField;
    qVeiculoNOME: TStringField;
    qVeiculoPLACA: TStringField;
    qVeiculoUF_PLACA: TStringField;
    qVeiculoCAPACIDADE: TIntegerField;
    qVeiculoRENAVAM: TStringField;
    qVeiculoTARA_KG: TFloatField;
    qVeiculoCAPACIDADE_KG: TFloatField;
    qVeiculoCAPACIDADE_M3: TFloatField;
    qVeiculoID_PROPRIETARIO: TIntegerField;
    qVeiculoINATIVO: TStringField;
    qVeiculoTIPO_RODADO: TStringField;
    qVeiculoTIPO_CARROCERIA: TStringField;
    qVeiculoTIPO_VEICULO: TStringField;
    sdsMDFeDTINICIO: TDateField;
    sdsMDFeHRINICIO: TTimeField;
    cdsMDFeDTINICIO: TDateField;
    cdsMDFeHRINICIO: TTimeField;
    sdsMDFePROTOCOLO_MDFE: TStringField;
    cdsMDFePROTOCOLO_MDFE: TStringField;
    sdsMDFe_Seguradora: TSQLDataSet;
    cdsMDFe_Seguradora: TClientDataSet;
    sdsMDFe_SeguradoraID: TIntegerField;
    sdsMDFe_SeguradoraITEM: TIntegerField;
    sdsMDFe_SeguradoraRESPONSAVEL_SEGURO: TStringField;
    sdsMDFe_SeguradoraPESSOA_RESP_SEG: TStringField;
    sdsMDFe_SeguradoraCNPJ_CPF_RESP_SEG: TStringField;
    sdsMDFe_SeguradoraID_SEGURADORA: TIntegerField;
    sdsMDFe_SeguradoraNUM_APOLICE: TIntegerField;
    cdsMDFe_SeguradoraID: TIntegerField;
    cdsMDFe_SeguradoraITEM: TIntegerField;
    cdsMDFe_SeguradoraRESPONSAVEL_SEGURO: TStringField;
    cdsMDFe_SeguradoraPESSOA_RESP_SEG: TStringField;
    cdsMDFe_SeguradoraCNPJ_CPF_RESP_SEG: TStringField;
    cdsMDFe_SeguradoraID_SEGURADORA: TIntegerField;
    cdsMDFe_SeguradoraNUM_APOLICE: TIntegerField;
    dsMDFe_Seguradora: TDataSource;
    dsMDFe_Seguradora_Mestre: TDataSource;
    sdsMDFe_AverbacaoID: TIntegerField;
    sdsMDFe_AverbacaoITEM: TIntegerField;
    sdsMDFe_AverbacaoNUM_AVERBACAO: TStringField;
    cdsMDFe_SeguradorasdsMDFe_Averbacao: TDataSetField;
    cdsMDFe_AverbacaoID: TIntegerField;
    cdsMDFe_AverbacaoITEM: TIntegerField;
    cdsMDFe_AverbacaoNUM_AVERBACAO: TStringField;
    cdsMDFe_SeguradoralkNome_Seguradora: TStringField;
    sdsNotas: TSQLDataSet;
    dspNotas: TDataSetProvider;
    cdsNotas: TClientDataSet;
    cdsNotasID: TIntegerField;
    cdsNotasNUMNOTA: TIntegerField;
    cdsNotasID_CFOP: TIntegerField;
    cdsNotasID_CLIENTE: TIntegerField;
    cdsNotasNOME_CLIENTE: TStringField;
    cdsNotasDTEMISSAO: TDateField;
    cdsNotasVLR_NOTA: TFloatField;
    cdsNotasPESOBRUTO: TFloatField;
    cdsNotasPESOLIQUIDO: TFloatField;
    cdsNotasCODCFOP: TStringField;
    dsNotas: TDataSource;
    cdsNotasSERIE: TStringField;
    cdsNotasNFECHAVEACESSO: TStringField;
    cdsNotasGEROU_MDFE: TStringField;
    qTotalNota: TSQLQuery;
    qTotalNotaPESOBRUTO: TFloatField;
    qTotalNotaVLR_NOTA: TFloatField;
    qProximaMDFe: TSQLQuery;
    qProximaMDFeNUM_MANIFESTO: TIntegerField;
    qFilial_MDFeSERIE: TStringField;
    sdsMDFe_Cidade_Car: TSQLDataSet;
    sdsMDFe_Cidade_CarID: TIntegerField;
    sdsMDFe_Cidade_CarITEM: TIntegerField;
    sdsMDFe_Cidade_CarID_CIDADE: TIntegerField;
    sdsMDFe_Cidade_CarCIDADE: TStringField;
    sdsMDFe_Cidade_Des: TSQLDataSet;
    sdsMDFe_Cidade_DesID: TIntegerField;
    sdsMDFe_Cidade_DesITEM: TIntegerField;
    sdsMDFe_Cidade_DesID_CIDADE: TIntegerField;
    sdsMDFe_Cidade_DesCIDADE: TStringField;
    sdsMDFe_CIOT: TSQLDataSet;
    sdsMDFe_CIOTID: TIntegerField;
    sdsMDFe_CIOTITEM: TIntegerField;
    sdsMDFe_CIOTCOD_CIOT: TStringField;
    sdsMDFe_CIOTPESSOA: TStringField;
    sdsMDFe_CIOTCNPJ_CPF: TStringField;
    sdsMDFe_Condutor: TSQLDataSet;
    sdsMDFe_CondutorID: TIntegerField;
    sdsMDFe_CondutorITEM: TIntegerField;
    sdsMDFe_CondutorNOME: TStringField;
    sdsMDFe_CondutorCPF: TStringField;
    sdsMDFe_CondutorID_CONDUTOR: TIntegerField;
    sdsMDFe_Contratante: TSQLDataSet;
    sdsMDFe_ContratanteID: TIntegerField;
    sdsMDFe_ContratanteITEM: TIntegerField;
    sdsMDFe_ContratantePESSOA: TStringField;
    sdsMDFe_ContratanteCNPJ_CPF: TStringField;
    sdsMDFe_Lacre: TSQLDataSet;
    sdsMDFe_LacreID: TIntegerField;
    sdsMDFe_LacreITEM: TIntegerField;
    sdsMDFe_LacreNUM_LACRE: TStringField;
    sdsMDFe_LacreTIPO: TStringField;
    cdsMDFe_Cidade_Car: TClientDataSet;
    cdsMDFe_Cidade_CarID: TIntegerField;
    cdsMDFe_Cidade_CarITEM: TIntegerField;
    cdsMDFe_Cidade_CarID_CIDADE: TIntegerField;
    cdsMDFe_Cidade_CarCIDADE: TStringField;
    dsMDFe_Cidade_Car: TDataSource;
    cdsMDFe_Cidade_Des: TClientDataSet;
    cdsMDFe_Cidade_DesID: TIntegerField;
    cdsMDFe_Cidade_DesITEM: TIntegerField;
    cdsMDFe_Cidade_DesID_CIDADE: TIntegerField;
    cdsMDFe_Cidade_DesCIDADE: TStringField;
    dsMDFe_Cidade_Des: TDataSource;
    cdsMDFe_CIOT: TClientDataSet;
    cdsMDFe_CIOTID: TIntegerField;
    cdsMDFe_CIOTITEM: TIntegerField;
    cdsMDFe_CIOTCOD_CIOT: TStringField;
    cdsMDFe_CIOTPESSOA: TStringField;
    cdsMDFe_CIOTCNPJ_CPF: TStringField;
    dsMDFe_CIOT: TDataSource;
    cdsMDFe_Condutor: TClientDataSet;
    cdsMDFe_CondutorID: TIntegerField;
    cdsMDFe_CondutorITEM: TIntegerField;
    cdsMDFe_CondutorNOME: TStringField;
    cdsMDFe_CondutorCPF: TStringField;
    dsMDFe_Condutor: TDataSource;
    cdsMDFe_Contratante: TClientDataSet;
    cdsMDFe_ContratanteID: TIntegerField;
    cdsMDFe_ContratanteITEM: TIntegerField;
    cdsMDFe_ContratantePESSOA: TStringField;
    cdsMDFe_ContratanteCNPJ_CPF: TStringField;
    dsMDFe_Contratante: TDataSource;
    cdsMDFe_Lacre: TClientDataSet;
    cdsMDFe_LacreID: TIntegerField;
    cdsMDFe_LacreITEM: TIntegerField;
    cdsMDFe_LacreNUM_LACRE: TStringField;
    cdsMDFe_LacreTIPO: TStringField;
    dsMDFe_Lacre: TDataSource;
    sdsMDFe_NFe: TSQLDataSet;
    sdsMDFe_Pedagio: TSQLDataSet;
    sdsMDFe_PedagioID: TIntegerField;
    sdsMDFe_PedagioITEM: TIntegerField;
    sdsMDFe_PedagioCNPJ: TStringField;
    sdsMDFe_PedagioPESSOA_PAG: TStringField;
    sdsMDFe_PedagioCNPJ_CPF_PAG: TStringField;
    sdsMDFe_PedagioNUM_COMPROVANTE: TStringField;
    sdsMDFe_PedagioVLR_PEDAGIO: TFloatField;
    sdsMDFe_Percurso: TSQLDataSet;
    sdsMDFe_PercursoID: TIntegerField;
    sdsMDFe_PercursoITEM: TIntegerField;
    sdsMDFe_PercursoUF: TStringField;
    sdsMDFe_Reboque: TSQLDataSet;
    sdsMDFe_ReboqueID: TIntegerField;
    sdsMDFe_ReboqueITEM: TIntegerField;
    sdsMDFe_ReboqueID_VEICULO: TIntegerField;
    cdsMDFe_NFe: TClientDataSet;
    cdsMDFe_NFeID: TIntegerField;
    cdsMDFe_NFeITEM: TIntegerField;
    cdsMDFe_NFeCHAVE_ACESSO: TStringField;
    dsMDFe_NFe: TDataSource;
    cdsMDFe_Pedagio: TClientDataSet;
    cdsMDFe_PedagioID: TIntegerField;
    cdsMDFe_PedagioITEM: TIntegerField;
    cdsMDFe_PedagioCNPJ: TStringField;
    cdsMDFe_PedagioPESSOA_PAG: TStringField;
    cdsMDFe_PedagioCNPJ_CPF_PAG: TStringField;
    cdsMDFe_PedagioNUM_COMPROVANTE: TStringField;
    cdsMDFe_PedagioVLR_PEDAGIO: TFloatField;
    dsMDFe_Pedagio: TDataSource;
    cdsMDFe_Percurso: TClientDataSet;
    cdsMDFe_PercursoID: TIntegerField;
    cdsMDFe_PercursoITEM: TIntegerField;
    cdsMDFe_PercursoUF: TStringField;
    dsMDFe_Percurso: TDataSource;
    cdsMDFe_Reboque: TClientDataSet;
    cdsMDFe_ReboqueID: TIntegerField;
    cdsMDFe_ReboqueITEM: TIntegerField;
    cdsMDFe_ReboqueID_VEICULO: TIntegerField;
    cdsMDFe_ReboqueclPlaca: TStringField;
    cdsMDFe_ReboqueclCapacidade_KG: TFloatField;
    cdsMDFe_ReboqueclCapacidade_M3: TFloatField;
    cdsMDFe_ReboqueclTara: TFloatField;
    dsMDFe_Reboque: TDataSource;
    cdsMDFesdsMDFe_Seguradora: TDataSetField;
    sdsCondutor: TSQLDataSet;
    dspCondutor: TDataSetProvider;
    cdsCondutor: TClientDataSet;
    dsCondutor: TDataSource;
    cdsUFUF: TStringField;
    cdsUFIDPAIS: TIntegerField;
    cdsCondutorID: TIntegerField;
    cdsCondutorNOME: TStringField;
    cdsCondutorCPF: TStringField;
    cdsCondutorINATIVO: TStringField;
    cdsMDFe_CondutorID_CONDUTOR: TIntegerField;
    cdsConsultaID: TIntegerField;
    cdsConsultaTIPO_AMBIENTE: TStringField;
    cdsConsultaTIPO_EMITENTE: TStringField;
    cdsConsultaTIPO_TRANSPORTADOR: TStringField;
    cdsConsultaSERIE: TStringField;
    cdsConsultaNUM_MANIFESTO: TIntegerField;
    cdsConsultaMODALIDADE_TRANSP: TStringField;
    cdsConsultaDTEMISSAO: TDateField;
    cdsConsultaHREMISSAO: TTimeField;
    cdsConsultaFORMA_EMISSAO: TStringField;
    cdsConsultaTIPO_EMISSAO: TStringField;
    cdsConsultaVERSAO_EMISSAO: TStringField;
    cdsConsultaUF_CARREGAMENTO: TStringField;
    cdsConsultaUF_DESCARREGAMENTO: TStringField;
    cdsConsultaCHAVE_ACESSO: TStringField;
    cdsConsultaQTD_NFE: TIntegerField;
    cdsConsultaQTD_MDFE: TIntegerField;
    cdsConsultaVLR_TOTAL: TFloatField;
    cdsConsultaUNIDADE_PESO: TStringField;
    cdsConsultaPESO_BRUTO: TFloatField;
    cdsConsultaINF_FISCO: TMemoField;
    cdsConsultaINF_ADICIONAIS: TMemoField;
    cdsConsultaFILIAL: TIntegerField;
    cdsConsultaID_VEICULO: TIntegerField;
    cdsConsultaCOD_AG_PORTO: TStringField;
    cdsConsultaRNTRC: TStringField;
    cdsConsultaDTINICIO: TDateField;
    cdsConsultaHRINICIO: TTimeField;
    cdsConsultaPROTOCOLO_MDFE: TStringField;
    cdsConsultaDESC_TIPO_EMITENTE: TStringField;
    cdsConsultaDESC_TIPO_TRANSPORTADOR: TStringField;
    cdsConsultaDESC_MODALIDADE_TRANSP: TStringField;
    cdsConsultaDESC_FORMA_EMISSAO: TStringField;
    cdsConsultaDESC_UNIDADE_PESO: TStringField;
    cdsConsultaNOME: TStringField;
    cdsConsultaNOME_INTERNO: TStringField;
    cdsConsultaCNPJ_FILIAL: TStringField;
    cdsFilialID_CIDADE: TIntegerField;
    cdsFilialCIDADE: TStringField;
    sdsReboque: TSQLDataSet;
    dspReboque: TDataSetProvider;
    cdsReboque: TClientDataSet;
    dsReboque: TDataSource;
    qNotas: TSQLQuery;
    qNotasID: TIntegerField;
    qNotasSERIE: TStringField;
    qNotasNUMNOTA: TIntegerField;
    qNotasID_CLIENTE: TIntegerField;
    qNotasNOME_CLIENTE: TStringField;
    qNotasCIDADE: TStringField;
    qNotasDTEMISSAO: TDateField;
    qParametros: TSQLQuery;
    qParametrosLOCALSERVIDORNFE: TStringField;
    cdsFilialLOCALSERVIDORNFE: TStringField;
    cdsUFCODUF: TStringField;
    qParametros_MDFe: TSQLQuery;
    qParametros_MDFeVERSAO_EMISSAO: TStringField;
    qParametros_MDFeVERSAO_LEIAUTE: TStringField;
    qParametrosFUSOHORARIO_VERAO: TStringField;
    qParametrosFUSOHORARIO: TStringField;
    qCidadeCODMUNICIPIO: TStringField;
    cdsFilialENDERECO: TStringField;
    cdsFilialNUM_END: TStringField;
    cdsFilialBAIRRO: TStringField;
    cdsFilialCOMPLEMENTO_END: TStringField;
    cdsFilialINSCR_EST: TStringField;
    cdsFilialCEP: TStringField;
    cdsFilialDDD1: TIntegerField;
    cdsFilialFONE: TStringField;
    cdsFilialEMAIL_NFE: TStringField;
    qParametros_MDFeVERSAO_MODAL: TStringField;
    sdsMDFeXML_ASSINADO: TMemoField;
    sdsMDFeXML_ASSINADO_PROC: TMemoField;
    sdsMDFeRECIBO_MDFE: TStringField;
    cdsMDFeXML_ASSINADO: TMemoField;
    cdsMDFeXML_ASSINADO_PROC: TMemoField;
    cdsMDFeRECIBO_MDFE: TStringField;
    sdsMDFeDTENCERRAMENTO: TDateField;
    sdsMDFePROTOCOLO_ENC: TStringField;
    cdsMDFeDTENCERRAMENTO: TDateField;
    cdsMDFePROTOCOLO_ENC: TStringField;
    sdsMDFeXML_ENCERRAMENTO: TMemoField;
    cdsMDFeXML_ENCERRAMENTO: TMemoField;
    cdsMDFe_NFeclNumNota: TIntegerField;
    cdsMDFe_NFeclSerie: TStringField;
    cdsMDFe_NFeclDtEmissao: TDateField;
    cdsMDFe_NFeclNomeCliente: TStringField;
    cdsMDFe_NFeclCidade: TStringField;
    sdsMDFeXML_CANCELADO: TMemoField;
    sdsMDFePROTOCOLO_CANC: TStringField;
    sdsMDFeDTCANCELAMENTO: TDateField;
    cdsMDFeXML_CANCELADO: TMemoField;
    cdsMDFePROTOCOLO_CANC: TStringField;
    cdsMDFeDTCANCELAMENTO: TDateField;
    cdsConsultaXML_ASSINADO: TMemoField;
    cdsConsultaXML_ASSINADO_PROC: TMemoField;
    cdsConsultaRECIBO_MDFE: TStringField;
    cdsConsultaDTENCERRAMENTO: TDateField;
    cdsConsultaPROTOCOLO_ENC: TStringField;
    cdsConsultaXML_ENCERRAMENTO: TMemoField;
    cdsConsultaXML_CANCELADO: TMemoField;
    cdsConsultaPROTOCOLO_CANC: TStringField;
    cdsConsultaDTCANCELAMENTO: TDateField;
    dsMDFe_Cidade_Des_Mestre: TDataSource;
    sdsMDFe_NFeID: TIntegerField;
    sdsMDFe_NFeITEM: TIntegerField;
    sdsMDFe_NFeITEM_NFE: TIntegerField;
    sdsMDFe_NFeCHAVE_ACESSO: TStringField;
    sdsMDFe_NFeINDICADOR_REENTREGA: TStringField;
    cdsMDFe_Cidade_DessdsMDFe_NFe: TDataSetField;
    cdsMDFe_NFeITEM_NFE: TIntegerField;
    cdsMDFe_NFeINDICADOR_REENTREGA: TStringField;
    sdsMDFeDTRECIBO: TStringField;
    cdsMDFeDTRECIBO: TStringField;
    sdsMDFeDTPROTOCOLO_MDFE: TStringField;
    sdsMDFeDTPROTOCOLO_ENC: TStringField;
    sdsMDFeDTPROTOCOLO_CANC: TStringField;
    cdsMDFeDTPROTOCOLO_MDFE: TStringField;
    cdsMDFeDTPROTOCOLO_ENC: TStringField;
    cdsMDFeDTPROTOCOLO_CANC: TStringField;
    sdsMDFe_Evento: TSQLDataSet;
    sdsMDFe_EventoID: TIntegerField;
    sdsMDFe_EventoITEM: TIntegerField;
    sdsMDFe_EventoID_CONDUTOR: TIntegerField;
    sdsMDFe_EventoPROTOCOLO: TStringField;
    sdsMDFe_EventoDTPROTOCOLO: TStringField;
    sdsMDFe_EventoXML: TMemoField;
    cdsMDFe_Evento: TClientDataSet;
    cdsMDFesdsMDFe_Evento: TDataSetField;
    cdsMDFe_EventoID: TIntegerField;
    cdsMDFe_EventoITEM: TIntegerField;
    cdsMDFe_EventoID_CONDUTOR: TIntegerField;
    cdsMDFe_EventoPROTOCOLO: TStringField;
    cdsMDFe_EventoDTPROTOCOLO: TStringField;
    cdsMDFe_EventoXML: TMemoField;
    dsMDFe_Evento: TDataSource;
    sdsMDFe_EventoCPF: TStringField;
    sdsMDFe_EventoNOME: TStringField;
    sdsMDFe_EventoSEQUENCIA: TIntegerField;
    cdsMDFe_EventoCPF: TStringField;
    cdsMDFe_EventoNOME: TStringField;
    cdsMDFe_EventoSEQUENCIA: TIntegerField;
    qVerifica_Condutor: TSQLQuery;
    qVerifica_CondutorCONTADOR1: TIntegerField;
    qVerifica_CondutorCONTADOR2: TIntegerField;
    cdsNotasID_CIDADE: TIntegerField;
    cdsNotasCIDADE: TStringField;
    cdsNotasUF: TStringField;
    qParametros_MDFeENDXMLMDFE: TStringField;
    qParametros_MDFeENDPDFMDFE: TStringField;
    sdsMDFeMOTIVO_CANC: TStringField;
    cdsMDFeMOTIVO_CANC: TStringField;
    cdsConsultaMOTIVO_CANC: TStringField;
    cdsConsultaDTRECIBO: TStringField;
    cdsConsultaDTPROTOCOLO_MDFE: TStringField;
    cdsConsultaDTPROTOCOLO_ENC: TStringField;
    cdsConsultaDTPROTOCOLO_CANC: TStringField;
    cdsConsultaCANCELADO: TStringField;
    sdsMDFeCANCELADO: TStringField;
    cdsMDFeCANCELADO: TStringField;
    cdsNotasFILIAL: TIntegerField;
    sdsMDFe_NFeVLR_TOTAL: TFloatField;
    sdsMDFe_NFePESO_BRUTO: TFloatField;
    cdsMDFe_NFeVLR_TOTAL: TFloatField;
    cdsMDFe_NFePESO_BRUTO: TFloatField;
    qParametros_MDFeUSA_PARADOX: TStringField;
    Database1: TDatabase;
    tNotaFiscal: TTable;
    dsNotaFiscal: TDataSource;
    tNotaFiscalFilial: TIntegerField;
    tNotaFiscalDtEmissao: TDateField;
    tNotaFiscalCodNatOper: TSmallintField;
    tNotaFiscalCodCli: TIntegerField;
    tNotaFiscalVlrTotalNota: TFloatField;
    tNotaFiscalPesoBruto: TFloatField;
    tNotaFiscalPesoLiquido: TFloatField;
    tNotaFiscalNumNota: TIntegerField;
    tNotaFiscalSerie: TStringField;
    tNotaFiscalNFeChaveAcesso: TStringField;
    qNotaFiscal: TQuery;
    qNotaFiscalFilial: TIntegerField;
    qNotaFiscalNumSeq: TIntegerField;
    qNotaFiscalDtEmissao: TDateField;
    qNotaFiscalCodCli: TIntegerField;
    qNotaFiscalPesoBruto: TFloatField;
    qNotaFiscalPesoLiquido: TFloatField;
    qNotaFiscalNumNota: TIntegerField;
    qNotaFiscalSerie: TStringField;
    qNotaFiscalNfeChaveAcesso: TStringField;
    dsqNotaFiscal: TDataSource;
    qNotaFiscalGerou_Mdfe: TStringField;
    qNotaFiscalCODCFOP: TStringField;
    qNotaFiscalNOME_CLIENTE: TStringField;
    qNotaFiscalCIDADE: TStringField;
    qNotaFiscalVLR_NOTA: TFloatField;
    qNotaFiscalCodCidade: TIntegerField;
    qNotasPdx: TQuery;
    qNotasPdxNumSeq: TIntegerField;
    qNotasPdxSerie: TStringField;
    qNotasPdxnumnota: TIntegerField;
    qNotasPdxCodCli: TIntegerField;
    qNotasPdxNOME_CLIENTE: TStringField;
    qNotasPdxcidade: TStringField;
    qNotasPdxDtEmissao: TDateField;
    qExec: TQuery;
    qFilial_MDFeEND_LOG: TStringField;
    qParametros_MDFeTIPO_IMPRESSAO: TStringField;
    mAuxEvento: TClientDataSet;
    mAuxEventoCodEvento: TStringField;
    mAuxEventoNomeEvento: TStringField;
    mAuxEventoDtRegistro: TStringField;
    mAuxEventoNumProtocolo: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure dspMDFeUpdateError(Sender: TObject;
      DataSet: TCustomClientDataSet; E: EUpdateError;
      UpdateKind: TUpdateKind; var Response: TResolverResponse);
    procedure cdsMDFeNewRecord(DataSet: TDataSet);
    procedure cdsMDFe_ReboqueCalcFields(DataSet: TDataSet);
    procedure cdsMDFe_NFeCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
    procedure DoLogAdditionalValues(ATableName: string; var AValues: TArrayLogData; var UserName: string);

  public
    { Public declarations }
    vMsgMDFe: String;
    ctCommand: String;
    ctConsulta: String;
    ctNotas: String;
    vID_Condutor_Novo: Integer;

    procedure prc_Localizar(ID: Integer); //-1 = Inclusão
    procedure prc_Inserir;
    procedure prc_Gravar;
    procedure prc_Excluir;

    procedure prc_Abrir_Cidade(UF: String);
  end;

var
  DMCadMDFe: TDMCadMDFe;

implementation

uses DmdDatabase, LogProvider, uUtilPadrao, Math, StrUtils;

{$R *.dfm}

{ TDMCadPais }

procedure TDMCadMDFe.prc_Inserir;
var
  vAux: Integer;
begin
  if not cdsMDFe.Active then
    prc_Localizar(-1);
  vAux := dmDatabase.ProximaSequencia('MDFE',0);

  cdsMDFe.Insert;
  cdsMDFeID.AsInteger := vAux;
end;

procedure TDMCadMDFe.prc_Excluir;
var
  sds: TSQLDataSet;
  ID: TTransactionDesc;
begin
  if not(cdsMDFe.Active) or (cdsMDFe.IsEmpty) then
    exit;
  
  sds := TSQLDataSet.Create(nil);
  ID.TransactionID  := 1;
  ID.IsolationLevel := xilREADCOMMITTED;
  dmDatabase.scoDados.StartTransaction(ID);

  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;
    sds.CommandText   := 'UPDATE TABELALOC SET FLAG = 1 WHERE TABELA = ' + QuotedStr('MDFE');
    sds.ExecSQL();

    if not cdsMDFe_Aereo.IsEmpty then
      cdsMDFe_Aereo.Delete;

    cdsMDFe_Evento.First;
    while not cdsMDFe_Evento.Eof do
      cdsMDFe_Evento.Delete;
    cdsMDFe_AutXML.First;
    while not cdsMDFe_AutXML.Eof do
      cdsMDFe_AutXML.Delete;
    cdsMDFe_Seguradora.First;
    while not cdsMDFe_Seguradora.Eof do
    begin
      cdsMDFe_Averbacao.First;
      while not cdsMDFe_Averbacao.Eof do
        cdsMDFe_Averbacao.Delete;
      cdsMDFe_Seguradora.Delete;
    end;
    cdsMDFe_Cidade_Car.First;
    while not cdsMDFe_Cidade_Car.Eof do
      cdsMDFe_Cidade_Car.Delete;
    cdsMDFe_Cidade_Des.First;
    while not cdsMDFe_Cidade_Des.Eof do
    begin
      cdsMDFe_NFe.First;
      while not cdsMDFe_NFe.Eof do
        cdsMDFe_NFe.Delete;
      cdsMDFe_Cidade_Des.Delete;
    end;
    cdsMDFe_CIOT.First;
    while not cdsMDFe_CIOT.Eof do
      cdsMDFe_CIOT.Delete;
    cdsMDFe_Condutor.First;
    while not cdsMDFe_Condutor.Eof do
      cdsMDFe_Condutor.Delete;
    cdsMDFe_Contratante.First;
    while not cdsMDFe_Contratante.Eof do
      cdsMDFe_Contratante.Delete;
    cdsMDFe_Lacre.First;
    while not cdsMDFe_Lacre.Eof do
      cdsMDFe_Lacre.Delete;
    cdsMDFe_Pedagio.First;
    while not cdsMDFe_Pedagio.Eof do
      cdsMDFe_Pedagio.Delete;
    cdsMDFe_Percurso.First;
    while not cdsMDFe_Percurso.Eof do
      cdsMDFe_Percurso.Delete;
    cdsMDFe_Reboque.First;
    while not cdsMDFe_Reboque.Eof do
      cdsMDFe_Reboque.Delete;
    cdsMDFe.Delete;
    cdsMDFe.ApplyUpdates(0);

    dmDatabase.scoDados.Commit(ID);
  except
    on e: Exception do
      begin
        dmDatabase.scoDados.Rollback(ID);
        raise Exception.Create('Erro ao EXCLUIR o MDFE: ' + #13 + e.Message);
      end;
  end;
end;

procedure TDMCadMDFe.prc_Gravar;
begin
  vMsgMDFe := '';
  if trim(cdsMDFeUF_CARREGAMENTO.AsString) = '' then
    vMsgMDFe := vMsgMDFe + #13 + '*** UF de carregamento não informada!';
  if trim(cdsMDFeUF_DESCARREGAMENTO.AsString) = '' then
    vMsgMDFe := vMsgMDFe + #13 + '*** UF de descarregamento não informada!';
  if trim(cdsMDFeUNIDADE_PESO.AsString) = '' then
    vMsgMDFe := vMsgMDFe + #13 + '*** Unidade de Peso não informada!';
  if (cdsMDFeMODALIDADE_TRANSP.IsNull) or (trim(cdsMDFeMODALIDADE_TRANSP.AsString) = '') then
    vMsgMDFe := vMsgMDFe + #13 + '*** Modalidade não informada!';
  if cdsMDFe_NFe.IsEmpty then
    vMsgMDFe := vMsgMDFe + #13 + '*** Não foi informada nenhuma nota!';
  if (cdsMDFeMODALIDADE_TRANSP.AsString = '1') and (cdsMDFeID_VEICULO.AsInteger < 0) then
    vMsgMDFe := vMsgMDFe + #13 + '*** Veículo não informado!';
  if trim(cdsMDFeSERIE.AsString) = '' then
    vMsgMDFe := vMsgMDFe + #13 + '*** Série não informada!';
  if StrToFloat(FormatFloat('0.00',cdsMDFeVLR_TOTAL.AsFloat)) <= 0 then
    vMsgMDFe := vMsgMDFe + #13 + '*** Valor total não informado!';
  if StrToFloat(FormatFloat('0.0000',cdsMDFePESO_BRUTO.AsFloat)) <= 0 then
    vMsgMDFe := vMsgMDFe + #13 + '*** Peso bruto não informado!';
  if cdsMDFeQTD_NFE.AsInteger <= 0 then
    vMsgMDFe := vMsgMDFe + #13 + '*** Quantidade de nota não informada!';
  if vMsgMDFe <> '' then
    exit;

  cdsMDFe.Post;
  cdsMDFe.ApplyUpdates(0);
end;

procedure TDMCadMDFe.prc_Localizar(ID: Integer);
begin
  cdsMDFe.Close;
  sdsMDFe.CommandText := ctCommand;
  sdsMDFe.ParamByName('ID').AsInteger := ID;
  cdsMDFe.Open;
  cdsMDFe_AutXML.Close;
  cdsMDFe_AutXML.Open;
  cdsMDFe_AutXML.Last;
  cdsMDFe_Seguradora.Close;
  cdsMDFe_Seguradora.Open;
  cdsMDFe_Seguradora.Last;
  cdsMDFe_Averbacao.Close;
  cdsMDFe_Averbacao.Open;
  cdsMDFe_Averbacao.Last;
  cdsMDFe_Cidade_Car.Close;
  cdsMDFe_Cidade_Car.Open;
  cdsMDFe_Cidade_Car.Last;
  cdsMDFe_Cidade_Des.Close;
  cdsMDFe_Cidade_Des.Open;
  cdsMDFe_Cidade_Des.Last;
  cdsMDFe_CIOT.Close;
  cdsMDFe_CIOT.Open;
  cdsMDFe_CIOT.Last;
  cdsMDFe_Condutor.Close;
  cdsMDFe_Condutor.Open;
  cdsMDFe_Condutor.Last;
  cdsMDFe_Contratante.Close;
  cdsMDFe_Contratante.Open;
  cdsMDFe_Contratante.Last;
  cdsMDFe_Lacre.Close;
  cdsMDFe_Lacre.Open;
  cdsMDFe_Lacre.Last;
  cdsMDFe_NFe.Close;
  cdsMDFe_NFe.Open;
  cdsMDFe_NFe.Last;
  cdsMDFe_Pedagio.Close;
  cdsMDFe_Pedagio.Open;
  cdsMDFe_Pedagio.Last;
  cdsMDFe_Percurso.Close;
  cdsMDFe_Percurso.Open;
  cdsMDFe_Percurso.Last;
  cdsMDFe_Reboque.Close;
  cdsMDFe_Reboque.Open;
  cdsMDFe_Reboque.Last;
  cdsMDFe_Evento.Close;
  cdsMDFe_Evento.Open;
  cdsMDFe_Evento.Last;
end;

procedure TDMCadMDFe.DataModuleCreate(Sender: TObject);
var
  i, x: Integer;
  vIndices: string;
  aIndices: array of string;
begin
  Database1.Connected := False;
  ctCommand  := sdsMDFe.CommandText;
  ctConsulta := sdsConsulta.CommandText;
  ctNotas    := sdsNotas.CommandText;
  cdsUF.Open;
  cdsSeguradora.Open;
  cdsProprietario_Vei.Open;
  cdsVeiculo.Open;
  cdsFilial.Open;
  cdsCondutor.Open;
  cdsReboque.Open;
  qParametros.Open;
  qParametros_MDFe.Open;
  LogProviderList.OnAdditionalValues := DoLogAdditionalValues;
  for i := 0 to (Self.ComponentCount - 1) do
  begin
    if (Self.Components[i] is TClientDataSet) then
    begin
      SetLength(aIndices, 0);
      vIndices := TClientDataSet(Components[i]).IndexFieldNames;
      while (vIndices <> EmptyStr) do
      begin
        SetLength(aIndices, Length(aIndices) + 1);
        x := Pos(';', vIndices);
        if (x = 0) then
        begin
          aIndices[Length(aIndices) - 1] := vIndices;
          vIndices := EmptyStr;
        end
        else
        begin
          aIndices[Length(aIndices) - 1] := Copy(vIndices, 1, x - 1);
          vIndices := Copy(vIndices, x + 1, MaxInt);
        end;
      end;
      LogProviderList.AddProvider(TClientDataSet(Self.Components[i]), TClientDataSet(Self.Components[i]).Name, aIndices);
    end;
  end;
  //***********************
end;

procedure TDMCadMDFe.dspMDFeUpdateError(Sender: TObject;
  DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
  var Response: TResolverResponse);
begin
  dmDatabase.prc_UpdateError(DataSet.Name,UpdateKind,E);
end;

procedure TDMCadMDFe.DoLogAdditionalValues(ATableName: string;
  var AValues: TArrayLogData; var UserName: string);
begin
  UserName := vUsuario;
end;

procedure TDMCadMDFe.cdsMDFeNewRecord(DataSet: TDataSet);
begin
  cdsMDFeTIPO_EMISSAO.AsString       := '0';
  cdsMDFeTIPO_EMITENTE.AsString      := qFilial_MDFeTIPO_EMITENTE.AsString;
  cdsMDFeTIPO_TRANSPORTADOR.AsString := qFilial_MDFeTIPO_TRANSPORTADOR.AsString;
  cdsMDFeVERSAO_EMISSAO.AsString     := qParametros_MDFeVERSAO_EMISSAO.AsString;
  cdsMDFeTIPO_AMBIENTE.AsString      := qFilial_MDFeTIPO_AMBIENTE.AsString;
  cdsMDFeSERIE.AsString              := qFilial_MDFeSERIE.AsString;
  cdsMDFeUF_CARREGAMENTO.AsString    := cdsFilialUF.AsString;
  cdsMDFeUF_DESCARREGAMENTO.AsString := cdsFilialUF.AsString;
  cdsMDFePESO_BRUTO.AsFloat          := 0;
  cdsMDFeVLR_TOTAL.AsFloat           := 0;
  cdsMDFeQTD_MDFE.AsInteger          := 0;
  cdsMDFeQTD_NFE.AsInteger           := 0;
  cdsMDFeMODALIDADE_TRANSP.AsString  := '1';
  cdsMDFeDTEMISSAO.AsDateTime        := Date;
  cdsMDFeFORMA_EMISSAO.AsString      := '1';
  cdsMDFeCANCELADO.AsString          := 'N'; 
  if trim(qFilial_MDFeRNTRC.AsString) <> '' then
    cdsMDFeRNTRC.AsString := qFilial_MDFeRNTRC.AsString;
  cdsMDFeUNIDADE_PESO.AsString := '01';
end;

procedure TDMCadMDFe.cdsMDFe_ReboqueCalcFields(DataSet: TDataSet);
begin
  if cdsMDFe_ReboqueID_VEICULO.AsInteger > 0 then
  begin
    qVeiculo.Close;
    qVeiculo.ParamByName('ID').AsInteger := cdsMDFe_ReboqueID_VEICULO.AsInteger;
    qVeiculo.Open;
    cdsMDFe_ReboqueclCapacidade_KG.AsFloat := qVeiculoCAPACIDADE_KG.AsFloat;
    cdsMDFe_ReboqueclCapacidade_M3.AsFloat := qVeiculoCAPACIDADE_M3.AsFloat;
    cdsMDFe_ReboqueclPlaca.AsString        := qVeiculoPLACA.AsString;
    cdsMDFe_ReboqueclTara.AsFloat          := qVeiculoTARA_KG.AsFloat;
  end;
end;

procedure TDMCadMDFe.prc_Abrir_Cidade(UF: String);
begin
  cdsCidade.Close;
  sdsCidade.ParamByName('UF').AsString := UF;
  cdsCidade.Open;
end;

procedure TDMCadMDFe.cdsMDFe_NFeCalcFields(DataSet: TDataSet);
begin
  if trim(cdsMDFe_NFeCHAVE_ACESSO.AsString) <> '' then
  begin
    if qParametros_MDFeUSA_PARADOX.AsString = 'S' then
    begin
      qNotasPdx.Close;
      qNotasPdx.ParamByName('NFECHAVEACESSO').AsString := cdsMDFe_NFeCHAVE_ACESSO.AsString;
      qNotasPdx.Open;
      cdsMDFe_NFeclNumNota.AsInteger := qNotasPdxNUMNOTA.AsInteger;
      cdsMDFe_NFeclSerie.AsString    := qNotasPdxSERIE.AsString;
      if qNotasPdxDTEMISSAO.AsDateTime > 10 then
        cdsMDFe_NFeclDtEmissao.AsDateTime := qNotasPdxDTEMISSAO.AsDateTime;
      cdsMDFe_NFeclNomeCliente.AsString := qNotasPdxNOME_CLIENTE.AsString;
      cdsMDFe_NFeclCidade.AsString      := qNotasPdxCIDADE.AsString;
      qNotas.Close;
    end
    else
    begin
      qNotas.Close;
      qNotas.ParamByName('NFECHAVEACESSO').AsString := cdsMDFe_NFeCHAVE_ACESSO.AsString;
      qNotas.Open;
      cdsMDFe_NFeclNumNota.AsInteger := qNotasNUMNOTA.AsInteger;
      cdsMDFe_NFeclSerie.AsString    := qNotasSERIE.AsString;
      if qNotasDTEMISSAO.AsDateTime > 10 then
        cdsMDFe_NFeclDtEmissao.AsDateTime := qNotasDTEMISSAO.AsDateTime;
      cdsMDFe_NFeclNomeCliente.AsString := qNotasNOME_CLIENTE.AsString;
      cdsMDFe_NFeclCidade.AsString      := qNotasCIDADE.AsString;
      qNotas.Close;
    end
  end;
end;

end.
