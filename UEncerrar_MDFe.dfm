object frmEncerrar_MDFe: TfrmEncerrar_MDFe
  Left = 334
  Top = 242
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'frmEncerrar_MDFe'
  ClientHeight = 159
  ClientWidth = 792
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 77
    Top = 36
    Width = 72
    Height = 13
    Alignment = taRightJustify
    Caption = 'Chave Acesso:'
  end
  object Label2: TLabel
    Left = 86
    Top = 58
    Width = 63
    Height = 13
    Alignment = taRightJustify
    Caption = 'N'#186' Protocolo:'
  end
  object Label3: TLabel
    Left = 132
    Top = 80
    Width = 17
    Height = 13
    Alignment = taRightJustify
    Caption = 'UF:'
  end
  object Label4: TLabel
    Left = 113
    Top = 102
    Width = 36
    Height = 13
    Alignment = taRightJustify
    Caption = 'Cidade:'
  end
  object Label5: TLabel
    Left = 125
    Top = 14
    Width = 23
    Height = 13
    Alignment = taRightJustify
    Caption = 'Filial:'
  end
  object Edit1: TEdit
    Left = 151
    Top = 29
    Width = 594
    Height = 21
    MaxLength = 44
    TabOrder = 1
  end
  object Edit2: TEdit
    Left = 151
    Top = 51
    Width = 594
    Height = 21
    MaxLength = 44
    TabOrder = 2
  end
  object RxDBLookupCombo1: TRxDBLookupCombo
    Left = 151
    Top = 73
    Width = 89
    Height = 21
    DropDownCount = 8
    LookupField = 'UF'
    LookupDisplay = 'UF'
    LookupSource = DMCadMDFe.dsUF
    TabOrder = 3
    OnEnter = RxDBLookupCombo1Enter
    OnExit = RxDBLookupCombo1Exit
  end
  object RxDBLookupCombo2: TRxDBLookupCombo
    Left = 151
    Top = 95
    Width = 367
    Height = 21
    DropDownCount = 8
    LookupField = 'ID'
    LookupDisplay = 'NOME'
    LookupSource = DMCadMDFe.dsCidade
    TabOrder = 4
    OnEnter = RxDBLookupCombo2Enter
  end
  object BitBtn1: TBitBtn
    Left = 154
    Top = 122
    Width = 148
    Height = 25
    Caption = 'Encerrar MDFE'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    OnClick = BitBtn1Click
  end
  object RxDBLookupCombo3: TRxDBLookupCombo
    Left = 150
    Top = 7
    Width = 364
    Height = 21
    DropDownCount = 8
    LookupField = 'ID'
    LookupDisplay = 'NOME'
    LookupSource = DMCadMDFe.dsFilial
    TabOrder = 0
    OnExit = RxDBLookupCombo3Exit
  end
end
