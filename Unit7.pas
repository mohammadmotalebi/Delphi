unit Unit7;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, sSkinManager, Vcl.StdCtrls, sButton,
  Vcl.Imaging.jpeg, NxCollection, Vcl.ExtCtrls, W7Classes, W7Images, sLabel;

type
  TForm7 = class(TForm)
    sSkinManager1: TsSkinManager;
    sLabelFX1: TsLabelFX;
    sLabelFX2: TsLabelFX;
    sLabelFX3: TsLabelFX;
    sLabelFX4: TsLabelFX;
    sLabelFX5: TsLabelFX;
    procedure FormShow(Sender: TObject);
    procedure sLabelFX1MouseEnter(Sender: TObject);
    procedure sLabelFX1MouseLeave(Sender: TObject);
    procedure sLabelFX2MouseEnter(Sender: TObject);
    procedure sLabelFX2MouseLeave(Sender: TObject);
    procedure sLabelFX3MouseEnter(Sender: TObject);
    procedure sLabelFX3MouseLeave(Sender: TObject);
    procedure sLabelFX4MouseEnter(Sender: TObject);
    procedure sLabelFX4MouseLeave(Sender: TObject);
    procedure sLabelFX5MouseEnter(Sender: TObject);
    procedure sLabelFX5MouseLeave(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;

implementation

{$R *.dfm}

procedure TForm7.FormShow(Sender: TObject);
begin
form7.WindowState:=wsMaximized;
end;

procedure TForm7.sLabelFX1MouseEnter(Sender: TObject);
begin
sLabelFX1.Shadow.AlphaValue:=255;
end;

procedure TForm7.sLabelFX1MouseLeave(Sender: TObject);
begin
sLabelFX1.Shadow.AlphaValue:=100;
end;

procedure TForm7.sLabelFX2MouseEnter(Sender: TObject);
begin
sLabelFX2.Shadow.AlphaValue:=255;
end;

procedure TForm7.sLabelFX2MouseLeave(Sender: TObject);
begin
sLabelFX2.Shadow.AlphaValue:=100;
end;

procedure TForm7.sLabelFX3MouseEnter(Sender: TObject);
begin
sLabelFX3.Shadow.AlphaValue:=255;
end;

procedure TForm7.sLabelFX3MouseLeave(Sender: TObject);
begin
sLabelFX3.Shadow.AlphaValue:=100;
end;

procedure TForm7.sLabelFX4MouseEnter(Sender: TObject);
begin
sLabelFX4.Shadow.AlphaValue:=255;
end;

procedure TForm7.sLabelFX4MouseLeave(Sender: TObject);
begin
sLabelFX4.Shadow.AlphaValue:=100;
end;

procedure TForm7.sLabelFX5MouseEnter(Sender: TObject);
begin
sLabelFX5.Shadow.AlphaValue:=255;
end;

procedure TForm7.sLabelFX5MouseLeave(Sender: TObject);
begin
sLabelFX5.Shadow.AlphaValue:=100;
end;

end.
