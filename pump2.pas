unit pump2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, sButton,
  Vcl.ExtCtrls, sLabel, acImage, sComboBox,
  Vcl.Imaging.pngimage, sCheckBox, acAlphaHints;

type
  TFrame1 = class(TFrame)
    Edit1: TEdit;
    sButton1: TsButton;
    sLabel1: TsLabel;
    sImage1: TsImage;
    Label1: TLabel;
    Edit2: TEdit;
    ComboBox1: TsComboBox;
    Edit3: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    sComboBox1: TsComboBox;
    Image1: TImage;
    BalloonHint1: TBalloonHint;
    Label4: TLabel;
    Image2: TImage;
    Edit4: TEdit;
    sComboBox2: TsComboBox;
    Label5: TLabel;
    Edit5: TEdit;
    sComboBox3: TsComboBox;
    Label6: TLabel;
    Edit6: TEdit;
    sComboBox4: TsComboBox;
    sComboBox5: TsComboBox;
    Label7: TLabel;
    Label8: TLabel;
    Edit7: TEdit;
    sComboBox6: TsComboBox;
    sCheckBox1: TsCheckBox;
    Label9: TLabel;
    Edit8: TEdit;
    sComboBox7: TsComboBox;
    Label10: TLabel;
    Edit9: TEdit;
    sComboBox8: TsComboBox;
    Label11: TLabel;
    Edit10: TEdit;
    sComboBox9: TsComboBox;
    Label12: TLabel;
    Edit11: TEdit;
    sComboBox10: TsComboBox;
    Label13: TLabel;
    Edit12: TEdit;
    Label14: TLabel;
    Edit13: TEdit;
    Label15: TLabel;
    Edit14: TEdit;
    Label16: TLabel;
    Edit15: TEdit;
    Label17: TLabel;
    Edit16: TEdit;
    sCheckBox2: TsCheckBox;
    Label18: TLabel;
    sComboBox11: TsComboBox;
    Label19: TLabel;
    Edit17: TEdit;
    Label20: TLabel;
    sComboBox12: TsComboBox;
    Image3: TImage;
    Image4: TImage;
    procedure sButton1Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure Image1MouseEnter(Sender: TObject);
    procedure Image2MouseEnter(Sender: TObject);
    procedure Image1MouseLeave(Sender: TObject);
    procedure Image2MouseLeave(Sender: TObject);
    procedure Label1Click(Sender: TObject);
    procedure Label2Click(Sender: TObject);
    procedure Label3Click(Sender: TObject);
    procedure Label4Click(Sender: TObject);
    procedure Label5Click(Sender: TObject);
    procedure Label6Click(Sender: TObject);
    procedure sCheckBox1Click(Sender: TObject);
    procedure Image3MouseEnter(Sender: TObject);
    procedure Image3MouseLeave(Sender: TObject);
    procedure Image4MouseEnter(Sender: TObject);
    procedure Image4MouseLeave(Sender: TObject);
    procedure sCheckBox2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses pump1;

procedure TFrame1.ComboBox1Change(Sender: TObject);
begin
if ComboBox1.Text = 'm3/day' then
Edit2.Enabled:=true
else
Edit2.Enabled:=false;

end;

procedure TFrame1.Edit1Change(Sender: TObject);
begin
sLabel1.Caption:=Edit1.Text;
end;

procedure TFrame1.Image1MouseEnter(Sender: TObject);
var
  Pt: TPoint;
begin
    BalloonHint1.Title := '';
    BalloonHint1.Description := 'عمق قرار گیری آب در چاه';
    Pt.X := image1.Width Div 2;
    Pt.Y := 15;
    BalloonHint1.ShowHint(image1.ClientToScreen(Pt));
end;

procedure TFrame1.Image1MouseLeave(Sender: TObject);
begin
     BalloonHint1.HideHint;
end;

procedure TFrame1.Image2MouseEnter(Sender: TObject);
var
  Ptt: TPoint;
begin
    BalloonHint1.Title := '';
    BalloonHint1.Description := 'حداقل قرار گیری سطح آب در چاه';
    Ptt.X := image2.Width Div 2;
    Ptt.Y := 15;
    BalloonHint1.ShowHint(image2.ClientToScreen(Ptt));
end;

procedure TFrame1.Image2MouseLeave(Sender: TObject);
begin
BalloonHint1.HideHint;
end;

procedure TFrame1.Image3MouseEnter(Sender: TObject);
var
  Pttt: TPoint;
begin
    BalloonHint1.Title := '';
    BalloonHint1.Description := 'فاصله الکترو موتور تا تابلو برق';
    Pttt.X := image3.Width Div 2;
    Pttt.Y := 2;
    BalloonHint1.ShowHint(image3.ClientToScreen(Pttt));
end;

procedure TFrame1.Image3MouseLeave(Sender: TObject);
begin
BalloonHint1.HideHint;
end;

procedure TFrame1.Image4MouseEnter(Sender: TObject);
var
  Ptttt: TPoint;
begin
    BalloonHint1.Title := '';
    BalloonHint1.Description := 'توجه داریم که عموما درجه حرارت داخل چاه بالاتر از 30 درجه سلسیوس می باشد'+sLineBreak+'پس تنها در صورتی که کسر بزرگی از کابل بیرون از چاه می باشر درجه حرارت را تغییر دهید.';
    Ptttt.X := image4.Width Div 2;
    Ptttt.Y := 2;
    BalloonHint1.ShowHint(image4.ClientToScreen(Ptttt));
end;

procedure TFrame1.Image4MouseLeave(Sender: TObject);
begin
 BalloonHint1.HideHint;
end;

procedure TFrame1.Label1Click(Sender: TObject);
begin
Edit1.SetFocus;
end;

procedure TFrame1.Label2Click(Sender: TObject);
begin
if Edit2.Enabled = true then
Edit2.SetFocus;
end;

procedure TFrame1.Label3Click(Sender: TObject);
begin
Edit3.SetFocus;
end;

procedure TFrame1.Label4Click(Sender: TObject);
begin
Edit4.SetFocus;
end;

procedure TFrame1.Label5Click(Sender: TObject);
begin
Edit5.SetFocus;
end;

procedure TFrame1.Label6Click(Sender: TObject);
begin
Edit6.SetFocus;
end;

procedure TFrame1.sButton1Click(Sender: TObject);
begin
Form13.Frame11.Visible:=false;
Form13.Frame21.Visible:=true;
end;

procedure TFrame1.sCheckBox1Click(Sender: TObject);
begin
if sCheckBox1.State = cbChecked then
begin
Edit8.Enabled:=true;
Edit9.Enabled:=true;
Edit10.Enabled:=true;
Edit11.Enabled:=true;
Edit12.Enabled:=true;
Edit13.Enabled:=true;
Edit14.Enabled:=true;
Edit15.Enabled:=true;
Edit16.Enabled:=true;
sComboBox7.Enabled:=true;
sComboBox8.Enabled:=true;
sComboBox9.Enabled:=true;
sComboBox10.Enabled:=true;
end
else
 begin
    Edit8.Enabled:=false;
Edit9.Enabled:=false;
Edit10.Enabled:=false;
Edit11.Enabled:=false;
Edit12.Enabled:=false;
Edit13.Enabled:=false;
Edit14.Enabled:=false;
Edit15.Enabled:=false;
Edit16.Enabled:=false;
sComboBox7.Enabled:=false;
sComboBox8.Enabled:=false;
sComboBox9.Enabled:=false;
sComboBox10.Enabled:=false;
 end;
end;

procedure TFrame1.sCheckBox2Click(Sender: TObject);
begin
if sCheckBox2.State = cbChecked then
begin
  sComboBox11.Enabled:=true;
    sComboBox12.Enabled:=true;
    Edit17.Enabled:=true;
end
else
begin
  sComboBox11.Enabled:=false;
    sComboBox12.Enabled:=false;
    Edit17.Enabled:=false;
end;

end;

end.
