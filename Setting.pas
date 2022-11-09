unit Setting;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, sButton, sLabel,
  sComboBox, inifiles;

type
  TForm9 = class(TForm)
    sComboBox1: TsComboBox;
    sLabel1: TsLabel;
    sButton1: TsButton;
    sLabel2: TsLabel;
    procedure sComboBox1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure sButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form9: TForm9;

implementation

{$R *.dfm}

uses Unit8;

function GetTempDirectory: String;
var
  tempFolder: array[0..MAX_PATH] of Char;
begin
  GetTempPath(MAX_PATH, @tempFolder);
  result := StrPas(tempFolder);
end;


procedure TForm9.FormCreate(Sender: TObject);
var
skincount:integer;
i:integer;
begin
skincount:=form8.sSkinManager1.InternalSkins.Count;
for i := 0 to skincount - 1 do
  begin
    //sComboBox1.Items.Add(StringReplace(FileListBox1.Items.Strings[i],'.asz','', [rfReplaceAll]));
    sComboBox1.Items.Add(StringReplace(form8.sSkinManager1.InternalSkins.Items[i].Name,'(internal)','-rayan',[rfReplaceAll]));
  end;
 ///sComboBox1.Text:= ADOTable1.FieldValues['theme'];
end;

procedure TForm9.FormShow(Sender: TObject);
var
   IniFile : TIniFile;
   comboName:string;
begin
   IniFile := TIniFile.Create(GetTempDirectory + '\config.ini') ;
comboName:= IniFile.ReadString('Section_Name', 'Skin_Name','');
sComboBox1.Text:=comboName;
end;

procedure TForm9.sButton1Click(Sender: TObject);
var
   IniFile : TIniFile;
begin
   IniFile := TIniFile.Create(GetTempDirectory + '\config.ini') ;
    try
    // Write a string value to the INI file.
    IniFile.WriteString('Section_Name', 'Skin_Name', sComboBox1.Text);
  finally
    IniFile.Free;
  end;
end;

procedure TForm9.sComboBox1Change(Sender: TObject);
begin
 Form8.sSkinManager1.SkinName:=StringReplace(sComboBox1.Text,'-rayan','(internal)',[rfReplaceAll]);
 form8.sSkinManager1.UpdateSkin(true);
end;

end.
