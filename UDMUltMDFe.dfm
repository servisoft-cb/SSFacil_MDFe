object DMUltMDFe: TDMUltMDFe
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 392
  Top = 190
  Height = 436
  Width = 807
  object sdsFilial_MDFe: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM FILIAL_MDFE'#13#10'WHERE ID = :ID'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 80
    Top = 24
    object sdsFilial_MDFeID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsFilial_MDFeTIPO_EMITENTE: TStringField
      FieldName = 'TIPO_EMITENTE'
      FixedChar = True
      Size = 1
    end
    object sdsFilial_MDFeTIPO_TRANSPORTADOR: TStringField
      FieldName = 'TIPO_TRANSPORTADOR'
      FixedChar = True
      Size = 1
    end
    object sdsFilial_MDFeTIPO_AMBIENTE: TStringField
      FieldName = 'TIPO_AMBIENTE'
      FixedChar = True
      Size = 1
    end
    object sdsFilial_MDFeRNTRC: TStringField
      FieldName = 'RNTRC'
      Size = 8
    end
    object sdsFilial_MDFeSERIE: TStringField
      FieldName = 'SERIE'
      Size = 3
    end
    object sdsFilial_MDFeULT_NUM_MDFE: TIntegerField
      FieldName = 'ULT_NUM_MDFE'
    end
  end
  object dspFilial_MDFe: TDataSetProvider
    DataSet = sdsFilial_MDFe
    OnUpdateError = dspFilial_MDFeUpdateError
    Left = 152
    Top = 24
  end
  object cdsFilial_MDFe: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspFilial_MDFe'
    Left = 216
    Top = 24
    object cdsFilial_MDFeID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsFilial_MDFeTIPO_EMITENTE: TStringField
      FieldName = 'TIPO_EMITENTE'
      FixedChar = True
      Size = 1
    end
    object cdsFilial_MDFeTIPO_TRANSPORTADOR: TStringField
      FieldName = 'TIPO_TRANSPORTADOR'
      FixedChar = True
      Size = 1
    end
    object cdsFilial_MDFeTIPO_AMBIENTE: TStringField
      FieldName = 'TIPO_AMBIENTE'
      FixedChar = True
      Size = 1
    end
    object cdsFilial_MDFeRNTRC: TStringField
      FieldName = 'RNTRC'
      Size = 8
    end
    object cdsFilial_MDFeSERIE: TStringField
      FieldName = 'SERIE'
      Size = 3
    end
    object cdsFilial_MDFeULT_NUM_MDFE: TIntegerField
      FieldName = 'ULT_NUM_MDFE'
    end
  end
  object dsFilial_MDFe: TDataSource
    DataSet = cdsFilial_MDFe
    Left = 288
    Top = 24
  end
  object sdsConsulta: TSQLDataSet
    CommandText = 
      'SELECT M.ID, M.ult_num_mdfe, F.nome, F.nome_interno'#13#10'FROM FILIAL' +
      '_MDFE M'#13#10'INNER JOIN FILIAL F'#13#10'ON M.ID = F.ID'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 496
    Top = 48
  end
  object dspConsulta: TDataSetProvider
    DataSet = sdsConsulta
    Left = 544
    Top = 48
  end
  object cdsConsulta: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspConsulta'
    Left = 584
    Top = 48
    object cdsConsultaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsConsultaULT_NUM_MDFE: TIntegerField
      FieldName = 'ULT_NUM_MDFE'
    end
    object cdsConsultaNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object cdsConsultaNOME_INTERNO: TStringField
      FieldName = 'NOME_INTERNO'
      Size = 30
    end
  end
  object dsConsulta: TDataSource
    DataSet = cdsConsulta
    Left = 624
    Top = 48
  end
end
