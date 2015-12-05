unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, ExtCtrls,
  DBCtrls, Grids, DBGrids, StdCtrls;

type
  TForm4 = class(TForm)
    ZQuery1: TZQuery;
    DataSource1: TDataSource;
    ZQuery1idFILIAL: TIntegerField;
    ZQuery1NOME_FILIAL: TStringField;
    ZQuery1CIDADE_FILIAL: TStringField;
    DBNavigator1: TDBNavigator;
    GroupBox1: TGroupBox;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

uses U_DM;

{$R *.dfm}

end.

