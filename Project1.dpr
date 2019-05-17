program Project1;

uses
  Vcl.Forms,
  conexao in 'conexao.pas' {Form1},
  Unit2 in 'Unit2.pas' {Form2},
  ucadastro in 'ucadastro.pas' {Form3},
  upesquisa in 'upesquisa.pas' {Fpesquisa},
  ucompras in 'ucompras.pas' {Fcompras};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFcompras, Fcompras);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TFpesquisa, Fpesquisa);
  Application.Run;
end.
