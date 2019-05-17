unit ulogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,conexao,ucompras;

type
  TFlogin = class(TForm)
    edtlogin: TEdit;
    edtsenha: TEdit;
    Label1  : TLabel;
    Label2  : TLabel;
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Flogin: TFlogin;

implementation

{$R *.dfm}

procedure TFlogin.Button1Click(Sender: TObject);
var ent : TFcompras ;
begin
    ent  := TFcompras.Create(nil);
    ent.filter.codcli := 1;
    ent.ShowModal;
    ent.Destroy;
    Self.Close;
end;

end.
