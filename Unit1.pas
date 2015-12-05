unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frxpngimage, ExtCtrls, Menus, XPMenu, jpeg, JvExControls,
  JvgLabel, ComCtrls, XP_Button;

type
  TForm1 = class(TForm)
    Image1: TImage;
    MainMenu1: TMainMenu;
    Cadastro1: TMenuItem;
    Aluguel1: TMenuItem;
    Clientes1: TMenuItem;
    Filiais1: TMenuItem;
    Funcionrios1: TMenuItem;
    Veculos1: TMenuItem;
    Novo1: TMenuItem;
    Devoluo1: TMenuItem;
    Sair1: TMenuItem;
    XPMenu1: TXPMenu;
    JvgLabel1: TJvgLabel;
    StatusBar1: TStatusBar;
    tfXPButton1: TtfXPButton;
    procedure Clientes1Click(Sender: TObject);
    procedure Filiais1Click(Sender: TObject);
    procedure Funcionrios1Click(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure Veculos1Click(Sender: TObject);
    procedure Novo1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure tfXPButton1Click(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure Devoluo1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Unit2, U_DM, Unit_MAN_CLI, Unit4, Unit5, Unit7, Unit8, Unit9;

{$R *.dfm}

procedure TForm1.Clientes1Click(Sender: TObject);
begin

  try
    Application.CreateForm(TForm3, Form3);
    StatusBar1.Panels[0].Text := Form3.Caption;
    Form3.ShowModal;
  finally
    Form3.Free;
    Form3 := nil;
    StatusBar1.Panels[0].Text := Self.Caption;
  end;

end;

procedure TForm1.Filiais1Click(Sender: TObject);
begin
  try
    Application.CreateForm(TForm4, Form4);
    StatusBar1.Panels[0].Text := Form4.Caption;
    Form4.ShowModal;
  finally
    Form4.Free;
    Form4 := nil;
    StatusBar1.Panels[0].Text := Self.Caption;
  end;
end;

procedure TForm1.Funcionrios1Click(Sender: TObject);
begin
  try
    Application.CreateForm(TForm5, Form5);
    StatusBar1.Panels[0].Text := Form5.Caption;
    Form5.ShowModal;
  finally
    Form5.Free;
    Form5 := nil;
    StatusBar1.Panels[0].Text := Self.Caption;
  end;
end;

procedure TForm1.Sair1Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TForm1.Veculos1Click(Sender: TObject);
begin
  try
    Application.CreateForm(TForm7, Form7);
    StatusBar1.Panels[0].Text := Form7.Caption;
    Form7.ShowModal;
  finally
    Form7.Free;
    Form7 := nil;
    StatusBar1.Panels[0].Text := Self.Caption;
  end;
end;

procedure TForm1.Novo1Click(Sender: TObject);
begin
  try
    Application.CreateForm(TForm8, Form8);
    StatusBar1.Panels[0].Text := Form8.Caption;
    Form8.ZQuery1.Insert;
    Form8.ShowModal;
  finally
    Form8.Free;
    Form8 := nil;
    StatusBar1.Panels[0].Text := Self.Caption;
  end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  StatusBar1.Panels[0].Text := Self.Caption;
  Self.WindowState := wsMaximized;
end;

procedure TForm1.tfXPButton1Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TForm1.FormResize(Sender: TObject);
begin
  StatusBar1.Panels[1].Text := IntToStr(Self.Width) + 'x' + IntToStr(Self.Height);
end;

procedure TForm1.Devoluo1Click(Sender: TObject);
begin
  try
    Application.CreateForm(TForm9, Form9);
    StatusBar1.Panels[0].Text := Form9.Caption;
    Form9.ShowModal;
  finally
    Form9.Free;
    Form9 := nil;
    StatusBar1.Panels[0].Text := Self.Caption;
  end;
end;

end.

