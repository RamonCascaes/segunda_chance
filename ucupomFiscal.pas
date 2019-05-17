unit ucupomFiscal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,conexao,ucrud;

type
  TFcupomfiscal = class(TForm)
    Memo1: TMemo;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Crud_ : TFcrud;
  end;

var
  Fcupomfiscal: TFcupomfiscal;

implementation

{$R *.dfm}

procedure TFcupomfiscal.FormCreate(Sender: TObject);
begin
  Crud_ := TFcrud.Create(nil);
end;

procedure TFcupomfiscal.FormDestroy(Sender: TObject);
begin
   Crud_.Destroy;
end;

procedure TFcupomfiscal.FormShow(Sender: TObject);
var codigo,Produto,Valor,qtd : string;
  I: Integer;
begin
  conexao.Form1.Q.sql.Clear;
  Crud_.Pesquisa_carrinho(1);
  while not conexao.Form1.Q.Eof do
  begin
      Memo1.Lines.Add(conexao.Form1.Q.FieldByName('Codigo').AsString+'      '+
                      conexao.Form1.Q.FieldByName('Descricao').AsString+'      '+
                      conexao.Form1.Q.FieldByName('Valor_total').AsString+'    '+
                      conexao.Form1.Q.FieldByName('Quantidade').AsString);
      conexao.Form1.Q.Next;
  end;

  for I := 0 to 6 do
  begin
    Memo1.Lines.Add('');
  end;


  Memo1.Lines.Add('----------------------------------------------------------------------');
  Memo1.Lines.Add('                 OBRIGADO PELA PREFERÊNCIA                            ');
  Memo1.Lines.Add('----------------------------------------------------------------------');
end;

end.
