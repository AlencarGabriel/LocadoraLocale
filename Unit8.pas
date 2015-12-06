unit Unit8;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, StdCtrls, Mask, DBCtrls, JvExMask, JvToolEdit, JvDBControls,
  Buttons, JvComponentBase, JvBalloonHint;

type
  TForm8 = class(TForm)
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
    GroupBox1: TGroupBox;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label14: TLabel;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label15: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    GroupBox2: TGroupBox;
    Label6: TLabel;
    Label7: TLabel;
    Label11: TLabel;
    DBEdit11: TDBEdit;
    JvDBDateEdit1: TJvDBDateEdit;
    JvDBDateEdit2: TJvDBDateEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    ZQuery3: TZQuery;
    ZQuery3idFILIAL: TIntegerField;
    ZQuery3NOME_FILIAL: TStringField;
    ZQuery3CIDADE_FILIAL: TStringField;
    DataSource3: TDataSource;
    ZQuery2: TZQuery;
    DataSource2: TDataSource;
    ZQuery2idFUNCIONARIO: TIntegerField;
    ZQuery2NOME: TStringField;
    ZQuery2RG: TStringField;
    ZQuery2CPF: TStringField;
    ZQuery2N_CARTEIRA_TRAB: TStringField;
    DBLookupComboBox2: TDBLookupComboBox;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    Panel1: TPanel;
    JvBalloonHint1: TJvBalloonHint;
    ZQuery4: TZQuery;
    procedure FormShow(Sender: TObject);
    procedure DBEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit1Exit(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form8: TForm8;

implementation

uses U_DM, Unit_MAN_CLI, Unit7;

{$R *.dfm}

procedure TForm8.FormShow(Sender: TObject);
begin
  if ZQuery1.State = dsInsert then
  begin
    JvDBDateEdit1.Date := now;
  end;

end;

procedure TForm8.DBEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_F1 then
  begin
    try
      Application.CreateForm(TForm7, Form7);
      Form7.ShowModal;
      ZQuery1idVEICULO.AsInteger := Form7.ZQuery1.FieldByName('idVEICULO').AsInteger;
      ZQuery1KM_INICIAL.AsInteger := Form7.ZQuery1.FieldByName('KM_ATUAL').AsInteger;
      Label14.Caption := Form7.ZQuery1.FieldByName('NOME').AsString;
    finally
      Form7.Free;
      Form7 := nil;
    end;
  end;
end;

procedure TForm8.DBEdit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_F2 then
  begin
    try
      Application.CreateForm(TForm3, Form3);
      Form3.ShowModal;
      ZQuery1idCLIENTE.AsInteger := Form3.ZQuery1.FieldByName('idCLIENTE').AsInteger;
      Label15.Caption := Form3.ZQuery1.FieldByName('NOME').AsString;
    finally
      Form3.Free;
      Form3 := nil;
    end;
  end;
end;

procedure TForm8.DBEdit1Exit(Sender: TObject);
begin
  if DBEdit1.Text = '' then
    JvBalloonHint1.ActivateHint(DBEdit1, 'Informe um Veículo ou ' + #13 + 'Aperte F1 para Buscar!', '', 5000)
  else
  begin
    JvBalloonHint1.CancelHint;

    ZQuery4.SQL.Clear;
    ZQuery4.SQL.Add('SELECT V.NOME, V.KM_ATUAL FROM VEICULOS V WHERE V.idVEICULO = ' + DBEdit1.Text);
    ZQuery4.Open;

    if not (ZQuery4.FieldByName('NOME').AsString = '') then
    begin
      Label14.Caption := ZQuery4.FieldByName('NOME').AsString;
      ZQuery1KM_INICIAL.AsInteger := ZQuery4.FieldByName('KM_ATUAL').AsInteger;
    end
    else
    begin
      if Application.MessageBox('Veículo não cadastrado!' + #13 + 'Deseja Cadastrar?', 'Confirmação', MB_YESNO + Mb_ICONQUESTION) = idyes then
      begin
        try
          Application.CreateForm(TForm7, Form7);
          Form7.BotaoCadTarefaClick(Sender);
          Form7.ShowModal;
          ZQuery1idVEICULO.AsInteger := Form7.ZQuery1.FieldByName('idVEICULO').AsInteger;
          ZQuery1KM_INICIAL.AsInteger := Form7.ZQuery1.FieldByName('KM_ATUAL').AsInteger;
          Label14.Caption := Form7.ZQuery1.FieldByName('NOME').AsString;
        finally
          Form7.Free;
          Form7 := nil;
        end;
      end
      else
        DBEdit1.SetFocus;
    end;

    ZQuery4.Close;
  end;
end;

procedure TForm8.DBEdit2Exit(Sender: TObject);
begin
  if DBEdit2.Text = '' then
    JvBalloonHint1.ActivateHint(DBEdit2, 'Informe um Cliente ou ' + #13 + 'Aperte F2 para Buscar!', '', 5000)
  else
  begin
    JvBalloonHint1.CancelHint;

    ZQuery4.SQL.Clear;
    ZQuery4.SQL.Add('SELECT C.NOME FROM CLIENTES C WHERE C.idCLIENTE = ' + DBEdit2.Text);
    ZQuery4.Open;

    if not (ZQuery4.FieldByName('NOME').AsString = '') then
    begin
      Label15.Caption := ZQuery4.FieldByName('NOME').AsString;
    end
    else
    begin
      if Application.MessageBox('Cliente não cadastrado!' + #13 + 'Deseja Cadastrar?', 'Confirmação', MB_YESNO + Mb_ICONQUESTION) = idyes then
      begin
        try
          Application.CreateForm(TForm3, Form3);
          Form3.BotaoCadTarefaClick(Sender);
          Form3.ShowModal;
          ZQuery1idCLIENTE.AsInteger := Form3.ZQuery1.FieldByName('idCLIENTE').AsInteger;
          Label15.Caption := Form3.ZQuery1.FieldByName('NOME').AsString;
        finally
          Form3.Free;
          Form3 := nil;
        end;
      end
      else
        DBEdit2.SetFocus;
    end;

    ZQuery4.Close;

  end;

end;

procedure TForm8.BitBtn1Click(Sender: TObject);
begin
  try

    if ZQuery1.State = dsInsert then
    begin
      ZQuery1.Post;
      ZQuery1.ApplyUpdates;
      if Application.MessageBox('Deseja Cadastrar Outro Aluguel?', 'Confirmação', mb_YesNo + mb_IconExclamation) = idyes then
      begin
        ZQuery1.Append;
        JvDBDateEdit1.Date := now;
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
    begin
      close;
      ZQuery1.Post;
      ZQuery1.ApplyUpdates;
    end;
  except on E: Exception do
      ShowMessage(e.Message);
  end;
end;

procedure TForm8.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  ZQuery1.Cancel;
  ZQuery1.Active := False;
end;

end.

