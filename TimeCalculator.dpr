program TimeCalculator;

uses
  Vcl.Forms,
  UMain in 'UMain.pas' {Form1},
  UTime in 'package\UTime.pas',
  UConv in 'package\UConv.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
