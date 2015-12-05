object Form5: TForm5
  Left = 160
  Top = 194
  Width = 668
  Height = 203
  Caption = 'Manuten'#231#227'o de Funcion'#225'rios'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox2: TGroupBox
    Left = 8
    Top = 8
    Width = 481
    Height = 145
    Caption = 'Informa'#231#245'es Pessoais'
    TabOrder = 0
    object Label2: TLabel
      Left = 8
      Top = 25
      Width = 28
      Height = 13
      Caption = 'Nome'
      FocusControl = DBEdit2
    end
    object Label12: TLabel
      Left = 8
      Top = 68
      Width = 20
      Height = 13
      Caption = 'CPF'
    end
    object Label13: TLabel
      Left = 200
      Top = 68
      Width = 16
      Height = 13
      Caption = 'RG'
      FocusControl = DBEdit13
    end
    object Label1: TLabel
      Left = 288
      Top = 25
      Width = 96
      Height = 13
      Caption = 'N'#186' Carteira Trabalho'
    end
    object DBEdit2: TDBEdit
      Left = 8
      Top = 42
      Width = 269
      Height = 21
      DataField = 'NOME'
      DataSource = DataSource1
      TabOrder = 0
      OnExit = DBEdit2Exit
    end
    object DBEdit13: TDBEdit
      Left = 200
      Top = 84
      Width = 201
      Height = 21
      DataField = 'RG'
      DataSource = DataSource1
      TabOrder = 3
      OnExit = DBEdit2Exit
    end
    object dxDBMaskEdit1: TdxDBMaskEdit
      Left = 8
      Top = 84
      Width = 185
      ParentShowHint = False
      ShowHint = False
      TabOrder = 2
      OnExit = DBEdit2Exit
      DataField = 'CPF'
      DataSource = DataSource1
      EditMask = '999.999.999-99;1'
      IgnoreMaskBlank = False
      StoredValues = 4
    end
    object dxDBMaskEdit2: TdxDBMaskEdit
      Left = 288
      Top = 42
      Width = 183
      ParentShowHint = False
      ShowHint = False
      TabOrder = 1
      OnExit = DBEdit2Exit
      DataField = 'N_CARTEIRA_TRAB'
      DataSource = DataSource1
      EditMask = '9999999-9999;1'
      IgnoreMaskBlank = False
      StoredValues = 4
    end
    object Panel1: TPanel
      Left = 192
      Top = 110
      Width = 281
      Height = 31
      TabOrder = 4
    end
  end
  object GroupBox3: TGroupBox
    Left = 496
    Top = 8
    Width = 145
    Height = 145
    Caption = 'Informa'#231#245'es Extras'
    TabOrder = 1
    object Label11: TLabel
      Left = 24
      Top = 16
      Width = 98
      Height = 13
      Caption = 'Quantidade Alugueis'
    end
    object Label16: TLabel
      Left = 55
      Top = 93
      Width = 67
      Height = 13
      Caption = 'Ultimo Aluguel'
    end
    object Label17: TLabel
      Left = 13
      Top = 55
      Width = 109
      Height = 13
      Caption = 'Valor Total de Alugueis'
    end
    object cxDBLabel1: TcxDBLabel
      Left = 56
      Top = 72
      Width = 66
      Height = 17
      DataBinding.DataField = 'VL_PAGO'
      DataBinding.DataSource = DataSource2
      AutoSize = False
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Properties.Alignment.Vert = taVCenter
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clBlue
      Style.Font.Height = -11
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = []
      TabOrder = 0
      Visible = False
    end
    object cxDBLabel2: TcxDBLabel
      Left = 56
      Top = 112
      Width = 66
      Height = 17
      DataBinding.DataField = 'ULT_ALUGUEL'
      DataBinding.DataSource = DataSource2
      AutoSize = False
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Properties.Alignment.Vert = taVCenter
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clBlue
      Style.Font.Height = -11
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = []
      TabOrder = 1
      Visible = False
    end
    object cxDBLabel3: TcxDBLabel
      Left = 56
      Top = 32
      Width = 66
      Height = 17
      DataBinding.DataField = 'QTD_ALUGUEL'
      DataBinding.DataSource = DataSource2
      AutoSize = False
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Properties.Alignment.Vert = taVCenter
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clBlue
      Style.Font.Height = -11
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = []
      TabOrder = 2
      Visible = False
    end
    object cxDBLabel4: TcxDBLabel
      Left = 144
      Top = 64
      Width = 66
      Height = 17
      TabOrder = 3
    end
  end
  object DBNavigator1: TDBNavigator
    Left = 206
    Top = 121
    Width = 270
    Height = 25
    DataSource = DataSource1
    TabOrder = 2
  end
  object ZQuery2: TZQuery
    Connection = DM.ZConnection1
    SQL.Strings = (
      
        'SELECT  count(a.idFUNCIONARIO) AS QTD_ALUGUEL,  SUM(A.VALOR_PAGO' +
        ') AS VL_PAGO, MAX(A.DATA_ALUGUEL) AS ULT_ALUGUEL   FROM aluguel ' +
        'a WHERE A.idFUNCIONARIO = 1')
    Params = <>
    Left = 56
    Top = 120
    object ZQuery2QTD_ALUGUEL: TLargeintField
      FieldName = 'QTD_ALUGUEL'
      ReadOnly = True
    end
    object ZQuery2VL_PAGO: TFloatField
      FieldName = 'VL_PAGO'
      ReadOnly = True
      OnGetText = ZQuery2VL_PAGOGetText
    end
    object ZQuery2ULT_ALUGUEL: TDateField
      FieldName = 'ULT_ALUGUEL'
      ReadOnly = True
    end
  end
  object DataSource2: TDataSource
    DataSet = ZQuery2
    Left = 24
    Top = 120
  end
  object ZQuery1: TZQuery
    Connection = DM.ZConnection1
    AfterScroll = ZQuery1AfterScroll
    Active = True
    SQL.Strings = (
      'select * from funcionarios')
    Params = <>
    Left = 448
    Top = 80
    object ZQuery1idFUNCIONARIO: TIntegerField
      FieldName = 'idFUNCIONARIO'
      Required = True
    end
    object ZQuery1NOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 50
    end
    object ZQuery1RG: TStringField
      FieldName = 'RG'
    end
    object ZQuery1CPF: TStringField
      FieldName = 'CPF'
      Size = 15
    end
    object ZQuery1N_CARTEIRA_TRAB: TStringField
      FieldName = 'N_CARTEIRA_TRAB'
    end
  end
  object DataSource1: TDataSource
    DataSet = ZQuery1
    Left = 416
    Top = 80
  end
end
