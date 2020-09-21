object DMCadMDFe: TDMCadMDFe
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 286
  Top = 61
  Height = 760
  Width = 973
  object sdsMDFe: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM MDFE'#13#10'WHERE ID = :ID'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 80
    Top = 5
    object sdsMDFeID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsMDFeTIPO_AMBIENTE: TStringField
      FieldName = 'TIPO_AMBIENTE'
      FixedChar = True
      Size = 1
    end
    object sdsMDFeTIPO_EMITENTE: TStringField
      FieldName = 'TIPO_EMITENTE'
      FixedChar = True
      Size = 1
    end
    object sdsMDFeTIPO_TRANSPORTADOR: TStringField
      FieldName = 'TIPO_TRANSPORTADOR'
      FixedChar = True
      Size = 1
    end
    object sdsMDFeSERIE: TStringField
      FieldName = 'SERIE'
      Size = 3
    end
    object sdsMDFeNUM_MANIFESTO: TIntegerField
      FieldName = 'NUM_MANIFESTO'
    end
    object sdsMDFeMODALIDADE_TRANSP: TStringField
      FieldName = 'MODALIDADE_TRANSP'
      FixedChar = True
      Size = 1
    end
    object sdsMDFeDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
    object sdsMDFeHREMISSAO: TTimeField
      FieldName = 'HREMISSAO'
    end
    object sdsMDFeFORMA_EMISSAO: TStringField
      FieldName = 'FORMA_EMISSAO'
      FixedChar = True
      Size = 1
    end
    object sdsMDFeTIPO_EMISSAO: TStringField
      FieldName = 'TIPO_EMISSAO'
      FixedChar = True
      Size = 1
    end
    object sdsMDFeVERSAO_EMISSAO: TStringField
      FieldName = 'VERSAO_EMISSAO'
    end
    object sdsMDFeUF_CARREGAMENTO: TStringField
      FieldName = 'UF_CARREGAMENTO'
      Size = 2
    end
    object sdsMDFeUF_DESCARREGAMENTO: TStringField
      FieldName = 'UF_DESCARREGAMENTO'
      Size = 2
    end
    object sdsMDFeCHAVE_ACESSO: TStringField
      FieldName = 'CHAVE_ACESSO'
      Size = 44
    end
    object sdsMDFeQTD_NFE: TIntegerField
      FieldName = 'QTD_NFE'
    end
    object sdsMDFeQTD_MDFE: TIntegerField
      FieldName = 'QTD_MDFE'
    end
    object sdsMDFeVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
    end
    object sdsMDFeUNIDADE_PESO: TStringField
      FieldName = 'UNIDADE_PESO'
      Size = 2
    end
    object sdsMDFePESO_BRUTO: TFloatField
      FieldName = 'PESO_BRUTO'
    end
    object sdsMDFeINF_FISCO: TMemoField
      FieldName = 'INF_FISCO'
      BlobType = ftMemo
      Size = 1
    end
    object sdsMDFeINF_ADICIONAIS: TMemoField
      FieldName = 'INF_ADICIONAIS'
      BlobType = ftMemo
      Size = 1
    end
    object sdsMDFeFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object sdsMDFeID_VEICULO: TIntegerField
      FieldName = 'ID_VEICULO'
    end
    object sdsMDFeCOD_AG_PORTO: TStringField
      FieldName = 'COD_AG_PORTO'
      Size = 16
    end
    object sdsMDFeRNTRC: TStringField
      FieldName = 'RNTRC'
      Size = 8
    end
    object sdsMDFeDTINICIO: TDateField
      FieldName = 'DTINICIO'
    end
    object sdsMDFeHRINICIO: TTimeField
      FieldName = 'HRINICIO'
    end
    object sdsMDFePROTOCOLO_MDFE: TStringField
      FieldName = 'PROTOCOLO_MDFE'
      Size = 44
    end
    object sdsMDFeXML_ASSINADO: TMemoField
      FieldName = 'XML_ASSINADO'
      BlobType = ftMemo
      Size = 1
    end
    object sdsMDFeXML_ASSINADO_PROC: TMemoField
      FieldName = 'XML_ASSINADO_PROC'
      BlobType = ftMemo
      Size = 1
    end
    object sdsMDFeRECIBO_MDFE: TStringField
      FieldName = 'RECIBO_MDFE'
      Size = 44
    end
    object sdsMDFeDTENCERRAMENTO: TDateField
      FieldName = 'DTENCERRAMENTO'
    end
    object sdsMDFePROTOCOLO_ENC: TStringField
      FieldName = 'PROTOCOLO_ENC'
      Size = 44
    end
    object sdsMDFeXML_ENCERRAMENTO: TMemoField
      FieldName = 'XML_ENCERRAMENTO'
      BlobType = ftMemo
      Size = 1
    end
    object sdsMDFeXML_CANCELADO: TMemoField
      FieldName = 'XML_CANCELADO'
      BlobType = ftMemo
      Size = 1
    end
    object sdsMDFePROTOCOLO_CANC: TStringField
      FieldName = 'PROTOCOLO_CANC'
      Size = 44
    end
    object sdsMDFeDTCANCELAMENTO: TDateField
      FieldName = 'DTCANCELAMENTO'
    end
    object sdsMDFeDTRECIBO: TStringField
      FieldName = 'DTRECIBO'
      Size = 40
    end
    object sdsMDFeDTPROTOCOLO_MDFE: TStringField
      FieldName = 'DTPROTOCOLO_MDFE'
      Size = 40
    end
    object sdsMDFeDTPROTOCOLO_ENC: TStringField
      FieldName = 'DTPROTOCOLO_ENC'
      Size = 40
    end
    object sdsMDFeDTPROTOCOLO_CANC: TStringField
      FieldName = 'DTPROTOCOLO_CANC'
      Size = 40
    end
    object sdsMDFeMOTIVO_CANC: TStringField
      FieldName = 'MOTIVO_CANC'
      Size = 200
    end
    object sdsMDFeCANCELADO: TStringField
      FieldName = 'CANCELADO'
      Size = 1
    end
  end
  object dspMDFe: TDataSetProvider
    DataSet = sdsMDFe
    UpdateMode = upWhereKeyOnly
    OnUpdateError = dspMDFeUpdateError
    Left = 144
    Top = 5
  end
  object cdsMDFe: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspMDFe'
    OnNewRecord = cdsMDFeNewRecord
    Left = 208
    Top = 5
    object cdsMDFeID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
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
    object cdsMDFesdsMDFe_AutXML: TDataSetField
      FieldName = 'sdsMDFe_AutXML'
    end
    object cdsMDFesdsMDFe_Cidade_Car: TDataSetField
      FieldName = 'sdsMDFe_Cidade_Car'
    end
    object cdsMDFesdsMDFe_Cidade_Des: TDataSetField
      FieldName = 'sdsMDFe_Cidade_Des'
    end
    object cdsMDFesdsMDFe_CIOT: TDataSetField
      FieldName = 'sdsMDFe_CIOT'
    end
    object cdsMDFesdsMDFe_Condutor: TDataSetField
      FieldName = 'sdsMDFe_Condutor'
    end
    object cdsMDFesdsMDFe_Contratante: TDataSetField
      FieldName = 'sdsMDFe_Contratante'
    end
    object cdsMDFesdsMDFe_Lacre: TDataSetField
      FieldName = 'sdsMDFe_Lacre'
    end
    object cdsMDFesdsMDFe_Pedagio: TDataSetField
      FieldName = 'sdsMDFe_Pedagio'
    end
    object cdsMDFesdsMDFe_Percurso: TDataSetField
      FieldName = 'sdsMDFe_Percurso'
    end
    object cdsMDFesdsMDFe_Reboque: TDataSetField
      FieldName = 'sdsMDFe_Reboque'
    end
    object cdsMDFesdsMDFe_Aereo: TDataSetField
      FieldName = 'sdsMDFe_Aereo'
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
    object cdsMDFesdsMDFe_Evento: TDataSetField
      FieldName = 'sdsMDFe_Evento'
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
    Left = 280
    Top = 5
  end
  object sdsUF: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT U.UF, U.idpais, U.coduf'#13#10'FROM UF U'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 664
    Top = 96
  end
  object dspUF: TDataSetProvider
    DataSet = sdsUF
    OnUpdateError = dspMDFeUpdateError
    Left = 736
    Top = 96
  end
  object cdsUF: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'UF'
    Params = <>
    ProviderName = 'dspUF'
    Left = 800
    Top = 96
    object cdsUFUF: TStringField
      FieldName = 'UF'
      Required = True
      Size = 2
    end
    object cdsUFIDPAIS: TIntegerField
      FieldName = 'IDPAIS'
    end
    object cdsUFCODUF: TStringField
      FieldName = 'CODUF'
      Size = 2
    end
  end
  object dsUF: TDataSource
    DataSet = cdsUF
    Left = 872
    Top = 96
  end
  object sdsProprietario_Vei: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM PROPRIETARIO_VEI'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 665
    Top = 50
  end
  object dspProprietario_Vei: TDataSetProvider
    DataSet = sdsProprietario_Vei
    OnUpdateError = dspMDFeUpdateError
    Left = 737
    Top = 50
  end
  object cdsProprietario_Vei: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspProprietario_Vei'
    Left = 801
    Top = 50
    object cdsProprietario_VeiID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsProprietario_VeiNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object cdsProprietario_VeiCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
      Size = 18
    end
    object cdsProprietario_VeiINSC_ESTADUAL: TStringField
      FieldName = 'INSC_ESTADUAL'
      Size = 14
    end
    object cdsProprietario_VeiUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object cdsProprietario_VeiTIPO_REG: TStringField
      FieldName = 'TIPO_REG'
      Size = 1
    end
    object cdsProprietario_VeiRNTRC: TStringField
      FieldName = 'RNTRC'
      Size = 8
    end
  end
  object dsProprietario_Vei: TDataSource
    DataSet = cdsProprietario_Vei
    Left = 873
    Top = 50
  end
  object dsMDFe_Mestre: TDataSource
    DataSet = sdsMDFe
    Left = 32
    Top = 37
  end
  object sdsMDFe_AutXML: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM MDFE_AUTXML'#13#10'WHERE ID = :ID'
    DataSource = dsMDFe_Mestre
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 104
    Top = 69
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
    Left = 208
    Top = 69
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
    Left = 280
    Top = 69
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
    Left = 152
    Top = 173
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
    Left = 240
    Top = 173
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
    Left = 312
    Top = 173
  end
  object sdsMDFe_Aereo: TSQLDataSet
    CommandText = 'SELECT *'#13#10'FROM MDFE_AEREO'#13#10'WHERE ID = :ID'
    DataSource = dsMDFe_Mestre
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 392
    Top = 238
    object sdsMDFe_AereoID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsMDFe_AereoNACIONALIDADE: TStringField
      FieldName = 'NACIONALIDADE'
      Size = 4
    end
    object sdsMDFe_AereoMATRICULA: TStringField
      FieldName = 'MATRICULA'
      Size = 6
    end
    object sdsMDFe_AereoNUMERO_VOO: TStringField
      FieldName = 'NUMERO_VOO'
      Size = 9
    end
    object sdsMDFe_AereoAERODROMO_EMB: TStringField
      FieldName = 'AERODROMO_EMB'
      Size = 4
    end
    object sdsMDFe_AereoAERODROMO_DEST: TStringField
      FieldName = 'AERODROMO_DEST'
      Size = 4
    end
    object sdsMDFe_AereoDTVOO: TDateField
      FieldName = 'DTVOO'
    end
  end
  object cdsMDFe_Aereo: TClientDataSet
    Aggregates = <>
    DataSetField = cdsMDFesdsMDFe_Aereo
    IndexFieldNames = 'ID'
    Params = <>
    Left = 456
    Top = 238
    object cdsMDFe_AereoID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsMDFe_AereoNACIONALIDADE: TStringField
      FieldName = 'NACIONALIDADE'
      Size = 4
    end
    object cdsMDFe_AereoMATRICULA: TStringField
      FieldName = 'MATRICULA'
      Size = 6
    end
    object cdsMDFe_AereoNUMERO_VOO: TStringField
      FieldName = 'NUMERO_VOO'
      Size = 9
    end
    object cdsMDFe_AereoAERODROMO_EMB: TStringField
      FieldName = 'AERODROMO_EMB'
      Size = 4
    end
    object cdsMDFe_AereoAERODROMO_DEST: TStringField
      FieldName = 'AERODROMO_DEST'
      Size = 4
    end
    object cdsMDFe_AereoDTVOO: TDateField
      FieldName = 'DTVOO'
    end
  end
  object dsMDFe_Aereo: TDataSource
    DataSet = cdsMDFe_Aereo
    Left = 512
    Top = 238
  end
  object sdsConsulta: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT MDFE.*,'#13#10'CASE'#13#10'  WHEN MDFE.tipo_emitente = '#39'1'#39' THEN '#39'Pres' +
      'tador de servi'#231'o de transporte'#39#13#10'  WHEN MDFE.tipo_emitente = '#39'2'#39 +
      ' THEN '#39'Transportador de Carga Pr'#243'pria'#39#13#10'  ELSE '#39#39#13#10'  END DESC_TI' +
      'PO_EMITENTE,'#13#10'CASE'#13#10'  WHEN MDFE.TIPO_TRANSPORTADOR = '#39'1'#39' THEN '#39'E' +
      'TC'#39#13#10'  WHEN MDFE.TIPO_TRANSPORTADOR = '#39'2'#39' THEN '#39'TAC'#39#13#10'  WHEN MDF' +
      'E.TIPO_TRANSPORTADOR = '#39'3'#39' THEN '#39'CTC'#39#13#10'  ELSE '#39#39#13#10'  END DESC_TIP' +
      'O_TRANSPORTADOR,'#13#10'CASE'#13#10'  WHEN MDFE.modalidade_transp = '#39'1'#39' THEN' +
      ' '#39'Rodovi'#225'rio'#39#13#10'  WHEN MDFE.modalidade_transp = '#39'2'#39' THEN '#39'A'#233'reo'#39#13 +
      #10'  WHEN MDFE.modalidade_transp = '#39'3'#39' THEN '#39'Aquavi'#225'rio'#39#13#10'  WHEN M' +
      'DFE.modalidade_transp = '#39'4'#39' THEN '#39'Ferrovi'#225'rio'#39#13#10'  ELSE '#39#39#13#10'  END' +
      ' DESC_MODALIDADE_TRANSP,'#13#10'CASE'#13#10'  WHEN MDFE.FORMA_EMISSAO = '#39'1'#39' ' +
      'THEN '#39'Normal'#39#13#10'  WHEN MDFE.FORMA_EMISSAO = '#39'2'#39' THEN '#39'Conting'#234'nci' +
      'a'#39#13#10'  ELSE '#39#39#13#10'  END DESC_FORMA_EMISSAO,'#13#10'CASE'#13#10'  WHEN MDFE.UNID' +
      'ADE_PESO = '#39'01'#39' THEN '#39'KG'#39#13#10'  WHEN MDFE.UNIDADE_PESO = '#39'02'#39' THEN ' +
      #39'TON'#39#13#10'  ELSE '#39#39#13#10'  END DESC_UNIDADE_PESO, F.nome, F.nome_intern' +
      'o, F.cnpj_cpf CNPJ_FILIAL'#13#10'FROM mdfe'#13#10'INNER JOIN FILIAL F'#13#10'ON MD' +
      'FE.filial = F.ID'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 400
    Top = 5
  end
  object dspConsulta: TDataSetProvider
    DataSet = sdsConsulta
    UpdateMode = upWhereKeyOnly
    OnUpdateError = dspMDFeUpdateError
    Left = 464
    Top = 5
  end
  object cdsConsulta: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspConsulta'
    Left = 528
    Top = 5
    object cdsConsultaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsConsultaTIPO_AMBIENTE: TStringField
      FieldName = 'TIPO_AMBIENTE'
      FixedChar = True
      Size = 1
    end
    object cdsConsultaTIPO_EMITENTE: TStringField
      FieldName = 'TIPO_EMITENTE'
      FixedChar = True
      Size = 1
    end
    object cdsConsultaTIPO_TRANSPORTADOR: TStringField
      FieldName = 'TIPO_TRANSPORTADOR'
      FixedChar = True
      Size = 1
    end
    object cdsConsultaSERIE: TStringField
      FieldName = 'SERIE'
      Size = 3
    end
    object cdsConsultaNUM_MANIFESTO: TIntegerField
      FieldName = 'NUM_MANIFESTO'
    end
    object cdsConsultaMODALIDADE_TRANSP: TStringField
      FieldName = 'MODALIDADE_TRANSP'
      FixedChar = True
      Size = 1
    end
    object cdsConsultaDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
    object cdsConsultaHREMISSAO: TTimeField
      FieldName = 'HREMISSAO'
    end
    object cdsConsultaFORMA_EMISSAO: TStringField
      FieldName = 'FORMA_EMISSAO'
      FixedChar = True
      Size = 1
    end
    object cdsConsultaTIPO_EMISSAO: TStringField
      FieldName = 'TIPO_EMISSAO'
      FixedChar = True
      Size = 1
    end
    object cdsConsultaVERSAO_EMISSAO: TStringField
      FieldName = 'VERSAO_EMISSAO'
    end
    object cdsConsultaUF_CARREGAMENTO: TStringField
      FieldName = 'UF_CARREGAMENTO'
      Size = 2
    end
    object cdsConsultaUF_DESCARREGAMENTO: TStringField
      FieldName = 'UF_DESCARREGAMENTO'
      Size = 2
    end
    object cdsConsultaCHAVE_ACESSO: TStringField
      FieldName = 'CHAVE_ACESSO'
      Size = 44
    end
    object cdsConsultaQTD_NFE: TIntegerField
      FieldName = 'QTD_NFE'
    end
    object cdsConsultaQTD_MDFE: TIntegerField
      FieldName = 'QTD_MDFE'
    end
    object cdsConsultaVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
    end
    object cdsConsultaUNIDADE_PESO: TStringField
      FieldName = 'UNIDADE_PESO'
      Size = 2
    end
    object cdsConsultaPESO_BRUTO: TFloatField
      FieldName = 'PESO_BRUTO'
    end
    object cdsConsultaINF_FISCO: TMemoField
      FieldName = 'INF_FISCO'
      BlobType = ftMemo
      Size = 1
    end
    object cdsConsultaINF_ADICIONAIS: TMemoField
      FieldName = 'INF_ADICIONAIS'
      BlobType = ftMemo
      Size = 1
    end
    object cdsConsultaFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object cdsConsultaID_VEICULO: TIntegerField
      FieldName = 'ID_VEICULO'
    end
    object cdsConsultaCOD_AG_PORTO: TStringField
      FieldName = 'COD_AG_PORTO'
      Size = 16
    end
    object cdsConsultaRNTRC: TStringField
      FieldName = 'RNTRC'
      Size = 8
    end
    object cdsConsultaDTINICIO: TDateField
      FieldName = 'DTINICIO'
    end
    object cdsConsultaHRINICIO: TTimeField
      FieldName = 'HRINICIO'
    end
    object cdsConsultaPROTOCOLO_MDFE: TStringField
      FieldName = 'PROTOCOLO_MDFE'
      Size = 44
    end
    object cdsConsultaDESC_TIPO_EMITENTE: TStringField
      FieldName = 'DESC_TIPO_EMITENTE'
      Required = True
      FixedChar = True
      Size = 34
    end
    object cdsConsultaDESC_TIPO_TRANSPORTADOR: TStringField
      FieldName = 'DESC_TIPO_TRANSPORTADOR'
      Required = True
      FixedChar = True
      Size = 3
    end
    object cdsConsultaDESC_MODALIDADE_TRANSP: TStringField
      FieldName = 'DESC_MODALIDADE_TRANSP'
      Required = True
      FixedChar = True
      Size = 11
    end
    object cdsConsultaDESC_FORMA_EMISSAO: TStringField
      FieldName = 'DESC_FORMA_EMISSAO'
      Required = True
      FixedChar = True
      Size = 12
    end
    object cdsConsultaDESC_UNIDADE_PESO: TStringField
      FieldName = 'DESC_UNIDADE_PESO'
      Required = True
      FixedChar = True
      Size = 3
    end
    object cdsConsultaNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object cdsConsultaNOME_INTERNO: TStringField
      FieldName = 'NOME_INTERNO'
      Size = 30
    end
    object cdsConsultaCNPJ_FILIAL: TStringField
      FieldName = 'CNPJ_FILIAL'
      Size = 18
    end
    object cdsConsultaXML_ASSINADO: TMemoField
      FieldName = 'XML_ASSINADO'
      BlobType = ftMemo
      Size = 1
    end
    object cdsConsultaXML_ASSINADO_PROC: TMemoField
      FieldName = 'XML_ASSINADO_PROC'
      BlobType = ftMemo
      Size = 1
    end
    object cdsConsultaRECIBO_MDFE: TStringField
      FieldName = 'RECIBO_MDFE'
      Size = 44
    end
    object cdsConsultaDTENCERRAMENTO: TDateField
      FieldName = 'DTENCERRAMENTO'
    end
    object cdsConsultaPROTOCOLO_ENC: TStringField
      FieldName = 'PROTOCOLO_ENC'
      Size = 44
    end
    object cdsConsultaXML_ENCERRAMENTO: TMemoField
      FieldName = 'XML_ENCERRAMENTO'
      BlobType = ftMemo
      Size = 1
    end
    object cdsConsultaXML_CANCELADO: TMemoField
      FieldName = 'XML_CANCELADO'
      BlobType = ftMemo
      Size = 1
    end
    object cdsConsultaPROTOCOLO_CANC: TStringField
      FieldName = 'PROTOCOLO_CANC'
      Size = 44
    end
    object cdsConsultaDTCANCELAMENTO: TDateField
      FieldName = 'DTCANCELAMENTO'
    end
    object cdsConsultaMOTIVO_CANC: TStringField
      FieldName = 'MOTIVO_CANC'
      Size = 200
    end
    object cdsConsultaDTRECIBO: TStringField
      FieldName = 'DTRECIBO'
      Size = 40
    end
    object cdsConsultaDTPROTOCOLO_MDFE: TStringField
      FieldName = 'DTPROTOCOLO_MDFE'
      Size = 40
    end
    object cdsConsultaDTPROTOCOLO_ENC: TStringField
      FieldName = 'DTPROTOCOLO_ENC'
      Size = 40
    end
    object cdsConsultaDTPROTOCOLO_CANC: TStringField
      FieldName = 'DTPROTOCOLO_CANC'
      Size = 40
    end
    object cdsConsultaCANCELADO: TStringField
      FieldName = 'CANCELADO'
      Size = 1
    end
  end
  object dsConsulta: TDataSource
    DataSet = cdsConsulta
    Left = 600
    Top = 5
  end
  object sdsFilial: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT ID, NOME, NOME_INTERNO, CNPJ_CPF, UF, ID_CIDADE, CIDADE,'#13 +
      #10'LOCALSERVIDORNFE, endereco, num_end, bairro, complemento_end,'#13#10 +
      'inscr_est, cep, ddd1, fone, email_nfe'#13#10'FROM FILIAL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 664
    Top = 144
  end
  object dspFilial: TDataSetProvider
    DataSet = sdsFilial
    OnUpdateError = dspMDFeUpdateError
    Left = 736
    Top = 144
  end
  object cdsFilial: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'UF'
    Params = <>
    ProviderName = 'dspFilial'
    Left = 800
    Top = 144
    object cdsFilialID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsFilialNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object cdsFilialNOME_INTERNO: TStringField
      FieldName = 'NOME_INTERNO'
      Size = 30
    end
    object cdsFilialCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
      Size = 18
    end
    object cdsFilialUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object cdsFilialID_CIDADE: TIntegerField
      FieldName = 'ID_CIDADE'
    end
    object cdsFilialCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object cdsFilialLOCALSERVIDORNFE: TStringField
      FieldName = 'LOCALSERVIDORNFE'
      Size = 100
    end
    object cdsFilialENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 60
    end
    object cdsFilialNUM_END: TStringField
      FieldName = 'NUM_END'
      Size = 15
    end
    object cdsFilialBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object cdsFilialCOMPLEMENTO_END: TStringField
      FieldName = 'COMPLEMENTO_END'
      Size = 60
    end
    object cdsFilialINSCR_EST: TStringField
      FieldName = 'INSCR_EST'
      Size = 18
    end
    object cdsFilialCEP: TStringField
      FieldName = 'CEP'
      Size = 9
    end
    object cdsFilialDDD1: TIntegerField
      FieldName = 'DDD1'
    end
    object cdsFilialFONE: TStringField
      FieldName = 'FONE'
      Size = 15
    end
    object cdsFilialEMAIL_NFE: TStringField
      FieldName = 'EMAIL_NFE'
      Size = 200
    end
  end
  object dsFilial: TDataSource
    DataSet = cdsFilial
    Left = 872
    Top = 144
  end
  object qFilial_MDFe: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM FILIAL_MDFE'
      'WHERE ID = :ID')
    SQLConnection = dmDatabase.scoDados
    Left = 664
    Top = 192
    object qFilial_MDFeID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qFilial_MDFeTIPO_EMITENTE: TStringField
      FieldName = 'TIPO_EMITENTE'
      FixedChar = True
      Size = 1
    end
    object qFilial_MDFeTIPO_TRANSPORTADOR: TStringField
      FieldName = 'TIPO_TRANSPORTADOR'
      FixedChar = True
      Size = 1
    end
    object qFilial_MDFeTIPO_AMBIENTE: TStringField
      FieldName = 'TIPO_AMBIENTE'
      FixedChar = True
      Size = 1
    end
    object qFilial_MDFeRNTRC: TStringField
      FieldName = 'RNTRC'
      Size = 8
    end
    object qFilial_MDFeSERIE: TStringField
      FieldName = 'SERIE'
      Size = 3
    end
    object qFilial_MDFeEND_LOG: TStringField
      FieldName = 'END_LOG'
      Size = 200
    end
  end
  object sdsSeguradora: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM SEGURADORA'#13#10'WHERE INATIVO = '#39'N'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 664
    Top = 240
  end
  object dspSeguradora: TDataSetProvider
    DataSet = sdsSeguradora
    OnUpdateError = dspMDFeUpdateError
    Left = 736
    Top = 240
  end
  object cdsSeguradora: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspSeguradora'
    Left = 800
    Top = 240
    object cdsSeguradoraID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsSeguradoraNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
    object cdsSeguradoraCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 18
    end
    object cdsSeguradoraINATIVO: TStringField
      FieldName = 'INATIVO'
      Size = 1
    end
  end
  object dsSeguradora: TDataSource
    DataSet = cdsSeguradora
    Left = 872
    Top = 240
  end
  object qFilial_Download: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM FILIAL_DOWNLOAD'
      'WHERE ID = :ID')
    SQLConnection = dmDatabase.scoDados
    Left = 736
    Top = 192
    object qFilial_DownloadID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qFilial_DownloadITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object qFilial_DownloadPESSOA: TStringField
      FieldName = 'PESSOA'
      FixedChar = True
      Size = 1
    end
    object qFilial_DownloadCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
      Size = 18
    end
  end
  object sdsCidade: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT ID, NOME, UF'#13#10'FROM CIDADE'#13#10'WHERE UF = :UF'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'UF'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 664
    Top = 288
  end
  object dspCidade: TDataSetProvider
    DataSet = sdsCidade
    OnUpdateError = dspMDFeUpdateError
    Left = 736
    Top = 288
  end
  object cdsCidade: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'UF;NOME'
    Params = <>
    ProviderName = 'dspCidade'
    Left = 800
    Top = 288
    object cdsCidadeID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsCidadeNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
    object cdsCidadeUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
  end
  object dsCidade: TDataSource
    DataSet = cdsCidade
    Left = 872
    Top = 288
  end
  object qCidade: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT ID, NOME, UF, CODMUNICIPIO'
      'FROM CIDADE'
      'WHERE ID = :ID')
    SQLConnection = dmDatabase.scoDados
    Left = 816
    Top = 192
    object qCidadeID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qCidadeNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
    object qCidadeUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object qCidadeCODMUNICIPIO: TStringField
      FieldName = 'CODMUNICIPIO'
      Size = 7
    end
  end
  object sdsVeiculo: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT *'#13#10'FROM VEICULO'#13#10'WHERE INATIVO = '#39'N'#39#13#10'  AND TIPO_VEICULO ' +
      '= '#39'V'#39#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 664
    Top = 336
  end
  object dspVeiculo: TDataSetProvider
    DataSet = sdsVeiculo
    OnUpdateError = dspMDFeUpdateError
    Left = 736
    Top = 336
  end
  object cdsVeiculo: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'PLACA'
    Params = <>
    ProviderName = 'dspVeiculo'
    Left = 800
    Top = 336
    object cdsVeiculoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsVeiculoNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object cdsVeiculoPLACA: TStringField
      FieldName = 'PLACA'
      Size = 8
    end
    object cdsVeiculoUF_PLACA: TStringField
      FieldName = 'UF_PLACA'
      Size = 2
    end
    object cdsVeiculoCAPACIDADE: TIntegerField
      FieldName = 'CAPACIDADE'
    end
    object cdsVeiculoRENAVAM: TStringField
      FieldName = 'RENAVAM'
      Size = 15
    end
    object cdsVeiculoTARA_KG: TFloatField
      FieldName = 'TARA_KG'
    end
    object cdsVeiculoCAPACIDADE_KG: TFloatField
      FieldName = 'CAPACIDADE_KG'
    end
    object cdsVeiculoCAPACIDADE_M3: TFloatField
      FieldName = 'CAPACIDADE_M3'
    end
    object cdsVeiculoID_PROPRIETARIO: TIntegerField
      FieldName = 'ID_PROPRIETARIO'
    end
    object cdsVeiculoINATIVO: TStringField
      FieldName = 'INATIVO'
      Size = 1
    end
    object cdsVeiculoTIPO_RODADO: TStringField
      FieldName = 'TIPO_RODADO'
      Size = 2
    end
    object cdsVeiculoTIPO_CARROCERIA: TStringField
      FieldName = 'TIPO_CARROCERIA'
      Size = 2
    end
    object cdsVeiculoTIPO_VEICULO: TStringField
      FieldName = 'TIPO_VEICULO'
      FixedChar = True
      Size = 1
    end
  end
  object dsVeiculo: TDataSource
    DataSet = cdsVeiculo
    Left = 872
    Top = 336
  end
  object qVeiculo: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM VEICULO'
      'WHERE ID = :ID')
    SQLConnection = dmDatabase.scoDados
    Left = 880
    Top = 192
    object qVeiculoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qVeiculoNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object qVeiculoPLACA: TStringField
      FieldName = 'PLACA'
      Size = 8
    end
    object qVeiculoUF_PLACA: TStringField
      FieldName = 'UF_PLACA'
      Size = 2
    end
    object qVeiculoCAPACIDADE: TIntegerField
      FieldName = 'CAPACIDADE'
    end
    object qVeiculoRENAVAM: TStringField
      FieldName = 'RENAVAM'
      Size = 15
    end
    object qVeiculoTARA_KG: TFloatField
      FieldName = 'TARA_KG'
    end
    object qVeiculoCAPACIDADE_KG: TFloatField
      FieldName = 'CAPACIDADE_KG'
    end
    object qVeiculoCAPACIDADE_M3: TFloatField
      FieldName = 'CAPACIDADE_M3'
    end
    object qVeiculoID_PROPRIETARIO: TIntegerField
      FieldName = 'ID_PROPRIETARIO'
    end
    object qVeiculoINATIVO: TStringField
      FieldName = 'INATIVO'
      Size = 1
    end
    object qVeiculoTIPO_RODADO: TStringField
      FieldName = 'TIPO_RODADO'
      Size = 2
    end
    object qVeiculoTIPO_CARROCERIA: TStringField
      FieldName = 'TIPO_CARROCERIA'
      Size = 2
    end
    object qVeiculoTIPO_VEICULO: TStringField
      FieldName = 'TIPO_VEICULO'
      FixedChar = True
      Size = 1
    end
  end
  object sdsMDFe_Seguradora: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM MDFE_SEGURADORA'#13#10'WHERE ID = :ID'
    DataSource = dsMDFe_Mestre
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 104
    Top = 114
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
  end
  object cdsMDFe_Seguradora: TClientDataSet
    Aggregates = <>
    DataSetField = cdsMDFesdsMDFe_Seguradora
    IndexFieldNames = 'ID;ITEM'
    Params = <>
    Left = 208
    Top = 114
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
    object cdsMDFe_SeguradorasdsMDFe_Averbacao: TDataSetField
      FieldName = 'sdsMDFe_Averbacao'
    end
    object cdsMDFe_SeguradoralkNome_Seguradora: TStringField
      FieldKind = fkLookup
      FieldName = 'lkNome_Seguradora'
      LookupDataSet = cdsSeguradora
      LookupKeyFields = 'ID'
      LookupResultField = 'NOME'
      KeyFields = 'ID_SEGURADORA'
      Size = 60
      Lookup = True
    end
  end
  object dsMDFe_Seguradora: TDataSource
    DataSet = cdsMDFe_Seguradora
    Left = 280
    Top = 114
  end
  object dsMDFe_Seguradora_Mestre: TDataSource
    DataSet = sdsMDFe_Seguradora
    Left = 56
    Top = 144
  end
  object sdsNotas: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT N.ID, N.numnota, N.id_cfop, N.id_cliente, CLI.NOME NOME_C' +
      'LIENTE, N.dtemissao,'#13#10'N.vlr_nota, N.pesobruto, N.pesoliquido, CF' +
      'OP.CODCFOP, N.SERIE, N.FILIAL, '#13#10'N.NFECHAVEACESSO, N.GEROU_MDFE,' +
      ' cli.id_cidade, cli.cidade, cli.uf'#13#10'FROM NOTAFISCAL N'#13#10'INNER JOI' +
      'N PESSOA CLI'#13#10'ON N.ID_CLIENTE = CLI.CODIGO'#13#10'LEFT JOIN TAB_CFOP C' +
      'FOP'#13#10'ON N.ID_CFOP = CFOP.ID'#13#10'WHERE N.tipo_reg = '#39'NTS'#39#13#10'  AND (N.' +
      'gerou_mdfe = '#39'N'#39' or N.gerou_mdfe IS NULL)'#13#10'  AND N.tipo_nota = '#39 +
      'S'#39#13#10'  AND N.dtemissao >= :DTEMISSAO'#13#10'  AND ((N.nfechaveacesso IS' +
      ' NOT NULL) AND (N.nfechaveacesso <> '#39#39'))'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'DTEMISSAO'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 664
    Top = 384
  end
  object dspNotas: TDataSetProvider
    DataSet = sdsNotas
    Left = 736
    Top = 384
  end
  object cdsNotas: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspNotas'
    Left = 800
    Top = 384
    object cdsNotasID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsNotasNUMNOTA: TIntegerField
      FieldName = 'NUMNOTA'
    end
    object cdsNotasID_CFOP: TIntegerField
      FieldName = 'ID_CFOP'
    end
    object cdsNotasID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object cdsNotasNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 60
    end
    object cdsNotasDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
    object cdsNotasVLR_NOTA: TFloatField
      FieldName = 'VLR_NOTA'
      DisplayFormat = '0.00'
    end
    object cdsNotasPESOBRUTO: TFloatField
      FieldName = 'PESOBRUTO'
      DisplayFormat = '0.000###'
    end
    object cdsNotasPESOLIQUIDO: TFloatField
      FieldName = 'PESOLIQUIDO'
      DisplayFormat = '0.000###'
    end
    object cdsNotasCODCFOP: TStringField
      FieldName = 'CODCFOP'
      Size = 5
    end
    object cdsNotasSERIE: TStringField
      FieldName = 'SERIE'
      Size = 3
    end
    object cdsNotasNFECHAVEACESSO: TStringField
      FieldName = 'NFECHAVEACESSO'
      Size = 44
    end
    object cdsNotasGEROU_MDFE: TStringField
      FieldName = 'GEROU_MDFE'
      FixedChar = True
      Size = 1
    end
    object cdsNotasID_CIDADE: TIntegerField
      FieldName = 'ID_CIDADE'
    end
    object cdsNotasCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object cdsNotasUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object cdsNotasFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
  end
  object dsNotas: TDataSource
    DataSet = cdsNotas
    Left = 872
    Top = 384
  end
  object qTotalNota: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'NFECHAVEACESSO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT SUM(N.pesobruto) PESOBRUTO, SUM(N.vlr_nota) VLR_NOTA'
      'FROM NOTAFISCAL N'
      'WHERE N.NFECHAVEACESSO = :NFECHAVEACESSO')
    SQLConnection = dmDatabase.scoDados
    Left = 392
    Top = 80
    object qTotalNotaPESOBRUTO: TFloatField
      FieldName = 'PESOBRUTO'
    end
    object qTotalNotaVLR_NOTA: TFloatField
      FieldName = 'VLR_NOTA'
    end
  end
  object qProximaMDFe: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'FILIAL'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'SERIE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT MAX(M.num_manifesto) NUM_MANIFESTO'
      'FROM MDFE M'
      'WHERE M.filial = :FILIAL'
      '  AND M.serie = :SERIE')
    SQLConnection = dmDatabase.scoDados
    Left = 392
    Top = 136
    object qProximaMDFeNUM_MANIFESTO: TIntegerField
      FieldName = 'NUM_MANIFESTO'
    end
  end
  object sdsMDFe_Cidade_Car: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM MDFE_CIDADE_CAR'#13#10'WHERE ID = :ID'
    DataSource = dsMDFe_Mestre
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 104
    Top = 220
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
  end
  object sdsMDFe_Cidade_Des: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM MDFE_CIDADE_DES'#13#10'WHERE ID = :ID'
    DataSource = dsMDFe_Mestre
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 104
    Top = 263
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
  end
  object sdsMDFe_CIOT: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM MDFE_CIOT'#13#10'WHERE ID = :ID'
    DataSource = dsMDFe_Mestre
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 104
    Top = 378
    object sdsMDFe_CIOTID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsMDFe_CIOTITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsMDFe_CIOTCOD_CIOT: TStringField
      FieldName = 'COD_CIOT'
      Size = 12
    end
    object sdsMDFe_CIOTPESSOA: TStringField
      FieldName = 'PESSOA'
      FixedChar = True
      Size = 1
    end
    object sdsMDFe_CIOTCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
      Size = 18
    end
  end
  object sdsMDFe_Condutor: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM MDFE_CONDUTOR'#13#10'WHERE ID = :ID'
    DataSource = dsMDFe_Mestre
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 104
    Top = 422
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
  object sdsMDFe_Contratante: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM MDFE_CONTRATANTE'#13#10'WHERE ID = :ID'
    DataSource = dsMDFe_Mestre
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 104
    Top = 463
    object sdsMDFe_ContratanteID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsMDFe_ContratanteITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsMDFe_ContratantePESSOA: TStringField
      FieldName = 'PESSOA'
      Size = 1
    end
    object sdsMDFe_ContratanteCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
      Size = 18
    end
  end
  object sdsMDFe_Lacre: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM MDFE_LACRE'#13#10'WHERE ID = :ID'
    DataSource = dsMDFe_Mestre
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 104
    Top = 503
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
  object cdsMDFe_Cidade_Car: TClientDataSet
    Aggregates = <>
    DataSetField = cdsMDFesdsMDFe_Cidade_Car
    IndexFieldNames = 'ID;ITEM'
    Params = <>
    Left = 208
    Top = 220
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
  end
  object dsMDFe_Cidade_Car: TDataSource
    DataSet = cdsMDFe_Cidade_Car
    Left = 280
    Top = 220
  end
  object cdsMDFe_Cidade_Des: TClientDataSet
    Aggregates = <>
    DataSetField = cdsMDFesdsMDFe_Cidade_Des
    IndexFieldNames = 'ID;ITEM'
    Params = <>
    Left = 208
    Top = 263
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
  end
  object dsMDFe_Cidade_Des: TDataSource
    DataSet = cdsMDFe_Cidade_Des
    Left = 280
    Top = 263
  end
  object cdsMDFe_CIOT: TClientDataSet
    Aggregates = <>
    DataSetField = cdsMDFesdsMDFe_CIOT
    IndexFieldNames = 'ID;ITEM'
    Params = <>
    Left = 208
    Top = 378
    object cdsMDFe_CIOTID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsMDFe_CIOTITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsMDFe_CIOTCOD_CIOT: TStringField
      FieldName = 'COD_CIOT'
      Size = 12
    end
    object cdsMDFe_CIOTPESSOA: TStringField
      FieldName = 'PESSOA'
      FixedChar = True
      Size = 1
    end
    object cdsMDFe_CIOTCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
      Size = 18
    end
  end
  object dsMDFe_CIOT: TDataSource
    DataSet = cdsMDFe_CIOT
    Left = 280
    Top = 378
  end
  object cdsMDFe_Condutor: TClientDataSet
    Aggregates = <>
    DataSetField = cdsMDFesdsMDFe_Condutor
    IndexFieldNames = 'ID;ITEM'
    Params = <>
    Left = 208
    Top = 422
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
    Left = 280
    Top = 422
  end
  object cdsMDFe_Contratante: TClientDataSet
    Aggregates = <>
    DataSetField = cdsMDFesdsMDFe_Contratante
    IndexFieldNames = 'ID;ITEM'
    Params = <>
    Left = 208
    Top = 463
    object cdsMDFe_ContratanteID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsMDFe_ContratanteITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsMDFe_ContratantePESSOA: TStringField
      FieldName = 'PESSOA'
      Size = 1
    end
    object cdsMDFe_ContratanteCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
      Size = 18
    end
  end
  object dsMDFe_Contratante: TDataSource
    DataSet = cdsMDFe_Contratante
    Left = 280
    Top = 463
  end
  object cdsMDFe_Lacre: TClientDataSet
    Aggregates = <>
    DataSetField = cdsMDFesdsMDFe_Lacre
    IndexFieldNames = 'ID;ITEM'
    Params = <>
    Left = 208
    Top = 503
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
    Left = 280
    Top = 503
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
    Left = 136
    Top = 333
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
    object sdsMDFe_NFeVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
    end
    object sdsMDFe_NFePESO_BRUTO: TFloatField
      FieldName = 'PESO_BRUTO'
    end
  end
  object sdsMDFe_Pedagio: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM MDFE_PEDAGIO'#13#10'WHERE ID = :ID'
    DataSource = dsMDFe_Mestre
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 104
    Top = 534
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
  object sdsMDFe_Percurso: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM MDFE_PERCURSO'#13#10'WHERE ID = :ID'
    DataSource = dsMDFe_Mestre
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 104
    Top = 577
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
  object sdsMDFe_Reboque: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM MDFE_REBOQUE'#13#10'WHERE ID = :ID'
    DataSource = dsMDFe_Mestre
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 104
    Top = 619
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
  end
  object cdsMDFe_NFe: TClientDataSet
    Aggregates = <>
    DataSetField = cdsMDFe_Cidade_DessdsMDFe_NFe
    IndexFieldNames = 'ID;ITEM'
    Params = <>
    OnCalcFields = cdsMDFe_NFeCalcFields
    Left = 240
    Top = 333
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
    object cdsMDFe_NFeVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
    end
    object cdsMDFe_NFePESO_BRUTO: TFloatField
      FieldName = 'PESO_BRUTO'
    end
  end
  object dsMDFe_NFe: TDataSource
    DataSet = cdsMDFe_NFe
    Left = 312
    Top = 333
  end
  object cdsMDFe_Pedagio: TClientDataSet
    Aggregates = <>
    DataSetField = cdsMDFesdsMDFe_Pedagio
    IndexFieldNames = 'ID;ITEM'
    Params = <>
    Left = 208
    Top = 534
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
    Left = 280
    Top = 534
  end
  object cdsMDFe_Percurso: TClientDataSet
    Aggregates = <>
    DataSetField = cdsMDFesdsMDFe_Percurso
    IndexFieldNames = 'ID;ITEM'
    Params = <>
    Left = 208
    Top = 577
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
    Left = 280
    Top = 577
  end
  object cdsMDFe_Reboque: TClientDataSet
    Aggregates = <>
    DataSetField = cdsMDFesdsMDFe_Reboque
    IndexFieldNames = 'ID;ITEM'
    Params = <>
    OnCalcFields = cdsMDFe_ReboqueCalcFields
    Left = 208
    Top = 619
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
    object cdsMDFe_ReboqueclPlaca: TStringField
      FieldKind = fkCalculated
      FieldName = 'clPlaca'
      Size = 8
      Calculated = True
    end
    object cdsMDFe_ReboqueclCapacidade_KG: TFloatField
      FieldKind = fkCalculated
      FieldName = 'clCapacidade_KG'
      Calculated = True
    end
    object cdsMDFe_ReboqueclCapacidade_M3: TFloatField
      FieldKind = fkCalculated
      FieldName = 'clCapacidade_M3'
      Calculated = True
    end
    object cdsMDFe_ReboqueclTara: TFloatField
      FieldKind = fkCalculated
      FieldName = 'clTara'
      Calculated = True
    end
  end
  object dsMDFe_Reboque: TDataSource
    DataSet = cdsMDFe_Reboque
    Left = 280
    Top = 619
  end
  object sdsCondutor: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM CONDUTOR'#13#10'WHERE INATIVO = '#39'N'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 665
    Top = 8
  end
  object dspCondutor: TDataSetProvider
    DataSet = sdsCondutor
    OnUpdateError = dspMDFeUpdateError
    Left = 736
    Top = 8
  end
  object cdsCondutor: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspCondutor'
    Left = 800
    Top = 8
    object cdsCondutorID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsCondutorNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object cdsCondutorCPF: TStringField
      FieldName = 'CPF'
      Size = 14
    end
    object cdsCondutorINATIVO: TStringField
      FieldName = 'INATIVO'
      FixedChar = True
      Size = 1
    end
  end
  object dsCondutor: TDataSource
    DataSet = cdsCondutor
    Left = 872
    Top = 8
  end
  object sdsReboque: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT *'#13#10'FROM VEICULO'#13#10'WHERE INATIVO = '#39'N'#39#13#10'  AND TIPO_VEICULO ' +
      '= '#39'R'#39#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 664
    Top = 432
  end
  object dspReboque: TDataSetProvider
    DataSet = sdsReboque
    OnUpdateError = dspMDFeUpdateError
    Left = 736
    Top = 432
  end
  object cdsReboque: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'PLACA'
    Params = <>
    ProviderName = 'dspReboque'
    Left = 800
    Top = 432
  end
  object dsReboque: TDataSource
    DataSet = cdsReboque
    Left = 872
    Top = 432
  end
  object qNotas: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'NFECHAVEACESSO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'SELECT N.id, N.serie, N.numnota, N.id_cliente, CLI.nome NOME_CLI' +
        'ENTE, CLI.cidade, N.DTEMISSAO'
      'FROM NOTAFISCAL N'
      'INNER JOIN PESSOA CLI ON (N.ID_CLIENTE = CLI.CODIGO)'
      'WHERE N.nfechaveacesso = :NFECHAVEACESSO'
      '  AND N.TIPO_REG = '#39'NTS'#39)
    SQLConnection = dmDatabase.scoDados
    Left = 448
    Top = 136
    object qNotasID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qNotasSERIE: TStringField
      FieldName = 'SERIE'
      Size = 3
    end
    object qNotasNUMNOTA: TIntegerField
      FieldName = 'NUMNOTA'
    end
    object qNotasID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object qNotasNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 60
    end
    object qNotasCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object qNotasDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
  end
  object qParametros: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT LOCALSERVIDORNFE, FUSOHORARIO_VERAO, FUSOHORARIO'
      'FROM PARAMETROS')
    SQLConnection = dmDatabase.scoDados
    Left = 512
    Top = 80
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
  object qParametros_MDFe: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT *'
      'FROM PARAMETROS_MDFE')
    SQLConnection = dmDatabase.scoDados
    Left = 512
    Top = 136
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
    object qParametros_MDFeENDXMLMDFE: TStringField
      FieldName = 'ENDXMLMDFE'
      Size = 250
    end
    object qParametros_MDFeENDPDFMDFE: TStringField
      FieldName = 'ENDPDFMDFE'
      Size = 250
    end
    object qParametros_MDFeUSA_PARADOX: TStringField
      FieldName = 'USA_PARADOX'
      Size = 1
    end
    object qParametros_MDFeTIPO_IMPRESSAO: TStringField
      FieldName = 'TIPO_IMPRESSAO'
      FixedChar = True
      Size = 1
    end
  end
  object dsMDFe_Cidade_Des_Mestre: TDataSource
    DataSet = sdsMDFe_Cidade_Des
    Left = 64
    Top = 312
  end
  object sdsMDFe_Evento: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM MDFE_EVENTO'#13#10'WHERE ID = :ID'
    DataSource = dsMDFe_Mestre
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 392
    Top = 288
    object sdsMDFe_EventoID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsMDFe_EventoITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsMDFe_EventoID_CONDUTOR: TIntegerField
      FieldName = 'ID_CONDUTOR'
    end
    object sdsMDFe_EventoPROTOCOLO: TStringField
      FieldName = 'PROTOCOLO'
      Size = 40
    end
    object sdsMDFe_EventoDTPROTOCOLO: TStringField
      FieldName = 'DTPROTOCOLO'
      Size = 40
    end
    object sdsMDFe_EventoXML: TMemoField
      FieldName = 'XML'
      BlobType = ftMemo
      Size = 1
    end
    object sdsMDFe_EventoCPF: TStringField
      FieldName = 'CPF'
      Size = 14
    end
    object sdsMDFe_EventoNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object sdsMDFe_EventoSEQUENCIA: TIntegerField
      FieldName = 'SEQUENCIA'
    end
  end
  object cdsMDFe_Evento: TClientDataSet
    Aggregates = <>
    DataSetField = cdsMDFesdsMDFe_Evento
    IndexFieldNames = 'ID;ITEM'
    Params = <>
    Left = 472
    Top = 288
    object cdsMDFe_EventoID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsMDFe_EventoITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsMDFe_EventoID_CONDUTOR: TIntegerField
      FieldName = 'ID_CONDUTOR'
    end
    object cdsMDFe_EventoPROTOCOLO: TStringField
      FieldName = 'PROTOCOLO'
      Size = 40
    end
    object cdsMDFe_EventoDTPROTOCOLO: TStringField
      FieldName = 'DTPROTOCOLO'
      Size = 40
    end
    object cdsMDFe_EventoXML: TMemoField
      FieldName = 'XML'
      BlobType = ftMemo
      Size = 1
    end
    object cdsMDFe_EventoCPF: TStringField
      FieldName = 'CPF'
      Size = 14
    end
    object cdsMDFe_EventoNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object cdsMDFe_EventoSEQUENCIA: TIntegerField
      FieldName = 'SEQUENCIA'
    end
  end
  object dsMDFe_Evento: TDataSource
    DataSet = cdsMDFe_Evento
    Left = 528
    Top = 288
  end
  object qVerifica_Condutor: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ID_CONDUTOR'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ID_CONDUTOR'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT COUNT(1) CONTADOR1,'
      '  (select COUNT(1) CONTADOR2'
      '    FROM mdfe_EVENTO E'
      '   WHERE E.id = :ID'
      '     AND E.id_condutor = :ID_CONDUTOR) CONTADOR2'
      'FROM mdfe_condutor C'
      'WHERE C.id = :ID'
      '  AND C.id_condutor = :ID_CONDUTOR')
    SQLConnection = dmDatabase.scoDados
    Left = 448
    Top = 80
    object qVerifica_CondutorCONTADOR1: TIntegerField
      FieldName = 'CONTADOR1'
      Required = True
    end
    object qVerifica_CondutorCONTADOR2: TIntegerField
      FieldName = 'CONTADOR2'
    end
  end
  object Database1: TDatabase
    AliasName = 'Lotus'
    DatabaseName = 'Tabelas'
    SessionName = 'Default'
    Left = 392
    Top = 376
  end
  object tNotaFiscal: TTable
    DatabaseName = 'Tabelas'
    TableName = 'dbNotaFiscal.DB'
    Left = 432
    Top = 376
    object tNotaFiscalFilial: TIntegerField
      FieldName = 'Filial'
    end
    object tNotaFiscalDtEmissao: TDateField
      FieldName = 'DtEmissao'
    end
    object tNotaFiscalCodNatOper: TSmallintField
      FieldName = 'CodNatOper'
    end
    object tNotaFiscalCodCli: TIntegerField
      FieldName = 'CodCli'
    end
    object tNotaFiscalVlrTotalNota: TFloatField
      FieldName = 'VlrTotalNota'
    end
    object tNotaFiscalPesoBruto: TFloatField
      FieldName = 'PesoBruto'
    end
    object tNotaFiscalPesoLiquido: TFloatField
      FieldName = 'PesoLiquido'
    end
    object tNotaFiscalNumNota: TIntegerField
      FieldName = 'NumNota'
    end
    object tNotaFiscalSerie: TStringField
      FieldName = 'Serie'
      Size = 3
    end
    object tNotaFiscalNFeChaveAcesso: TStringField
      FieldName = 'NFeChaveAcesso'
      Size = 44
    end
  end
  object dsNotaFiscal: TDataSource
    DataSet = tNotaFiscal
    Left = 464
    Top = 376
  end
  object qNotaFiscal: TQuery
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      
        'SELECT NF.Filial, NF.NumSeq, NF.DtEmissao, CFOP.CodNatOper CODCF' +
        'OP, NF.CodCli, NF.VlrTotalNota VLR_NOTA, NF.PesoBruto, NF.PesoLi' +
        'quido, NF.NumNota, NF.Serie, NF.NfeChaveAcesso,'
      
        'CLI.Nome NOME_CLIENTE, NF.Gerou_Mdfe, CID.Nome CIDADE, CID.Codig' +
        'o CodCidade'
      'FROM "dbNotaFiscal.db" NF'
      'INNER JOIN "dbCliente.db" CLI ON (NF.CodCli = CLI.Codigo)'
      
        'INNER JOIN "dbNatOperacao.db" CFOP ON (NF.CodNatOper = CFOP.Codi' +
        'go)'
      'INNER JOIN "dbCidade" CID ON (CID.Codigo = CLI.CodCidade)'
      'WHERE NF.DtEmissao >= :D1'
      '  AND GEROU_MDFE IS NULL')
    Left = 440
    Top = 424
    ParamData = <
      item
        DataType = ftDate
        Name = 'D1'
        ParamType = ptUnknown
      end>
    object qNotaFiscalFilial: TIntegerField
      FieldName = 'Filial'
    end
    object qNotaFiscalNumSeq: TIntegerField
      FieldName = 'NumSeq'
    end
    object qNotaFiscalDtEmissao: TDateField
      FieldName = 'DtEmissao'
    end
    object qNotaFiscalCodCli: TIntegerField
      FieldName = 'CodCli'
    end
    object qNotaFiscalPesoBruto: TFloatField
      FieldName = 'PesoBruto'
    end
    object qNotaFiscalPesoLiquido: TFloatField
      FieldName = 'PesoLiquido'
    end
    object qNotaFiscalNumNota: TIntegerField
      FieldName = 'NumNota'
    end
    object qNotaFiscalSerie: TStringField
      FieldName = 'Serie'
      Size = 3
    end
    object qNotaFiscalNfeChaveAcesso: TStringField
      FieldName = 'NfeChaveAcesso'
      Size = 44
    end
    object qNotaFiscalGerou_Mdfe: TStringField
      FieldName = 'Gerou_Mdfe'
      Size = 1
    end
    object qNotaFiscalCODCFOP: TStringField
      FieldName = 'CODCFOP'
      Size = 4
    end
    object qNotaFiscalNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 40
    end
    object qNotaFiscalCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 26
    end
    object qNotaFiscalVLR_NOTA: TFloatField
      FieldName = 'VLR_NOTA'
      DisplayFormat = '0.00'
    end
    object qNotaFiscalCodCidade: TIntegerField
      FieldName = 'CodCidade'
    end
  end
  object dsqNotaFiscal: TDataSource
    DataSet = qNotaFiscal
    Left = 472
    Top = 424
  end
  object qNotasPdx: TQuery
    DatabaseName = 'Tabelas'
    SQL.Strings = (
      
        'SELECT N.NumSeq, N.Serie, N.numnota, N.CodCli, CLI.Nome NOME_CLI' +
        'ENTE, CLI.cidade, N.DtEmissao'
      'FROM "dbNotaFiscal.db" N'
      'INNER JOIN "dbCliente.db" CLI ON (N.CodCli = CLI.Codigo)'
      'WHERE N.NfeChaveAcesso = :NFECHAVEACESSO')
    Left = 440
    Top = 472
    ParamData = <
      item
        DataType = ftString
        Name = 'NFECHAVEACESSO'
        ParamType = ptUnknown
      end>
    object qNotasPdxNumSeq: TIntegerField
      FieldName = 'NumSeq'
      Origin = 'TABELAS."dbNotaFiscal.DB".NumSeq'
    end
    object qNotasPdxSerie: TStringField
      FieldName = 'Serie'
      Origin = 'TABELAS."dbNotaFiscal.DB".Serie'
      Size = 3
    end
    object qNotasPdxnumnota: TIntegerField
      FieldName = 'numnota'
      Origin = 'TABELAS."dbNotaFiscal.DB".NumNota'
    end
    object qNotasPdxCodCli: TIntegerField
      FieldName = 'CodCli'
      Origin = 'TABELAS."dbNotaFiscal.DB".CodCli'
    end
    object qNotasPdxNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Origin = 'TABELAS."dbCliente.DB".Nome'
      Size = 40
    end
    object qNotasPdxcidade: TStringField
      FieldName = 'cidade'
      Origin = 'TABELAS."dbCliente.DB".Cidade'
      Size = 26
    end
    object qNotasPdxDtEmissao: TDateField
      FieldName = 'DtEmissao'
      Origin = 'TABELAS."dbNotaFiscal.DB".DtEmissao'
    end
  end
  object qExec: TQuery
    DatabaseName = 'Tabelas'
    Left = 440
    Top = 520
  end
  object mAuxEvento: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 672
    Top = 528
    object mAuxEventoCodEvento: TStringField
      DisplayLabel = 'Cod.Evento'
      FieldName = 'CodEvento'
      Size = 7
    end
    object mAuxEventoNomeEvento: TStringField
      DisplayLabel = 'Nome Evento'
      FieldName = 'NomeEvento'
      Size = 40
    end
    object mAuxEventoDtRegistro: TStringField
      DisplayLabel = 'Data Registro'
      FieldName = 'DtRegistro'
      Size = 30
    end
    object mAuxEventoNumProtocolo: TStringField
      DisplayLabel = 'Protocolo'
      FieldName = 'NumProtocolo'
      Size = 40
    end
  end
  object qFilial_Certificados: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'SELECT FC.numero_serie, FC.intervalotentativas, FC.consultarlote' +
        'aposenvio,'
      
        'FC.aguardarconsultaretorno, FC.usuario_web, FC.senha_web, CID.no' +
        'me, CID.id_provedor,'
      'CID.codmunicipio, FC.SENHA'
      'FROM FILIAL F'
      'LEFT JOIN FILIAL_CERTIFICADOS FC'
      'ON F.ID = FC.ID'
      'INNER JOIN CIDADE CID'
      'ON F.id_cidade = CID.ID'
      'WHERE F.ID = :ID'
      '')
    SQLConnection = dmDatabase.scoDados
    Left = 392
    Top = 184
    object qFilial_CertificadosNUMERO_SERIE: TStringField
      FieldName = 'NUMERO_SERIE'
      Size = 100
    end
    object qFilial_CertificadosINTERVALOTENTATIVAS: TIntegerField
      FieldName = 'INTERVALOTENTATIVAS'
    end
    object qFilial_CertificadosCONSULTARLOTEAPOSENVIO: TStringField
      FieldName = 'CONSULTARLOTEAPOSENVIO'
      Size = 1
    end
    object qFilial_CertificadosAGUARDARCONSULTARETORNO: TIntegerField
      FieldName = 'AGUARDARCONSULTARETORNO'
    end
    object qFilial_CertificadosUSUARIO_WEB: TStringField
      FieldName = 'USUARIO_WEB'
      Size = 100
    end
    object qFilial_CertificadosSENHA_WEB: TStringField
      FieldName = 'SENHA_WEB'
      Size = 30
    end
    object qFilial_CertificadosNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
    object qFilial_CertificadosID_PROVEDOR: TIntegerField
      FieldName = 'ID_PROVEDOR'
    end
    object qFilial_CertificadosCODMUNICIPIO: TStringField
      FieldName = 'CODMUNICIPIO'
      Size = 7
    end
    object qFilial_CertificadosSENHA: TStringField
      FieldName = 'SENHA'
      Size = 30
    end
  end
  object dsmAuxEvento: TDataSource
    DataSet = mAuxEvento
    Left = 736
    Top = 528
  end
end
