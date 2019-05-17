unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs , conexao, Vcl.StdCtrls ,db, Vcl.Grids,
  Vcl.DBGrids,upesquisa;

Type
  TListaCliente = class
  private
    { private declarations }
    FListaClientes : TList;
  protected
    { protected declarations }
  public
    { public declarations }
    constructor Create;
   // procedure Adicionar(pCliente: TCliente);
    procedure Remover(Index: Integer);
    function Count: Integer;
  published
    { published declarations }
  end;




type
  TForm2 = class(TForm)
    edt1: TEdit;
    edt2: TEdit;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    dbgrd1: TDBGrid;
    btn4: TButton;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure dbgrd1DblClick(Sender: TObject);
    procedure dbgrd1ColEnter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    teste : TForm2;
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.btn1Click(Sender: TObject);
begin
  conexao.Form1.Q.SQL.Clear;
  //Q.SQL.Add('declare @nome int; set @nome = %d',[edt1.Text]);
  conexao.Form1.Q.SQL.Add('insert into teste10 (nome,descri) values('+edt1.Text+','''+edt2.Text+''')');
  conexao.Form1.Q.SQL.SaveToFile('D:\teste');
  conexao.Form1.Q.ExecSQL;

  ShowMessage('salvo');
end;

procedure TForm2.btn2Click(Sender: TObject);
begin
  conexao.Form1.Q.SQL.Add('UPDATE teste10 SET nome = 2 WHERE nome = '+(edt1.Text));
  conexao.Form1.Q.ExecSQL;
 // Q.SQL.SaveToFile('D:\teste');
end;

procedure TForm2.btn3Click(Sender: TObject);
begin
   conexao.Form1.Q.SQL.Add('select *from teste10 WHERE nome = '+(edt1.Text));
   conexao.Form1.Q.Open;

   dbgrd1.Refresh;
   edt2.Text := conexao.Form1.Q.FieldByName('descri').AsString;
end;

procedure TForm2.btn4Click(Sender: TObject);
var pesq : TFpesquisa;
begin
   conexao.Form1.Q.SQL.Add('select *from teste10');
   conexao.Form1.Q.Open;

   pesq := TFpesquisa.Create(nil);
   pesq.dbgrdpesq.Refresh;
   pesq.ShowModal;

  // dbgrd1.Refresh;
end;

procedure TForm2.dbgrd1ColEnter(Sender: TObject);
begin
  //if UpperCase(dbgrd1.SelectedField.FieldName) = 'ATIVO' then
     dbgrd1.Options := dbgrd1.Options - [dgEditing]
  //else
  //  dbgrd1.Options := dbgrd1.Options + [dgEditing];
end;

procedure TForm2.dbgrd1DblClick(Sender: TObject);
begin
  edt1.Text := dbgrd1.columns.items[0].field.text;
  edt2.Text := dbgrd1.columns.items[1].field.text;
end;

{ TListaCliente }

function TListaCliente.Count: Integer;
begin

end;

constructor TListaCliente.Create;
begin
   inherited Create;
  FListaClientes := TList.Create;
end;

procedure TListaCliente.Remover(Index: Integer);
begin

end;

end.
