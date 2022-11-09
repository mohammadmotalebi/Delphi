unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, sEdit, Vcl.ExtCtrls, sPanel,
  Vcl.StdCtrls, sCheckBox, sComboBox, sButton, Vcl.Imaging.pngimage, acImage,
  AdvEdit, Vcl.DBCtrls, Data.DB, Data.Win.ADODB, acAlphaHints, AdvOfficeHint,
  sDBLookupComboBox, Vcl.ImgList, acAlphaImageList, AdvLabelEdit,
  sLabel, i18nDialogs, Vcl.Grids, Vcl.DBGrids;

type
  TForm1 = class(TForm)
    sCheckBox1: TsCheckBox;
    sCheckBox2: TsCheckBox;
    BalloonHint1: TBalloonHint;
    BalloonHint2: TBalloonHint;
    sPanel1: TsPanel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    ADOConnection1: TADOConnection;
    capaTable: TADOTable;
    headTable: TADOTable;
    perTable: TADOTable;
    ghotrTable: TADOTable;
    Edit7: TEdit;
    Edit10: TEdit;
    Edit12: TEdit;
    diaTable: TADOTable;
    Edit9: TEdit;
    Edit11: TEdit;
    Edit13: TEdit;
    Edit14: TEdit;
    sPanel2: TsPanel;
    Edit17: TEdit;
    Image4: TImage;
    Image3: TImage;
    Label20: TLabel;
    Label19: TLabel;
    Label18: TLabel;
    sComboBox1: TsComboBox;
    startTable: TADOTable;
    DataSource7: TDataSource;
    sButton1: TsButton;
    sAlphaImageList1: TsAlphaImageList;
    sButton2: TsButton;
    sComboBox7: TsComboBox;
    sComboBox8: TsComboBox;
    sComboBox11: TsComboBox;
    sComboBox12: TsComboBox;
    sComboBox13: TsComboBox;
    sComboBox14: TsComboBox;
    sComboBox15: TsComboBox;
    gloolTable: TADOTable;
    MessageDialog1: TMessageDialog;
    FLQuery: TADOQuery;
    LooleTable: TADOQuery;
    DataSource1: TDataSource;
    FLQuery1: TADOQuery;
    Panel1: TPanel;
    sImage25: TsImage;
    p: TsLabel;
    l: TsLabel;
    dn: TsLabel;
    hh: TsLabel;
    hd: TsLabel;
    dnn: TsLabel;
    hs: TsLabel;
    hg: TsLabel;
    q: TsLabel;
    ll: TsLabel;
    sPanel3: TsPanel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit8: TEdit;
    sComboBox10: TsComboBox;
    Image1: TImage;
    Image2: TImage;
    sComboBox2: TsComboBox;
    sComboBox3: TsComboBox;
    sComboBox4: TsComboBox;
    sComboBox5: TsComboBox;
    sComboBox9: TsComboBox;
    sComboBox6: TsComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1Exit(Sender: TObject);
    procedure sCheckBox1Click(Sender: TObject);
    procedure sCheckBox2Click(Sender: TObject);
    procedure Image1MouseEnter(Sender: TObject);
    procedure Image1MouseLeave(Sender: TObject);
    procedure Image2MouseEnter(Sender: TObject);
    procedure Image2MouseLeave(Sender: TObject);
    procedure Image3MouseEnter(Sender: TObject);
    procedure Image3MouseLeave(Sender: TObject);
    procedure Image4MouseEnter(Sender: TObject);
    procedure Image4MouseLeave(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
    procedure Edit5KeyPress(Sender: TObject; var Key: Char);
    procedure Edit6KeyPress(Sender: TObject; var Key: Char);
    procedure Edit8KeyPress(Sender: TObject; var Key: Char);
    procedure Edit7KeyPress(Sender: TObject; var Key: Char);
    procedure Edit10KeyPress(Sender: TObject; var Key: Char);
    procedure Edit12KeyPress(Sender: TObject; var Key: Char);
    procedure Edit9KeyPress(Sender: TObject; var Key: Char);
    procedure Edit11KeyPress(Sender: TObject; var Key: Char);
    procedure Edit13KeyPress(Sender: TObject; var Key: Char);
    procedure Edit14KeyPress(Sender: TObject; var Key: Char);
    procedure Edit17KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2Exit(Sender: TObject);
    procedure Edit3Exit(Sender: TObject);
    procedure Edit4Exit(Sender: TObject);
    procedure Edit5Exit(Sender: TObject);
    procedure Edit6Exit(Sender: TObject);
    procedure Edit8Exit(Sender: TObject);
    procedure Edit7Exit(Sender: TObject);
    procedure Edit10Exit(Sender: TObject);
    procedure Edit12Exit(Sender: TObject);
    procedure Edit9Exit(Sender: TObject);
    procedure Edit11Exit(Sender: TObject);
    procedure Edit13Exit(Sender: TObject);
    procedure Edit14Exit(Sender: TObject);
    procedure Edit17Exit(Sender: TObject);
    procedure sButton2Click(Sender: TObject);
    procedure sComboBox12Select(Sender: TObject);
    procedure sComboBox14Select(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Edit3Change(Sender: TObject);
    procedure Edit4Change(Sender: TObject);
    procedure Edit5Change(Sender: TObject);
    procedure Edit6Change(Sender: TObject);
    procedure sComboBox10Change(Sender: TObject);
    procedure Edit8Change(Sender: TObject);
    procedure Edit7Change(Sender: TObject);
    procedure sComboBox11Change(Sender: TObject);
    procedure Edit10Change(Sender: TObject);
    procedure sComboBox13Change(Sender: TObject);
    procedure sButton1Click(Sender: TObject);
    procedure sCheckBox1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure sComboBox2Select(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;
  qqq: Double;
  hss: Double;
  hdd: Double;
  hhh: Double;
  lll: Double;
  ppp: Double;
  hgg: Double;
  llll: Double;
  fll: Double;
  gch: string;
  iter: Integer;
  index: Integer;
  starttype: string;
  cablelenght: string;
  temp: string;

implementation

{$R *.dfm}

uses Unit2, Unit6;

procedure TForm1.Edit10Change(Sender: TObject);
begin
  if Edit10.Text <> '' then
  begin
    l.Visible := true;
    l.Caption := Edit10.Text + ' ' + sComboBox8.Text;
  end
  else
  begin
    l.Visible := false;
    l.Caption := '';
  end;
end;

procedure TForm1.Edit10Exit(Sender: TObject);
begin
  BalloonHint1.HideHint;
end;

procedure TForm1.Edit10KeyPress(Sender: TObject; var Key: Char);
begin
  if not(CharInSet(Key, ['0' .. '9', #8, #9])) then
  begin
    BalloonHint1.Title := '';
    BalloonHint1.Description :=
      'شما تنها مجاز به وارد کردن عدد در این قسمت می باشید!';
    BalloonHint1.ShowHint(Edit10);
    Abort; // this will prevent which the original windows hint was shown
  end
  else
  begin
    BalloonHint1.HideHint;
  end;
end;

procedure TForm1.Edit11Exit(Sender: TObject);
begin
  BalloonHint1.HideHint;
end;

procedure TForm1.Edit11KeyPress(Sender: TObject; var Key: Char);
begin
  if not(CharInSet(Key, ['0' .. '9', #8, #9])) then
  begin
    BalloonHint1.Title := '';
    BalloonHint1.Description :=
      'شما تنها مجاز به وارد کردن عدد در این قسمت می باشید!';
    BalloonHint1.ShowHint(Edit11);
    Abort; // this will prevent which the original windows hint was shown
  end
  else
  begin
    BalloonHint1.HideHint;
  end;
end;

procedure TForm1.Edit12Exit(Sender: TObject);
begin
  BalloonHint1.HideHint;
end;

procedure TForm1.Edit12KeyPress(Sender: TObject; var Key: Char);
begin
  if not(CharInSet(Key, ['0' .. '9', #8, #9])) then
  begin
    BalloonHint1.Title := '';
    BalloonHint1.Description :=
      'شما تنها مجاز به وارد کردن عدد در این قسمت می باشید!';
    BalloonHint1.ShowHint(Edit12);
    Abort; // this will prevent which the original windows hint was shown
  end
  else
  begin
    BalloonHint1.HideHint;
  end;
end;

procedure TForm1.Edit13Exit(Sender: TObject);
begin
  BalloonHint1.HideHint;
end;

procedure TForm1.Edit13KeyPress(Sender: TObject; var Key: Char);
begin
  if not(CharInSet(Key, ['0' .. '9', #8, #9])) then
  begin
    BalloonHint1.Title := '';
    BalloonHint1.Description :=
      'شما تنها مجاز به وارد کردن عدد در این قسمت می باشید!';
    BalloonHint1.ShowHint(Edit13);
    Abort; // this will prevent which the original windows hint was shown
  end
  else
  begin
    BalloonHint1.HideHint;
  end;
end;

procedure TForm1.Edit14Exit(Sender: TObject);
begin
  BalloonHint1.HideHint;
end;

procedure TForm1.Edit14KeyPress(Sender: TObject; var Key: Char);

begin
  if not(CharInSet(Key, ['0' .. '9', #8, #9])) then
  begin
    BalloonHint1.Title := '';
    BalloonHint1.Description :=
      'شما تنها مجاز به وارد کردن عدد در این قسمت می باشید!';
    BalloonHint1.ShowHint(Edit14);
    Abort; // this will prevent which the original windows hint was shown
  end
  else
  begin
    BalloonHint1.HideHint;
  end;
end;

procedure TForm1.Edit17Exit(Sender: TObject);
begin
  BalloonHint1.HideHint;
end;

procedure TForm1.Edit17KeyPress(Sender: TObject; var Key: Char);
begin
  if not(CharInSet(Key, ['0' .. '9', #8, #9])) then
  begin
    BalloonHint1.Title := '';
    BalloonHint1.Description :=
      'شما تنها مجاز به وارد کردن عدد در این قسمت می باشید!';
    BalloonHint1.ShowHint(Edit17);
    Abort; // this will prevent which the original windows hint was shown
  end
  else
  begin
    BalloonHint1.HideHint;
  end;
end;

procedure TForm1.Edit1Exit(Sender: TObject);
begin
  BalloonHint1.HideHint;
end;

procedure TForm1.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if not(CharInSet(Key, ['0' .. '9', #8, #9])) then
  begin
    BalloonHint1.Title := '';
    BalloonHint1.Description :=
      'شما تنها مجاز به وارد کردن عدد در این قسمت می باشید!';
    BalloonHint1.ShowHint(Edit1);
    Abort; // this will prevent which the original windows hint was shown
  end
  else
  begin
    BalloonHint1.HideHint;
  end;
end;

procedure TForm1.Edit2Exit(Sender: TObject);
begin
  BalloonHint1.HideHint;
end;

procedure TForm1.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if not(CharInSet(Key, ['0' .. '9', #8, #9])) then
  begin
    BalloonHint1.Title := '';
    BalloonHint1.Description :=
      'شما تنها مجاز به وارد کردن عدد در این قسمت می باشید!';
    BalloonHint1.ShowHint(Edit2);
    Abort; // this will prevent which the original windows hint was shown
  end
  else
  begin
    BalloonHint1.HideHint;
  end;
end;

procedure TForm1.Edit3Change(Sender: TObject);
begin
  if Edit3.Text <> '' then
  begin
    hs.Visible := true;
    hs.Caption := Edit3.Text + ' ' + sComboBox3.Text;
  end
  else
  begin
    hs.Visible := false;
    hs.Caption := '';
  end;
end;

procedure TForm1.Edit3Exit(Sender: TObject);
begin
  BalloonHint1.HideHint;
end;

procedure TForm1.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
  if not(CharInSet(Key, ['0' .. '9', #8, #9])) then
  begin
    BalloonHint1.Title := '';
    BalloonHint1.Description :=
      'شما تنها مجاز به وارد کردن عدد در این قسمت می باشید!';

    BalloonHint1.ShowHint(Edit3);
    Abort; // this will prevent which the original windows hint was shown
  end
  else
  begin
    BalloonHint1.HideHint;
  end;
end;

procedure TForm1.Edit4Change(Sender: TObject);
begin
  if Edit4.Text <> '' then
  begin
    hd.Visible := true;
    hd.Caption := Edit4.Text + ' ' + sComboBox4.Text;
  end
  else
  begin
    hd.Visible := false;
    hd.Caption := '';
  end;
end;

procedure TForm1.Edit4Exit(Sender: TObject);
begin
  BalloonHint1.HideHint;
end;

procedure TForm1.Edit4KeyPress(Sender: TObject; var Key: Char);
begin
  if not(CharInSet(Key, ['0' .. '9', #8, #9])) then
  begin
    BalloonHint1.Title := '';
    BalloonHint1.Description :=
      'شما تنها مجاز به وارد کردن عدد در این قسمت می باشید!';
    BalloonHint1.ShowHint(Edit4);
    Abort; // this will prevent which the original windows hint was shown
  end
  else
  begin
    BalloonHint1.HideHint;
  end;
end;

procedure TForm1.Edit5Change(Sender: TObject);
begin
  if Edit5.Text <> '' then
  begin
    hh.Visible := true;
    hh.Caption := Edit5.Text + ' ' + sComboBox5.Text;
  end
  else
  begin
    hh.Visible := false;
    hh.Caption := '';
  end;
end;

procedure TForm1.Edit5Exit(Sender: TObject);
begin
  BalloonHint1.HideHint;
end;

procedure TForm1.Edit5KeyPress(Sender: TObject; var Key: Char);
begin
  if not(CharInSet(Key, ['0' .. '9', #8, #9])) then
  begin
    BalloonHint1.Title := '';
    BalloonHint1.Description :=
      'شما تنها مجاز به وارد کردن عدد در این قسمت می باشید!';
    BalloonHint1.ShowHint(Edit5);
    Abort; // this will prevent which the original windows hint was shown
  end
  else
  begin
    BalloonHint1.HideHint;
  end;
end;

procedure TForm1.Edit6Change(Sender: TObject);
begin
  if Edit6.Text <> '' then
  begin
    p.Visible := true;
    p.Caption := Edit6.Text + ' ' + sComboBox9.Text;
  end
  else
  begin
    p.Visible := false;
    p.Caption := '';
  end;
end;

procedure TForm1.Edit6Exit(Sender: TObject);
begin
  BalloonHint1.HideHint;
end;

procedure TForm1.Edit6KeyPress(Sender: TObject; var Key: Char);
begin
  if not(CharInSet(Key, ['0' .. '9', #8, #9])) then
  begin
    BalloonHint1.Title := '';
    BalloonHint1.Description :=
      'شما تنها مجاز به وارد کردن عدد در این قسمت می باشید!';
    BalloonHint1.ShowHint(Edit6);
    Abort; // this will prevent which the original windows hint was shown
  end
  else
  begin
    BalloonHint1.HideHint;
  end;
end;

procedure TForm1.Edit7Change(Sender: TObject);
begin
  if Edit7.Text <> '' then
  begin
    hg.Visible := true;
    hg.Caption := Edit7.Text + ' ' + sComboBox7.Text;
  end
  else
  begin
    hg.Visible := false;
    hg.Caption := '';
  end;
end;

procedure TForm1.Edit7Exit(Sender: TObject);
begin
  BalloonHint1.HideHint;
end;

procedure TForm1.Edit7KeyPress(Sender: TObject; var Key: Char);
begin
  if not(CharInSet(Key, ['0' .. '9', #8, #9])) then
  begin
    BalloonHint1.Title := '';
    BalloonHint1.Description :=
      'شما تنها مجاز به وارد کردن عدد در این قسمت می باشید!';
    BalloonHint1.ShowHint(Edit7);
    Abort; // this will prevent which the original windows hint was shown
  end
  else
  begin
    BalloonHint1.HideHint;
  end;
end;

procedure TForm1.Edit8Change(Sender: TObject);
begin
  if Edit8.Text <> '' then
  begin
    ll.Visible := true;
    ll.Caption := Edit8.Text + ' ' + sComboBox6.Text;
  end
  else
  begin
    ll.Visible := false;
    ll.Caption := '';
  end;
end;

procedure TForm1.Edit8Exit(Sender: TObject);
begin
  BalloonHint1.HideHint;
end;

procedure TForm1.Edit8KeyPress(Sender: TObject; var Key: Char);
begin
  if not(CharInSet(Key, ['0' .. '9', #8, #9])) then
  begin
    BalloonHint1.Title := '';
    BalloonHint1.Description :=
      'شما تنها مجاز به وارد کردن عدد در این قسمت می باشید!';
    BalloonHint1.ShowHint(Edit8);
    Abort; // this will prevent which the original windows hint was shown
  end
  else
  begin
    BalloonHint1.HideHint;
  end;
end;

procedure TForm1.Edit9Exit(Sender: TObject);
begin
  BalloonHint1.HideHint;
end;

procedure TForm1.Edit9KeyPress(Sender: TObject; var Key: Char);
begin
  if not(CharInSet(Key, ['0' .. '9', #8, #9])) then
  begin
    BalloonHint1.Title := '';
    BalloonHint1.Description :=
      'شما تنها مجاز به وارد کردن عدد در این قسمت می باشید!';
    BalloonHint1.ShowHint(Edit9);
    Abort; // this will prevent which the original windows hint was shown
  end
  else
  begin
    BalloonHint1.HideHint;
  end;
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  BalloonHint1.HideHint;
  form2.AlphaBlendValue := 255;
  Form1.hide;
end;

procedure TForm1.FormCreate(Sender: TObject);
var
  i: Integer;
  j: Integer;
  h: Integer;
  f: Integer;
  g: Integer;
  l: Integer;
  s: Integer;
begin
ADOConnection1.Connected:=false;
ADOConnection1.ConnectionString:= '';
     ADOConnection1.ConnectionString := 'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source=' + ExtractFilePath(ParamStr(0)) + 'dimah1.mdb' + ';Persist Security Info=False;Jet OLEDB:Database Password=007test;Jet OLEDB:Engine Type=5;Jet OLEDB:Database Locking Mode=1;Jet OLEDB:Global Partial Bulk Ops=2;Jet OLEDB:Global Bulk Transactions=1';
     ADOConnection1.Connected:=true;
     startTable.Active:=true;
     capaTable.Active:=true;
     perTable.Active:=true;
     ghotrTable.Active:=true;
     diaTable.Active:=true;
     headTable.Active:=true;
     FLQuery.Active:=true;
     FLQuery1.Active:=true;
      LooleTable.Active:=true;
      gloolTable.Active:=true;
  for s := 0 to startTable.RecordCount - 1 do
  begin
    if startTable.FieldValues['startype'] <> '' then
      sComboBox15.Items.Add(startTable.FieldValues['startype']);
    startTable.Next;
  end;
  /// ///////////
  for i := 0 to capaTable.RecordCount - 1 do
  begin
    if capaTable.FieldValues['capacity'] <> '' then
      sComboBox2.Items.Add(capaTable.FieldValues['capacity']);
    capaTable.Next;
  end;
  /// ///////////
  for h := 0 to perTable.RecordCount - 1 do
  begin
    if perTable.FieldValues['hed'] <> '' then
      sComboBox9.Items.Add(perTable.FieldValues['hed']);
    perTable.Next;
  end;
  sComboBox9.Items.Delete(1);
  /// //////////////
  for f := 0 to ghotrTable.RecordCount - 1 do
  begin
    if ghotrTable.FieldValues['ghotrechah'] <> '' then
      sComboBox10.Items.Add(ghotrTable.FieldValues['ghotrechah']);
    ghotrTable.Next;
  end;
  /// ///////////
  for g := 0 to diaTable.RecordCount - 1 do
  begin
    if diaTable.FieldValues['diameter'] <> '' then
      sComboBox12.Items.Add(diaTable.FieldValues['diameter']);
    sComboBox14.Items.Add(diaTable.FieldValues['diameter']);
    diaTable.Next;
  end;
  /// ///////////
  for j := 0 to headTable.RecordCount - 1 do
  begin
    if headTable.FieldValues['hed'] <> '' then
      sComboBox3.Items.Add(headTable.FieldValues['hed']);
    sComboBox4.Items.Add(headTable.FieldValues['hed']);
    sComboBox5.Items.Add(headTable.FieldValues['hed']);
    sComboBox6.Items.Add(headTable.FieldValues['hed']);
    sComboBox7.Items.Add(headTable.FieldValues['hed']);
    sComboBox8.Items.Add(headTable.FieldValues['hed']);
    headTable.Next;
  end;
  /// ///////////
  sComboBox2.ItemIndex := 1;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
WindowState:=wsMaximized;
  sComboBox3.ItemIndex := 0;
  sComboBox4.ItemIndex := 0;
  sComboBox5.ItemIndex := 0;
  sComboBox9.ItemIndex := 1;
  sComboBox6.ItemIndex := 0;
  formname := '1';

end;

procedure TForm1.Image1MouseEnter(Sender: TObject);
begin
  BalloonHint1.Title := '';
  BalloonHint1.Description := 'عمق قرار گیری آب در چاه';
  BalloonHint1.ShowHint(Image1);
end;

procedure TForm1.Image1MouseLeave(Sender: TObject);
begin
  BalloonHint1.HideHint;
end;

procedure TForm1.Image2MouseEnter(Sender: TObject);
begin
  BalloonHint1.Title := '';
  BalloonHint1.Description := 'حداقل قرار گیری سطح آب در چاه';
  BalloonHint1.ShowHint(Image2);
end;

procedure TForm1.Image2MouseLeave(Sender: TObject);
begin
  BalloonHint1.HideHint;
end;

procedure TForm1.Image3MouseEnter(Sender: TObject);
begin
  BalloonHint1.Title := '';
  BalloonHint1.Description := 'فاصله الکترو موتور تا تابلو برق';
  BalloonHint1.ShowHint(Image3);
end;

procedure TForm1.Image3MouseLeave(Sender: TObject);
begin
  BalloonHint1.HideHint;
end;

procedure TForm1.Image4MouseEnter(Sender: TObject);
begin
  BalloonHint1.Title := '';
  BalloonHint1.Description :=
    'توجه داریم که عموما درجه حرارت داخل چاه بالاتر از 30 درجه سلسیوس می باشد' +
    sLineBreak +
    ' پس تنها در صورتی که کسر بزرگی از کابل بیرون از چاه می باشد درجه حرارت را تغییر دهید.';
  BalloonHint1.ShowHint(Image4);
end;

procedure TForm1.Image4MouseLeave(Sender: TObject);
begin
  BalloonHint1.HideHint;
end;

procedure TForm1.sButton1Click(Sender: TObject);
var
  fl1: Double;
  fl2: Double;
begin
  if Edit1.Text <> '' then
  begin
    if sComboBox2.Text = 'm3/h' then
      qqq := StrToFloat(Edit1.Text)
    else if sComboBox2.Text = 'l/s' then
      qqq := StrToFloat(Edit1.Text) * 3.6
    else if sComboBox2.Text = 'l/min' then
      qqq := StrToFloat(Edit1.Text) * 0.06
    else if sComboBox2.Text = 'imp.Gall/min' then
      qqq := StrToFloat(Edit1.Text) * 0.273
    else if sComboBox2.Text = 'US.Gall/min' then
      qqq := StrToFloat(Edit1.Text) * 0.227
    else if sComboBox2.Text = 'm3/day' then
      qqq := StrToFloat(Edit1.Text) / StrToFloat(Edit2.Text);
  end
  else
  begin
    MessageDialog1.Show('مقدار آبدهی را مشخص کنید!', mtInformation, [mbOK]);
    Edit1.SetFocus;
    exit;
  end;
  /// ////////
  if Edit3.Text <> '' then
  begin
    if sComboBox3.Text = 'm' then
      hss := StrToFloat(Edit3.Text)
    else if sComboBox3.Text = 'ft.' then
      hss := StrToFloat(Edit3.Text) * 0.3048;
  end;
  /// //
  if Edit4.Text <> '' then
  begin
    if sComboBox4.Text = 'm' then
      hdd := StrToFloat(Edit4.Text)
    else if sComboBox4.Text = 'ft.' then
      hdd := StrToFloat(Edit4.Text) * 0.3048;
  end
  else
  begin
    MessageDialog1.Show('مقدار هد دینامیک را تعیین کنید!',
      mtInformation, [mbOK]);
    Edit4.SetFocus;
    exit;
  end;
  /// //
  if Edit5.Text <> '' then
  begin
    if sComboBox5.Text = 'm' then
      hhh := StrToFloat(Edit5.Text)
    else if sComboBox5.Text = 'ft.' then
      hhh := StrToFloat(Edit5.Text) * 0.3048;
    hdd := hdd + hhh;
  end;
  /// //
  if Edit8.Text <> '' then
  begin
    if sComboBox6.Text = 'm' then
      lll := StrToFloat(Edit8.Text)
    else if sComboBox6.Text = 'ft.' then
      lll := StrToFloat(Edit8.Text) * 0.3048;
  end;
  /// //
  if Edit6.Text <> '' then
  begin
    if sComboBox9.Text = 'm' then
      ppp := StrToFloat(Edit6.Text)
    else if sComboBox9.Text = 'bar' then
      ppp := StrToFloat(Edit6.Text) * 10.2;
    hdd := hdd + ppp;
  end;
  /// /////////
  if sCheckBox1.State = cbChecked then
  begin
    if Edit10.Text <> '' then
    begin
      if sComboBox8.Text = 'm' then
        llll := StrToFloat(Edit10.Text)
      else if sComboBox8.Text = 'ft.' then
        llll := StrToFloat(Edit10.Text) * 0.3048;
    end;
    if Edit7.Text <> '' then
    begin
      if sComboBox7.Text = 'm' then
        hgg := StrToFloat(Edit7.Text)
      else if sComboBox7.Text = 'ft.' then
        hgg := StrToFloat(Edit7.Text) * 0.3048;
    end;
    if Edit7.Text <> '' then
    begin
      if StrToInt(Edit4.Text) > StrToInt(Edit7.Text) then
        MessageDialog1.Show('مقدار Hg باید بزرگتر از Hd باشد.',
          mtWarning, [mbOK]);
    end;
  end;
  if Edit3.Text <>''then
  begin
  if StrToInt(Edit3.Text) > StrToInt(Edit4.Text) then
  begin
    MessageDialog1.Show('مقدار Hs باید کوچکتر از Hd باشد.', mtWarning, [mbOK]);
    exit;
  end;
  end;
  /// ////////
  if sCheckBox1.State = cbChecked then
  begin
      if Edit7.Text <> '' then
    begin
      if sComboBox11.text = ''  then
    begin
           MessageDialog1.Show('مقدار DN را تعیین کنید!', mtWarning, [mbOK]);
           sComboBox11.SetFocus;
           abort;
    end;
    end;
    if Edit7.Text <> '' then
    begin
      if sComboBox12.Text = 'mm' then
      begin
        FLQuery.Close;
        FLQuery.SQL.Clear;
        FLQuery.SQL.Add('SELECT TOP 1 * from estekak where GHOTRELOLEH = ''' +
          sComboBox11.Text + ''' ORDER BY ABS(qm - ''' + Edit1.Text + ''')');
        FLQuery.Open;
        fl1 := ((StrToFloat(Edit7.Text)) / 100) * (FLQuery.FieldValues['hl']);
      end
      else if sComboBox12.Text = 'inch' then
      begin
        FLQuery.Close;
        FLQuery.SQL.Clear;
        FLQuery.SQL.Add('SELECT TOP 1 * from estekak where ghotrinch = ''' +
          sComboBox11.Text + ''' ORDER BY ABS(qm - ''' + Edit1.Text + ''')');
        FLQuery.Open;
        fl1 := ((StrToFloat(Edit7.Text)) / 100) * (FLQuery.FieldValues['hl']);
      end;
    end
    else
    begin
      sCheckBox1.State := cbUnchecked;
    end;

    if Edit10.Text <> '' then
    begin
      if sComboBox14.Text = 'mm' then
      begin
        FLQuery1.Close;
        FLQuery1.SQL.Clear;
        FLQuery1.SQL.Add('SELECT TOP 1 * from estekak where GHOTRELOLEH = ''' +
          sComboBox13.Text + ''' ORDER BY ABS(qm - ''' + Edit1.Text + ''')');
        FLQuery1.Open;
        fl2 := ((StrToFloat(Edit10.Text)) / 100) * (FLQuery1.FieldValues['hl']);
      end
      else if sComboBox14.Text = 'inch' then
      begin
        FLQuery1.Close;
        FLQuery1.SQL.Clear;
        FLQuery1.SQL.Add('SELECT TOP 1 * from estekak where ghotrinch = ''' +
          sComboBox13.Text + ''' ORDER BY ABS(qm - ''' + Edit1.Text + ''')');
        FLQuery1.Open;
        fl2 := ((StrToFloat(Edit10.Text)) / 100) * (FLQuery1.FieldValues['hl']);
      end
      else
      begin
        sCheckBox1.State := cbUnchecked;
      end;
    end;

    if (fl1 <> Null) and (fl2 = Null) then
      fll := fl1
    else if (fl2 <> Null) and (fl1 = Null) then
      fll := fl2
    else if (fl1 <> Null) and (fl2 <> Null) then
      fll := fl1 + fl2;

    if fll <> Null then
    begin
      if Edit12.Text <> '' then
        fll := fll + (StrToFloat(Edit12.Text) * 0.3);
      if Edit9.Text <> '' then
        fll := fll + (StrToFloat(Edit9.Text) * 0.1);
      if Edit11.Text <> '' then
        fll := fll + (StrToFloat(Edit11.Text) * 0.2);
      if Edit13.Text <> '' then
        fll := fll + (StrToFloat(Edit13.Text) * 0.8);
      if Edit14.Text <> '' then
        fll := fll + (StrToFloat(Edit14.Text) * 0.6);
    end;
    if fll <> Null then
    begin
      hdd := hdd + fll;
    end;
  end
  else
  begin
    fll := 0;
  end;
  if sCheckBox2.State = cbChecked then
  begin
    starttype := sComboBox15.Text;
    cablelenght := Edit17.Text;
    temp := sComboBox1.Text;
  end;
  form6.ShowModal;
end;

procedure TForm1.sButton2Click(Sender: TObject);
begin
  BalloonHint1.HideHint;
  Form1.Close;
  form2.AlphaBlendValue := 255;
end;

procedure TForm1.sCheckBox1Click(Sender: TObject);
var
  C: TsPanel;
  l: Integer;
begin
  if sCheckBox1.State = cbChecked then
  begin
    sPanel1.Enabled := true;
    sComboBox12.ItemIndex := 2;
    sComboBox14.ItemIndex := 2;
    sComboBox7.ItemIndex := 1;
    sComboBox8.ItemIndex := 1;
    LooleTable.SQL.Clear;
    LooleTable.SQL.Add('SELECT top 1 * FROM estekak order by abs(qm - ''' +
      Edit1.Text + ''')');
    LooleTable.Open;
    sComboBox11.Items.Clear;
    sComboBox11.Items.Insert(0, '');
    sComboBox13.Items.Clear;
    sComboBox13.Items.Insert(0, '');
    for l := 0 to LooleTable.RecordCount - 1 do
    begin
      if LooleTable.FieldValues['ghotreloleh'] <> '' then
        sComboBox11.Items.Add(LooleTable.FieldValues['ghotreloleh']);
      sComboBox13.Items.Add(LooleTable.FieldValues['ghotreloleh']);
      LooleTable.Next;
      for iter := sComboBox11.Items.Count - 1 downto 0 do
      begin
        index := sComboBox11.Items.IndexOf(sComboBox11.Items[iter]);
        if index < iter then
          sComboBox11.Items.Delete(iter);
      end;
      for iter := sComboBox13.Items.Count - 1 downto 0 do
      begin
        index := sComboBox13.Items.IndexOf(sComboBox13.Items[iter]);
        if index < iter then
          sComboBox13.Items.Delete(iter);
      end;
    end;
  end
  else
  begin
    sPanel1.Enabled := false;
    Edit7.Clear;
    Edit10.Clear;
    Edit12.Clear;
    Edit13.Clear;
    Edit9.Clear;
    Edit11.Clear;
    Edit14.Clear;
    sComboBox7.ItemIndex := 0;
    sComboBox8.ItemIndex := 0;
    sComboBox11.ItemIndex := 0;
    sComboBox12.ItemIndex := 0;
    sComboBox13.ItemIndex := 0;
    sComboBox14.ItemIndex := 0;
  end;
end;

procedure TForm1.sCheckBox1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if Edit1.Text = '' then
  begin
    if MessageDialog1.Show('مقدار آبدهی را وارد کنید.', mtWarning, [mbOK]) = mrOk
    then
    begin
      sCheckBox1.State := cbUnchecked;
      Edit1.SetFocus;
    end;
  end;
end;

procedure TForm1.sCheckBox2Click(Sender: TObject);
begin
  if sCheckBox2.State = cbChecked then
  begin
    sPanel2.Enabled := true;
  end
  else
  begin
    sPanel2.Enabled := false;
  end;
end;

procedure TForm1.sComboBox10Change(Sender: TObject);
begin
  if sComboBox10.Text <> '' then
  begin
    q.Visible := true;
    q.Caption := sComboBox10.Text + ' inch';
  end
  else
  begin
    q.Visible := false;
    q.Caption := '';
  end;
end;

procedure TForm1.sComboBox11Change(Sender: TObject);
begin
  if sComboBox11.Text <> '' then
  begin
    dnn.Visible := true;
    dnn.Caption := sComboBox11.Text + ' ' + sComboBox12.Text;
  end
  else
  begin
    dnn.Visible := false;
    dnn.Caption := '';
  end;
end;

procedure TForm1.sComboBox12Select(Sender: TObject);
var
  g: Integer;
  gg: Integer;
begin
  if sComboBox12.Text = 'mm' then
  begin
    sComboBox11.Items.Clear;
    LooleTable.Close;
    LooleTable.Open;
    LooleTable.First;
    sComboBox11.Items.Insert(0, '');
    for g := 0 to LooleTable.RecordCount - 1 do
    begin
      if LooleTable.FieldValues['ghotreloleh'] <> '' then
        sComboBox11.Items.Add(LooleTable.FieldValues['ghotreloleh']);
      LooleTable.Next;
    end;
  end;
  if sComboBox12.Text = 'inch' then
  begin
    sComboBox11.Items.Clear;
    LooleTable.Close;
    LooleTable.Open;
    LooleTable.First;
    sComboBox11.Items.Insert(0, '');
    for g := 0 to LooleTable.RecordCount - 1 do
    begin
      if LooleTable.FieldValues['ghotrinch'] <> '' then
        sComboBox11.Items.Add(LooleTable.FieldValues['ghotrinch']);
      LooleTable.Next;
    end;
  end;
  for iter := sComboBox11.Items.Count - 1 downto 0 do
  begin
    index := sComboBox11.Items.IndexOf(sComboBox11.Items[iter]);
    if index < iter then
      sComboBox11.Items.Delete(iter);
  end;
end;

procedure TForm1.sComboBox13Change(Sender: TObject);
begin
  if sComboBox13.Text <> '' then
  begin
    dn.Visible := true;
    dn.Caption := sComboBox13.Text + ' ' + sComboBox14.Text;
  end
  else
  begin
    dn.Visible := false;
    dn.Caption := '';
  end;
end;

procedure TForm1.sComboBox14Select(Sender: TObject);
var
  g: Integer;
  gg: Integer;
begin
  if sComboBox14.Text = 'mm' then
  begin
    sComboBox13.Items.Clear;
    LooleTable.Close;
    LooleTable.Open;
    LooleTable.First;
    sComboBox13.Items.Insert(0, '');
    for g := 0 to LooleTable.RecordCount - 1 do
    begin
      if LooleTable.FieldValues['ghotreloleh'] <> '' then
        sComboBox13.Items.Add(LooleTable.FieldValues['ghotreloleh']);
      LooleTable.Next;
    end;
  end;
  if sComboBox14.Text = 'inch' then
  begin
    sComboBox13.Items.Clear;
    LooleTable.Close;
    LooleTable.Open;
    LooleTable.First;
    sComboBox13.Items.Insert(0, '');
    for g := 0 to LooleTable.RecordCount - 1 do
    begin
      if LooleTable.FieldValues['ghotrinch'] <> '' then
        sComboBox13.Items.Add(LooleTable.FieldValues['ghotrinch']);
      LooleTable.Next;
    end;
  end;
  for iter := sComboBox13.Items.Count - 1 downto 0 do
  begin
    index := sComboBox13.Items.IndexOf(sComboBox13.Items[iter]);
    if index < iter then
      sComboBox13.Items.Delete(iter);
  end;
end;

procedure TForm1.sComboBox2Select(Sender: TObject);
begin
  if sComboBox2.Text = 'm3/day' then
    Edit2.Enabled := true
  else
    Edit2.Enabled := false;
end;

end.
