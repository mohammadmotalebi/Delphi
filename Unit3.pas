unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Unit1, Vcl.ImgList, acAlphaImageList,
  Data.DB, Data.Win.ADODB, Vcl.StdCtrls, sButton, sComboBox, Vcl.ExtCtrls,
  sPanel, sCheckBox, Vcl.Imaging.pngimage, acImage, sLabel, i18nDialogs;

type
  TForm3 = class(TForm1)
    procedure sButton2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

uses Unit2;

procedure TForm3.FormClose(Sender: TObject; var Action: TCloseAction);
begin

  BalloonHint1.HideHint;
  Form3.Hide;
  form2.AlphaBlendValue := 255;
end;

procedure TForm3.FormShow(Sender: TObject);
begin
  inherited;
  formname := '3';
end;

procedure TForm3.sButton2Click(Sender: TObject);
begin
  BalloonHint1.HideHint;
  Form3.Close;
  form2.AlphaBlendValue := 255;
end;

end.
