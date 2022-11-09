unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, sLabel, Vcl.ExtCtrls,
  sSkinManager, Vcl.ImgList, acAlphaImageList, sButton, AdvSelectors,
  Vcl.ActnList, System.Actions, sPanel, acPNG, acImage;

type
  TForm2 = class(TForm)
    Image2: TImage;
    Image3: TImage;
    sSkinManager1: TsSkinManager;
    sAlphaImageList1: TsAlphaImageList;
    Image1: TImage;
    ActionList1: TActionList;
    sPanel1: TsPanel;
    sButton6: TsButton;
    Image4: TImage;
    Image5: TImage;
    Image6: TImage;
    Image7: TImage;
    Image8: TImage;
    sPanel2: TsPanel;
    sPanel3: TsPanel;
    sPanel4: TsPanel;
    procedure Image2Click(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure sButton6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;
  formname: string;

implementation

{$R *.dfm}

uses Unit1, Unit3, Unit4, Unit5;

procedure TForm2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  formname := '2';
end;

procedure TForm2.FormShow(Sender: TObject);
begin
WindowState:=wsMaximized;
with Screen.WorkAreaRect do
  SetBounds(Left, Top, Right - Left, Bottom - Top);
end;

procedure TForm2.Image1Click(Sender: TObject);
begin
  form3 := TForm3.Create(nil);
  Form2.AlphaBlendValue := 0;
  form3.ShowModal;
  form3.Caption := sPanel3.Caption;
end;

procedure TForm2.Image2Click(Sender: TObject);
begin
  form1 := TForm1.Create(nil);
  Form2.AlphaBlendValue := 0;
  form1.ShowModal;
  form1.Caption := sPanel2.Caption;
end;

procedure TForm2.Image3Click(Sender: TObject);
begin
  form4 := TForm4.Create(nil);
  Form2.AlphaBlendValue := 0;
  form4.ShowModal;
  form4.Caption := sPanel4.Caption;
end;

procedure TForm2.sButton6Click(Sender: TObject);
begin
close;
end;

end.
