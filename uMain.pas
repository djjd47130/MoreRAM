unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.ExtCtrls, JD.Common, JD.Ctrls,
  JD.Ctrls.FontButton,
  uRAM;

type
  TfrmMain = class(TForm)
    Panel1: TPanel;
    tbAmount: TTrackBar;
    Label1: TLabel;
    lblAmount: TLabel;
    JDFontButton1: TJDFontButton;
    tmrProgress: TTimer;
    Prog: TProgressBar;
    Stat: TStatusBar;
    procedure tbAmountChange(Sender: TObject);
    procedure JDFontButton1Click(Sender: TObject);
    procedure tmrProgressTimer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}

procedure TfrmMain.JDFontButton1Click(Sender: TObject);
begin
  Prog.Max:= 100;
  Prog.Position:= 0;
  Prog.Visible:= True;
  tmrProgress.Enabled:= True;
  Stat.Panels[0].Text:= 'Status: Adding more RAM...';
  Application.ProcessMessages;
end;

procedure TfrmMain.tbAmountChange(Sender: TObject);
begin
  lblAmount.Caption:= tbAmount.Position.ToString + ' GB';
end;

procedure TfrmMain.tmrProgressTimer(Sender: TObject);
begin
  if Prog.Position >= Prog.Max then begin
    tmrProgress.Enabled:= False;
    Prog.Visible:= False;
    Prog.Position:= 0;
    Stat.Panels[0].Text:= 'Status: Ready';
    frmRAM.ShowRAM(tbAmount.Position);
    frmRAM.ShowModal;
  end else begin
    Prog.StepBy(1);
  end;
end;

end.
