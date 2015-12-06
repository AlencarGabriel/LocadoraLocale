object Form2: TForm2
  Left = 123
  Top = 196
  Width = 690
  Height = 376
  Caption = 'Cadastro de Clientes'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 8
    Top = 208
    Width = 505
    Height = 121
    Caption = 'Endere'#231'o'
    TabOrder = 1
    object Label1: TLabel
      Left = 8
      Top = 24
      Width = 20
      Height = 13
      Caption = 'Rua'
      FocusControl = DBEdit1
    end
    object Label7: TLabel
      Left = 384
      Top = 24
      Width = 37
      Height = 13
      Caption = 'Numero'
      FocusControl = DBEdit7
    end
    object Label8: TLabel
      Left = 8
      Top = 64
      Width = 27
      Height = 13
      Caption = 'Bairro'
      FocusControl = DBEdit8
    end
    object Label9: TLabel
      Left = 232
      Top = 64
      Width = 33
      Height = 13
      Caption = 'Cidade'
      FocusControl = DBEdit9
    end
    object Label10: TLabel
      Left = 384
      Top = 64
      Width = 14
      Height = 13
      Caption = 'UF'
      FocusControl = DBEdit10
    end
    object DBEdit1: TDBEdit
      Left = 8
      Top = 40
      Width = 369
      Height = 21
      DataField = 'RUA'
      DataSource = DataSource1
      TabOrder = 0
      OnKeyPress = DBEdit2KeyPress
    end
    object DBEdit7: TDBEdit
      Left = 384
      Top = 40
      Width = 65
      Height = 21
      DataField = 'NUMERO'
      DataSource = DataSource1
      TabOrder = 1
      OnKeyPress = DBEdit2KeyPress
    end
    object DBEdit8: TDBEdit
      Left = 8
      Top = 80
      Width = 217
      Height = 21
      DataField = 'BAIRRO'
      DataSource = DataSource1
      TabOrder = 2
      OnKeyPress = DBEdit2KeyPress
    end
    object DBEdit9: TDBEdit
      Left = 232
      Top = 80
      Width = 145
      Height = 21
      DataField = 'CIDADE'
      DataSource = DataSource1
      TabOrder = 3
      OnKeyPress = DBEdit2KeyPress
    end
    object DBEdit10: TDBEdit
      Left = 384
      Top = 80
      Width = 65
      Height = 21
      DataField = 'ESTADO'
      DataSource = DataSource1
      TabOrder = 4
      OnKeyPress = DBEdit2KeyPress
    end
  end
  object GroupBox2: TGroupBox
    Left = 8
    Top = 8
    Width = 505
    Height = 193
    Caption = 'Informa'#231#245'es Pessoais'
    TabOrder = 0
    object Label2: TLabel
      Left = 8
      Top = 24
      Width = 96
      Height = 13
      Caption = 'Nome/Raz'#227'o Social'
      FocusControl = DBEdit2
    end
    object Label4: TLabel
      Left = 364
      Top = 24
      Width = 82
      Height = 13
      Caption = 'Data Nascimento'
    end
    object Label5: TLabel
      Left = 8
      Top = 64
      Width = 24
      Height = 13
      Caption = 'Sexo'
    end
    object Label6: TLabel
      Left = 69
      Top = 64
      Width = 59
      Height = 13
      Caption = 'Tipo Pessoa'
    end
    object Label3: TLabel
      Left = 143
      Top = 64
      Width = 42
      Height = 13
      Caption = 'Telefone'
      FocusControl = DBEdit3
    end
    object Label12: TLabel
      Left = 288
      Top = 64
      Width = 20
      Height = 13
      Caption = 'CPF'
    end
    object Label13: TLabel
      Left = 288
      Top = 104
      Width = 16
      Height = 13
      Caption = 'RG'
      FocusControl = DBEdit13
    end
    object Label14: TLabel
      Left = 8
      Top = 104
      Width = 27
      Height = 13
      Caption = 'CNPJ'
      Visible = False
    end
    object Label15: TLabel
      Left = 8
      Top = 144
      Width = 87
      Height = 13
      Caption = 'Inscri'#231#227'o Estadual'
      FocusControl = DBEdit15
      Visible = False
    end
    object DBEdit2: TDBEdit
      Left = 8
      Top = 40
      Width = 353
      Height = 21
      DataField = 'NOME'
      DataSource = DataSource1
      TabOrder = 0
      OnKeyPress = DBEdit2KeyPress
    end
    object DBEdit3: TDBEdit
      Left = 143
      Top = 80
      Width = 130
      Height = 21
      DataField = 'TELEFONE'
      DataSource = DataSource1
      TabOrder = 4
      OnKeyPress = DBEdit2KeyPress
    end
    object DBEdit13: TDBEdit
      Left = 288
      Top = 120
      Width = 201
      Height = 21
      DataField = 'RG'
      DataSource = DataSource1
      TabOrder = 7
    end
    object DBEdit15: TDBEdit
      Left = 8
      Top = 160
      Width = 264
      Height = 21
      DataField = 'INSC_ESTADUAL'
      DataSource = DataSource1
      TabOrder = 8
      Visible = False
    end
    object dxDBMaskEdit1: TdxDBMaskEdit
      Left = 288
      Top = 80
      Width = 201
      ParentShowHint = False
      ShowHint = False
      TabOrder = 5
      DataField = 'CPF'
      DataSource = DataSource1
      EditMask = '999.999.999-99;1'
      IgnoreMaskBlank = False
      StoredValues = 4
    end
    object DBComboBox2: TDBComboBox
      Left = 69
      Top = 80
      Width = 49
      Height = 21
      Style = csDropDownList
      DataField = 'TIPO_PESSOA'
      DataSource = DataSource1
      ItemHeight = 13
      Items.Strings = (
        'F'
        'J')
      TabOrder = 3
      OnChange = DBComboBox2Change
    end
    object DBComboBox1: TDBComboBox
      Left = 8
      Top = 80
      Width = 49
      Height = 21
      Style = csDropDownList
      DataField = 'SEXO'
      DataSource = DataSource1
      ItemHeight = 13
      Items.Strings = (
        'M'
        'F')
      TabOrder = 2
    end
    object dxDBMaskEdit2: TdxDBMaskEdit
      Left = 8
      Top = 120
      Width = 265
      TabOrder = 6
      Visible = False
      DataField = 'CNPJ'
      DataSource = DataSource1
      EditMask = '99.999.999/9999-99;1'
      IgnoreMaskBlank = False
      StoredValues = 4
    end
    object JvDBDateEdit1: TJvDBDateEdit
      Left = 364
      Top = 40
      Width = 125
      Height = 21
      DataField = 'DATA_NASCIMENTO'
      DataSource = DataSource1
      ShowNullDate = False
      TabOrder = 1
    end
  end
  object GroupBox3: TGroupBox
    Left = 520
    Top = 8
    Width = 145
    Height = 193
    Caption = 'Informa'#231#245'es Extras'
    TabOrder = 2
    object Label11: TLabel
      Left = 16
      Top = 40
      Width = 98
      Height = 13
      Caption = 'Quantidade Alugueis'
    end
    object Label16: TLabel
      Left = 47
      Top = 117
      Width = 67
      Height = 13
      Caption = 'Ultimo Aluguel'
    end
    object Label17: TLabel
      Left = 10
      Top = 79
      Width = 104
      Height = 13
      Caption = 'Total de KM Rodados'
    end
    object cxDBLabel1: TcxDBLabel
      Left = 48
      Top = 96
      Width = 66
      Height = 17
      DataBinding.DataField = 'KM_RODADOS'
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
      Left = 48
      Top = 136
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
      Left = 48
      Top = 56
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
  object BitBtn1: TBitBtn
    Left = 520
    Top = 288
    Width = 145
    Height = 41
    Caption = '&Salvar'
    TabOrder = 3
    OnClick = BitBtn1Click
    Glyph.Data = {
      DE010000424DDE01000000000000760000002800000024000000120000000100
      0400000000006801000000000000000000001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333333333333333333333330000333333333333333333333333F33333333333
      00003333344333333333333333388F3333333333000033334224333333333333
      338338F3333333330000333422224333333333333833338F3333333300003342
      222224333333333383333338F3333333000034222A22224333333338F338F333
      8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
      33333338F83338F338F33333000033A33333A222433333338333338F338F3333
      0000333333333A222433333333333338F338F33300003333333333A222433333
      333333338F338F33000033333333333A222433333333333338F338F300003333
      33333333A222433333333333338F338F00003333333333333A22433333333333
      3338F38F000033333333333333A223333333333333338F830000333333333333
      333A333333333333333338330000333333333333333333333333333333333333
      0000}
    NumGlyphs = 2
  end
  object BitBtn2: TBitBtn
    Left = 520
    Top = 216
    Width = 145
    Height = 41
    Caption = '&Cancelar'
    TabOrder = 4
    Kind = bkCancel
  end
  object ZQuery1: TZQuery
    Connection = DM.ZConnection1
    SQL.Strings = (
      'select * from clientes')
    Params = <>
    Left = 328
    Top = 160
    object ZQuery1idCLIENTE: TIntegerField
      FieldName = 'idCLIENTE'
      Required = True
    end
    object ZQuery1NOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 50
    end
    object ZQuery1TELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 50
    end
    object ZQuery1DATA_NASCIMENTO: TDateField
      FieldName = 'DATA_NASCIMENTO'
    end
    object ZQuery1SEXO: TStringField
      FieldName = 'SEXO'
      Size = 1
    end
    object ZQuery1TIPO_PESSOA: TStringField
      FieldName = 'TIPO_PESSOA'
      Size = 1
    end
    object ZQuery1RUA: TStringField
      FieldName = 'RUA'
      Size = 50
    end
    object ZQuery1NUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 50
    end
    object ZQuery1BAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 50
    end
    object ZQuery1CIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 50
    end
    object ZQuery1ESTADO: TStringField
      FieldName = 'ESTADO'
      Size = 2
    end
    object ZQuery1CPF: TStringField
      FieldName = 'CPF'
      Size = 15
    end
    object ZQuery1RG: TStringField
      FieldName = 'RG'
    end
    object ZQuery1CNPJ: TStringField
      FieldName = 'CNPJ'
    end
    object ZQuery1INSC_ESTADUAL: TStringField
      FieldName = 'INSC_ESTADUAL'
    end
  end
  object DataSource1: TDataSource
    DataSet = ZQuery1
    Left = 296
    Top = 160
  end
  object ZQuery2: TZQuery
    Connection = DM.ZConnection1
    SQL.Strings = (
      
        'SELECT'#10'  count(a.idCLIENTE) AS QTD_ALUGUEL,'#10'  SUM(A.KM_RODADOS) ' +
        'AS KM_RODADOS, '#10'  MAX(A.DATA_ALUGUEL) AS ULT_ALUGUEL'#10' FROM alugu' +
        'el a WHERE A.idCLIENTE = 1')
    Params = <>
    Left = 392
    Top = 160
    object ZQuery2QTD_ALUGUEL: TLargeintField
      FieldName = 'QTD_ALUGUEL'
      ReadOnly = True
    end
    object ZQuery2KM_RODADOS: TLargeintField
      FieldName = 'KM_RODADOS'
      ReadOnly = True
    end
    object ZQuery2ULT_ALUGUEL: TDateField
      FieldName = 'ULT_ALUGUEL'
      ReadOnly = True
    end
  end
  object DataSource2: TDataSource
    DataSet = ZQuery2
    Left = 360
    Top = 160
  end
end
