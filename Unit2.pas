unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, StdCtrls,
  Mask, DBCtrls, dxCntner, dxEditor, dxEdLib, dxDBELib, Buttons, JvExMask,
  JvToolEdit, JvDBControls, cxControls, cxContainer, cxEdit, cxLabel,
  cxDBLabel;

type
  TForm2 = class(TForm)
    ZQuery1: TZQuery;
    ZQuery1idCLIENTE: TIntegerField;
    ZQuery1NOME: TStringField;
    ZQuery1TELEFONE: TStringField;
    ZQuery1DATA_NASCIMENTO: TDateField;
    ZQuery1SEXO: TStringField;
    ZQuery1TIPO_PESSOA: TStringField;
    ZQuery1RUA: TStringField;
    ZQuery1NUMERO: TStringField;
    ZQuery1BAIRRO: TStringField;
    ZQuery1CIDADE: TStringField;
    ZQuery1ESTADO: TStringField;
    ZQuery1CPF: TStringField;
    ZQuery1RG: TStringField;
    ZQuery1CNPJ: TStringField;
    ZQuery1INSC_ESTADUAL: TStringField;
    DataSource1: TDataSource;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    GroupBox2: TGroupBox;
    DBEdit2: TDBEdit;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label12: TLabel;
    Label13: TLabel;
    DBEdit13: TDBEdit;
    Label14: TLabel;
    Label15: TLabel;
    DBEdit15: TDBEdit;
    GroupBox3: TGroupBox;
    dxDBMaskEdit1: TdxDBMaskEdit;
    DBComboBox2: TDBComboBox;
    DBComboBox1: TDBComboBox;
    dxDBMaskEdit2: TdxDBMaskEdit;
    Label11: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    JvDBDateEdit1: TJvDBDateEdit;
    ZQuery2: TZQuery;
    ZQuery2QTD_ALUGUEL: TLargeintField;
    ZQuery2KM_RODADOS: TLargeintField;
    ZQuery2ULT_ALUGUEL: TDateField;
    DataSource2: TDataSource;
    cxDBLabel1: TcxDBLabel;
    cxDBLabel2: TcxDBLabel;
    cxDBLabel3: TcxDBLabel;
    cxDBLabel4: TcxDBLabel;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure DBComboBox2Change(Sender: TObject);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses U_DM;

{$R *.dfm}

procedure TForm2.BitBtn1Click(Sender: TObject);
begin
  try
    if ZQuery1.State = dsInsert then
    begin
      ZQuery1.Post;
      ZQuery1.ApplyUpdates;
      if Application.MessageBox('Deseja Cadastrar Outro Cliente?', 'Confirmação', mb_YesNo + mb_IconExclamation) = idyes then
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
    begin
      close;
      ZQuery1.Post;
      ZQuery1.ApplyUpdates;
    end;
  except on E: Exception do
      ShowMessage(e.Message);
  end;
end;

procedure TForm2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  ZQuery1.Cancel;
  ZQuery1.Active := False;
end;

procedure TForm2.FormShow(Sender: TObject);
begin
  DBEdit2.SetFocus;
  DBComboBox2.ItemIndex := 0;

  if ZQuery1.State <> dsInsert then
  begin
    ZQuery2.Close;
    ZQuery2.SQL.Clear;
    ZQuery2.SQL.Add('SELECT           ' +
      ' count(a.idCLIENTE) AS QTD_ALUGUEL,  ' +
      ' SUM(A.KM_RODADOS) AS KM_RODADOS,    ' +
      ' MAX(A.DATA_ALUGUEL) AS ULT_ALUGUEL  ' +
      ' FROM aluguel a WHERE A.idCLIENTE = ' + VarToStr(ZQuery1.FieldValues['idCLIENTE']));
    ZQuery2.Open;
    cxDBLabel1.Visible := True;
    cxDBLabel2.Visible := True;
    cxDBLabel3.Visible := True;
  end;
end;

procedure TForm2.DBComboBox2Change(Sender: TObject);
begin
  if DBComboBox2.Text = 'J' then
  begin
    Label12.Visible := False;
    dxDBMaskEdit1.Visible := False;
    Label13.Visible := False;
    DBEdit13.Visible := False;

    Label14.Visible := True;
    Label15.Visible := True;
    dxDBMaskEdit2.Visible := True;
    DBEdit15.Visible := True;
  end
  else
  begin
    Label12.Visible := True;
    dxDBMaskEdit1.Visible := True;
    Label13.Visible := True;
    DBEdit13.Visible := True;

    Label14.Visible := False;
    Label15.Visible := False;
    dxDBMaskEdit2.Visible := False;
    DBEdit15.Visible := False;
  end;


end;

procedure TForm2.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key in ['a'..'z'] then
    Key := UpCase(Key);
end;

end.

