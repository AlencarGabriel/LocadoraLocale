object Form4: TForm4
  Left = 151
  Top = 246
  Width = 743
  Height = 311
  Caption = 'Manuten'#231#227'o de Filiais'
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
  object Panel1: TPanel
    Left = 342
    Top = 227
    Width = 377
    Height = 44
    TabOrder = 2
  end
  object DBNavigator1: TDBNavigator
    Left = 351
    Top = 232
    Width = 360
    Height = 33
    DataSource = DataSource1
    TabOrder = 0
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 713
    Height = 217
    Caption = 'Filial'
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 2
      Top = 15
      Width = 709
      Height = 200
      Align = alClient
      DataSource = DataSource1
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
    end
  end
  object ZQuery1: TZQuery
    Connection = DM.ZConnection1
    Active = True
    SQL.Strings = (
      'select * from filiais')
    Params = <>
    Left = 40
    Top = 232
    object ZQuery1idFILIAL: TIntegerField
      DisplayLabel = 'C'#243'd. Filial'
      FieldName = 'idFILIAL'
      Required = True
    end
    object ZQuery1NOME_FILIAL: TStringField
      DisplayLabel = 'Nome Filial'
      FieldName = 'NOME_FILIAL'
      Required = True
      Size = 50
    end
    object ZQuery1CIDADE_FILIAL: TStringField
      DisplayLabel = 'Cidade Filial'
      FieldName = 'CIDADE_FILIAL'
      Size = 50
    end
  end
  object DataSource1: TDataSource
    DataSet = ZQuery1
    Left = 8
    Top = 232
  end
end
