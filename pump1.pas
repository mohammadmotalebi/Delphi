unit pump1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, acImage, NxCollection,
  pump2, menu, sSkinManager, Vcl.ImgList, acAlphaImageList, Vcl.StdCtrls,
  sComboBox;

type
  TForm13 = class(TForm)
    sSkinManager1: TsSkinManager;
    sAlphaImageList1: TsAlphaImageList;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Frame11Image2MouseEnter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form13: TForm13;

implementation

{$R *.dfm}



procedure TForm13.FormClose(Sender: TObject; var Action: TCloseAction);
begin
exit;
end;

procedure TForm13.Frame11Image2MouseEnter(Sender: TObject);
var
  Ptt: TPoint;
begin
 Frame11.BalloonHint1.Title := '';
    Frame11.BalloonHint1.Description := 'حداقل قرار گیری سطح آب در چاه';
    Ptt.X := Frame11.image2.Width Div 2;
    Ptt.Y := 15;
    Frame11.BalloonHint1.ShowHint(Frame11.image2.ClientToScreen(Ptt));
end;

end.
