unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, StdCtrls, Mask, DB, cxControls, cxContainer, cxEdit,
  cxLabel, cxDBLabel, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  JvExControls, JvgCheckBox, cxTextEdit, cxCurrencyEdit, cxDBEdit,
  JvExMask, JvToolEdit, JvDBControls, dxCntner, dxEditor, dxEdLib, dxDBELib,
  Buttons;

type
  TForm6 = class(TForm)
    ZQuery2: TZQuery;
    ZQuery2QTD_ALUGUEL: TLargeintField;
    ZQuery2ULT_ALUGUEL: TDateField;
    DataSource2: TDataSource;
    DataSource1: TDataSource;
    ZQuery1: TZQuery;
    GroupBox3: TGroupBox;
    Label11: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    cxDBLabel1: TcxDBLabel;
    cxDBLabel2: TcxDBLabel;
    cxDBLabel3: TcxDBLabel;
    cxDBLabel4: TcxDBLabel;
    ZQuery3: TZQuery;
    DataSource3: TDataSource;
    ZQuery3idFILIAL: TIntegerField;
    ZQuery3NOME_FILIAL: TStringField;
    ZQuery3CIDADE_FILIAL: TStringField;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    Label12: TLabel;
    DBEdit11: TDBEdit;
    Label9: TLabel;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    dxDBMaskEdit1: TdxDBMaskEdit;
    dxDBMaskEdit2: TdxDBMaskEdit;
    Label3: TLabel;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    JvgCheckBox1: TJvgCheckBox;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    ZQuery2KM_RODADOS: TLargeintField;
    ZQuery1idVEICULO: TIntegerField;
    ZQuery1idFILIAL: TIntegerField;
    ZQuery1NOME: TStringField;
    ZQuery1KM_INICIAL: TIntegerField;
    ZQuery1KM_ATUAL: TIntegerField;
    ZQuery1MODELO: TStringField;
    ZQuery1CHASSI: TStringField;
    ZQuery1ANO: TSmallintField;
    ZQuery1PLACA: TStringField;
    ZQuery1VALOR_DIARIA: TFloatField;
    ZQuery1MARCA: TStringField;
    ZQuery1COR: TStringField;
    ZQuery1VEICULO_LOCADO: TSmallintField;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure ZQuery1AfterScroll(DataSet: TDataSet);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

uses U_DM;

{$R *.dfm}

procedure TForm6.FormShow(Sender: TObject);
begin
  DBLookupComboBox1.SetFocus;
  DBLookupComboBox1.ListFieldIndex := 0;

  if ZQuery1.State <> dsInsert then
  begin
    ZQuery2.Close;
    ZQuery2.SQL.Clear;
    ZQuery2.SQL.Add('SELECT ' +
      'SUM(A.KM_RODADOS) as KM_RODADOS, ' +
      'count(a.idVEICULO) as QTD_ALUGUEL, ' +
      'MAX(A.DATA_ALUGUEL) as ULT_ALUGUEL ' +
      'FROM aluguel a WHERE A.idVEICULO = ' + VarToStr(ZQuery1.FieldValues['idVEICULO']));
    ZQuery2.Open;
    cxDBLabel1.Visible := True;
    cxDBLabel2.Visible := True;
    cxDBLabel3.Visible := True;
    JvgCheckBox1.Visible := True;
  end;
end;

procedure TForm6.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  ZQuery1.Cancel;
  ZQuery1.Active := False;
end;

procedure TForm6.BitBtn1Click(Sender: TObject);
begin
  try
    ZQuery1.Post;
    ZQuery1.ApplyUpdates;
    if ZQuery1.State = dsInsert then
    begin   
      if Application.MessageBox('Deseja Cadastrar Outro Veículo?', 'Confirmação', mb_YesNo + mb_IconExclamation) = idyes then
      begin
        ZQuery1.Append;
        DBEdit2.SetFocus;
      end
      else
      begin
        Close;
      end;
    end
    else
      close;
  except on E: Exception do
      ShowMessage(e.Message);
  end;
end;

procedure TForm6.ZQuery1AfterScroll(DataSet: TDataSet);
begin
  if ZQuery1.FieldByName('VEICULO_LOCADO').AsString = '1' then
  begin
    JvgCheckBox1.Caption := 'Veículo Locado';
    JvgCheckBox1.Checked := False;
  end
  else
  begin
    JvgCheckBox1.Caption := 'Veículo Não Locado';
    JvgCheckBox1.Checked := True;
  end;
end;

procedure TForm6.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key in ['a'..'z'] then
    Key := UpCase(Key);
end;

end.

