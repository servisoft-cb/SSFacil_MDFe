object frmCadMDFe_Seguradora: TfrmCadMDFe_Seguradora
  Left = 306
  Top = 191
  Width = 801
  Height = 241
  Caption = 'frmCadMDFe_Seguradora'
  Color = clMoneyGreen
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object gbxVendedor: TRzGroupBox
    Left = 6
    Top = 7
    Width = 755
    Height = 66
    BorderColor = clNavy
    BorderInner = fsButtonUp
    BorderOuter = fsBump
    Caption = ' Informa'#231#245'es do  Respons'#225'vel pelo Seguro '
    Color = clMoneyGreen
    Ctl3D = True
    FlatColor = clNavy
    FlatColorAdjustment = 2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 0
    TabStop = True
    VisualStyle = vsGradient
    object Label1: TLabel
      Left = 9
      Top = 22
      Width = 125
      Height = 13
      Alignment = taRightJustify
      Caption = 'Respons'#225'vel pelo Seguro:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object DBEdit6: TDBEdit
      Left = 268
      Top = 39
      Width = 154
      Height = 19
      CharCase = ecUpperCase
      Ctl3D = False
      DataField = 'CNPJ_CPF_RESP_SEG'
      DataSource = DMCadMDFe.dsMDFe_Seguradora
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 2
      OnEnter = DBEdit6Enter
      OnExit = DBEdit6Exit
    end
    object DBRadioGroup1: TDBRadioGroup
      Left = 136
      Top = 31
      Width = 129
      Height = 29
      Columns = 2
      Ctl3D = False
      DataField = 'PESSOA_RESP_SEG'
      DataSource = DMCadMDFe.dsMDFe_Seguradora
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Items.Strings = (
        'CPF'
        'CNPJ')
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 1
      TabStop = True
      Values.Strings = (
        'F'
        'J')
    end
    object RzDBComboBox1: TRzDBComboBox
      Left = 136
      Top = 16
      Width = 601
      Height = 21
      DataField = 'RESPONSAVEL_SEGURO'
      DataSource = DMCadMDFe.dsMDFe_Seguradora
      Style = csDropDownList
      BeepOnInvalidKey = False
      Ctl3D = False
      FlatButtonColor = 4227200
      FrameColor = clBlack
      FrameVisible = True
      ItemHeight = 13
      ParentCtl3D = False
      TabOrder = 0
      Items.Strings = (
        '1-Emitente do MDF-e'
        
          '2-Responsavel pela contratacao do servico de transporte (contrat' +
          'ante)')
      Values.Strings = (
        '1'
        '2')
    end
  end
  object RzGroupBox1: TRzGroupBox
    Left = 6
    Top = 80
    Width = 755
    Height = 61
    BorderColor = clGreen
    BorderInner = fsButtonUp
    BorderOuter = fsBump
    Caption = ' Dados Seguradora/Ap'#243'lice '
    Color = clMoneyGreen
    Ctl3D = True
    FlatColor = clGreen
    FlatColorAdjustment = 2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGreen
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 1
    TabStop = True
    VisualStyle = vsGradient
    object Label20: TLabel
      Left = 73
      Top = 42
      Width = 53
      Height = 13
      Alignment = taRightJustify
      Caption = 'N'#186' Ap'#243'lice:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label19: TLabel
      Left = 68
      Top = 22
      Width = 58
      Height = 13
      Alignment = taRightJustify
      Caption = 'Seguradora:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object DBEdit4: TDBEdit
      Left = 127
      Top = 34
      Width = 210
      Height = 19
      Ctl3D = False
      DataField = 'NUM_APOLICE'
      DataSource = DMCadMDFe.dsMDFe_Seguradora
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 1
    end
    object RxDBLookupCombo2: TRxDBLookupCombo
      Left = 127
      Top = 14
      Width = 363
      Height = 21
      DropDownCount = 15
      Ctl3D = False
      DataField = 'ID_SEGURADORA'
      DataSource = DMCadMDFe.dsMDFe_Seguradora
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      LookupField = 'ID'
      LookupDisplay = 'NOME'
      LookupSource = DMCadMDFe.dsSeguradora
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 169
    Width = 785
    Height = 34
    Align = alBottom
    Color = 8404992
    TabOrder = 2
    object BitBtn4: TBitBtn
      Left = 389
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
      Left = 290
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
