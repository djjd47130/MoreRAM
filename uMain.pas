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
    procedure tbAmountChange(Sender: TObject);
    procedure JDFontButton1Click(Sender: TObject);
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
  //TODO: Generate items...


  frmRAM.ShowRAM(tbAmount.Position);
  frmRAM.ShowModal;

end;

procedure TfrmMain.tbAmountChange(Sender: TObject);
begin
  lblAmount.Caption:= tbAmount.Position.ToString + ' GB';
end;

end.
