unit conexao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.StdCtrls,
  Vcl.Mask, Vcl.DBCtrls;

type
  TForm1 = class(TForm)
    con1: TADOConnection;
    ds1: TADODataSet;
    Q: TADOQuery;
    ds2: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

//  NÃO ESQUECER DE CRIAR O BANCO DE DADOS

end.
