unit upesquisa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.DBGrids,conexao, Data.DB;

type
  TFpesquisa = class(TForm)
    dbgrdpesq: TDBGrid;
    procedure dbgrdpesqColEnter(Sender: TObject);
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

end.
