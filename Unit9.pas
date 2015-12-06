unit Unit9;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, JvComponentBase, JvBalloonHint, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, StdCtrls, Buttons, ExtCtrls, DBCtrls,
  JvExMask, JvToolEdit, JvDBControls, Mask, cxControls, cxContainer,
  cxEdit, cxTextEdit, cxCurrencyEdit, cxDBEdit, DateUtils;

type
  TForm9 = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label14: TLabel;
    Label2: TLabel;
    Label15: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    GroupBox2: TGroupBox;
    Label6: TLabel;
    Label7: TLabel;
    Label11: TLabel;
    DBEdit14: TDBEdit;
    JvDBDateEdit1: TJvDBDateEdit;
    JvDBDateEdit2: TJvDBDateEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    Panel1: TPanel;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    DataSource1: TDataSource;
    ZQuery1: TZQuery;
    ZQuery1idALUGUEL: TIntegerField;
    ZQuery1idVEICULO: TIntegerField;
    ZQuery1idCLIENTE: TIntegerField;
    ZQuery1idFUNCIONARIO: TIntegerField;
    ZQuery1idFILIAL: TIntegerField;
    ZQuery1idFILIAL_DEVOLUCAO: TIntegerField;
    ZQuery1DATA_ALUGUEL: TDateField;
    ZQuery1DATA_PREV_ENTREGA: TDateField;
    ZQuery1DATA_DEVOLUCAO: TDateField;
    ZQuery1VALOR_PAGO: TFloatField;
    ZQuery1VALOR_MULTA: TFloatField;
    ZQuery1KM_INICIAL: TIntegerField;
    ZQuery1KM_DEVOLUCAO: TIntegerField;
    ZQuery1KM_RODADOS: TIntegerField;
    ZQuery3: TZQuery;
    ZQuery3idFILIAL: TIntegerField;
    ZQuery3NOME_FILIAL: TStringField;
    ZQuery3CIDADE_FILIAL: TStringField;
    DataSource3: TDataSource;
    ZQuery2: TZQuery;
    ZQuery2idFUNCIONARIO: TIntegerField;
    ZQuery2NOME: TStringField;
    ZQuery2RG: TStringField;
    ZQuery2CPF: TStringField;
    ZQuery2N_CARTEIRA_TRAB: TStringField;
    DataSource2: TDataSource;
    JvBalloonHint1: TJvBalloonHint;
    ZQuery4: TZQuery;
    Label12: TLabel;
    DBEdit12: TDBEdit;
    JvDBDateEdit3: TJvDBDateEdit;
    Label8: TLabel;
    Label13: TLabel;
    Label10: TLabel;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    Label17: TLabel;
    Label9: TLabel;
    cxDBCurrencyEdit3: TcxDBCurrencyEdit;
    Label18: TLabel;
    Label5: TLabel;
    Label16: TLabel;
    Edit1: TEdit;
    EditValorDiaria: TcxDBCurrencyEdit;
    cxCurrencyEdit1: TcxCurrencyEdit;
    cxCurrencyEdit2: TcxCurrencyEdit;
    procedure FormShow(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure DBEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit12Exit(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure cxDBCurrencyEdit1Exit(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure JvDBDateEdit3Exit(Sender: TObject);
  private
    procedure CalculaTotal;
  public
    { Public declarations }
  end;

var
  Form9: TForm9;

implementation

uses U_DM, Unit_MAN_CLI, Unit7;

{$R *.dfm}

procedure TForm9.FormShow(Sender: TObject);
begin
//  if ZQuery1.State = dsEdit then
//  begin
  JvDBDateEdit3.Date := now;
//  end;
end;

procedure TForm9.DBEdit1Exit(Sender: TObject);
begin
  if DBEdit1.Text = '' then
    JvBalloonHint1.ActivateHint(DBEdit1, 'Informe um Veículo ou ' + #13 + 'Aperte F1 para Buscar!', '', 5000)
  else
  begin
    JvBalloonHint1.CancelHint;

    ZQuery4.SQL.Clear;
    ZQuery4.SQL.Add('SELECT V.NOME, V.KM_ATUAL, V.VALOR_DIARIA FROM VEICULOS V WHERE V.idVEICULO = ' + DBEdit1.Text);
    ZQuery4.Open;

    Label14.Caption := ZQuery4.FieldByName('NOME').AsString;
    EditValorDiaria.Value := ZQuery4.FieldByName('VALOR_DIARIA').AsFloat;
//      ZQuery1KM_INICIAL.AsInteger := ZQuery4.FieldByName('KM_ATUAL').AsInteger;

    ZQuery4.Close;

    CalculaTotal;
  end;
end;

procedure TForm9.DBEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_F1 then
  begin
    try
      ZQuery1.Cancel;
      Application.CreateForm(TForm7, Form7);
      Form7.ShowModal;

//      ZQuery1.Locate('idVEICULO; DATA_DEVOLUCAO', VarArrayOf([DBEdit1.Text, NULL]), [loCaseInsensitive, loPartialKey]);
//      ZQuery1KM_INICIAL.AsInteger := Form7.ZQuery1.FieldByName('KM_ATUAL').AsInteger;
      ZQuery1.Active := False;
      ZQuery1.Active := True; //      ZQuery1.Cancel;
//      ZQuery1idVEICULO.AsInteger := Form7.ZQuery1.FieldByName('idVEICULO').AsInteger;
      ZQuery1.Locate('idVEICULO; DATA_DEVOLUCAO', VarArrayOf([Form7.ZQuery1.FieldByName('idVEICULO').AsInteger, NULL]), [loCaseInsensitive, loPartialKey]);
      ZQuery1.Edit;

      Label14.Caption := Form7.ZQuery1.FieldByName('NOME').AsString;
      JvDBDateEdit3.Date := now;

      ZQuery4.SQL.Clear;
      ZQuery4.SQL.Add('SELECT C.NOME FROM CLIENTES C WHERE C.idCLIENTE = ' + DBEdit2.Text);
      ZQuery4.Open;
      if not (ZQuery4.FieldByName('NOME').AsString = '') then
      begin
        Label15.Caption := ZQuery4.FieldByName('NOME').AsString;
      end;


    finally
      Form7.Free;
      Form7 := nil;
    end;
  end;
end;

procedure TForm9.DBEdit12Exit(Sender: TObject);
begin
  if ZQuery1KM_DEVOLUCAO.AsInteger > 0 then
  begin
    if ZQuery1KM_DEVOLUCAO.AsInteger < ZQuery1KM_INICIAL.AsInteger then
      JvBalloonHint1.ActivateHint(DBEdit12, 'Km Inválida ' + #13 + 'Esta deve ser maior ou igual a KM inicial!', '', 5000)
    else
    begin
      Edit1.Text := IntToStr(ZQuery1KM_DEVOLUCAO.AsInteger - ZQuery1KM_INICIAL.AsInteger);
      JvBalloonHint1.CancelHint;
    end;

  end;



end;

procedure TForm9.CalculaTotal;
var
  Dif_dias_normal,
    Dif_dias_c_multa: integer;
  multa: double;
begin
  Dif_dias_normal := 0;
  Dif_dias_c_multa := 0;

  Dif_dias_normal := DaysBetween(ZQuery1DATA_PREV_ENTREGA.AsDateTime, ZQuery1DATA_ALUGUEL.AsDateTime);

  if JvDBDateEdit3.Date > ZQuery1DATA_PREV_ENTREGA.AsDateTime then
    Dif_dias_c_multa := DaysBetween(JvDBDateEdit3.Date, ZQuery1DATA_PREV_ENTREGA.AsDateTime);

  //calculo do valor normal
  cxCurrencyEdit1.Value := EditValorDiaria.Value * Dif_dias_normal;

  multa := ((EditValorDiaria.Value * Dif_dias_c_multa) + cxCurrencyEdit1.Value * 0.2);
  // calculo da multa
  if ZQuery1VALOR_MULTA.AsFloat = 0 then
    if Dif_dias_c_multa > 0 then //calcula os dias de atraso e cobra a mais, somando com 20% do total sem mlta
      ZQuery1VALOR_MULTA.AsFloat := multa
    else
      ZQuery1VALOR_MULTA.AsFloat := 0;

  cxCurrencyEdit2.Value := ZQuery1VALOR_MULTA.Value + cxCurrencyEdit1.Value;

//  if cxDBCurrencyEdit3.Value = 0 then
  ZQuery1VALOR_PAGO.AsFloat := cxCurrencyEdit2.Value;

end;

procedure TForm9.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in ['0'..'9', Chr(8)]) then
    Key := #0
end;

procedure TForm9.cxDBCurrencyEdit1Exit(Sender: TObject);
begin
  CalculaTotal;
end;

procedure TForm9.BitBtn1Click(Sender: TObject);
begin
  try
    if ZQuery1VALOR_PAGO.AsFloat < cxCurrencyEdit2.Value then
      JvBalloonHint1.ActivateHint(cxDBCurrencyEdit3, 'Valor Inválido ' + #13 + ' Valor PAGO deve ser maior ou igual ao Sub-Total!', '', 5000)
    else
    begin
      JvBalloonHint1.CancelHint;

      if ZQuery1.State = dsEdit then
      begin
        ZQuery1.Post;
        ZQuery1.ApplyUpdates;
        if Application.MessageBox('Deseja Efetuar Outra Devolução?', 'Confirmação', mb_YesNo + mb_IconExclamation) = idyes then
        begin
          ZQuery1.Active := False;
          JvDBDateEdit3.Date := now;
          Label14.Caption := '';
          Label15.Caption := '';
          DBEdit1.SetFocus;
        end
        else
        begin
          Close;
        end;
      end
      else
        close;
    end;
  except on E: Exception do
      ShowMessage(e.Message);
  end;
end;

procedure TForm9.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  ZQuery1.Cancel;
  ZQuery1.Active := False;
end;

procedure TForm9.JvDBDateEdit3Exit(Sender: TObject);
begin
  CalculaTotal;
end;

end.

