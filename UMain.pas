unit UMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, UConv, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    Input1: TEdit;
    Input2: TEdit;
    Input3: TEdit;
    Format1: TEdit;
    Format2: TEdit;
    Format3: TEdit;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Output1: TPanel;
    Output2: TPanel;
    Output3: TPanel;
    Panel9: TPanel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses UTime;


procedure TForm1.Button1Click(Sender: TObject);
var
tmp_time: UTime.TTime;
begin
  tmp_time := str_to_time(Input1.Text, 1, 1, 0, false);
  Output1.Caption := time_to_str(tmp_time, false, Format1.Text);
  Form1.Caption := IntToStr(tmp_time);
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  t1, t2: TTime;
begin
  t1:=str_to_time(Input1.Text, 1, 1, 0, false);
  t2:=str_to_time(Input3.Text, 1, 1, 0, false);
  Output2.Caption:=time_to_str(t2-t1, false, Format2.Text);
end;

end.
