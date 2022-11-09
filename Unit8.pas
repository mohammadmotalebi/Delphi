unit Unit8;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, AdvShape, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
   sSkinManager, Vcl.StdCtrls, sButton, sSkinProvider,
  Vcl.ImgList, acAlphaImageList, AdvTrackBar,
  AdvSmoothSlideShow, Vcl.FileCtrl, ShellApi, Vcl.Buttons, sSpeedButton, acPNG,
  inifiles, Vcl.OleCtrls, sf_flash, acImage, AdvGlassButton, W7Classes, W7Images;

type
  TForm8 = class(TForm)
    sSkinManager1: TsSkinManager;
    sAlphaImageList1: TsAlphaImageList;
    AdvSmoothSlideShow1: TAdvSmoothSlideShow;
    FileListBox1: TFileListBox;
    sAlphaImageList2: TsAlphaImageList;
    sSpeedButton1: TsSpeedButton;
    Image4: TImage;
    sfFlashPlayer1: TsfFlashPlayer;
    sfFlashList1: TsfFlashList;
    Image1: TImage;
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    Shape4: TShape;
    Shape5: TShape;
    Shape6: TShape;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Shape7: TShape;
    Label7: TLabel;
    Image2: TImage;
    sfFlashPlayer2: TsfFlashPlayer;
    Image3: TImage;
    procedure FormShow(Sender: TObject);
    procedure sButton1Click(Sender: TObject);
    procedure sButton2Click(Sender: TObject);
    procedure sButton3Click(Sender: TObject);
    procedure sButton6Click(Sender: TObject);
    procedure sButton5Click(Sender: TObject);
    procedure sButton4Click(Sender: TObject);
    procedure sSpeedButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Shape1MouseEnter(Sender: TObject);
    procedure Shape1MouseLeave(Sender: TObject);
    procedure Shape2MouseEnter(Sender: TObject);
    procedure Shape2MouseLeave(Sender: TObject);
    procedure Shape3MouseEnter(Sender: TObject);
    procedure Shape3MouseLeave(Sender: TObject);
    procedure Shape4MouseEnter(Sender: TObject);
    procedure Shape4MouseLeave(Sender: TObject);
    procedure Shape5MouseEnter(Sender: TObject);
    procedure Shape5MouseLeave(Sender: TObject);
    procedure Shape6MouseEnter(Sender: TObject);
    procedure Shape6MouseLeave(Sender: TObject);
    procedure Shape1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Label1Click(Sender: TObject);
    procedure Shape2MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Label2Click(Sender: TObject);
    procedure Shape3MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Label3Click(Sender: TObject);
    procedure Shape4MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Label4Click(Sender: TObject);
    procedure Shape5MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Label5Click(Sender: TObject);
    procedure Shape6MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Label6Click(Sender: TObject);
    procedure Shape7MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Shape7MouseEnter(Sender: TObject);
    procedure Shape7MouseLeave(Sender: TObject);
    procedure Label7Click(Sender: TObject);
    procedure Image5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form8: TForm8;


implementation

{$R *.dfm}

uses Unit5, Unit2, Setting, Unit1;

function GetTempDirectory: String;
var
  tempFolder: array[0..MAX_PATH] of Char;
begin
  GetTempPath(MAX_PATH, @tempFolder);
  result := StrPas(tempFolder);
end;


procedure TForm8.FormClose(Sender: TObject; var Action: TCloseAction);
begin
sfFlashPlayer2.Destroy;
Application.Terminate;
end;

procedure TForm8.FormShow(Sender: TObject);
var
countItem : integer;
i:integer;
begin
 if form8.Showing = true then
 Shape1.pen.color:=TColor(RGB(0,134,219));
  Shape2.pen.color:=TColor(RGB(0,134,219));
   Shape3.pen.color:=TColor(RGB(0,134,219));
    Shape4.pen.color:=TColor(RGB(0,134,219));
     Shape5.pen.color:=TColor(RGB(0,134,219));
      Shape6.pen.color:=TColor(RGB(0,134,219));
      Shape7.pen.color:=TColor(RGB(0,134,219));
//ini := TIniFile.Create(GetTempDirectory + '\config.ini') ;
//try
//skinName := ini.ReadString('Section_Name', 'Skin_Name','');
//finally
//ini.Free;
//end;
 sfFlashPlayer1.FlashIndex:=0;
  //AddFontResource(Pchar(ExtractFilePath(ParamStr(0)) + '\Fonts\BNAZANB.TTF'));
   //SendMessage(HWND_BROADCAST, WM_FONTCHANGE, 0, 0);
     //AddFontResource(Pchar(ExtractFilePath(ParamStr(0)) + '\Fonts\BNAZANIN.TTF'));
   //SendMessage(HWND_BROADCAST, WM_FONTCHANGE, 0, 0);
       // AddFontResource(Pchar(ExtractFilePath(ParamStr(0)) + '\Fonts\BFARNAZ.TTF'));
  // SendMessage(HWND_BROADCAST, WM_FONTCHANGE, 0, 0);
 //sSkinManager1.SkinName:=StringReplace(skinName,'-rayan','(internal)',[rfReplaceAll]);
WindowState:=wsMaximized;
with Screen.WorkAreaRect do
  Form8.SetBounds(Left, Top, Right - Left, Bottom - Top);
begin
FileListBox1.Clear;
FileListBox1.Directory:=ExtractFilePath(ParamStr(0)) + 'Pic\slide';
AdvSmoothSlideShow1.Items.Clear;
countItem:=FileListBox1.Items.Count;
for I := 0 to countItem -1 do
begin
  FileListBox1.ItemIndex:= i;
  AdvSmoothSlideShow1.Items.Add;
  AdvSmoothSlideShow1.Items.Items[i].Image.LoadFromFile(ExtractFilePath(ParamStr(0)) + 'Pic\slide\' + FileListBox1.Items[FileListBox1.ItemIndex]);
  FileListBox1.ItemIndex:=i+1;
end;
end;
end;

procedure TForm8.Image5Click(Sender: TObject);
begin

//sAlphaImageList1.GetBitmap(1,Image6.Picture.Bitmap);

end;

procedure TForm8.Label1Click(Sender: TObject);
var
countItem : integer;
i:integer;
begin
FileListBox1.Clear;
FileListBox1.Directory:=ExtractFilePath(ParamStr(0)) + 'Pic\1';
AdvSmoothSlideShow1.Items.Clear;
countItem:=FileListBox1.Items.Count;
for I := 0 to countItem -1 do
begin
  FileListBox1.ItemIndex:= i;
  AdvSmoothSlideShow1.Items.Add;
  AdvSmoothSlideShow1.Items.Items[i].Image.LoadFromFile(ExtractFilePath(ParamStr(0)) + 'Pic\1\' + FileListBox1.Items[FileListBox1.ItemIndex]);
  FileListBox1.ItemIndex:=i+1;
end;
   ShellExecute(0, 'open', 'acrord32',
    PChar(ExtractFilePath(ParamStr(0)) + 'shortcuts\1.pdf'), nil, SW_HIDE);
end;

procedure TForm8.Label2Click(Sender: TObject);
var
countItem : integer;
i:integer;
begin
FileListBox1.Clear;
FileListBox1.Directory:=ExtractFilePath(ParamStr(0)) + 'Pic\2';
AdvSmoothSlideShow1.Items.Clear;
countItem:=FileListBox1.Items.Count;
for I := 0 to countItem -1 do
begin
  FileListBox1.ItemIndex:= i;
  AdvSmoothSlideShow1.Items.Add;
  AdvSmoothSlideShow1.Items.Items[i].Image.LoadFromFile(ExtractFilePath(ParamStr(0)) + 'Pic\2\' + FileListBox1.Items[FileListBox1.ItemIndex]);
  FileListBox1.ItemIndex:=i+1;
end;
   ShellExecute(0, 'open', 'acrord32',
    PChar(ExtractFilePath(ParamStr(0)) + 'shortcuts\2.pdf'), nil, SW_HIDE);
end;

procedure TForm8.Label3Click(Sender: TObject);
var
countItem : integer;
i:integer;
begin
FileListBox1.Clear;
FileListBox1.Directory:=ExtractFilePath(ParamStr(0)) + 'Pic\3';
AdvSmoothSlideShow1.Items.Clear;
countItem:=FileListBox1.Items.Count;
for I := 0 to countItem -1 do
begin
  FileListBox1.ItemIndex:= i;
  AdvSmoothSlideShow1.Items.Add;
  AdvSmoothSlideShow1.Items.Items[i].Image.LoadFromFile(ExtractFilePath(ParamStr(0)) + 'Pic\3\' + FileListBox1.Items[FileListBox1.ItemIndex]);
  FileListBox1.ItemIndex:=i+1;
end;
   ShellExecute(0, 'open', 'acrord32',
    PChar(ExtractFilePath(ParamStr(0)) + 'shortcuts\3.pdf'), nil, SW_HIDE);
end;

procedure TForm8.Label4Click(Sender: TObject);
var
countItem : integer;
i:integer;
begin
FileListBox1.Clear;
FileListBox1.Directory:=ExtractFilePath(ParamStr(0)) + 'Pic\4';
AdvSmoothSlideShow1.Items.Clear;
countItem:=FileListBox1.Items.Count;
for I := 0 to countItem -1 do
begin
  FileListBox1.ItemIndex:= i;
  AdvSmoothSlideShow1.Items.Add;
  AdvSmoothSlideShow1.Items.Items[i].Image.LoadFromFile(ExtractFilePath(ParamStr(0)) + 'Pic\4\' + FileListBox1.Items[FileListBox1.ItemIndex]);
  FileListBox1.ItemIndex:=i+1;
end;
   ShellExecute(0, 'open', 'acrord32',
    PChar(ExtractFilePath(ParamStr(0)) + 'shortcuts\4.pdf'), nil, SW_HIDE);
end;

procedure TForm8.Label5Click(Sender: TObject);
begin
form2.ShowModal;
end;

procedure TForm8.Label6Click(Sender: TObject);
begin
  form5 := TForm5.Create(nil);
  form5.ShowModal;
end;

procedure TForm8.Label7Click(Sender: TObject);
begin
sfFlashPlayer1.Destroy;
Application.Terminate;
end;

procedure TForm8.sButton1Click(Sender: TObject);
var
countItem : integer;
i:integer;
begin
FileListBox1.Clear;
FileListBox1.Directory:=ExtractFilePath(ParamStr(0)) + 'Pic\1';
AdvSmoothSlideShow1.Items.Clear;
countItem:=FileListBox1.Items.Count;
for I := 0 to countItem -1 do
begin
  FileListBox1.ItemIndex:= i;
  AdvSmoothSlideShow1.Items.Add;
  AdvSmoothSlideShow1.Items.Items[i].Image.LoadFromFile(ExtractFilePath(ParamStr(0)) + 'Pic\1\' + FileListBox1.Items[FileListBox1.ItemIndex]);
  FileListBox1.ItemIndex:=i+1;
end;
   ShellExecute(0, 'open', 'acrord32',
    PChar(ExtractFilePath(ParamStr(0)) + 'shortcuts\1.pdf'), nil, SW_HIDE);
end;

procedure TForm8.sButton2Click(Sender: TObject);
var
countItem : integer;
i:integer;
begin
FileListBox1.Clear;
FileListBox1.Directory:=ExtractFilePath(ParamStr(0)) + '\Pic\2';
AdvSmoothSlideShow1.Items.Clear;
countItem:=FileListBox1.Items.Count;
for I := 0 to countItem -1 do
begin
  FileListBox1.ItemIndex:= i;
  AdvSmoothSlideShow1.Items.Add;
  AdvSmoothSlideShow1.Items.Items[i].Image.LoadFromFile(ExtractFilePath(ParamStr(0)) + 'Pic\2\' + FileListBox1.Items[FileListBox1.ItemIndex]);
  FileListBox1.ItemIndex:=i+1;
end;
   ShellExecute(0, 'open', 'acrord32',
    PChar(ExtractFilePath(ParamStr(0)) + 'shortcuts\2.pdf'), nil, SW_HIDE);
end;

procedure TForm8.sButton3Click(Sender: TObject);
var
countItem : integer;
i:integer;
begin
FileListBox1.Clear;
FileListBox1.Directory:=ExtractFilePath(ParamStr(0)) + 'Pic\3';
AdvSmoothSlideShow1.Items.Clear;
countItem:=FileListBox1.Items.Count;
for I := 0 to countItem -1 do
begin
  FileListBox1.ItemIndex:= i;
  AdvSmoothSlideShow1.Items.Add;
  AdvSmoothSlideShow1.Items.Items[i].Image.LoadFromFile(ExtractFilePath(ParamStr(0)) + 'Pic\3\' + FileListBox1.Items[FileListBox1.ItemIndex]);
  FileListBox1.ItemIndex:=i+1;
end;
   ShellExecute(0, 'open', 'acrord32',
    PChar(ExtractFilePath(ParamStr(0)) + 'shortcuts\3.pdf'), nil, SW_HIDE);
end;

procedure TForm8.sButton4Click(Sender: TObject);
begin
form2.ShowModal;
end;

procedure TForm8.sButton5Click(Sender: TObject);
begin
  form5 := TForm5.Create(nil);
  Form8.AlphaBlendValue := 0;
  form5.ShowModal;
end;

procedure TForm8.sButton6Click(Sender: TObject);
begin
form8.Close;
end;

procedure TForm8.Shape1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var
countItem : integer;
i:integer;
begin
if Button = mbLeft then
begin
FileListBox1.Clear;
FileListBox1.Directory:=ExtractFilePath(ParamStr(0)) + 'Pic\1';
AdvSmoothSlideShow1.Items.Clear;
countItem:=FileListBox1.Items.Count;
for I := 0 to countItem -1 do
begin
  FileListBox1.ItemIndex:= i;
  AdvSmoothSlideShow1.Items.Add;
  AdvSmoothSlideShow1.Items.Items[i].Image.LoadFromFile(ExtractFilePath(ParamStr(0)) + 'Pic\1\' + FileListBox1.Items[FileListBox1.ItemIndex]);
  FileListBox1.ItemIndex:=i+1;
end;
   ShellExecute(0, 'open', 'acrord32',
    PChar(ExtractFilePath(ParamStr(0)) + 'shortcuts\1.pdf'), nil, SW_HIDE);
end;
end;

procedure TForm8.Shape1MouseEnter(Sender: TObject);
begin
shape1.brush.Color:=TColor(Rgb(224,228,255));
//shape1.Left:=shape1.Left-15;
//sfFlashPlayer2.FlashIndex:=1;
end;

procedure TForm8.Shape1MouseLeave(Sender: TObject);
begin
shape1.brush.Color:=TColor(Rgb(255,255,255));
//shape1.Left:=shape1.Left+15;
end;

procedure TForm8.Shape2MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var
countItem : integer;
i:integer;
begin
if Button = mbLeft then
begin
FileListBox1.Clear;
FileListBox1.Directory:=ExtractFilePath(ParamStr(0)) + 'Pic\2';
AdvSmoothSlideShow1.Items.Clear;
countItem:=FileListBox1.Items.Count;
for I := 0 to countItem -1 do
begin
  FileListBox1.ItemIndex:= i;
  AdvSmoothSlideShow1.Items.Add;
  AdvSmoothSlideShow1.Items.Items[i].Image.LoadFromFile(ExtractFilePath(ParamStr(0)) + 'Pic\2\' + FileListBox1.Items[FileListBox1.ItemIndex]);
  FileListBox1.ItemIndex:=i+1;
end;
   ShellExecute(0, 'open', 'acrord32',
    PChar(ExtractFilePath(ParamStr(0)) + 'shortcuts\2.pdf'), nil, SW_HIDE);
end;
end;

procedure TForm8.Shape2MouseEnter(Sender: TObject);
begin
shape2.brush.Color:=TColor(Rgb(224,228,255));
//shape2.Left:=shape2.Left-15;
end;

procedure TForm8.Shape2MouseLeave(Sender: TObject);
begin
shape2.brush.Color:=TColor(Rgb(255,255,255));
//shape2.Left:=shape2.Left+15;
end;

procedure TForm8.Shape3MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var
countItem : integer;
i:integer;
begin
if Button = mbLeft then
begin
FileListBox1.Clear;
FileListBox1.Directory:=ExtractFilePath(ParamStr(0)) + 'Pic\3';
AdvSmoothSlideShow1.Items.Clear;
countItem:=FileListBox1.Items.Count;
for I := 0 to countItem -1 do
begin
  FileListBox1.ItemIndex:= i;
  AdvSmoothSlideShow1.Items.Add;
  AdvSmoothSlideShow1.Items.Items[i].Image.LoadFromFile(ExtractFilePath(ParamStr(0)) + 'Pic\3\' + FileListBox1.Items[FileListBox1.ItemIndex]);
  FileListBox1.ItemIndex:=i+1;
end;
   ShellExecute(0, 'open', 'acrord32',
    PChar(ExtractFilePath(ParamStr(0)) + 'shortcuts\3.pdf'), nil, SW_HIDE);
end;
end;

procedure TForm8.Shape3MouseEnter(Sender: TObject);
begin
//shape3.Left:=shape3.Left-15;
shape3.brush.Color:=TColor(Rgb(224,228,255));
end;

procedure TForm8.Shape3MouseLeave(Sender: TObject);
begin
shape3.brush.Color:=TColor(Rgb(255,255,255));
//shape3.Left:=shape3.Left+15;
end;

procedure TForm8.Shape4MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var
countItem : integer;
i:integer;
begin
 if Button = mbLeft then
begin
FileListBox1.Clear;
FileListBox1.Directory:=ExtractFilePath(ParamStr(0)) + 'Pic\4';
AdvSmoothSlideShow1.Items.Clear;
countItem:=FileListBox1.Items.Count;
for I := 0 to countItem -1 do
begin
  FileListBox1.ItemIndex:= i;
  AdvSmoothSlideShow1.Items.Add;
  AdvSmoothSlideShow1.Items.Items[i].Image.LoadFromFile(ExtractFilePath(ParamStr(0)) + 'Pic\4\' + FileListBox1.Items[FileListBox1.ItemIndex]);
  FileListBox1.ItemIndex:=i+1;
end;
   ShellExecute(0, 'open', 'acrord32',
    PChar(ExtractFilePath(ParamStr(0)) + 'shortcuts\4.pdf'), nil, SW_HIDE);
end;
end;

procedure TForm8.Shape4MouseEnter(Sender: TObject);
begin
//shape4.Left:=shape4.Left-15;
shape4.brush.Color:=TColor(Rgb(224,228,255));
end;

procedure TForm8.Shape4MouseLeave(Sender: TObject);
begin
//shape4.Left:=shape4.Left+15;
shape4.brush.Color:=TColor(Rgb(255,255,255));
end;

procedure TForm8.Shape5MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
if Button = mbLeft then
form2.ShowModal;
end;

procedure TForm8.Shape5MouseEnter(Sender: TObject);
begin
//shape5.Left:=shape5.Left-15;
shape5.brush.Color:=TColor(Rgb(224,228,255));
end;

procedure TForm8.Shape5MouseLeave(Sender: TObject);
begin
//shape5.Left:=shape5.Left+15;
shape5.brush.Color:=TColor(Rgb(255,255,255));
end;

procedure TForm8.Shape6MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
if Button = mbLeft then
   begin
  form5 := TForm5.Create(nil);
  form5.ShowModal;
   end;
end;

procedure TForm8.Shape6MouseEnter(Sender: TObject);
begin
//shape6.Left:=shape6.Left-15;
shape6.brush.Color:=TColor(Rgb(224,228,255));
end;

procedure TForm8.Shape6MouseLeave(Sender: TObject);
begin
//shape6.Left:=shape6.Left+15;
shape6.brush.Color:=TColor(Rgb(255,255,255));
end;

procedure TForm8.Shape7MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
if Button = mbLeft then
begin
sfFlashPlayer1.Destroy;
close;
end;
end;

procedure TForm8.Shape7MouseEnter(Sender: TObject);
begin
 shape7.brush.Color:=TColor(Rgb(224,228,255));
end;

procedure TForm8.Shape7MouseLeave(Sender: TObject);
begin
shape7.brush.Color:=TColor(Rgb(255,255,255));
end;

procedure TForm8.sSpeedButton1Click(Sender: TObject);
begin
form9.ShowModal;
end;
end.
