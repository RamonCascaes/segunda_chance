unit upesquisa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.DBGrids,conexao, Data.DB;

type
  TFpesquisa = class(TForm)
    dbgrdpesq: TDBGrid;
    procedure dbgrdpesqColEnter(Sender: TObject);
    procedure dbgrdpesqDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fpesquisa: TFpesquisa;

implementation
{$R *.dfm}
uses Unit2;

procedure TFpesquisa.dbgrdpesqColEnter(Sender: TObject);
begin
  dbgrdpesq.Options := dbgrdpesq.Options - [dgEditing]
end;

procedure TFpesquisa.dbgrdpesqDblClick(Sender: TObject);
var l : TForm2;
begin
  l := TForm2.Create(nil);
  l.edt1.Text := dbgrdpesq.columns.items[0].field.text;
  l.edt2.Text := dbgrdpesq.columns.items[1].field.text;
  FreeAndNil(l);
  self.Close;
end;

end.