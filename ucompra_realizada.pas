unit ucompra_realizada;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,ucrud;

type
  TForm4 = class(TForm)
    dbgrd1: TDBGrid;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Crud_ : TFcrud;
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

procedure TForm4.FormCreate(Sender: TObject);
begin
  Crud_ := TFcrud.Create(nil);
end;

procedure TForm4.FormDestroy(Sender: TObject);
begin
  Crud_.Destroy;
end;

procedure TForm4.FormShow(Sender: TObject);
begin
   Crud_.Compas_feitas;
end;

end.
