object DMCadProprietario: TDMCadProprietario
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 209
  Top = 144
  Height = 398
  Width = 882
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
    Left = 49
    Top = 26
    object sdsProprietario_VeiID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsProprietario_VeiNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object sdsProprietario_VeiCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
      Size = 18
    end
    object sdsProprietario_VeiINSC_ESTADUAL: TStringField
      FieldName = 'INSC_ESTADUAL'
      Size = 14
    end
    object sdsProprietario_VeiUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object sdsProprietario_VeiTIPO_REG: TStringField
      FieldName = 'TIPO_REG'
      Size = 1
    end
    object sdsProprietario_VeiRNTRC: TStringField
      FieldName = 'RNTRC'
      Size = 8
    end
    object sdsProprietario_VeiINATIVO: TStringField
      FieldName = 'INATIVO'
      FixedChar = True
      Size = 1
    end
    object sdsProprietario_VeiPESSOA: TStringField
      FieldName = 'PESSOA'
      FixedChar = True
      Size = 1
    end
  end
  object dspProprietario_Vei: TDataSetProvider
    DataSet = sdsProprietario_Vei
    OnUpdateError = dspProprietario_VeiUpdateError
    Left = 121
    Top = 26
  end
  object cdsProprietario_Vei: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspProprietario_Vei'
    Left = 185
    Top = 26
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
    object cdsProprietario_VeiINATIVO: TStringField
      FieldName = 'INATIVO'
      FixedChar = True
      Size = 1
    end
    object cdsProprietario_VeiPESSOA: TStringField
      FieldName = 'PESSOA'
      FixedChar = True
      Size = 1
    end
  end
  object dsProprietario_Vei: TDataSource
    DataSet = cdsProprietario_Vei
    Left = 257
    Top = 26
  end
end
