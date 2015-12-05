object Form8: TForm8
  Left = 231
  Top = 255
  Width = 610
  Height = 318
  Caption = 'Aluguel de Ve'#237'culo'
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
    Top = 8
    Width = 577
    Height = 265
    Caption = 'Novo Aluguel'
    TabOrder = 0
    object Label1: TLabel
      Left = 19
      Top = 24
      Width = 58
      Height = 13
      Caption = 'Ve'#237'culo (F1)'
    end
    object Label14: TLabel
      Left = 88
      Top = 44
      Width = 3
      Height = 13
      Constraints.MaxWidth = 185
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 288
      Top = 24
      Width = 53
      Height = 13
      Caption = 'Cliente (F2)'
      FocusControl = DBEdit2
    end
    object Label15: TLabel
      Left = 360
      Top = 44
      Width = 3
      Height = 13
      Constraints.MaxWidth = 185
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 19
      Top = 72
      Width = 55
      Height = 13
      Caption = 'Funcion'#225'rio'
    end
    object Label4: TLabel
      Left = 288
      Top = 72
      Width = 20
      Height = 13
      Caption = 'Filial'
    end
    object DBEdit1: TDBEdit
      Left = 19
      Top = 40
      Width = 62
      Height = 21
      DataField = 'idVEICULO'
      DataSource = DataSource1
      TabOrder = 0
      OnExit = DBEdit1Exit
      OnKeyDown = DBEdit1KeyDown
    end
    object DBEdit2: TDBEdit
      Left = 288
      Top = 40
      Width = 62
      Height = 21
      DataField = 'idCLIENTE'
      DataSource = DataSource1
      TabOrder = 1
      OnExit = DBEdit2Exit
      OnKeyDown = DBEdit2KeyDown
    end
    object GroupBox2: TGroupBox
      Left = 8
      Top = 128
      Width = 561
      Height = 73
      Caption = 'Informa'#231#245'es da Entrega'
      TabOrder = 4
      object Label6: TLabel
        Left = 11
        Top = 20
        Width = 61
        Height = 13
        Caption = 'Data Aluguel'
      end
      object Label7: TLabel
        Left = 144
        Top = 20
        Width = 96
        Height = 13
        Caption = 'Previs'#227'o de Entrega'
      end
      object Label11: TLabel
        Left = 280
        Top = 20
        Width = 45
        Height = 13
        Caption = 'Km Inicial'
        FocusControl = DBEdit11
      end
      object DBEdit11: TDBEdit
        Left = 280
        Top = 36
        Width = 134
        Height = 21
        DataField = 'KM_INICIAL'
        DataSource = DataSource1
        TabOrder = 2
      end
      object JvDBDateEdit1: TJvDBDateEdit
        Left = 11
        Top = 36
        Width = 121
        Height = 21
        DataField = 'DATA_ALUGUEL'
        DataSource = DataSource1
        ShowNullDate = False
        TabOrder = 0
      end
      object JvDBDateEdit2: TJvDBDateEdit
        Left = 144
        Top = 36
        Width = 121
        Height = 21
        DataField = 'DATA_PREV_ENTREGA'
        DataSource = DataSource1
        ShowNullDate = False
        TabOrder = 1
      end
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 288
      Top = 88
      Width = 241
      Height = 21
      DataField = 'idFILIAL'
      DataSource = DataSource1
      KeyField = 'idFILIAL'
      ListField = 'NOME_FILIAL'
      ListFieldIndex = 1
      ListSource = DataSource3
      TabOrder = 3
    end
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 19
      Top = 88
      Width = 241
      Height = 21
      DataField = 'idFUNCIONARIO'
      DataSource = DataSource1
      KeyField = 'idFUNCIONARIO'
      ListField = 'NOME'
      ListFieldIndex = 1
      ListSource = DataSource2
      TabOrder = 2
    end
    object Panel1: TPanel
      Left = 256
      Top = 204
      Width = 313
      Height = 53
      TabOrder = 5
    end
  end
  object BitBtn2: TBitBtn
    Left = 272
    Top = 218
    Width = 145
    Height = 41
    Caption = '&Cancelar'
    TabOrder = 2
    Kind = bkCancel
  end
  object BitBtn1: TBitBtn
    Left = 424
    Top = 218
    Width = 145
    Height = 41
    Caption = '&Salvar'
    Default = True
    TabOrder = 1
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
  object DataSource1: TDataSource
    DataSet = ZQuery1
    Left = 544
    Top = 56
  end
  object ZQuery1: TZQuery
    Connection = DM.ZConnection1
    Active = True
    SQL.Strings = (
      'select * from aluguel')
    Params = <>
    Left = 544
    Top = 24
    object ZQuery1idALUGUEL: TIntegerField
      FieldName = 'idALUGUEL'
      Required = True
    end
    object ZQuery1idVEICULO: TIntegerField
      FieldName = 'idVEICULO'
      Required = True
    end
    object ZQuery1idCLIENTE: TIntegerField
      FieldName = 'idCLIENTE'
      Required = True
    end
    object ZQuery1idFUNCIONARIO: TIntegerField
      FieldName = 'idFUNCIONARIO'
      Required = True
    end
    object ZQuery1idFILIAL: TIntegerField
      FieldName = 'idFILIAL'
      Required = True
    end
    object ZQuery1idFILIAL_DEVOLUCAO: TIntegerField
      FieldName = 'idFILIAL_DEVOLUCAO'
    end
    object ZQuery1DATA_ALUGUEL: TDateField
      FieldName = 'DATA_ALUGUEL'
      Required = True
    end
    object ZQuery1DATA_PREV_ENTREGA: TDateField
      FieldName = 'DATA_PREV_ENTREGA'
    end
    object ZQuery1DATA_DEVOLUCAO: TDateField
      FieldName = 'DATA_DEVOLUCAO'
    end
    object ZQuery1VALOR_PAGO: TFloatField
      FieldName = 'VALOR_PAGO'
    end
    object ZQuery1VALOR_MULTA: TFloatField
      FieldName = 'VALOR_MULTA'
    end
    object ZQuery1KM_INICIAL: TIntegerField
      FieldName = 'KM_INICIAL'
    end
    object ZQuery1KM_DEVOLUCAO: TIntegerField
      FieldName = 'KM_DEVOLUCAO'
    end
    object ZQuery1KM_RODADOS: TIntegerField
      FieldName = 'KM_RODADOS'
    end
  end
  object ZQuery3: TZQuery
    Connection = DM.ZConnection1
    AutoCalcFields = False
    Active = True
    SQL.Strings = (
      'SELECT * FROM FILIAIS')
    Params = <>
    Left = 544
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
    Left = 544
    Top = 184
  end
  object ZQuery2: TZQuery
    Connection = DM.ZConnection1
    AutoCalcFields = False
    Active = True
    SQL.Strings = (
      'SELECT * FROM FUNCIONARIOS')
    Params = <>
    Left = 544
    Top = 88
    object ZQuery2idFUNCIONARIO: TIntegerField
      FieldName = 'idFUNCIONARIO'
      Required = True
    end
    object ZQuery2NOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 50
    end
    object ZQuery2RG: TStringField
      FieldName = 'RG'
    end
    object ZQuery2CPF: TStringField
      FieldName = 'CPF'
      Size = 15
    end
    object ZQuery2N_CARTEIRA_TRAB: TStringField
      FieldName = 'N_CARTEIRA_TRAB'
    end
  end
  object DataSource2: TDataSource
    DataSet = ZQuery2
    Left = 544
    Top = 120
  end
  object JvBalloonHint1: TJvBalloonHint
    DefaultIcon = ikQuestion
    Left = 224
    Top = 232
  end
  object ZQuery4: TZQuery
    Connection = DM.ZConnection1
    Params = <>
    Left = 192
    Top = 232
  end
end
