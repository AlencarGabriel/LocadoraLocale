object Form9: TForm9
  Left = 113
  Top = 184
  Width = 612
  Height = 414
  Caption = 'Devolu'#231#227'o de Aluguel de Ve'#237'culo'
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
    Height = 361
    Caption = 'Devolu'#231#227'o do Aluguel'
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
      Width = 32
      Height = 13
      Caption = 'Cliente'
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
      Width = 75
      Height = 13
      Caption = 'Filial Devolu'#231#227'o'
    end
    object DBEdit1: TDBEdit
      Left = 19
      Top = 40
      Width = 62
      Height = 21
      DataField = 'idVEICULO'
      DataSource = DataSource1
      ReadOnly = True
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
      Enabled = False
      TabOrder = 1
    end
    object GroupBox2: TGroupBox
      Left = 8
      Top = 128
      Width = 561
      Height = 161
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
        Left = 139
        Top = 20
        Width = 96
        Height = 13
        Caption = 'Previs'#227'o de Entrega'
      end
      object Label11: TLabel
        Left = 267
        Top = 20
        Width = 45
        Height = 13
        Caption = 'Km Inicial'
        FocusControl = DBEdit14
      end
      object Label12: TLabel
        Left = 408
        Top = 20
        Width = 70
        Height = 13
        Caption = 'Km Devolu'#231#227'o'
        FocusControl = DBEdit12
      end
      object Label8: TLabel
        Left = 11
        Top = 68
        Width = 78
        Height = 13
        Caption = 'Data Devolu'#231#227'o'
      end
      object Label13: TLabel
        Left = 139
        Top = 68
        Width = 61
        Height = 13
        Caption = 'Km Rodados'
      end
      object Label10: TLabel
        Left = 267
        Top = 68
        Width = 53
        Height = 13
        Caption = 'Valor Multa'
      end
      object Label17: TLabel
        Left = 408
        Top = 68
        Width = 46
        Height = 13
        Caption = 'Sub Total'
      end
      object Label9: TLabel
        Left = 408
        Top = 116
        Width = 52
        Height = 13
        Caption = 'Valor Pago'
      end
      object Label18: TLabel
        Left = 11
        Top = 116
        Width = 77
        Height = 13
        Caption = 'Valor Sem Multa'
      end
      object Label5: TLabel
        Left = 484
        Top = -164
        Width = 77
        Height = 13
        Caption = 'Valor Sem Multa'
      end
      object Label16: TLabel
        Left = 171
        Top = 130
        Width = 206
        Height = 25
        Alignment = taCenter
        AutoSize = False
        Caption = 
          'C'#225'lculo da Multa: (Dias de Atraso x Valor Di'#225'ria) + 20% do valor' +
          ' sem Multa.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        WordWrap = True
      end
      object DBEdit14: TDBEdit
        Left = 267
        Top = 36
        Width = 134
        Height = 21
        DataField = 'KM_INICIAL'
        DataSource = DataSource1
        Enabled = False
        TabOrder = 2
      end
      object JvDBDateEdit1: TJvDBDateEdit
        Left = 11
        Top = 36
        Width = 121
        Height = 21
        DataField = 'DATA_ALUGUEL'
        DataSource = DataSource1
        Enabled = False
        ShowNullDate = False
        TabOrder = 0
      end
      object JvDBDateEdit2: TJvDBDateEdit
        Left = 139
        Top = 36
        Width = 121
        Height = 21
        DataField = 'DATA_PREV_ENTREGA'
        DataSource = DataSource1
        Enabled = False
        ShowNullDate = False
        TabOrder = 1
      end
      object DBEdit12: TDBEdit
        Left = 408
        Top = 36
        Width = 134
        Height = 21
        DataField = 'KM_DEVOLUCAO'
        DataSource = DataSource1
        TabOrder = 3
        OnExit = DBEdit12Exit
      end
      object JvDBDateEdit3: TJvDBDateEdit
        Left = 11
        Top = 84
        Width = 121
        Height = 21
        DataField = 'DATA_DEVOLUCAO'
        DataSource = DataSource1
        ShowNullDate = False
        TabOrder = 4
        OnExit = JvDBDateEdit3Exit
      end
      object cxDBCurrencyEdit1: TcxDBCurrencyEdit
        Left = 267
        Top = 84
        Width = 134
        Height = 21
        Cursor = crIBeam
        DataBinding.DataField = 'VALOR_MULTA'
        DataBinding.DataSource = DataSource1
        DragCursor = crIBeam
        Style.BorderStyle = ebsFlat
        Style.TransparentBorder = True
        TabOrder = 6
        OnExit = cxDBCurrencyEdit1Exit
      end
      object cxDBCurrencyEdit3: TcxDBCurrencyEdit
        Left = 408
        Top = 132
        Width = 134
        Height = 21
        Cursor = crIBeam
        DataBinding.DataField = 'VALOR_PAGO'
        DataBinding.DataSource = DataSource1
        DragCursor = crIBeam
        Style.BorderStyle = ebsFlat
        Style.TransparentBorder = True
        TabOrder = 7
      end
      object Edit1: TEdit
        Left = 139
        Top = 84
        Width = 121
        Height = 21
        Enabled = False
        TabOrder = 5
        OnKeyPress = Edit1KeyPress
      end
      object cxCurrencyEdit1: TcxCurrencyEdit
        Left = 11
        Top = 132
        Width = 121
        Height = 21
        Cursor = crIBeam
        DragCursor = crIBeam
        Enabled = False
        Style.BorderStyle = ebsFlat
        TabOrder = 9
      end
      object cxCurrencyEdit2: TcxCurrencyEdit
        Left = 408
        Top = 84
        Width = 134
        Height = 21
        Cursor = crIBeam
        DragCursor = crIBeam
        Enabled = False
        Style.BorderStyle = ebsFlat
        TabOrder = 8
      end
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 288
      Top = 88
      Width = 241
      Height = 21
      DataField = 'idFILIAL_DEVOLUCAO'
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
      Enabled = False
      KeyField = 'idFUNCIONARIO'
      ListField = 'NOME'
      ListFieldIndex = 1
      ListSource = DataSource2
      TabOrder = 2
    end
    object Panel1: TPanel
      Left = 256
      Top = 296
      Width = 313
      Height = 53
      TabOrder = 5
    end
    object EditValorDiaria: TcxDBCurrencyEdit
      Left = 91
      Top = 316
      Width = 134
      Height = 21
      Cursor = crIBeam
      DragCursor = crIBeam
      Enabled = False
      Style.BorderStyle = ebsFlat
      Style.TransparentBorder = True
      TabOrder = 6
      Visible = False
    end
  end
  object BitBtn2: TBitBtn
    Left = 272
    Top = 310
    Width = 145
    Height = 41
    Caption = '&Cancelar'
    TabOrder = 2
    Kind = bkCancel
  end
  object BitBtn1: TBitBtn
    Left = 424
    Top = 310
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
    Left = 64
    Top = 320
  end
  object ZQuery4: TZQuery
    Connection = DM.ZConnection1
    Params = <>
    Left = 32
    Top = 320
  end
end
