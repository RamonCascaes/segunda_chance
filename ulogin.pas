unit ulogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,conexao,ucompras, Vcl.Menus,
  upesquisa,ucrud,ucompra_realizada;

type
  TFlogin = class(TForm)
    MainMenu1: TMainMenu;
    Entrar1: TMenuItem;
    Consultar1: TMenuItem;
    Compras1: TMenuItem;
    Carrinho1: TMenuItem;
    Sair1: TMenuItem;
    procedure Sair1Click(Sender: TObject);
    procedure Entrar1Click(Sender: TObject);
    procedure Carrinho1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Compras1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Crud_ : TFcrud;
  end;

var
  Flogin: TFlogin;

implementation

{$R *.dfm}

procedure TFlogin.Carrinho1Click(Sender: TObject);
var pesq : TFpesquisa;
begin
   Crud_.Pesquisa_carrinho(1);
   pesq := TFpesquisa.Create(nil);
   pesq.dbgrdpesq.Refresh;
   pesq.ShowModal;
end;

procedure TFlogin.Compras1Click(Sender: TObject);
var c : TForm4;
begin
    c := TForm4.Create(nil);
    c.ShowModal;
    c.Destroy;
end;

procedure TFlogin.Entrar1Click(Sender: TObject);
var ent : TFcompras ;
begin
    ent  := TFcompras.Create(nil);
    ent.filter.codcli := 1;
    ent.ShowModal;
    ent.Destroy;
    Self.Close;
end;

procedure TFlogin.FormCreate(Sender: TObject);
begin
   Crud_ := TFcrud.Create(nil);
end;

procedure TFlogin.FormDestroy(Sender: TObject);
begin
   Crud_.Destroy;
end;

procedure TFlogin.Sair1Click(Sender: TObject);
begin
  close;
end;

end.
