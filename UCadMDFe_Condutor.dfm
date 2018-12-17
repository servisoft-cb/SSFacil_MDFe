object frmCadMDFe_Condutor: TfrmCadMDFe_Condutor
  Left = 375
  Top = 202
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'frmCadMDFe_Condutor'
  ClientHeight = 96
  ClientWidth = 592
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 592
    Height = 62
    Align = alClient
    Color = clMoneyGreen
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 8
      Width = 250
      Height = 18
      Caption = 'Informar um novo condutor:'
    end
    object RxDBLookupCombo1: TRxDBLookupCombo
      Left = 16
      Top = 26
      Width = 497
      Height = 25
      DropDownCount = 8
      LookupField = 'ID'
      LookupDisplay = 'NOME'
      LookupSource = DMCadMDFe.dsCondutor
      TabOrder = 0
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 62
    Width = 592
    Height = 34
    Align = alBottom
    Color = 8404992
    TabOrder = 1
    object BitBtn4: TBitBtn
      Left = 285
      Top = 5
      Width = 98
      Height = 25
      Caption = '(F10) Ca&ncelar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = BitBtn4Click
    end
    object BitBtn1: TBitBtn
      Left = 186
      Top = 5
      Width = 98
      Height = 25
      Caption = '(F7) &Confirmar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = BitBtn1Click
    end
  end
end
