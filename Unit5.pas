unit Unit5;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, sPanel, Vcl.StdCtrls,
  sEdit, Vcl.Imaging.pngimage, sComboBox, sLabel, sButton, Data.DB,
  Data.Win.ADODB, i18nDialogs;

type
  TForm5 = class(TForm)
    sPanel1: TsPanel;
    sPanel2: TsPanel;
    sPanel3: TsPanel;
    sLabel1: TsLabel;
    sComboBox1: TsComboBox;
    sLabel2: TsLabel;
    Image1: TImage;
    sEdit1: TsEdit;
    sLabel3: TsLabel;
    sLabel4: TsLabel;
    sComboBox2: TsComboBox;
    sComboBox3: TsComboBox;
    sLabel5: TsLabel;
    sComboBox4: TsComboBox;
    sButton1: TsButton;
    BalloonHint1: TBalloonHint;
    hpTableSD: TADOQuery;
    kwTableSD: TADOQuery;
    hpTableSF: TADOQuery;
    kwTableSF: TADOQuery;
    kwTableDLO: TADOQuery;
    hpTableDLO: TADOQuery;
    sPanel4: TsPanel;
    sLabel6: TsLabel;
    sEdit2: TsEdit;
    sLabel7: TsLabel;
    sComboBox5: TsComboBox;
    sComboBox6: TsComboBox;
    sLabel8: TsLabel;
    sLabel9: TsLabel;
    sComboBox7: TsComboBox;
    sButton2: TsButton;
    sLabelFX2: TsLabelFX;
    dlo: TADOQuery;
    star: TADOQuery;
    takfaz: TADOQuery;
    sLabel10: TsLabel;
    sLabel11: TsLabel;
    sLabel12: TsLabel;
    sLabel13: TsLabel;
    MessageDialog1: TMessageDialog;
    MessageDialog2: TMessageDialog;
    procedure sButton2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Image1MouseEnter(Sender: TObject);
    procedure Image1MouseLeave(Sender: TObject);
    procedure sComboBox1Select(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure sComboBox2Change(Sender: TObject);
    procedure sComboBox3Change(Sender: TObject);
    procedure sComboBox5Change(Sender: TObject);
    procedure sComboBox6Change(Sender: TObject);
    procedure sButton1Click(Sender: TObject);
    procedure sComboBox1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

{$R *.dfm}

uses Unit2, Unit1, Unit8;

procedure TForm5.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  BalloonHint1.HideHint;
  Form5.Hide;
end;

procedure TForm5.FormCreate(Sender: TObject);
var
  h: integer;
  l: integer;
  DecimalSeparator : char;
begin

  sComboBox5.Items.Clear;
  sComboBox6.Items.Clear;
  hpTableDLO.First;
  kwTableDLO.First;
  sComboBox5.Items.Insert(0, '');
  sComboBox6.Items.Insert(0, '');
  for h := 0 to hpTableDLO.RecordCount - 1 do
  begin
    if FloatToStr(hpTableDLO.FieldValues['tavanhp']) <> '' then
      sComboBox5.Items.Add(StringReplace(FloatToStr(hpTableDLO.FieldValues['tavanhp']),'/','.',[rfReplaceAll, rfIgnoreCase]));
    hpTableDLO.Next;
  end;
  for l := 0 to kwTableDLO.RecordCount - 1 do
  begin
    if FloatToStr(kwTableDLO.FieldValues['tavankw']) <> '' then
      sComboBox6.Items.Add(StringReplace(FloatToStr(kwTableDLO.FieldValues['tavankw']),'/','.',[rfReplaceAll, rfIgnoreCase]));
    kwTableDLO.Next;
  end;
end;

procedure TForm5.Image1MouseEnter(Sender: TObject);
begin
  BalloonHint1.Title := '';
  BalloonHint1.Description := 'فاصله الکترو موتور تا تابلو برق';
  BalloonHint1.ShowHint(Image1);
end;

procedure TForm5.Image1MouseLeave(Sender: TObject);
begin
  BalloonHint1.HideHint;
end;

procedure TForm5.sButton1Click(Sender: TObject);
var
  maghtaa: Double;
begin

  /// ///////Takfaz///////////
  if sComboBox1.Text = 'تک فاز' then
  begin
    if (sEdit1.Text <> '') and
      ((sComboBox2.Text <> '') or (sComboBox3.Text <> '')) then
    begin
      takfaz.SQL.Clear;
      if sComboBox3.Text <> '' then
      begin
        takfaz.SQL.Add('SELECT top 1 tavankw, (tolekabl- ' + sEdit1.Text +
          ') AS tool, sathemaghta FROM takfaz WHERE (((tavankw)=' +
          sComboBox3.Text + ') AND (((tolekabl- ' + sEdit1.Text + '))>=0));');
      end
      else if sComboBox2.Text <> '' then
      begin
        takfaz.SQL.Add('SELECT top 1 tavanhp, (tolekabl- ' + sEdit1.Text +
          ') AS tool, sathemaghta FROM takfaz WHERE (((tavanhp)=' +
          sComboBox2.Text + ') AND (((tolekabl- ' + sEdit1.Text + '))>=0));');
      end;
      takfaz.Open;
      if sComboBox4.Text = '<30' then
        maghtaa := takfaz.FieldValues['sathemaghta']
      else if sComboBox4.Text = '30 - 35' then
        maghtaa := (takfaz.FieldValues['sathemaghta'] * 100) / 98
      else if sComboBox4.Text = '35 - 40' then
        maghtaa := (takfaz.FieldValues['sathemaghta'] * 100) / 82
      else if sComboBox4.Text = '40 - 45' then
        maghtaa := (takfaz.FieldValues['sathemaghta'] * 100) / 71
      else if sComboBox4.Text = '45 - 50' then
        maghtaa := (takfaz.FieldValues['sathemaghta'] * 100) / 58
      else if sComboBox4.Text = '30 - 35' then
        maghtaa := (takfaz.FieldValues['sathemaghta'] * 100) / 41;
      if maghtaa > 0 then
        sLabel11.Caption := '3 x ' + FloatToStr(Round(maghtaa)) + ' mm²'
      else
        sLabel11.Caption := 'موجود نیست';
      sPanel3.Visible := true;
    end
    else
    begin
      MessageDialog1.Show('لطفا مقادیر را تکمیل کنید.', mtInformation, [mbOK]);
      exit;
    end;
  end;
  /// ///////DLO///////////////
  if sComboBox1.Text = 'D.O.L' then
  begin
    if (sEdit1.Text <> '') and
      ((sComboBox2.Text <> '') or (sComboBox3.Text <> '')) then
    begin
      dlo.SQL.Clear;
      if sComboBox3.Text <> '' then
      begin
        dlo.SQL.Add('SELECT top 1 tavankw, (tolekabl- ' + sEdit1.Text +
          ') AS tool, sathemaghta FROM dlo WHERE (((tavankw)=' + sComboBox3.Text
          + ') AND (((tolekabl- ' + sEdit1.Text + '))>=0));');
      end
      else if sComboBox2.Text <> '' then
      begin
        dlo.SQL.Add('SELECT top 1 tavanhp, (tolekabl- ' + sEdit1.Text +
          ') AS tool, sathemaghta FROM dlo WHERE (((tavanhp)=' + sComboBox2.Text
          + ') AND (((tolekabl- ' + sEdit1.Text + '))>=0));');
      end;
      dlo.Open;
      if sComboBox4.Text = '<30' then
        maghtaa := dlo.FieldValues['sathemaghta']
      else if sComboBox4.Text = '30 - 35' then
        maghtaa := (dlo.FieldValues['sathemaghta'] * 100) / 98
      else if sComboBox4.Text = '35 - 40' then
        maghtaa := (dlo.FieldValues['sathemaghta'] * 100) / 82
      else if sComboBox4.Text = '40 - 45' then
        maghtaa := (dlo.FieldValues['sathemaghta'] * 100) / 71
      else if sComboBox4.Text = '45 - 50' then
        maghtaa := (dlo.FieldValues['sathemaghta'] * 100) / 58
      else if sComboBox4.Text = '30 - 35' then
        maghtaa := (dlo.FieldValues['sathemaghta'] * 100) / 41;
      if maghtaa > 0 then
        sLabel11.Caption := '3 x ' + FloatToStr(Round(maghtaa)) + ' mm²'
      else
        sLabel11.Caption := 'موجود نیست';
      sPanel3.Visible := true;
    end
    else
    begin
      MessageDialog1.Show('لطفا مقادیر را تکمیل کنید.', mtInformation, [mbOK]);
      exit;
    end;
  end;
  /// //////////Star//////////
  if sComboBox1.Text = 'Star / Delta' then
  begin
    if (sEdit1.Text <> '') and
      ((sComboBox2.Text <> '') or (sComboBox3.Text <> '')) then
    begin
      star.SQL.Clear;
      if sComboBox3.Text <> '' then
      begin
        star.SQL.Add('SELECT top 1 tavankw, (tolekabl- ' + sEdit1.Text +
          ') AS tool, sathemaghta FROM setareh WHERE (((tavankw)=' +
          sComboBox3.Text + ') AND (((tolekabl- ' + sEdit1.Text + '))>=0));');
      end
      else if sComboBox2.Text <> '' then
      begin
        star.SQL.Add('SELECT top 1 tavanhp, (tolekabl- ' + sEdit1.Text +
          ') AS tool, sathemaghta FROM setareh WHERE (((tavanhp)=' +
          sComboBox2.Text + ') AND (((tolekabl- ' + sEdit1.Text + '))>=0));');
      end;
      star.Open;
      if sComboBox4.Text = '<30' then
        maghtaa := star.FieldValues['sathemaghta']
      else if sComboBox4.Text = '30 - 35' then
        maghtaa := (star.FieldValues['sathemaghta'] * 100) / 98
      else if sComboBox4.Text = '35 - 40' then
        maghtaa := (star.FieldValues['sathemaghta'] * 100) / 82
      else if sComboBox4.Text = '40 - 45' then
        maghtaa := (star.FieldValues['sathemaghta'] * 100) / 71
      else if sComboBox4.Text = '45 - 50' then
        maghtaa := (star.FieldValues['sathemaghta'] * 100) / 58
      else if sComboBox4.Text = '30 - 35' then
        maghtaa := (star.FieldValues['sathemaghta'] * 100) / 41;
      if maghtaa > 0 then
        sLabel11.Caption := '3 x ' + FloatToStr(Round(maghtaa)) + ' mm²'
      else
        sLabel11.Caption := 'موجود نیست';
      sPanel3.Visible := true;
    end
    else
    begin
      MessageDialog1.Show('لطفا مقادیر را تکمیل کنید.', mtInformation, [mbOK]);
      exit;
    end;
  end;
end;

procedure TForm5.sButton2Click(Sender: TObject);
var
  maghtaaa: Double;
begin
  if (sEdit2.Text <> '') and ((sComboBox5.Text <> '') or (sComboBox6.Text <> ''))
  then
  begin
    dlo.SQL.Clear;
    if sComboBox6.Text <> '' then
    begin
      dlo.SQL.Add('SELECT top 1 tavankw, (tolekabl- ' + sEdit1.Text +
        ') AS tool, sathemaghta FROM dlo WHERE (((tavankw)=' + sComboBox6.Text +
        ') AND (((tolekabl- ' + sEdit2.Text + '))>=0));');
    end
    else if sComboBox5.Text <> '' then
    begin
      dlo.SQL.Add('SELECT top 1 tavanhp, (tolekabl- ' + sEdit2.Text +
        ') AS tool, sathemaghta FROM dlo WHERE (((tavanhp)=' + sComboBox5.Text +
        ') AND (((tolekabl- ' + sEdit2.Text + '))>=0));');
    end;
    dlo.Open;
    if sComboBox7.Text = '<30' then
      maghtaaa := dlo.FieldValues['sathemaghta']
    else if sComboBox7.Text = '30 - 35' then
      maghtaaa := (dlo.FieldValues['sathemaghta'] * 100) / 98
    else if sComboBox7.Text = '35 - 40' then
      maghtaaa := (dlo.FieldValues['sathemaghta'] * 100) / 82
    else if sComboBox7.Text = '40 - 45' then
      maghtaaa := (dlo.FieldValues['sathemaghta'] * 100) / 71
    else if sComboBox7.Text = '45 - 50' then
      maghtaaa := (dlo.FieldValues['sathemaghta'] * 100) / 58
    else if sComboBox7.Text = '30 - 35' then
      maghtaaa := (dlo.FieldValues['sathemaghta'] * 100) / 41;
    if maghtaaa > 0 then
      sLabel12.Caption := '3 x ' + FloatToStr(Round(maghtaaa)) + ' mm²'
    else
      sLabel12.Caption := 'موجود نیست';
    sPanel4.Visible := true;
  end
  else
  begin
    MessageDialog1.Show('لطفا مقادیر را تکمیل کنید.', mtInformation, [mbOK]);
    exit;
  end;
end;

procedure TForm5.sComboBox1Change(Sender: TObject);
begin
  sPanel3.Visible := false;
end;

procedure TForm5.sComboBox1Select(Sender: TObject);
var
  i: integer;
  g: integer;
begin
  if sComboBox1.ItemIndex = 0 then
  begin
    sComboBox2.Items.Clear;
    sComboBox3.Items.Clear;
    hpTableSF.First;
    kwTableSF.First;
    sComboBox2.Items.Insert(0, '');
    sComboBox3.Items.Insert(0, '');
    for i := 0 to hpTableSF.RecordCount - 1 do
    begin
      if FloatToStr(hpTableSF.FieldValues['tavanhp']) <> '' then
        sComboBox2.Items.Add(StringReplace(FloatToStr(hpTableSF.FieldValues['tavanhp']),'/','.',[rfReplaceAll, rfIgnoreCase]));
      hpTableSF.Next;
    end;
    for g := 0 to kwTableSF.RecordCount - 1 do
    begin
      if FloatToStr(kwTableSF.FieldValues['tavankw']) <> '' then
        sComboBox3.Items.Add(StringReplace(FloatToStr(kwTableSF.FieldValues['tavankw']),'/','.',[rfReplaceAll, rfIgnoreCase]));
      kwTableSF.Next;
    end;
  end
  else if sComboBox1.ItemIndex = 1 then
  begin
    sComboBox2.Items.Clear;
    sComboBox3.Items.Clear;
    sComboBox2.Items.Insert(0, '');
    sComboBox3.Items.Insert(0, '');
    hpTableDLO.First;
    kwTableDLO.First;
    for i := 0 to hpTableDLO.RecordCount - 1 do
    begin
      if FloatToStr(hpTableDLO.FieldValues['tavanhp']) <> '' then
        sComboBox2.Items.Add(StringReplace(FloatToStr(hpTableDLO.FieldValues['tavanhp']),'/','.',[rfReplaceAll, rfIgnoreCase]));
      hpTableDLO.Next;
    end;
    for g := 0 to kwTableDLO.RecordCount - 1 do
    begin
      if FloatToStr(kwTableDLO.FieldValues['tavankw']) <> '' then
        sComboBox3.Items.Add(StringReplace(FloatToStr(kwTableDLO.FieldValues['tavankw']),'/','.',[rfReplaceAll, rfIgnoreCase]));
      kwTableDLO.Next;
    end;
  end
  else if sComboBox1.ItemIndex = 2 then
  begin
    sComboBox2.Items.Clear;
    sComboBox3.Items.Clear;
    sComboBox2.Items.Insert(0, '');
    sComboBox3.Items.Insert(0, '');
    hpTableSD.First;
    kwTableSD.First;
    for i := 0 to hpTableSD.RecordCount - 1 do
    begin
      if FloatToStr(hpTableSD.FieldValues['tavanhp']) <> '' then
        sComboBox2.Items.Add(StringReplace(FloatToStr(hpTableSD.FieldValues['tavanhp']),'/','.',[rfReplaceAll, rfIgnoreCase]));
      hpTableSD.Next;
    end;
    for g := 0 to kwTableSD.RecordCount - 1 do
    begin
      if FloatToStr(kwTableSD.FieldValues['tavankw']) <> '' then
        sComboBox3.Items.Add(StringReplace(FloatToStr(kwTableSD.FieldValues['tavankw']),'/','.',[rfReplaceAll, rfIgnoreCase]));
      kwTableSD.Next;
    end;
  end;
end;

procedure TForm5.sComboBox2Change(Sender: TObject);
begin
  if sComboBox2.Text <> '' then
    sComboBox3.Enabled := false
  else
    sComboBox3.Enabled := true;
end;

procedure TForm5.sComboBox3Change(Sender: TObject);
begin
  if sComboBox3.Text <> '' then
    sComboBox2.Enabled := false
  else
    sComboBox2.Enabled := true;
end;

procedure TForm5.sComboBox5Change(Sender: TObject);
begin
  if sComboBox5.Text <> '' then
    sComboBox6.Enabled := false
  else
    sComboBox6.Enabled := true;
end;

procedure TForm5.sComboBox6Change(Sender: TObject);
begin
  if sComboBox6.Text <> '' then
    sComboBox5.Enabled := false
  else
    sComboBox5.Enabled := true;
end;

end.
