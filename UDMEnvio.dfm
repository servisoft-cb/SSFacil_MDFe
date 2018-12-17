object DMEnvio: TDMEnvio
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 74
  Top = 15
  Height = 694
  Width = 1171
  object sdsMDFe: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT mdfe.*, V.placa, V.uf_placa, V.renavam, V.tara_kg, V.capa' +
      'cidade_kg,'#13#10'V.capacidade_m3, V.id_proprietario, PV.nome NOME_PRO' +
      'PRIETARIO,'#13#10'PV.cnpj_cpf CNPJ_CPF_PROPRIETARIO, PV.insc_estadual ' +
      'INSC_ESTADUAL_PROPRIETARIO,'#13#10'PV.uf UF_PROPRIETARIO, PV.tipo_reg ' +
      'TIPO_REG_PROPRIETARIO,'#13#10'PV.rntrc RNTRC_PROPRIETARIO, PV.pessoa P' +
      'ESSOA_PROPRIETARIO, F.nome NOME_FILIAL,'#13#10'F.cnpj_cpf CNPJ_CPF_FIL' +
      'IAL, F.inscr_est INSC_ESTADUAL_FILIAL,'#13#10'F.nome_interno FANTASIA_' +
      'FILIAL, F.endereco END_FILIAL, F.bairro BAIRRO_FILIAL,'#13#10'F.CEP CE' +
      'P_FILIAL, F.num_end NUM_END_FILIAL, F.UF UF_FILIAL, F.ddd1 DDD_F' +
      'ILIAL,'#13#10'F.fone FONE_FILIAL, CFIL.nome CIDADE_FILIAL,'#13#10'CFIL.codmu' +
      'nicipio CODMUNICIPIO_FILIAL, UF_FIL.coduf CODUF_FILIAL, '#13#10'F.COMP' +
      'LEMENTO_END COMPLEMENTO_END_FILIAL, F.email_nfe, v.tipo_rodado, ' +
      'v.tipo_carroceria'#13#10'FROM MDFE'#13#10'INNER JOIN FILIAL F'#13#10'ON MDFE.FILIA' +
      'L = F.id'#13#10'INNER JOIN CIDADE CFIL'#13#10'ON F.ID_CIDADE = CFIL.ID'#13#10'INNE' +
      'R JOIN UF UF_FIL'#13#10'ON F.UF = UF_FIL.UF'#13#10'LEFT JOIN VEICULO V'#13#10'ON M' +
      'DFE.id_veiculo = V.id'#13#10'LEFT JOIN proprietario_vei PV'#13#10'ON V.id_pr' +
      'oprietario = PV.id'#13#10#13#10'WHERE MDFE.ID = :ID'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 112
    Top = 13
  end
  object dspMDFe: TDataSetProvider
    DataSet = sdsMDFe
    UpdateMode = upWhereKeyOnly
    Left = 176
    Top = 13
  end
  object cdsMDFe: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspMDFe'
    Left = 240
    Top = 13
    object cdsMDFeID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsMDFeTIPO_AMBIENTE: TStringField
      FieldName = 'TIPO_AMBIENTE'
      FixedChar = True
      Size = 1
    end
    object cdsMDFeTIPO_EMITENTE: TStringField
      FieldName = 'TIPO_EMITENTE'
      FixedChar = True
      Size = 1
    end
    object cdsMDFeTIPO_TRANSPORTADOR: TStringField
      FieldName = 'TIPO_TRANSPORTADOR'
      FixedChar = True
      Size = 1
    end
    object cdsMDFeSERIE: TStringField
      FieldName = 'SERIE'
      Size = 3
    end
    object cdsMDFeNUM_MANIFESTO: TIntegerField
      FieldName = 'NUM_MANIFESTO'
    end
    object cdsMDFeMODALIDADE_TRANSP: TStringField
      FieldName = 'MODALIDADE_TRANSP'
      FixedChar = True
      Size = 1
    end
    object cdsMDFeDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
    object cdsMDFeHREMISSAO: TTimeField
      FieldName = 'HREMISSAO'
    end
    object cdsMDFeFORMA_EMISSAO: TStringField
      FieldName = 'FORMA_EMISSAO'
      FixedChar = True
      Size = 1
    end
    object cdsMDFeTIPO_EMISSAO: TStringField
      FieldName = 'TIPO_EMISSAO'
      FixedChar = True
      Size = 1
    end
    object cdsMDFeVERSAO_EMISSAO: TStringField
      FieldName = 'VERSAO_EMISSAO'
    end
    object cdsMDFeUF_CARREGAMENTO: TStringField
      FieldName = 'UF_CARREGAMENTO'
      Size = 2
    end
    object cdsMDFeUF_DESCARREGAMENTO: TStringField
      FieldName = 'UF_DESCARREGAMENTO'
      Size = 2
    end
    object cdsMDFeCHAVE_ACESSO: TStringField
      FieldName = 'CHAVE_ACESSO'
      Size = 44
    end
    object cdsMDFeQTD_NFE: TIntegerField
      FieldName = 'QTD_NFE'
    end
    object cdsMDFeQTD_MDFE: TIntegerField
      FieldName = 'QTD_MDFE'
    end
    object cdsMDFeVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
    end
    object cdsMDFeUNIDADE_PESO: TStringField
      FieldName = 'UNIDADE_PESO'
      Size = 2
    end
    object cdsMDFePESO_BRUTO: TFloatField
      FieldName = 'PESO_BRUTO'
    end
    object cdsMDFeINF_FISCO: TMemoField
      FieldName = 'INF_FISCO'
      BlobType = ftMemo
      Size = 1
    end
    object cdsMDFeINF_ADICIONAIS: TMemoField
      FieldName = 'INF_ADICIONAIS'
      BlobType = ftMemo
      Size = 1
    end
    object cdsMDFeFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object cdsMDFeID_VEICULO: TIntegerField
      FieldName = 'ID_VEICULO'
    end
    object cdsMDFeCOD_AG_PORTO: TStringField
      FieldName = 'COD_AG_PORTO'
      Size = 16
    end
    object cdsMDFeRNTRC: TStringField
      FieldName = 'RNTRC'
      Size = 8
    end
    object cdsMDFeDTINICIO: TDateField
      FieldName = 'DTINICIO'
    end
    object cdsMDFeHRINICIO: TTimeField
      FieldName = 'HRINICIO'
    end
    object cdsMDFePROTOCOLO_MDFE: TStringField
      FieldName = 'PROTOCOLO_MDFE'
      Size = 44
    end
    object cdsMDFePLACA: TStringField
      FieldName = 'PLACA'
      Size = 8
    end
    object cdsMDFeUF_PLACA: TStringField
      FieldName = 'UF_PLACA'
      Size = 2
    end
    object cdsMDFeRENAVAM: TStringField
      FieldName = 'RENAVAM'
      Size = 15
    end
    object cdsMDFeTARA_KG: TFloatField
      FieldName = 'TARA_KG'
    end
    object cdsMDFeCAPACIDADE_KG: TFloatField
      FieldName = 'CAPACIDADE_KG'
    end
    object cdsMDFeCAPACIDADE_M3: TFloatField
      FieldName = 'CAPACIDADE_M3'
    end
    object cdsMDFeID_PROPRIETARIO: TIntegerField
      FieldName = 'ID_PROPRIETARIO'
    end
    object cdsMDFeNOME_PROPRIETARIO: TStringField
      FieldName = 'NOME_PROPRIETARIO'
      Size = 60
    end
    object cdsMDFeCNPJ_CPF_PROPRIETARIO: TStringField
      FieldName = 'CNPJ_CPF_PROPRIETARIO'
      Size = 18
    end
    object cdsMDFeINSC_ESTADUAL_PROPRIETARIO: TStringField
      FieldName = 'INSC_ESTADUAL_PROPRIETARIO'
      Size = 14
    end
    object cdsMDFeUF_PROPRIETARIO: TStringField
      FieldName = 'UF_PROPRIETARIO'
      Size = 2
    end
    object cdsMDFeTIPO_REG_PROPRIETARIO: TStringField
      FieldName = 'TIPO_REG_PROPRIETARIO'
      Size = 1
    end
    object cdsMDFeRNTRC_PROPRIETARIO: TStringField
      FieldName = 'RNTRC_PROPRIETARIO'
      Size = 8
    end
    object cdsMDFePESSOA_PROPRIETARIO: TStringField
      FieldName = 'PESSOA_PROPRIETARIO'
      FixedChar = True
      Size = 1
    end
    object cdsMDFeNOME_FILIAL: TStringField
      FieldName = 'NOME_FILIAL'
      Size = 60
    end
    object cdsMDFeCNPJ_CPF_FILIAL: TStringField
      FieldName = 'CNPJ_CPF_FILIAL'
      Size = 18
    end
    object cdsMDFeINSC_ESTADUAL_FILIAL: TStringField
      FieldName = 'INSC_ESTADUAL_FILIAL'
      Size = 18
    end
    object cdsMDFeFANTASIA_FILIAL: TStringField
      FieldName = 'FANTASIA_FILIAL'
      Size = 30
    end
    object cdsMDFeEND_FILIAL: TStringField
      FieldName = 'END_FILIAL'
      Size = 60
    end
    object cdsMDFeBAIRRO_FILIAL: TStringField
      FieldName = 'BAIRRO_FILIAL'
      Size = 30
    end
    object cdsMDFeCEP_FILIAL: TStringField
      FieldName = 'CEP_FILIAL'
      Size = 9
    end
    object cdsMDFeNUM_END_FILIAL: TStringField
      FieldName = 'NUM_END_FILIAL'
      Size = 15
    end
    object cdsMDFeUF_FILIAL: TStringField
      FieldName = 'UF_FILIAL'
      Size = 2
    end
    object cdsMDFeDDD_FILIAL: TIntegerField
      FieldName = 'DDD_FILIAL'
    end
    object cdsMDFeFONE_FILIAL: TStringField
      FieldName = 'FONE_FILIAL'
      Size = 15
    end
    object cdsMDFeCIDADE_FILIAL: TStringField
      FieldName = 'CIDADE_FILIAL'
      Size = 40
    end
    object cdsMDFeCODMUNICIPIO_FILIAL: TStringField
      FieldName = 'CODMUNICIPIO_FILIAL'
      Size = 7
    end
    object cdsMDFeCODUF_FILIAL: TStringField
      FieldName = 'CODUF_FILIAL'
      Size = 2
    end
    object cdsMDFesdsMDFe_Cidade_Car: TDataSetField
      FieldName = 'sdsMDFe_Cidade_Car'
    end
    object cdsMDFeCOMPLEMENTO_END_FILIAL: TStringField
      FieldName = 'COMPLEMENTO_END_FILIAL'
      Size = 60
    end
    object cdsMDFeEMAIL_NFE: TStringField
      FieldName = 'EMAIL_NFE'
      Size = 200
    end
    object cdsMDFesdsMDFe_Condutor: TDataSetField
      FieldName = 'sdsMDFe_Condutor'
    end
    object cdsMDFeTIPO_RODADO: TStringField
      FieldName = 'TIPO_RODADO'
      Size = 2
    end
    object cdsMDFeTIPO_CARROCERIA: TStringField
      FieldName = 'TIPO_CARROCERIA'
      Size = 2
    end
    object cdsMDFesdsMDFe_Cidade_Des: TDataSetField
      FieldName = 'sdsMDFe_Cidade_Des'
    end
    object cdsMDFesdsMDFe_Lacre: TDataSetField
      FieldName = 'sdsMDFe_Lacre'
    end
    object cdsMDFesdsMDFe_AutXML: TDataSetField
      FieldName = 'sdsMDFe_AutXML'
    end
    object cdsMDFesdsMDFe_Reboque: TDataSetField
      FieldName = 'sdsMDFe_Reboque'
    end
    object cdsMDFesdsMDFe_Percurso: TDataSetField
      FieldName = 'sdsMDFe_Percurso'
    end
    object cdsMDFesdsMDFe_Seguradora: TDataSetField
      FieldName = 'sdsMDFe_Seguradora'
    end
    object cdsMDFeXML_ASSINADO: TMemoField
      FieldName = 'XML_ASSINADO'
      BlobType = ftMemo
      Size = 1
    end
    object cdsMDFeXML_ASSINADO_PROC: TMemoField
      FieldName = 'XML_ASSINADO_PROC'
      BlobType = ftMemo
      Size = 1
    end
    object cdsMDFeRECIBO_MDFE: TStringField
      FieldName = 'RECIBO_MDFE'
      Size = 44
    end
    object cdsMDFeDTENCERRAMENTO: TDateField
      FieldName = 'DTENCERRAMENTO'
    end
    object cdsMDFePROTOCOLO_ENC: TStringField
      FieldName = 'PROTOCOLO_ENC'
      Size = 44
    end
    object cdsMDFeXML_ENCERRAMENTO: TMemoField
      FieldName = 'XML_ENCERRAMENTO'
      BlobType = ftMemo
      Size = 1
    end
    object cdsMDFeXML_CANCELADO: TMemoField
      FieldName = 'XML_CANCELADO'
      BlobType = ftMemo
      Size = 1
    end
    object cdsMDFePROTOCOLO_CANC: TStringField
      FieldName = 'PROTOCOLO_CANC'
      Size = 44
    end
    object cdsMDFeDTCANCELAMENTO: TDateField
      FieldName = 'DTCANCELAMENTO'
    end
    object cdsMDFeDTRECIBO: TStringField
      FieldName = 'DTRECIBO'
      Size = 40
    end
    object cdsMDFeDTPROTOCOLO_MDFE: TStringField
      FieldName = 'DTPROTOCOLO_MDFE'
      Size = 40
    end
    object cdsMDFeDTPROTOCOLO_ENC: TStringField
      FieldName = 'DTPROTOCOLO_ENC'
      Size = 40
    end
    object cdsMDFeDTPROTOCOLO_CANC: TStringField
      FieldName = 'DTPROTOCOLO_CANC'
      Size = 40
    end
    object cdsMDFesdsMDFe_Pedagio: TDataSetField
      FieldName = 'sdsMDFe_Pedagio'
    end
    object cdsMDFeMOTIVO_CANC: TStringField
      FieldName = 'MOTIVO_CANC'
      Size = 200
    end
    object cdsMDFeCANCELADO: TStringField
      FieldName = 'CANCELADO'
      Size = 1
    end
  end
  object dsMDFe: TDataSource
    DataSet = cdsMDFe
    Left = 296
    Top = 13
  end
  object sdsMDFe_Cidade_Car: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT M.*, CID.codmunicipio, CID.NOME NOME_CIDADE'#13#10'FROM MDFE_CI' +
      'DADE_CAR M'#13#10'INNER JOIN CIDADE CID'#13#10'ON M.id_cidade = CID.id'#13#10'WHER' +
      'E M.ID = :ID'#13#10
    DataSource = sdsMDFe_Mestre
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 144
    Top = 92
    object sdsMDFe_Cidade_CarID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsMDFe_Cidade_CarITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsMDFe_Cidade_CarID_CIDADE: TIntegerField
      FieldName = 'ID_CIDADE'
    end
    object sdsMDFe_Cidade_CarCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object sdsMDFe_Cidade_CarCODMUNICIPIO: TStringField
      FieldName = 'CODMUNICIPIO'
      Size = 7
    end
    object sdsMDFe_Cidade_CarNOME_CIDADE: TStringField
      FieldName = 'NOME_CIDADE'
      Size = 40
    end
  end
  object cdsMDFe_Cidade_Car: TClientDataSet
    Aggregates = <>
    DataSetField = cdsMDFesdsMDFe_Cidade_Car
    IndexFieldNames = 'ID;ITEM'
    Params = <>
    Left = 248
    Top = 92
    object cdsMDFe_Cidade_CarID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsMDFe_Cidade_CarITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsMDFe_Cidade_CarID_CIDADE: TIntegerField
      FieldName = 'ID_CIDADE'
    end
    object cdsMDFe_Cidade_CarCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object cdsMDFe_Cidade_CarCODMUNICIPIO: TStringField
      FieldName = 'CODMUNICIPIO'
      Size = 7
    end
    object cdsMDFe_Cidade_CarNOME_CIDADE: TStringField
      FieldName = 'NOME_CIDADE'
      Size = 40
    end
  end
  object dsMDFe_Cidade_Car: TDataSource
    DataSet = cdsMDFe_Cidade_Car
    Left = 320
    Top = 92
  end
  object sdsMDFe_Mestre: TDataSource
    DataSet = sdsMDFe
    Left = 64
    Top = 64
  end
  object sdsMDFe_Condutor: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM MDFE_CONDUTOR'#13#10'WHERE ID = :ID'
    DataSource = sdsMDFe_Mestre
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 144
    Top = 142
    object sdsMDFe_CondutorID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsMDFe_CondutorITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsMDFe_CondutorNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object sdsMDFe_CondutorCPF: TStringField
      FieldName = 'CPF'
      Size = 14
    end
    object sdsMDFe_CondutorID_CONDUTOR: TIntegerField
      FieldName = 'ID_CONDUTOR'
    end
  end
  object cdsMDFe_Condutor: TClientDataSet
    Aggregates = <>
    DataSetField = cdsMDFesdsMDFe_Condutor
    IndexFieldNames = 'ID;ITEM'
    Params = <>
    Left = 248
    Top = 142
    object cdsMDFe_CondutorID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsMDFe_CondutorITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsMDFe_CondutorNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object cdsMDFe_CondutorCPF: TStringField
      FieldName = 'CPF'
      Size = 14
    end
    object cdsMDFe_CondutorID_CONDUTOR: TIntegerField
      FieldName = 'ID_CONDUTOR'
    end
  end
  object dsMDFe_Condutor: TDataSource
    DataSet = cdsMDFe_Condutor
    Left = 320
    Top = 142
  end
  object qParametros_MDFe: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT *'
      'FROM PARAMETROS_MDFE')
    SQLConnection = dmDatabase.scoDados
    Left = 792
    Top = 200
    object qParametros_MDFeVERSAO_EMISSAO: TStringField
      FieldName = 'VERSAO_EMISSAO'
    end
    object qParametros_MDFeVERSAO_LEIAUTE: TStringField
      FieldName = 'VERSAO_LEIAUTE'
      Size = 10
    end
    object qParametros_MDFeVERSAO_MODAL: TStringField
      FieldName = 'VERSAO_MODAL'
      Size = 10
    end
  end
  object sdsMDFe_Lacre: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM MDFE_LACRE'#13#10'WHERE ID = :ID'
    DataSource = sdsMDFe_Mestre
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 144
    Top = 319
    object sdsMDFe_LacreID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsMDFe_LacreITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsMDFe_LacreNUM_LACRE: TStringField
      FieldName = 'NUM_LACRE'
      Size = 60
    end
    object sdsMDFe_LacreTIPO: TStringField
      FieldName = 'TIPO'
      Size = 1
    end
  end
  object cdsMDFe_Lacre: TClientDataSet
    Aggregates = <>
    DataSetField = cdsMDFesdsMDFe_Lacre
    IndexFieldNames = 'ID;ITEM'
    Params = <>
    Left = 248
    Top = 319
    object cdsMDFe_LacreID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsMDFe_LacreITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsMDFe_LacreNUM_LACRE: TStringField
      FieldName = 'NUM_LACRE'
      Size = 60
    end
    object cdsMDFe_LacreTIPO: TStringField
      FieldName = 'TIPO'
      Size = 1
    end
  end
  object dsMDFe_Lacre: TDataSource
    DataSet = cdsMDFe_Lacre
    Left = 320
    Top = 319
  end
  object sdsMDFe_AutXML: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM MDFE_AUTXML'#13#10'WHERE ID = :ID'
    DataSource = sdsMDFe_Mestre
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 144
    Top = 373
    object sdsMDFe_AutXMLID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsMDFe_AutXMLITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsMDFe_AutXMLPESSOA: TStringField
      FieldName = 'PESSOA'
      FixedChar = True
      Size = 1
    end
    object sdsMDFe_AutXMLCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
      Size = 18
    end
  end
  object cdsMDFe_AutXML: TClientDataSet
    Aggregates = <>
    DataSetField = cdsMDFesdsMDFe_AutXML
    IndexFieldNames = 'ID;ITEM'
    Params = <>
    Left = 248
    Top = 373
    object cdsMDFe_AutXMLID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsMDFe_AutXMLITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsMDFe_AutXMLPESSOA: TStringField
      FieldName = 'PESSOA'
      FixedChar = True
      Size = 1
    end
    object cdsMDFe_AutXMLCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
      Size = 18
    end
  end
  object dsMDFe_AutXML: TDataSource
    DataSet = cdsMDFe_AutXML
    Left = 320
    Top = 373
  end
  object sdsMDFe_Reboque: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT M.*, V.nome NOME_VEICULO, V.placa, V.uf_placa, V.renavam,' +
      #13#10'V.tara_kg, V.capacidade_kg, V.capacidade_m3, V.id_proprietario' +
      ', V.tipo_rodado,'#13#10'V.tipo_carroceria, PV.nome NOME_PROPRIETARIO, ' +
      'PV.cnpj_cpf CNPJ_CPF_PROPRIETARIO,'#13#10'PV.insc_estadual INSC_ESTADU' +
      'AL_PROPRIETARIO, PV.uf UF_PROPRIETARIO,'#13#10'PV.tipo_reg TIPO_REG_PR' +
      'OPRIETARIO, PV.rntrc RNTRC_PROPRIETARIO,'#13#10'PV.pessoa PESSOA_PROPR' +
      'IETARIO'#13#10'FROM MDFE_REBOQUE M'#13#10'INNER JOIN veiculo V'#13#10'ON M.id_veic' +
      'ulo = V.id'#13#10'LEFT JOIN proprietario_vei PV'#13#10'ON V.id_proprietario ' +
      '= V.ID'#13#10'WHERE M.ID = :ID'
    DataSource = sdsMDFe_Mestre
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 144
    Top = 427
    object sdsMDFe_ReboqueID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsMDFe_ReboqueITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsMDFe_ReboqueID_VEICULO: TIntegerField
      FieldName = 'ID_VEICULO'
    end
    object sdsMDFe_ReboqueNOME_VEICULO: TStringField
      FieldName = 'NOME_VEICULO'
      Size = 60
    end
    object sdsMDFe_ReboquePLACA: TStringField
      FieldName = 'PLACA'
      Size = 8
    end
    object sdsMDFe_ReboqueUF_PLACA: TStringField
      FieldName = 'UF_PLACA'
      Size = 2
    end
    object sdsMDFe_ReboqueRENAVAM: TStringField
      FieldName = 'RENAVAM'
      Size = 15
    end
    object sdsMDFe_ReboqueTARA_KG: TFloatField
      FieldName = 'TARA_KG'
    end
    object sdsMDFe_ReboqueCAPACIDADE_KG: TFloatField
      FieldName = 'CAPACIDADE_KG'
    end
    object sdsMDFe_ReboqueCAPACIDADE_M3: TFloatField
      FieldName = 'CAPACIDADE_M3'
    end
    object sdsMDFe_ReboqueID_PROPRIETARIO: TIntegerField
      FieldName = 'ID_PROPRIETARIO'
    end
    object sdsMDFe_ReboqueTIPO_RODADO: TStringField
      FieldName = 'TIPO_RODADO'
      Size = 2
    end
    object sdsMDFe_ReboqueTIPO_CARROCERIA: TStringField
      FieldName = 'TIPO_CARROCERIA'
      Size = 2
    end
    object sdsMDFe_ReboqueNOME_PROPRIETARIO: TStringField
      FieldName = 'NOME_PROPRIETARIO'
      Size = 60
    end
    object sdsMDFe_ReboqueCNPJ_CPF_PROPRIETARIO: TStringField
      FieldName = 'CNPJ_CPF_PROPRIETARIO'
      Size = 18
    end
    object sdsMDFe_ReboqueINSC_ESTADUAL_PROPRIETARIO: TStringField
      FieldName = 'INSC_ESTADUAL_PROPRIETARIO'
      Size = 14
    end
    object sdsMDFe_ReboqueUF_PROPRIETARIO: TStringField
      FieldName = 'UF_PROPRIETARIO'
      Size = 2
    end
    object sdsMDFe_ReboqueTIPO_REG_PROPRIETARIO: TStringField
      FieldName = 'TIPO_REG_PROPRIETARIO'
      Size = 1
    end
    object sdsMDFe_ReboqueRNTRC_PROPRIETARIO: TStringField
      FieldName = 'RNTRC_PROPRIETARIO'
      Size = 8
    end
    object sdsMDFe_ReboquePESSOA_PROPRIETARIO: TStringField
      FieldName = 'PESSOA_PROPRIETARIO'
      FixedChar = True
      Size = 1
    end
  end
  object cdsMDFe_Reboque: TClientDataSet
    Aggregates = <>
    DataSetField = cdsMDFesdsMDFe_Reboque
    IndexFieldNames = 'ID;ITEM'
    Params = <>
    Left = 248
    Top = 427
    object cdsMDFe_ReboqueID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsMDFe_ReboqueITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsMDFe_ReboqueID_VEICULO: TIntegerField
      FieldName = 'ID_VEICULO'
    end
    object cdsMDFe_ReboqueNOME_VEICULO: TStringField
      FieldName = 'NOME_VEICULO'
      Size = 60
    end
    object cdsMDFe_ReboquePLACA: TStringField
      FieldName = 'PLACA'
      Size = 8
    end
    object cdsMDFe_ReboqueUF_PLACA: TStringField
      FieldName = 'UF_PLACA'
      Size = 2
    end
    object cdsMDFe_ReboqueRENAVAM: TStringField
      FieldName = 'RENAVAM'
      Size = 15
    end
    object cdsMDFe_ReboqueTARA_KG: TFloatField
      FieldName = 'TARA_KG'
    end
    object cdsMDFe_ReboqueCAPACIDADE_KG: TFloatField
      FieldName = 'CAPACIDADE_KG'
    end
    object cdsMDFe_ReboqueCAPACIDADE_M3: TFloatField
      FieldName = 'CAPACIDADE_M3'
    end
    object cdsMDFe_ReboqueID_PROPRIETARIO: TIntegerField
      FieldName = 'ID_PROPRIETARIO'
    end
    object cdsMDFe_ReboqueTIPO_RODADO: TStringField
      FieldName = 'TIPO_RODADO'
      Size = 2
    end
    object cdsMDFe_ReboqueTIPO_CARROCERIA: TStringField
      FieldName = 'TIPO_CARROCERIA'
      Size = 2
    end
    object cdsMDFe_ReboqueNOME_PROPRIETARIO: TStringField
      FieldName = 'NOME_PROPRIETARIO'
      Size = 60
    end
    object cdsMDFe_ReboqueCNPJ_CPF_PROPRIETARIO: TStringField
      FieldName = 'CNPJ_CPF_PROPRIETARIO'
      Size = 18
    end
    object cdsMDFe_ReboqueINSC_ESTADUAL_PROPRIETARIO: TStringField
      FieldName = 'INSC_ESTADUAL_PROPRIETARIO'
      Size = 14
    end
    object cdsMDFe_ReboqueUF_PROPRIETARIO: TStringField
      FieldName = 'UF_PROPRIETARIO'
      Size = 2
    end
    object cdsMDFe_ReboqueTIPO_REG_PROPRIETARIO: TStringField
      FieldName = 'TIPO_REG_PROPRIETARIO'
      Size = 1
    end
    object cdsMDFe_ReboqueRNTRC_PROPRIETARIO: TStringField
      FieldName = 'RNTRC_PROPRIETARIO'
      Size = 8
    end
    object cdsMDFe_ReboquePESSOA_PROPRIETARIO: TStringField
      FieldName = 'PESSOA_PROPRIETARIO'
      FixedChar = True
      Size = 1
    end
  end
  object dsMDFe_Reboque: TDataSource
    DataSet = cdsMDFe_Reboque
    Left = 320
    Top = 427
  end
  object sdsMDFe_Percurso: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM MDFE_PERCURSO'#13#10'WHERE ID = :ID'
    DataSource = sdsMDFe_Mestre
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 144
    Top = 473
    object sdsMDFe_PercursoID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsMDFe_PercursoITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsMDFe_PercursoUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
  end
  object cdsMDFe_Percurso: TClientDataSet
    Aggregates = <>
    DataSetField = cdsMDFesdsMDFe_Percurso
    IndexFieldNames = 'ID;ITEM'
    Params = <>
    Left = 248
    Top = 473
    object cdsMDFe_PercursoID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsMDFe_PercursoITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsMDFe_PercursoUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
  end
  object dsMDFe_Percurso: TDataSource
    DataSet = cdsMDFe_Percurso
    Left = 320
    Top = 473
  end
  object qParametros: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT LOCALSERVIDORNFE, FUSOHORARIO_VERAO, FUSOHORARIO'
      'FROM PARAMETROS')
    SQLConnection = dmDatabase.scoDados
    Left = 784
    Top = 256
    object qParametrosLOCALSERVIDORNFE: TStringField
      FieldName = 'LOCALSERVIDORNFE'
      Size = 100
    end
    object qParametrosFUSOHORARIO_VERAO: TStringField
      FieldName = 'FUSOHORARIO_VERAO'
      Size = 6
    end
    object qParametrosFUSOHORARIO: TStringField
      FieldName = 'FUSOHORARIO'
      Size = 6
    end
  end
  object qFilial: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT F.ID, F.nome, F.localservidornfe'
      'FROM FILIAL F'
      'WHERE F.ID = :ID')
    SQLConnection = dmDatabase.scoDados
    Left = 808
    Top = 336
    object qFilialID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qFilialNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object qFilialLOCALSERVIDORNFE: TStringField
      FieldName = 'LOCALSERVIDORNFE'
      Size = 100
    end
  end
  object sdsMDFe_Averbacao: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT *'#13#10'FROM MDFE_AVERBACAO'#13#10'WHERE ID = :ID'#13#10'  AND ITEM = :ITE' +
      'M'
    DataSource = dsMDFe_Seguradora_Mestre
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end
      item
        DataType = ftInteger
        Name = 'ITEM'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 176
    Top = 605
    object sdsMDFe_AverbacaoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsMDFe_AverbacaoITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object sdsMDFe_AverbacaoNUM_AVERBACAO: TStringField
      FieldName = 'NUM_AVERBACAO'
      Required = True
      Size = 40
    end
  end
  object cdsMDFe_Averbacao: TClientDataSet
    Aggregates = <>
    DataSetField = cdsMDFe_SeguradorasdsMDFe_Averbacao
    IndexFieldNames = 'ID;ITEM;NUM_AVERBACAO'
    Params = <>
    Left = 280
    Top = 605
    object cdsMDFe_AverbacaoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsMDFe_AverbacaoITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsMDFe_AverbacaoNUM_AVERBACAO: TStringField
      FieldName = 'NUM_AVERBACAO'
      Required = True
      Size = 40
    end
  end
  object dsMDFe_Averbacao: TDataSource
    DataSet = cdsMDFe_Averbacao
    Left = 352
    Top = 605
  end
  object sdsMDFe_Seguradora: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT M.*, S.nome NOME_SEGURADORA, S.cnpj CNPJ_SEGURADORA'#13#10'FROM' +
      ' MDFE_SEGURADORA M'#13#10'INNER JOIN seguradora S'#13#10'ON M.id_seguradora ' +
      '= S.id'#13#10'WHERE M.ID = :ID'
    DataSource = sdsMDFe_Mestre
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 144
    Top = 530
    object sdsMDFe_SeguradoraID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsMDFe_SeguradoraITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object sdsMDFe_SeguradoraRESPONSAVEL_SEGURO: TStringField
      FieldName = 'RESPONSAVEL_SEGURO'
      FixedChar = True
      Size = 1
    end
    object sdsMDFe_SeguradoraPESSOA_RESP_SEG: TStringField
      FieldName = 'PESSOA_RESP_SEG'
      FixedChar = True
      Size = 1
    end
    object sdsMDFe_SeguradoraCNPJ_CPF_RESP_SEG: TStringField
      FieldName = 'CNPJ_CPF_RESP_SEG'
      Size = 18
    end
    object sdsMDFe_SeguradoraID_SEGURADORA: TIntegerField
      FieldName = 'ID_SEGURADORA'
    end
    object sdsMDFe_SeguradoraNUM_APOLICE: TIntegerField
      FieldName = 'NUM_APOLICE'
    end
    object sdsMDFe_SeguradoraNOME_SEGURADORA: TStringField
      FieldName = 'NOME_SEGURADORA'
      Size = 30
    end
    object sdsMDFe_SeguradoraCNPJ_SEGURADORA: TStringField
      FieldName = 'CNPJ_SEGURADORA'
      Size = 18
    end
  end
  object cdsMDFe_Seguradora: TClientDataSet
    Aggregates = <>
    DataSetField = cdsMDFesdsMDFe_Seguradora
    IndexFieldNames = 'ID;ITEM'
    Params = <>
    Left = 248
    Top = 530
    object cdsMDFe_SeguradoraID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsMDFe_SeguradoraITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsMDFe_SeguradoraRESPONSAVEL_SEGURO: TStringField
      FieldName = 'RESPONSAVEL_SEGURO'
      FixedChar = True
      Size = 1
    end
    object cdsMDFe_SeguradoraPESSOA_RESP_SEG: TStringField
      FieldName = 'PESSOA_RESP_SEG'
      FixedChar = True
      Size = 1
    end
    object cdsMDFe_SeguradoraCNPJ_CPF_RESP_SEG: TStringField
      FieldName = 'CNPJ_CPF_RESP_SEG'
      Size = 18
    end
    object cdsMDFe_SeguradoraID_SEGURADORA: TIntegerField
      FieldName = 'ID_SEGURADORA'
    end
    object cdsMDFe_SeguradoraNUM_APOLICE: TIntegerField
      FieldName = 'NUM_APOLICE'
    end
    object cdsMDFe_SeguradoraNOME_SEGURADORA: TStringField
      FieldName = 'NOME_SEGURADORA'
      Size = 30
    end
    object cdsMDFe_SeguradoraCNPJ_SEGURADORA: TStringField
      FieldName = 'CNPJ_SEGURADORA'
      Size = 18
    end
    object cdsMDFe_SeguradorasdsMDFe_Averbacao: TDataSetField
      FieldName = 'sdsMDFe_Averbacao'
    end
  end
  object dsMDFe_Seguradora: TDataSource
    DataSet = cdsMDFe_Seguradora
    Left = 320
    Top = 530
  end
  object dsMDFe_Seguradora_Mestre: TDataSource
    DataSet = sdsMDFe_Seguradora
    Left = 96
    Top = 560
  end
  object sdsMDFe_Cidade_Des: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT M.*, C.codmunicipio, c.nome NOME_CIDADE'#13#10'FROM MDFE_CIDADE' +
      '_DES M'#13#10'INNER JOIN CIDADE C'#13#10'ON M.ID_CIDADE = C.ID'#13#10'WHERE M.ID =' +
      ' :ID'
    DataSource = sdsMDFe_Mestre
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 128
    Top = 191
    object sdsMDFe_Cidade_DesID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsMDFe_Cidade_DesITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsMDFe_Cidade_DesID_CIDADE: TIntegerField
      FieldName = 'ID_CIDADE'
    end
    object sdsMDFe_Cidade_DesCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object sdsMDFe_Cidade_DesCODMUNICIPIO: TStringField
      FieldName = 'CODMUNICIPIO'
      Size = 7
    end
    object sdsMDFe_Cidade_DesNOME_CIDADE: TStringField
      FieldName = 'NOME_CIDADE'
      Size = 40
    end
  end
  object cdsMDFe_Cidade_Des: TClientDataSet
    Aggregates = <>
    DataSetField = cdsMDFesdsMDFe_Cidade_Des
    IndexFieldNames = 'ID;ITEM'
    Params = <>
    Left = 232
    Top = 191
    object cdsMDFe_Cidade_DesID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsMDFe_Cidade_DesITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsMDFe_Cidade_DesID_CIDADE: TIntegerField
      FieldName = 'ID_CIDADE'
    end
    object cdsMDFe_Cidade_DesCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object cdsMDFe_Cidade_DessdsMDFe_NFe: TDataSetField
      FieldName = 'sdsMDFe_NFe'
    end
    object cdsMDFe_Cidade_DesCODMUNICIPIO: TStringField
      FieldName = 'CODMUNICIPIO'
      Size = 7
    end
    object cdsMDFe_Cidade_DesNOME_CIDADE: TStringField
      FieldName = 'NOME_CIDADE'
      Size = 40
    end
  end
  object dsMDFe_Cidade_Des: TDataSource
    DataSet = cdsMDFe_Cidade_Des
    Left = 304
    Top = 191
  end
  object sdsMDFe_NFe: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM MDFE_NFE'#13#10'WHERE ID = :ID'#13#10'  AND ITEM = :ITEM'
    DataSource = dsMDFe_Cidade_Des_Mestre
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end
      item
        DataType = ftInteger
        Name = 'ITEM'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 160
    Top = 261
    object sdsMDFe_NFeID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsMDFe_NFeITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsMDFe_NFeITEM_NFE: TIntegerField
      FieldName = 'ITEM_NFE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsMDFe_NFeCHAVE_ACESSO: TStringField
      FieldName = 'CHAVE_ACESSO'
      Size = 44
    end
    object sdsMDFe_NFeINDICADOR_REENTREGA: TStringField
      FieldName = 'INDICADOR_REENTREGA'
      Size = 1
    end
  end
  object cdsMDFe_NFe: TClientDataSet
    Aggregates = <>
    DataSetField = cdsMDFe_Cidade_DessdsMDFe_NFe
    IndexFieldNames = 'ID;ITEM'
    Params = <>
    Left = 264
    Top = 261
    object cdsMDFe_NFeID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsMDFe_NFeITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsMDFe_NFeITEM_NFE: TIntegerField
      FieldName = 'ITEM_NFE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsMDFe_NFeCHAVE_ACESSO: TStringField
      FieldName = 'CHAVE_ACESSO'
      Size = 44
    end
    object cdsMDFe_NFeINDICADOR_REENTREGA: TStringField
      FieldName = 'INDICADOR_REENTREGA'
      Size = 1
    end
    object cdsMDFe_NFeclNumNota: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'clNumNota'
      Calculated = True
    end
    object cdsMDFe_NFeclSerie: TStringField
      FieldKind = fkCalculated
      FieldName = 'clSerie'
      Size = 3
      Calculated = True
    end
    object cdsMDFe_NFeclDtEmissao: TDateField
      FieldKind = fkCalculated
      FieldName = 'clDtEmissao'
      Calculated = True
    end
    object cdsMDFe_NFeclNomeCliente: TStringField
      FieldKind = fkCalculated
      FieldName = 'clNomeCliente'
      Size = 60
      Calculated = True
    end
    object cdsMDFe_NFeclCidade: TStringField
      FieldKind = fkCalculated
      FieldName = 'clCidade'
      Size = 40
      Calculated = True
    end
  end
  object dsMDFe_NFe: TDataSource
    DataSet = cdsMDFe_NFe
    Left = 336
    Top = 261
  end
  object dsMDFe_Cidade_Des_Mestre: TDataSource
    DataSet = sdsMDFe_Cidade_Des
    Left = 88
    Top = 240
  end
  object sdsMDFe_Pedagio: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM MDFE_PEDAGIO'#13#10'WHERE ID = :ID'
    DataSource = sdsMDFe_Mestre
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 432
    Top = 94
    object sdsMDFe_PedagioID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsMDFe_PedagioITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsMDFe_PedagioCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 18
    end
    object sdsMDFe_PedagioPESSOA_PAG: TStringField
      FieldName = 'PESSOA_PAG'
      FixedChar = True
      Size = 1
    end
    object sdsMDFe_PedagioCNPJ_CPF_PAG: TStringField
      FieldName = 'CNPJ_CPF_PAG'
      Size = 18
    end
    object sdsMDFe_PedagioNUM_COMPROVANTE: TStringField
      FieldName = 'NUM_COMPROVANTE'
    end
    object sdsMDFe_PedagioVLR_PEDAGIO: TFloatField
      FieldName = 'VLR_PEDAGIO'
    end
  end
  object cdsMDFe_Pedagio: TClientDataSet
    Aggregates = <>
    DataSetField = cdsMDFesdsMDFe_Pedagio
    IndexFieldNames = 'ID;ITEM'
    Params = <>
    Left = 536
    Top = 94
    object cdsMDFe_PedagioID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsMDFe_PedagioITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsMDFe_PedagioCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 18
    end
    object cdsMDFe_PedagioPESSOA_PAG: TStringField
      FieldName = 'PESSOA_PAG'
      FixedChar = True
      Size = 1
    end
    object cdsMDFe_PedagioCNPJ_CPF_PAG: TStringField
      FieldName = 'CNPJ_CPF_PAG'
      Size = 18
    end
    object cdsMDFe_PedagioNUM_COMPROVANTE: TStringField
      FieldName = 'NUM_COMPROVANTE'
    end
    object cdsMDFe_PedagioVLR_PEDAGIO: TFloatField
      FieldName = 'VLR_PEDAGIO'
    end
  end
  object dsMDFe_Pedagio: TDataSource
    DataSet = cdsMDFe_Pedagio
    Left = 608
    Top = 94
  end
  object frxReport1: TfrxReport
    Tag = 1
    Version = '5.1.1'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42823.641446990700000000
    ReportOptions.LastChange = 42824.768016296290000000
    ScriptLanguage = 'PascalScript'
    StoreInDFM = False
    OnReportPrint = 'frxReportOnReportPrint'
    Left = 600
    Top = 415
  end
  object frxPDFExport1: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    Left = 640
    Top = 415
  end
  object frxMailExport1: TfrxMailExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    ShowExportDialog = True
    SmtpPort = 25
    UseIniFile = True
    TimeOut = 60
    ConfurmReading = False
    UseMAPI = SMTP
    Left = 680
    Top = 415
  end
  object frxRichObject1: TfrxRichObject
    Left = 712
    Top = 415
  end
  object frxMDFe: TfrxDBDataset
    UserName = 'frxMDFe'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'TIPO_AMBIENTE=TIPO_AMBIENTE'
      'TIPO_EMITENTE=TIPO_EMITENTE'
      'TIPO_TRANSPORTADOR=TIPO_TRANSPORTADOR'
      'SERIE=SERIE'
      'NUM_MANIFESTO=NUM_MANIFESTO'
      'MODALIDADE_TRANSP=MODALIDADE_TRANSP'
      'DTEMISSAO=DTEMISSAO'
      'HREMISSAO=HREMISSAO'
      'FORMA_EMISSAO=FORMA_EMISSAO'
      'TIPO_EMISSAO=TIPO_EMISSAO'
      'VERSAO_EMISSAO=VERSAO_EMISSAO'
      'UF_CARREGAMENTO=UF_CARREGAMENTO'
      'UF_DESCARREGAMENTO=UF_DESCARREGAMENTO'
      'CHAVE_ACESSO=CHAVE_ACESSO'
      'QTD_NFE=QTD_NFE'
      'QTD_MDFE=QTD_MDFE'
      'VLR_TOTAL=VLR_TOTAL'
      'UNIDADE_PESO=UNIDADE_PESO'
      'PESO_BRUTO=PESO_BRUTO'
      'INF_FISCO=INF_FISCO'
      'INF_ADICIONAIS=INF_ADICIONAIS'
      'FILIAL=FILIAL'
      'ID_VEICULO=ID_VEICULO'
      'COD_AG_PORTO=COD_AG_PORTO'
      'RNTRC=RNTRC'
      'DTINICIO=DTINICIO'
      'HRINICIO=HRINICIO'
      'PROTOCOLO_MDFE=PROTOCOLO_MDFE'
      'PLACA=PLACA'
      'UF_PLACA=UF_PLACA'
      'RENAVAM=RENAVAM'
      'TARA_KG=TARA_KG'
      'CAPACIDADE_KG=CAPACIDADE_KG'
      'CAPACIDADE_M3=CAPACIDADE_M3'
      'ID_PROPRIETARIO=ID_PROPRIETARIO'
      'NOME_PROPRIETARIO=NOME_PROPRIETARIO'
      'CNPJ_CPF_PROPRIETARIO=CNPJ_CPF_PROPRIETARIO'
      'INSC_ESTADUAL_PROPRIETARIO=INSC_ESTADUAL_PROPRIETARIO'
      'UF_PROPRIETARIO=UF_PROPRIETARIO'
      'TIPO_REG_PROPRIETARIO=TIPO_REG_PROPRIETARIO'
      'RNTRC_PROPRIETARIO=RNTRC_PROPRIETARIO'
      'PESSOA_PROPRIETARIO=PESSOA_PROPRIETARIO'
      'NOME_FILIAL=NOME_FILIAL'
      'CNPJ_CPF_FILIAL=CNPJ_CPF_FILIAL'
      'INSC_ESTADUAL_FILIAL=INSC_ESTADUAL_FILIAL'
      'FANTASIA_FILIAL=FANTASIA_FILIAL'
      'END_FILIAL=END_FILIAL'
      'BAIRRO_FILIAL=BAIRRO_FILIAL'
      'CEP_FILIAL=CEP_FILIAL'
      'NUM_END_FILIAL=NUM_END_FILIAL'
      'UF_FILIAL=UF_FILIAL'
      'DDD_FILIAL=DDD_FILIAL'
      'FONE_FILIAL=FONE_FILIAL'
      'CIDADE_FILIAL=CIDADE_FILIAL'
      'CODMUNICIPIO_FILIAL=CODMUNICIPIO_FILIAL'
      'CODUF_FILIAL=CODUF_FILIAL'
      'sdsMDFe_Cidade_Car=sdsMDFe_Cidade_Car'
      'COMPLEMENTO_END_FILIAL=COMPLEMENTO_END_FILIAL'
      'EMAIL_NFE=EMAIL_NFE'
      'sdsMDFe_Condutor=sdsMDFe_Condutor'
      'TIPO_RODADO=TIPO_RODADO'
      'TIPO_CARROCERIA=TIPO_CARROCERIA'
      'sdsMDFe_Cidade_Des=sdsMDFe_Cidade_Des'
      'sdsMDFe_Lacre=sdsMDFe_Lacre'
      'sdsMDFe_AutXML=sdsMDFe_AutXML'
      'sdsMDFe_Reboque=sdsMDFe_Reboque'
      'sdsMDFe_Percurso=sdsMDFe_Percurso'
      'sdsMDFe_Seguradora=sdsMDFe_Seguradora'
      'XML_ASSINADO=XML_ASSINADO'
      'XML_ASSINADO_PROC=XML_ASSINADO_PROC'
      'RECIBO_MDFE=RECIBO_MDFE'
      'DTENCERRAMENTO=DTENCERRAMENTO'
      'PROTOCOLO_ENC=PROTOCOLO_ENC'
      'XML_ENCERRAMENTO=XML_ENCERRAMENTO'
      'CANCELADO=CANCELADO'
      'XML_CANCELADO=XML_CANCELADO'
      'PROTOCOLO_CANC=PROTOCOLO_CANC'
      'MOTIVO_CANC=MOTIVO_CANC'
      'DTCANCELAMENTO=DTCANCELAMENTO'
      'DTRECIBO=DTRECIBO'
      'DTPROTOCOLO_MDFE=DTPROTOCOLO_MDFE'
      'DTPROTOCOLO_ENC=DTPROTOCOLO_ENC'
      'DTPROTOCOLO_CANC=DTPROTOCOLO_CANC'
      'sdsMDFe_Pedagio=sdsMDFe_Pedagio')
    DataSource = dsMDFe
    BCDToCurrency = False
    Left = 600
    Top = 463
  end
  object mAuxMDFe: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 952
    Top = 448
    Data = {
      3A0300009619E0BD0100000018000000190000000000030000003A030D435046
      5F436F6E6475746F72310100490000000100055749445448020002000E000D43
      50465F436F6E6475746F72320100490000000100055749445448020002000E00
      0D4350465F436F6E6475746F7233010049000000010005574944544802000200
      0E000D4350465F436F6E6475746F723401004900000001000557494454480200
      02000E000D4350465F436F6E6475746F72350100490000000100055749445448
      020002000E000E4E6F6D655F436F6E6475746F72310100490000000100055749
      4454480200020028000E4E6F6D655F436F6E6475746F72320100490000000100
      0557494454480200020028000E4E6F6D655F436F6E6475746F72330100490000
      0001000557494454480200020028000E4E6F6D655F436F6E6475746F72340100
      4900000001000557494454480200020028000E4E6F6D655F436F6E6475746F72
      35010049000000010005574944544802000200280009434E504A5F466F723101
      0049000000010005574944544802000200120009434E504A5F466F7232010049
      000000010005574944544802000200120009434E504A5F466F72330100490000
      00010005574944544802000200120009434E504A5F466F723401004900000001
      0005574944544802000200120009434E504A5F466F7235010049000000010005
      57494454480200020012000A434E504A5F526573703101004900000001000557
      494454480200020012000A434E504A5F52657370320100490000000100055749
      4454480200020012000A434E504A5F5265737033010049000000010005574944
      54480200020012000A434E504A5F526573703401004900000001000557494454
      480200020012000A434E504A5F52657370350100490000000100055749445448
      020002001200094E756D5F436F6D703101004900000001000557494454480200
      02001400094E756D5F436F6D7032010049000000010005574944544802000200
      1400094E756D5F436F6D70330100490000000100055749445448020002001400
      094E756D5F436F6D70340100490000000100055749445448020002001400094E
      756D5F436F6D703501004900000001000557494454480200020014000000}
    object mAuxMDFeCPF_Condutor1: TStringField
      FieldName = 'CPF_Condutor1'
      Size = 14
    end
    object mAuxMDFeCPF_Condutor2: TStringField
      FieldName = 'CPF_Condutor2'
      Size = 14
    end
    object mAuxMDFeCPF_Condutor3: TStringField
      FieldName = 'CPF_Condutor3'
      Size = 14
    end
    object mAuxMDFeCPF_Condutor4: TStringField
      FieldName = 'CPF_Condutor4'
      Size = 14
    end
    object mAuxMDFeCPF_Condutor5: TStringField
      FieldName = 'CPF_Condutor5'
      Size = 14
    end
    object mAuxMDFeNome_Condutor1: TStringField
      FieldName = 'Nome_Condutor1'
      Size = 40
    end
    object mAuxMDFeNome_Condutor2: TStringField
      FieldName = 'Nome_Condutor2'
      Size = 40
    end
    object mAuxMDFeNome_Condutor3: TStringField
      FieldName = 'Nome_Condutor3'
      Size = 40
    end
    object mAuxMDFeNome_Condutor4: TStringField
      FieldName = 'Nome_Condutor4'
      Size = 40
    end
    object mAuxMDFeNome_Condutor5: TStringField
      FieldName = 'Nome_Condutor5'
      Size = 40
    end
    object mAuxMDFeCNPJ_For1: TStringField
      FieldName = 'CNPJ_For1'
      Size = 18
    end
    object mAuxMDFeCNPJ_For2: TStringField
      FieldName = 'CNPJ_For2'
      Size = 18
    end
    object mAuxMDFeCNPJ_For3: TStringField
      FieldName = 'CNPJ_For3'
      Size = 18
    end
    object mAuxMDFeCNPJ_For4: TStringField
      FieldName = 'CNPJ_For4'
      Size = 18
    end
    object mAuxMDFeCNPJ_For5: TStringField
      FieldName = 'CNPJ_For5'
      Size = 18
    end
    object mAuxMDFeCNPJ_Resp1: TStringField
      FieldName = 'CNPJ_Resp1'
      Size = 18
    end
    object mAuxMDFeCNPJ_Resp2: TStringField
      FieldName = 'CNPJ_Resp2'
      Size = 18
    end
    object mAuxMDFeCNPJ_Resp3: TStringField
      FieldName = 'CNPJ_Resp3'
      Size = 18
    end
    object mAuxMDFeCNPJ_Resp4: TStringField
      FieldName = 'CNPJ_Resp4'
      Size = 18
    end
    object mAuxMDFeCNPJ_Resp5: TStringField
      FieldName = 'CNPJ_Resp5'
      Size = 18
    end
    object mAuxMDFeNum_Comp1: TStringField
      FieldName = 'Num_Comp1'
    end
    object mAuxMDFeNum_Comp2: TStringField
      FieldName = 'Num_Comp2'
    end
    object mAuxMDFeNum_Comp3: TStringField
      FieldName = 'Num_Comp3'
    end
    object mAuxMDFeNum_Comp4: TStringField
      FieldName = 'Num_Comp4'
    end
    object mAuxMDFeNum_Comp5: TStringField
      FieldName = 'Num_Comp5'
    end
  end
  object dsmAuxMDFe: TDataSource
    DataSet = mAuxMDFe
    Left = 992
    Top = 448
  end
  object frxmAuxMDFe: TfrxDBDataset
    UserName = 'frxmAuxMDFe'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CPF_Condutor1=CPF_Condutor1'
      'CPF_Condutor2=CPF_Condutor2'
      'CPF_Condutor3=CPF_Condutor3'
      'CPF_Condutor4=CPF_Condutor4'
      'CPF_Condutor5=CPF_Condutor5'
      'Nome_Condutor1=Nome_Condutor1'
      'Nome_Condutor2=Nome_Condutor2'
      'Nome_Condutor3=Nome_Condutor3'
      'Nome_Condutor4=Nome_Condutor4'
      'Nome_Condutor5=Nome_Condutor5'
      'CNPJ_For1=CNPJ_For1'
      'CNPJ_For2=CNPJ_For2'
      'CNPJ_For3=CNPJ_For3'
      'CNPJ_For4=CNPJ_For4'
      'CNPJ_For5=CNPJ_For5'
      'CNPJ_Resp1=CNPJ_Resp1'
      'CNPJ_Resp2=CNPJ_Resp2'
      'CNPJ_Resp3=CNPJ_Resp3'
      'CNPJ_Resp4=CNPJ_Resp4'
      'CNPJ_Resp5=CNPJ_Resp5'
      'Num_Comp1=Num_Comp1'
      'Num_Comp2=Num_Comp2'
      'Num_Comp3=Num_Comp3'
      'Num_Comp4=Num_Comp4'
      'Num_Comp5=Num_Comp5')
    DataSource = dsmAuxMDFe
    BCDToCurrency = False
    Left = 648
    Top = 463
  end
  object frxBarCodeObject1: TfrxBarCodeObject
    Left = 808
    Top = 456
  end
end
