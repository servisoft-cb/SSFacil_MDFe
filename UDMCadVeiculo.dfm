object DMCadVeiculo: TDMCadVeiculo
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 209
  Top = 144
  Height = 398
  Width = 882
  object sdsVeiculo: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM VEICULO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 56
    Top = 32
    object sdsVeiculoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsVeiculoNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object sdsVeiculoPLACA: TStringField
      FieldName = 'PLACA'
      Size = 8
    end
    object sdsVeiculoUF_PLACA: TStringField
      FieldName = 'UF_PLACA'
      Size = 2
    end
    object sdsVeiculoCAPACIDADE: TIntegerField
      FieldName = 'CAPACIDADE'
    end
    object sdsVeiculoRENAVAM: TStringField
      FieldName = 'RENAVAM'
      Size = 15
    end
    object sdsVeiculoTARA_KG: TFloatField
      FieldName = 'TARA_KG'
    end
    object sdsVeiculoCAPACIDADE_KG: TFloatField
      FieldName = 'CAPACIDADE_KG'
    end
    object sdsVeiculoCAPACIDADE_M3: TFloatField
      FieldName = 'CAPACIDADE_M3'
    end
    object sdsVeiculoID_PROPRIETARIO: TIntegerField
      FieldName = 'ID_PROPRIETARIO'
    end
    object sdsVeiculoINATIVO: TStringField
      FieldName = 'INATIVO'
      Size = 1
    end
    object sdsVeiculoTIPO_RODADO: TStringField
      FieldName = 'TIPO_RODADO'
      Size = 2
    end
    object sdsVeiculoTIPO_CARROCERIA: TStringField
      FieldName = 'TIPO_CARROCERIA'
      Size = 2
    end
    object sdsVeiculoTIPO_VEICULO: TStringField
      FieldName = 'TIPO_VEICULO'
      FixedChar = True
      Size = 1
    end
  end
  object dspVeiculo: TDataSetProvider
    DataSet = sdsVeiculo
    OnUpdateError = dspVeiculoUpdateError
    Left = 128
    Top = 32
  end
  object cdsVeiculo: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspVeiculo'
    Left = 192
    Top = 32
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
    Left = 264
    Top = 32
  end
  object qVerifica_Veiculo: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'PLACA'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select id'
      'from VEICULO'
      'where PLACA = :PLACA')
    SQLConnection = dmDatabase.scoDados
    Left = 104
    Top = 232
    object qVerifica_VeiculoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
  end
  object sdsUF: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT U.UF, U.idpais'#13#10'FROM UF U'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 368
    Top = 176
  end
  object dspUF: TDataSetProvider
    DataSet = sdsUF
    OnUpdateError = dspVeiculoUpdateError
    Left = 440
    Top = 176
  end
  object cdsUF: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'UF'
    Params = <>
    ProviderName = 'dspUF'
    Left = 504
    Top = 176
    object cdsUFUF: TStringField
      FieldName = 'UF'
      Required = True
      Size = 2
    end
    object cdsUFIDPAIS: TIntegerField
      FieldName = 'IDPAIS'
    end
  end
  object dsUF: TDataSource
    DataSet = cdsUF
    Left = 576
    Top = 176
  end
  object sdsProprietario_Vei: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM PROPRIETARIO_VEI'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 369
    Top = 122
  end
  object dspProprietario_Vei: TDataSetProvider
    DataSet = sdsProprietario_Vei
    OnUpdateError = dspVeiculoUpdateError
    Left = 441
    Top = 122
  end
  object cdsProprietario_Vei: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspProprietario_Vei'
    Left = 505
    Top = 122
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
    Left = 577
    Top = 122
  end
end
