unit upesquisa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.DBGrids,conexao, Data.DB,
  Vcl.StdCtrls,ucrud,ucupomFiscal;

type
  TFpesquisa = class(TForm)
    dbgrdpesq: TDBGrid;
    Button1: TButton;
    Button2: TButton;
    procedure dbgrdpesqColEnter(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Crud_ : TFcrud;
  end;

var
  Fpesquisa: TFpesquisa;

implementation
{$R *.dfm}


procedure TFpesquisa.Button1Click(Sender: TObject);
begin
  Crud_.Excluir_produto(StrToInt(dbgrdpesq.columns.items[0].field.text));
  Crud_.Pesquisa_carrinho(1);
  dbgrdpesq.Refresh;
end;

procedure TFpesquisa.Button2Click(Sender: TObject);
var p: TFcupomfiscal;
begin
   p := TFcupomfiscal.Create(nil);
   p.ShowModal;
   p.Destroy;
   Close;
end;

procedure TFpesquisa.dbgrdpesqColEnter(Sender: TObject);
begin
  dbgrdpesq.Options := dbgrdpesq.Options - [dgEditing]
end;

procedure TFpesquisa.FormCreate(Sender: TObject);
begin
  Crud_ := TFcrud.Create(nil);
end;

procedure TFpesquisa.FormDestroy(Sender: TObject);
begin
   Crud_.Destroy;
end;

procedure TFpesquisa.FormShow(Sender: TObject);
begin
  dbgrdpesq.Columns[1].Width := 150;
  dbgrdpesq.Columns[2].Width := 90;
  dbgrdpesq.Columns[3].Width := 90;
  dbgrdpesq.Columns[4].Width := 90;
end;

end.
