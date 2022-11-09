unit Unit4;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Unit1, Vcl.ImgList, acAlphaImageList,
  Data.DB, Data.Win.ADODB, Vcl.StdCtrls, sButton, sComboBox, Vcl.ExtCtrls,
  sPanel, sCheckBox, Vcl.Imaging.pngimage, acImage, sLabel, i18nDialogs;

type
  TForm4 = class(TForm1)
    procedure sButton2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

uses Unit2, Unit3;

procedure TForm4.FormClose(Sender: TObject; var Action: TCloseAction);
begin

  BalloonHint1.HideHint;
  Form4.Hide;
  form2.AlphaBlendValue := 255;
end;

procedure TForm4.FormShow(Sender: TObject);
begin
  inherited;
  formname := '4';
end;

procedure TForm4.sButton2Click(Sender: TObject);
begin
  BalloonHint1.HideHint;
  Form4.Close;
  form2.AlphaBlendValue := 255;
end;

end.
