object DMCadSeguradora: TDMCadSeguradora
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 209
  Top = 144
  Height = 398
  Width = 882
  object sdsSeguradora: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM SEGURADORA'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 49
    Top = 26
    object sdsSeguradoraID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsSeguradoraNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
    object sdsSeguradoraCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 18
    end
    object sdsSeguradoraINATIVO: TStringField
      FieldName = 'INATIVO'
      Size = 1
    end
  end
  object dspSeguradora: TDataSetProvider
    DataSet = sdsSeguradora
    OnUpdateError = dspSeguradoraUpdateError
    Left = 121
    Top = 26
  end
  object cdsSeguradora: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspSeguradora'
    Left = 185
    Top = 26
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
    Left = 257
    Top = 26
  end
end
