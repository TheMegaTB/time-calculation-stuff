unit UMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs;

type
  TForm1 = class(TForm)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  TTime = LongInt;

var
  Form1: TForm1;

implementation

{$R *.dfm}


//str.replace('yyyy', str(get_year(time)));


function get_year(time: TTime): Integer;
begin

end;

end.
