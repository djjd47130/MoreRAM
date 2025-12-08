unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.ExtCtrls, JD.Common, JD.Ctrls,
  JD.Ctrls.FontButton,
  uRAM;

type
  TfrmMain = class(TForm)
    btnBottom: TPanel;
    btnAdd: TJDFontButton;
    tmrProgress: TTimer;
    pAmount: TPanel;
    pAmountHeader: TPanel;
    Label3: TLabel;
    pSpeed: TPanel;
    pSpeedHeader: TPanel;
    Label2: TLabel;
    lblAmount: TLabel;
    lblSpeed: TLabel;
    tbAmount: TTrackBar;
    tbSpeed: TTrackBar;
    lblStatus: TLabel;
    Prog: TProgressBar;
    procedure tbAmountChange(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure tmrProgressTimer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure tbSpeedChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}

procedure TfrmMain.FormCreate(Sender: TObject);
begin
  {$IFDEF DEBUG}
  ReportMemoryLeaksOnShutdown:= True;
  {$ENDIF}
end;

procedure TfrmMain.tbAmountChange(Sender: TObject);
begin
  lblAmount.Caption:= tbAmount.Position.ToString + ' GB';
end;

procedure TfrmMain.tbSpeedChange(Sender: TObject);
begin
  case tbSpeed.Position of
    1: lblSpeed.Caption:= '1600 MHz';
    2: lblSpeed.Caption:= '1866 MHz';
    3: lblSpeed.Caption:= '2133 MHz';
    4: lblSpeed.Caption:= '2400 MHz';
    5: lblSpeed.Caption:= '2666 MHz';
    6: lblSpeed.Caption:= '2933 MHz';
    7: lblSpeed.Caption:= '3200 MHz';
  end;
end;

procedure TfrmMain.btnAddClick(Sender: TObject);
begin
  Prog.Max:= 100;
  Prog.Position:= 0;
  Prog.Visible:= True;
  tmrProgress.Interval:= 80;
  tmrProgress.Enabled:= True;
  lblStatus.Caption:= 'Status: Adding more RAM...';
  Application.ProcessMessages;
end;

procedure TfrmMain.tmrProgressTimer(Sender: TObject);
begin
  if Prog.Position >= Prog.Max then begin
    tmrProgress.Enabled:= False;
    Prog.Visible:= False;
    Prog.Position:= 0;
    lblStatus.Caption:= 'Status: Ready';
    frmRAM.ShowRAM(tbAmount.Position);
    frmRAM.ShowModal;
  end else begin
    Prog.StepBy(1);
    if Prog.Position >= 60 then
      lblStatus.Caption:= 'Status: Optimizing RAM...';
    if Prog.Position >= 80 then begin
      lblStatus.Caption:= 'Status: Wrapping up...';
      tmrProgress.Interval:= 200;
    end;
  end;
end;

end.
