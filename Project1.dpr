program Project1;

uses
  Forms,
  Unit1 in 'Unit1.pas' {Form1},
  U_DM in 'U_DM.pas' {DM: TDataModule},
  Unit2 in 'Unit2.pas' {Form2},
  Unit_MAN_CLI in 'Unit_MAN_CLI.pas' {Form3},
  Unit4 in 'Unit4.pas' {Form4},
  Unit5 in 'Unit5.pas' {Form5},
  Unit6 in 'Unit6.pas' {Form6},
  Unit7 in 'Unit7.pas' {Form7},
  Unit8 in 'Unit8.pas' {Form8},
  Unit9 in 'Unit9.pas' {Form9};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Locadora';
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
