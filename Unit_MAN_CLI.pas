unit Unit_MAN_CLI;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, Grids, DBGrids, ImgList, ExtCtrls;

type
  TForm3 = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    BotaoCadTarefa: TBitBtn;
    BotaoAltTarefa: TBitBtn;
    BotaoRemTarefa: TBitBtn;
    EditBusca: TEdit;
    RdComeca: TRadioButton;
    RdContem: TRadioButton;
    BotaoBuscar: TBitBtn;
    RdCodigo: TRadioButton;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
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
    ImageList1: TImageList;
    BotaoVoltar: TBitBtn;
    Panel1: TPanel;
    procedure FormCreate(Sender: TObject);
    procedure BotaoCadTarefaClick(Sender: TObject);
    procedure BotaoAltTarefaClick(Sender: TObject);
    procedure BotaoBuscarClick(Sender: TObject);
    procedure BotaoRemTarefaClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure BotaoVoltarClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1TitleClick(Column: TColumn);
  private
    procedure AtualizaGrid;
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

uses U_DM, Unit2, Unit1, Unit8;

{$R *.dfm}

procedure TForm3.FormCreate(Sender: TObject);
begin
  ImageList1.GetBitmap(0, BotaoCadTarefa.Glyph);
  ImageList1.GetBitmap(1, BotaoAltTarefa.Glyph);
  ImageList1.GetBitmap(2, BotaoRemTarefa.Glyph);
  ImageList1.GetBitmap(4, BotaoBuscar.Glyph);
end;

procedure TForm3.BotaoCadTarefaClick(Sender: TObject);
begin
  try
    Application.CreateForm(TForm2, Form2);
    Form2.ZQuery1.Active := True;
    Form2.ZQuery1.Insert;
    Form2.ShowModal;
  finally
    Form2.Free;
    Form2 := nil;
    AtualizaGrid;
  end;
end;

procedure TForm3.BotaoAltTarefaClick(Sender: TObject);
begin
  try
    Application.CreateForm(TForm2, Form2);
    Form2.ZQuery1.Active := True;
    Form2.ZQuery1.Locate('idCLIENTE', ZQuery1.FieldValues['idCLIENTE'], []);
    Form2.ZQuery1.Edit;
    Form2.ShowModal;
  finally
    Form2.Free;
    Form2 := nil;
    AtualizaGrid;
  end;
end;

procedure TForm3.BotaoBuscarClick(Sender: TObject);
begin
  if RdComeca.Checked then
  begin
    ZQuery1.Filtered := false;
    ZQuery1.Filter := ' NOME like ' + QuotedStr(EditBusca.Text + '*');
    ZQuery1.Filtered := true;
  end
  else
    if RdContem.Checked then
    begin
      ZQuery1.Filtered := false;
      ZQuery1.Filter := ' NOME like ' + QuotedStr('*' + EditBusca.Text + '*');
      ZQuery1.Filtered := true;
    end
    else
      if RdCodigo.Checked then
      begin
        ZQuery1.Filtered := false;
        ZQuery1.Filter := ' idCLIENTE = ' + QuotedStr(EditBusca.Text);
        ZQuery1.Filtered := true;
      end;
end;

procedure TForm3.BotaoRemTarefaClick(Sender: TObject);
begin
  if Application.MessageBox('Deseja Realmente Remover este Cliente?',
    'Confirmação', mb_YesNo + mb_IconExclamation) = idyes then
  begin
    ZQuery1.Delete;
    ZQuery1.ApplyUpdates;
  end;
end;

procedure TForm3.AtualizaGrid;
begin
  ZQuery1.Close;
  ZQuery1.Open;
end;

procedure TForm3.DBGrid1DblClick(Sender: TObject);
begin
  BotaoAltTarefaClick(Sender);
end;

procedure TForm3.BotaoVoltarClick(Sender: TObject);
begin
  close;
end;

procedure TForm3.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if gdSelected in State then
  begin
    DBGrid1.Canvas.Brush.Color := clSilver;
    DBGrid1.Canvas.Font.Color := clBlack;
  end;

  DBGrid1.Canvas.FillRect(Rect);
  DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TForm3.DBGrid1TitleClick(Column: TColumn);
begin
  if Column.Field.FieldKind = fkData then
    ZQuery1.IndexFieldNames := Column.FieldName;
end;

end.

