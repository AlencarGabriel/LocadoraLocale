unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, cxControls,
  cxContainer, cxEdit, cxLabel, cxDBLabel, dxCntner, dxEditor, dxEdLib,
  dxDBELib, StdCtrls, Mask, DBCtrls, ExtCtrls;

type
  TForm5 = class(TForm)
    GroupBox2: TGroupBox;
    Label2: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    DBEdit2: TDBEdit;
    DBEdit13: TDBEdit;
    dxDBMaskEdit1: TdxDBMaskEdit;
    GroupBox3: TGroupBox;
    Label11: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    cxDBLabel1: TcxDBLabel;
    cxDBLabel2: TcxDBLabel;
    cxDBLabel3: TcxDBLabel;
    cxDBLabel4: TcxDBLabel;
    ZQuery2: TZQuery;
    DataSource2: TDataSource;
    Label1: TLabel;
    dxDBMaskEdit2: TdxDBMaskEdit;
    DBNavigator1: TDBNavigator;
    ZQuery1: TZQuery;
    DataSource1: TDataSource;
    ZQuery1idFUNCIONARIO: TIntegerField;
    ZQuery1NOME: TStringField;
    ZQuery1RG: TStringField;
    ZQuery1CPF: TStringField;
    ZQuery1N_CARTEIRA_TRAB: TStringField;
    ZQuery2QTD_ALUGUEL: TLargeintField;
    ZQuery2VL_PAGO: TFloatField;
    ZQuery2ULT_ALUGUEL: TDateField;
    Panel1: TPanel;
    procedure ZQuery1AfterScroll(DataSet: TDataSet);
    procedure DBEdit2Exit(Sender: TObject);
    procedure ZQuery2VL_PAGOGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

{$R *.dfm}

procedure TForm5.ZQuery1AfterScroll(DataSet: TDataSet);
begin
  if ZQuery1.FieldByName('idFUNCIONARIO').AsInteger <> 0 then
  begin
    ZQuery2.Close;
    ZQuery2.SQL.Clear;
    ZQuery2.SQL.Add('SELECT           ' +
      ' count(a.idFUNCIONARIO) AS QTD_ALUGUEL,  ' +
      ' SUM(A.VALOR_PAGO) AS VL_PAGO,    ' +
      ' MAX(A.DATA_ALUGUEL) AS ULT_ALUGUEL  ' +
      ' FROM aluguel a WHERE A.idFUNCIONARIO = ' + ZQuery1.FieldByName('idFUNCIONARIO').AsString);
    ZQuery2.Open;
    cxDBLabel1.Visible := True;
    cxDBLabel2.Visible := True;
    cxDBLabel3.Visible := True;
  end
  else
  begin
    ZQuery2.Close;
    cxDBLabel1.Visible := False;
    cxDBLabel2.Visible := False;
    cxDBLabel3.Visible := False;
  end;
end;

procedure TForm5.DBEdit2Exit(Sender: TObject);
begin
  TDBEdit(Sender).Text := AnsiUpperCase(TDBEdit(Sender).Text);
end;

procedure TForm5.ZQuery2VL_PAGOGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  if not ZQuery2.FieldByName('VL_PAGO').IsNull then
    Text := ZQuery2.FieldByName('VL_PAGO').AsString// + ',00'
  else
    Text := '0,00'
end;

end.

