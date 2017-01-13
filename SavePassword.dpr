program SavePassword;

uses
  Vcl.Forms,
  uMain in 'uMain.pas' {FormMain},
  UnitAbout in 'UnitAbout.pas' {FormAbout},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Save-Password';
  TStyleManager.TrySetStyle('Windows10 Dark');
  Application.CreateForm(TFormMain, FormMain);
  Application.Run;
end.
