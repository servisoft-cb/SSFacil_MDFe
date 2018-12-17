object DMCadCondutor: TDMCadCondutor
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 209
  Top = 144
  Height = 398
  Width = 882
  object sdsCondutor: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM CONDUTOR'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 49
    Top = 26
    object sdsCondutorID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsCondutorCPF: TStringField
      FieldName = 'CPF'
      Size = 14
    end
    object sdsCondutorINATIVO: TStringField
      FieldName = 'INATIVO'
      FixedChar = True
      Size = 1
    end
    object sdsCondutorNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
  end
  object dspCondutor: TDataSetProvider
    DataSet = sdsCondutor
    OnUpdateError = dspCondutorUpdateError
    Left = 121
    Top = 26
  end
  object cdsCondutor: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspCondutor'
    OnNewRecord = cdsCondutorNewRecord
    Left = 185
    Top = 26
    object cdsCondutorID: TIntegerField
      FieldName = 'ID'
      Required = True
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
    object cdsCondutorNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
  end
  object dsCondutor: TDataSource
    DataSet = cdsCondutor
    Left = 257
    Top = 26
  end
end
