program MoreRAM;

uses
  Vcl.Forms,
  uMain in 'uMain.pas' {frmMain},
  Vcl.Themes,
  Vcl.Styles,
  uRAM in 'uRAM.pas' {frmRAM};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'More RAM';
  TStyleManager.TrySetStyle('Windows10 DarkGray');
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TfrmRAM, frmRAM);
  Application.Run;
end.
