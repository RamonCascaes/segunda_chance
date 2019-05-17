unit ucompras;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids,conexao;

type
  TFcompras = class(TForm)
    Button1: TButton;
    Sair: TButton;
    pesqpro: TButton;
    ComboBox1: TComboBox;
    edtdesci: TEdit;
    edtvalorpro: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    dbgrd1: TDBGrid;
    Cmbqtdpro: TComboBox;
    procedure SairClick(Sender: TObject);
    procedure pesqproClick(Sender: TObject);
    procedure dbgrd1ColEnter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dbgrd1DblClick(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure resetform;
    procedure ADD_carrinho;
    procedure QuantidadeProduto;
  end;

var
  Fcompras: TFcompras;

implementation

{$R *.dfm}

procedure TFcompras.ADD_carrinho;
begin
   conexao.Form1.Q.sql.Clear;
   conexao.Form1.Q.SQL.Add(' ');
   conexao.Form1.Q.SQL.Add(' ');
   conexao.Form1.Q.SQL.Add(' ');
   conexao.Form1.Q.SQL.Add(' ');
   conexao.Form1.Q.ExecSQL;
end;

procedure TFcompras.ComboBox1Change(Sender: TObject);
var dep : string;
begin
   dep := ComboBox1.Text;
   conexao.Form1.Q.sql.Clear;
   conexao.Form1.Q.SQL.Add('    select pro00_codigo ,  ');
   conexao.Form1.Q.SQL.Add('           pro00_descri ,  ');
   conexao.Form1.Q.SQL.Add('           pro00_vlrtot    ');
   conexao.Form1.Q.SQL.Add('    from produtos          ');
   conexao.Form1.Q.SQL.Add('    inner join departamento on dep00_codigo = pro00_coddep ');
   conexao.Form1.Q.SQL.Add(' where dep00_descri ='''+dep+'');
   conexao.Form1.Q.Open;
end;

procedure TFcompras.dbgrd1ColEnter(Sender: TObject);
begin
 dbgrd1.Options := dbgrd1.Options - [dgEditing]
end;

procedure TFcompras.dbgrd1DblClick(Sender: TObject);
begin
  edtdesci.Text    := dbgrd1.columns.items[1].field.text;
  edtvalorpro.Text := dbgrd1.columns.items[2].field.text;
end;

procedure TFcompras.FormShow(Sender: TObject);
var dep : string;
begin
  resetform;

   conexao.Form1.Q.SQL.Add('select *from departamento');
   conexao.Form1.Q.Open;

   ComboBox1.Items.Add('Todos');

   while not conexao.Form1.Q.Eof do
   begin
     dep := conexao.Form1.Q.FieldByName('dep00_descri').AsString;
     ComboBox1.Items.Add(dep);
     conexao.Form1.Q.Next;
   end;
   dbgrd1.CleanupInstance;
   //FreeAndNil(conexao.Form1.Q);
end;

procedure TFcompras.pesqproClick(Sender: TObject);
begin
   conexao.Form1.Q.sql.Clear;
   conexao.Form1.Q.SQL.Add('    select pro00_codigo ,  ');
   conexao.Form1.Q.SQL.Add('           pro00_descri ,  ');
   conexao.Form1.Q.SQL.Add('           pro00_vlrtot    ');
   conexao.Form1.Q.SQL.Add('    from produtos          ');
   conexao.Form1.Q.Open;

   dbgrd1.Refresh;
end;

procedure TFcompras.QuantidadeProduto;
var
  I: Integer;
begin
    for I := 1 to 100 do
    begin
     Cmbqtdpro.Items.Add(inttostr(I));
    end;
end;

procedure TFcompras.resetform;
begin
   QuantidadeProduto;
end;

procedure TFcompras.SairClick(Sender: TObject);
begin
  Self.Close;
end;

end.