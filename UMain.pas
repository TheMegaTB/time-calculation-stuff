unit UMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, UConv;

type
  TForm1 = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  i: Int64;

implementation

{$R *.dfm}


procedure TForm1.Button1Click(Sender: TObject);
begin
  Form1.Caption:=IntToStr(60 * 60 * 24 * 365 * i);
  Button1.Caption := UConv.time_to_str(60 * 60 * 24 * 365 * i, false);
  inc(i);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  i:= 2000;
end;

end.
