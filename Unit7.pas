unit Unit7;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ImgList, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  Grids, DBGrids, StdCtrls, Buttons, ExtCtrls;

type
  TForm7 = class(TForm)
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
    Grid: TDBGrid;
    DataSource1: TDataSource;
    ZQuery1: TZQuery;
    ImageList1: TImageList;
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
    BotaoVoltar: TBitBtn;
    Panel1: TPanel;
    procedure ZQuery1VALOR_DIARIAGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure GridDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure BotaoCadTarefaClick(Sender: TObject);
    procedure BotaoAltTarefaClick(Sender: TObject);
    procedure BotaoRemTarefaClick(Sender: TObject);
    procedure GridDblClick(Sender: TObject);
    procedure BotaoBuscarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BotaoVoltarClick(Sender: TObject);
    procedure GridTitleClick(Column: TColumn);
  private
    procedure AtualizaGrid;
  public
    { Public declarations }
  end;

var
  Form7: TForm7;

implementation

uses StrUtils, Unit6, U_DM, Unit8, Unit9;

{$R *.dfm}

procedure TForm7.ZQuery1VALOR_DIARIAGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  if not ZQuery1.FieldByName('VALOR_DIARIA').IsNull then
    Text := ZQuery1.FieldByName('VALOR_DIARIA').AsString //+ ',00'
  else
    Text := '0,00'
end;

procedure TForm7.GridDrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  case AnsiIndexText(ZQuery1.FieldByName('VEICULO_LOCADO').AsString, ['1', '0']) of
    0: Grid.Canvas.Font.Color := clRed;
    1: Grid.Canvas.Font.Color := clBlue;
  end;

  if gdSelected in State then
    Grid.Canvas.Brush.Color := clSilver;

  Grid.Canvas.FillRect(Rect);
  Grid.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TForm7.BotaoCadTarefaClick(Sender: TObject);
begin
  try
    Application.CreateForm(TForm6, Form6);
    Form6.ZQuery1.Active := True;
    Form6.ZQuery1.Insert;
    Form6.ShowModal;
  finally
    Form6.Free;
    Form6 := nil;
    AtualizaGrid;
  end;
end;

procedure TForm7.BotaoAltTarefaClick(Sender: TObject);
begin
  try
    Application.CreateForm(TForm6, Form6);
    Form6.ZQuery1.Active := True;
    Form6.ZQuery1.Locate('idVEICULO', ZQuery1.FieldValues['idVEICULO'], []);
    Form6.ZQuery1.Edit;
    Form6.ShowModal;
  finally
    Form6.Free;
    Form6 := nil;
    AtualizaGrid;
  end;
end;

procedure TForm7.BotaoRemTarefaClick(Sender: TObject);
begin
  if Application.MessageBox('Deseja Realmente Remover este Veículo?',
    'Confirmação', mb_YesNo + mb_IconExclamation) = idyes then
  begin
    ZQuery1.Delete;
    ZQuery1.ApplyUpdates;
  end;
end;

procedure TForm7.GridDblClick(Sender: TObject);
begin
  BotaoAltTarefaClick(Sender);
end;

procedure TForm7.AtualizaGrid;
begin
  ZQuery1.Close;
  ZQuery1.Open;
end;

procedure TForm7.BotaoBuscarClick(Sender: TObject);
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
        ZQuery1.Filter := ' idVEICULO = ' + QuotedStr(EditBusca.Text);
        ZQuery1.Filtered := true;
      end;
end;

procedure TForm7.FormCreate(Sender: TObject);
begin
  ImageList1.GetBitmap(0, BotaoCadTarefa.Glyph);
  ImageList1.GetBitmap(1, BotaoAltTarefa.Glyph);
  ImageList1.GetBitmap(2, BotaoRemTarefa.Glyph);
  ImageList1.GetBitmap(4, BotaoBuscar.Glyph);
end;

procedure TForm7.BotaoVoltarClick(Sender: TObject);
begin
  if Assigned(Form8) then
  begin
    if ZQuery1.FieldByName('VEICULO_LOCADO').AsString = '1' then
      ShowMessage('VEÍCULO JÁ ESTÁ LOCADO, FAVOR SELECIONAR OUTRO!')
    else
      CLOSE;
  end
  else
    if Assigned(Form9) then
    begin
      if ZQuery1.FieldByName('VEICULO_LOCADO').AsString = '0' then
        ShowMessage('VEÍCULO NÃO ESTÁ LOCADO, FAVOR SELECIONAR OUTRO!')
      else
        CLOSE;
    end
    else
      close;
end;

procedure TForm7.GridTitleClick(Column: TColumn);
begin
  if Column.Field.FieldKind = fkData then
    ZQuery1.IndexFieldNames := Column.FieldName;
end;

end.

