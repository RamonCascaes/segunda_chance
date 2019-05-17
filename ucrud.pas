unit ucrud;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,conexao;

type
  TFcrud = class(TForm)
  private
    { Private declarations }
  public
    { Public declarations }
    procedure ADD_carrinho(codpro,qtd,codcli : integer);
    procedure Pesquisa_carrinho(codcli :Integer);
    procedure Pesquisa_produtos;
    procedure Excluir_produto(codpro : integer);
  end;

var
  Fcrud: TFcrud;

implementation

{$R *.dfm}

{ TForm4 }

procedure TFcrud.ADD_carrinho(codpro, qtd, codcli: integer);
begin
   conexao.Form1.Q.sql.Clear;
   conexao.Form1.Q.SQL.Add('  declare @car00_codpro int ;set @car00_codpro = '+Inttostr( codpro));
   conexao.Form1.Q.SQL.Add('  declare @car00_qtdpro int ;set @car00_qtdpro = '+Inttostr( qtd   ));
   conexao.Form1.Q.SQL.Add('  declare @car00_codcli int ;set @car00_codcli = '+Inttostr( codcli));
   conexao.Form1.Q.SQL.Add('  insert into Carrinho (                                           ');
   conexao.Form1.Q.SQL.Add('				 car00_codpro,                                             ');
   conexao.Form1.Q.SQL.Add('				 car00_qtdpro,                                             ');
   conexao.Form1.Q.SQL.Add('				 car00_codcli) values(                                     ');
   conexao.Form1.Q.SQL.Add('                                                                   ');
   conexao.Form1.Q.SQL.Add('				 @car00_codpro,                                            ');
   conexao.Form1.Q.SQL.Add('				 @car00_qtdpro,                                            ');
   conexao.Form1.Q.SQL.Add('				 @car00_codcli )                                           ');
   conexao.Form1.Q.SQL.SaveToFile('D:\teste');
   conexao.Form1.Q.ExecSQL;
end;

procedure TFcrud.Excluir_produto(codpro : integer);
begin
  conexao.Form1.Q.sql.Clear;
  conexao.Form1.Q.SQL.Add('delete carrinho where car00_codpro  =' +Inttostr(codpro));
  conexao.Form1.Q.ExecSQL;
end;

procedure TFcrud.Pesquisa_carrinho(codcli: Integer);
begin
  conexao.Form1.Q.sql.Clear;
  conexao.Form1.Q.SQL.Add('  select                                              ');
  conexao.Form1.Q.SQL.Add('    pro00_codigo			 as Codigo,                      ');
  conexao.Form1.Q.SQL.Add('    pro00_descri			 as Descricao,                   ');
  conexao.Form1.Q.SQL.Add('    sum(pro00_qtd)		 as Quantidade,                  ');
  conexao.Form1.Q.SQL.Add('    sum(pro00_vlrtot) as Valor_produto,               ');
  conexao.Form1.Q.SQL.Add('    sum(pro00_vlrtot*pro00_qtd) as Valor_total        ');
  conexao.Form1.Q.SQL.Add('  from produtos                                       ');
  conexao.Form1.Q.SQL.Add('  inner join carrinho on pro00_codigo = car00_codpro  ');
  conexao.Form1.Q.SQL.Add('                     and car00_codcli = '+Inttostr(codcli));
  conexao.Form1.Q.SQL.Add('   group by                                           ');
  conexao.Form1.Q.SQL.Add('  pro00_codigo,                                       ');
  conexao.Form1.Q.SQL.Add('  pro00_descri                                        ');

  conexao.Form1.Q.SQL.SaveToFile('D:\teste');
  conexao.Form1.Q.Open;
end;

procedure TFcrud.Pesquisa_produtos;
begin
   conexao.Form1.Q.sql.Clear;
   conexao.Form1.Q.SQL.Add('    select pro00_codigo ,  ');
   conexao.Form1.Q.SQL.Add('           pro00_descri ,  ');
   conexao.Form1.Q.SQL.Add('           pro00_vlrtot    ');
   conexao.Form1.Q.SQL.Add('    from produtos          ');
   conexao.Form1.Q.Open;
end;

end.
