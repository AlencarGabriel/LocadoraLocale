object Form6: TForm6
  Left = 156
  Top = 244
  Width = 730
  Height = 289
  Caption = 'Cadastro de Ve'#237'culos'
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
  object GroupBox3: TGroupBox
    Left = 560
    Top = 8
    Width = 145
    Height = 145
    Caption = 'Informa'#231#245'es Extras'
    TabOrder = 0
    object Label11: TLabel
      Left = 24
      Top = 16
      Width = 96
      Height = 13
      Caption = 'Quantidade Rodado'
    end
    object Label16: TLabel
      Left = 55
      Top = 95
      Width = 67
      Height = 13
      Caption = 'Ultimo Aluguel'
    end
    object Label17: TLabel
      Left = 59
      Top = 55
      Width = 63
      Height = 13
      Caption = 'Qtd. Alugueis'
    end
    object cxDBLabel1: TcxDBLabel
      Left = 56
      Top = 72
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
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 545
    Height = 233
    Caption = 'Informa'#231#245'es do Ve'#237'culo'
    TabOrder = 1
    object Label1: TLabel
      Left = 16
      Top = 28
      Width = 20
      Height = 13
      Caption = 'Filial'
    end
    object Label2: TLabel
      Left = 167
      Top = 28
      Width = 83
      Height = 13
      Caption = 'Nome do Ve'#237'culo'
    end
    object Label5: TLabel
      Left = 16
      Top = 78
      Width = 90
      Height = 13
      Caption = 'Modelo do Ve'#237'culo'
      FocusControl = DBEdit5
    end
    object Label6: TLabel
      Left = 16
      Top = 127
      Width = 46
      Height = 13
      Caption = 'N'#186' Chassi'
      FocusControl = DBEdit6
    end
    object Label7: TLabel
      Left = 312
      Top = 78
      Width = 74
      Height = 13
      Caption = 'Ano do Ve'#237'culo'
    end
    object Label8: TLabel
      Left = 200
      Top = 78
      Width = 27
      Height = 13
      Caption = 'Placa'
    end
    object Label10: TLabel
      Left = 224
      Top = 127
      Width = 85
      Height = 13
      Caption = 'Marca do Ve'#237'culo'
      FocusControl = DBEdit10
    end
    object Label12: TLabel
      Left = 396
      Top = 127
      Width = 69
      Height = 13
      Caption = 'Cor do Veiculo'
      FocusControl = DBEdit11
    end
    object Label9: TLabel
      Left = 396
      Top = 78
      Width = 54
      Height = 13
      Caption = 'Valor Di'#225'ria'
    end
    object Label3: TLabel
      Left = 16
      Top = 177
      Width = 99
      Height = 13
      Caption = 'Km inicial do Ve'#237'culo'
      FocusControl = DBEdit3
    end
    object Label4: TLabel
      Left = 195
      Top = 177
      Width = 42
      Height = 13
      Caption = 'Km Atual'
      FocusControl = DBEdit4
    end
    object JvgCheckBox1: TJvgCheckBox
      Left = 376
      Top = 192
      Width = 169
      Height = 33
      Caption = 'Ve'#237'culo Locado'
      Visible = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      GlyphShift.X = 0
      GlyphShift.Y = 0
      Transparent = True
      Colors.Shadow = 11842740
      Options = []
      Gradient.Active = False
      Gradient.Orientation = fgdHorizontal
      Illumination.ShadowDepth = 0
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 16
      Top = 49
      Width = 145
      Height = 21
      DataField = 'idFILIAL'
      DataSource = DataSource1
      KeyField = 'idFILIAL'
      ListField = 'NOME_FILIAL'
      ListFieldIndex = 1
      ListSource = DataSource3
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 167
      Top = 49
      Width = 342
      Height = 21
      DataField = 'NOME'
      DataSource = DataSource1
      TabOrder = 1
      OnKeyPress = DBEdit2KeyPress
    end
    object DBEdit5: TDBEdit
      Left = 16
      Top = 99
      Width = 177
      Height = 21
      DataField = 'MODELO'
      DataSource = DataSource1
      TabOrder = 2
      OnKeyPress = DBEdit2KeyPress
    end
    object DBEdit6: TDBEdit
      Left = 16
      Top = 148
      Width = 201
      Height = 21
      DataField = 'CHASSI'
      DataSource = DataSource1
      TabOrder = 6
      OnKeyPress = DBEdit2KeyPress
    end
    object DBEdit10: TDBEdit
      Left = 224
      Top = 148
      Width = 169
      Height = 21
      DataField = 'MARCA'
      DataSource = DataSource1
      TabOrder = 7
      OnKeyPress = DBEdit2KeyPress
    end
    object DBEdit11: TDBEdit
      Left = 396
      Top = 150
      Width = 113
      Height = 21
      DataField = 'COR'
      DataSource = DataSource1
      TabOrder = 8
      OnKeyPress = DBEdit2KeyPress
    end
    object cxDBCurrencyEdit1: TcxDBCurrencyEdit
      Left = 396
      Top = 99
      Width = 113
      Height = 21
      Cursor = crIBeam
      DataBinding.DataField = 'VALOR_DIARIA'
      DataBinding.DataSource = DataSource1
      DragCursor = crIBeam
      Style.BorderStyle = ebsFlat
      Style.TransparentBorder = True
      TabOrder = 5
    end
    object dxDBMaskEdit1: TdxDBMaskEdit
      Left = 312
      Top = 99
      Width = 81
      TabOrder = 4
      OnKeyPress = DBEdit2KeyPress
      DataField = 'ANO'
      DataSource = DataSource1
      EditMask = '9999;1;_'
      IgnoreMaskBlank = False
      StoredValues = 4
    end
    object dxDBMaskEdit2: TdxDBMaskEdit
      Left = 200
      Top = 99
      Width = 104
      TabOrder = 3
      OnKeyPress = DBEdit2KeyPress
      DataField = 'PLACA'
      DataSource = DataSource1
      EditMask = 'AAA-9999;1;_'
      IgnoreMaskBlank = False
      StoredValues = 4
    end
    object DBEdit3: TDBEdit
      Left = 16
      Top = 198
      Width = 177
      Height = 21
      DataField = 'KM_INICIAL'
      DataSource = DataSource1
      TabOrder = 9
      OnKeyPress = DBEdit2KeyPress
    end
    object DBEdit4: TDBEdit
      Left = 195
      Top = 198
      Width = 177
      Height = 21
      DataField = 'KM_ATUAL'
      DataSource = DataSource1
      Enabled = False
      TabOrder = 10
      OnKeyPress = DBEdit2KeyPress
    end
  end
  object BitBtn2: TBitBtn
    Left = 560
    Top = 156
    Width = 145
    Height = 41
    Caption = '&Cancelar'
    TabOrder = 3
    Kind = bkCancel
  end
  object BitBtn1: TBitBtn
    Left = 560
    Top = 200
    Width = 145
    Height = 41
    Caption = '&Salvar'
    TabOrder = 2
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
  object ZQuery2: TZQuery
    Connection = DM.ZConnection1
    Active = True
    SQL.Strings = (
      
        'SELECT    SUM(A.KM_RODADOS) AS KM_RODADOS, count(a.idVEICULO) AS' +
        ' QTD_ALUGUEL, MAX(A.DATA_ALUGUEL) AS ULT_ALUGUEL   FROM aluguel ' +
        'a WHERE A.idVEICULO = 1')
    Params = <>
    Left = 520
    Top = 88
    object ZQuery2QTD_ALUGUEL: TLargeintField
      FieldName = 'QTD_ALUGUEL'
      ReadOnly = True
    end
    object ZQuery2ULT_ALUGUEL: TDateField
      FieldName = 'ULT_ALUGUEL'
      ReadOnly = True
    end
    object ZQuery2KM_RODADOS: TLargeintField
      FieldName = 'KM_RODADOS'
      ReadOnly = True
    end
  end
  object DataSource2: TDataSource
    DataSet = ZQuery2
    Left = 520
    Top = 120
  end
  object DataSource1: TDataSource
    DataSet = ZQuery1
    Left = 520
    Top = 56
  end
  object ZQuery1: TZQuery
    Connection = DM.ZConnection1
    AfterScroll = ZQuery1AfterScroll
    Active = True
    SQL.Strings = (
      'select * from veiculos')
    Params = <>
    Left = 520
    Top = 24
    object ZQuery1idVEICULO: TIntegerField
      FieldName = 'idVEICULO'
      Required = True
    end
    object ZQuery1idFILIAL: TIntegerField
      FieldName = 'idFILIAL'
    end
    object ZQuery1NOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 50
    end
    object ZQuery1KM_INICIAL: TIntegerField
      FieldName = 'KM_INICIAL'
    end
    object ZQuery1KM_ATUAL: TIntegerField
      FieldName = 'KM_ATUAL'
    end
    object ZQuery1MODELO: TStringField
      FieldName = 'MODELO'
      Size = 50
    end
    object ZQuery1CHASSI: TStringField
      FieldName = 'CHASSI'
      Size = 50
    end
    object ZQuery1ANO: TSmallintField
      FieldName = 'ANO'
    end
    object ZQuery1PLACA: TStringField
      FieldName = 'PLACA'
      Size = 8
    end
    object ZQuery1VALOR_DIARIA: TFloatField
      FieldName = 'VALOR_DIARIA'
    end
    object ZQuery1MARCA: TStringField
      FieldName = 'MARCA'
      Size = 50
    end
    object ZQuery1COR: TStringField
      FieldName = 'COR'
      Size = 50
    end
    object ZQuery1VEICULO_LOCADO: TSmallintField
      FieldName = 'VEICULO_LOCADO'
      Required = True
    end
  end
  object ZQuery3: TZQuery
    Connection = DM.ZConnection1
    AutoCalcFields = False
    Active = True
    SQL.Strings = (
      'SELECT * FROM FILIAIS')
    Params = <>
    Left = 520
    Top = 152
    object ZQuery3idFILIAL: TIntegerField
      FieldName = 'idFILIAL'
      Required = True
    end
    object ZQuery3NOME_FILIAL: TStringField
      FieldName = 'NOME_FILIAL'
      Required = True
      Size = 50
    end
    object ZQuery3CIDADE_FILIAL: TStringField
      FieldName = 'CIDADE_FILIAL'
      Size = 50
    end
  end
  object DataSource3: TDataSource
    DataSet = ZQuery3
    Left = 520
    Top = 184
  end
end
