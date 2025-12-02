unit uRAM;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, System.ImageList, Vcl.ImgList;

type
  TfrmRAM = class(TForm)
    imgRAM: TImageList;
    lstRAM: TListView;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    procedure ShowRAM(const Count: Integer);
  end;

var
  frmRAM: TfrmRAM;

implementation

{$R *.dfm}

{ TfrmRAM }

procedure TfrmRAM.FormCreate(Sender: TObject);
begin
  lstRAM.Align:= alClient;
end;

procedure TfrmRAM.ShowRAM(const Count: Integer);
begin
  lstRAM.Items.Clear;
  for var X := 0 to Count-1 do begin
    var I:= lstRAM.Items.Add;
    I.Caption:= 'RAM ' + IntToStr(X);
    I.ImageIndex:= X mod 3;
  end;
end;

end.
