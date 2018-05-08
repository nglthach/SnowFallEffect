program SnowFallEffect;

uses
  System.StartUpCopy,
  FMX.Forms,
  Form.Main in 'Form.Main.pas' {FormMain};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFormMain, FormMain);
  Application.Run;
end.
