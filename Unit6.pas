unit Unit6;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Samples.Spin,
  AdvShape,
  sLabel, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, Data.DB,
  Data.Win.ADODB, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, Vcl.Grids,
  Vcl.DBGrids, acDBGrid, Vcl.ExtCtrls, acImage, Vcl.Imaging.pngimage, EhLibADO,
  DBVertGridsEh, sDBText, sPanel, Vcl.DBCtrls, AdvSmoothLabel, DBAdvSmoothLabel,
  VCLTee.TeEngine, VCLTee.Series, VCLTee.TeeProcs, VCLTee.Chart, VCLTee.DBChart,
  VCLTee.TeeData, Vcl.ImgList, acAlphaImageList, ShellApi, VclTee.TeeGDIPlus, sButton;

type
  TForm6 = class(TForm)
    Label1: TLabel;
    AdvShape1: TAdvShape;
    sLabel1: TsLabel;
    Label2: TLabel;
    AdvShape2: TAdvShape;
    sLabel2: TsLabel;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    AdvShape3: TAdvShape;
    Label3: TLabel;
    sLabel3: TsLabel;
    DBGridEh1: TDBGridEh;
    AdvShape4: TAdvShape;
    AdvShape5: TAdvShape;
    Label4: TLabel;
    sLabel4: TsLabel;
    Label5: TLabel;
    sLabel5: TsLabel;
    AdvShape6: TAdvShape;
    Label6: TLabel;
    sLabel6: TsLabel;
    sPanel1: TsPanel;
    sLabel7: TsLabel;
    sLabel9: TsLabel;
    sLabel10: TsLabel;
    sLabel11: TsLabel;
    sLabel12: TsLabel;
    sLabel13: TsLabel;
    sLabel14: TsLabel;
    sLabel15: TsLabel;
    sLabel16: TsLabel;
    sLabel17: TsLabel;
    sLabel18: TsLabel;
    sLabel19: TsLabel;
    sLabel20: TsLabel;
    sLabel21: TsLabel;
    sLabel22: TsLabel;
    sLabel23: TsLabel;
    sLabel24: TsLabel;
    sLabel25: TsLabel;
    sLabel26: TsLabel;
    sLabel27: TsLabel;
    DBAdvSmoothLabel9: TDBAdvSmoothLabel;
    DBChart1: TDBChart;
    Series2: TLineSeries;
    ADOQuery2: TADOQuery;
    Panel1: TPanel;
    sImage1: TsImage;
    l1: TsLabel;
    p1: TsLabel;
    hh1: TsLabel;
    hd1: TsLabel;
    dn1: TsLabel;
    dnn1: TsLabel;
    hs1: TsLabel;
    hg1: TsLabel;
    ll1: TsLabel;
    q1: TsLabel;
    Panel2: TPanel;
    sImage2: TsImage;
    p2: TsLabel;
    hd2: TsLabel;
    dnn2: TsLabel;
    hh2: TsLabel;
    hs2: TsLabel;
    hg2: TsLabel;
    ll2: TsLabel;
    q2: TsLabel;
    Panel3: TPanel;
    sImage3: TsImage;
    hh3: TsLabel;
    hd3: TsLabel;
    dnn3: TsLabel;
    hs3: TsLabel;
    hg3: TsLabel;
    ll3: TsLabel;
    q3: TsLabel;
    sDBText1: TsDBText;
    sDBText2: TsDBText;
    sDBText3: TsDBText;
    sLabel8: TsLabel;
    sLabel28: TsLabel;
    sDBText4: TsDBText;
    sLabel29: TsLabel;
    sDBText5: TsDBText;
    sDBText6: TsDBText;
    sDBText7: TsDBText;
    sDBText8: TsDBText;
    sLabel30: TsLabel;
    sLabel31: TsLabel;
    sDBText9: TsDBText;
    sDBText10: TsDBText;
    sLabel32: TsLabel;
    sDBText11: TsDBText;
    sDBText12: TsDBText;
    sDBText13: TsDBText;
    sDBText14: TsDBText;
    sLabel33: TsLabel;
    sLabel34: TsLabel;
    sDBText15: TsDBText;
    sLabel35: TsLabel;
    sDBText16: TsDBText;
    sLabel36: TsLabel;
    sDBText17: TsDBText;
    star: TADOQuery;
    dlo: TADOQuery;
    sAlphaImageList1: TsAlphaImageList;
    Label7: TLabel;
    sButton6: TsButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure ADOQuery1AfterScroll(DataSet: TDataSet);
    procedure DBGridEh1Columns9EditButtons0Click(Sender: TObject;
      var Handled: Boolean);
    procedure sButton6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

{$R *.dfm}

uses Unit1, Unit2, Unit3, Unit4, Unit5;

procedure TForm6.ADOQuery1AfterScroll(DataSet: TDataSet);
var
  maghdlo: Double;
  maghstar: Double;
  tmpStr: string;
  ttstr: string;
  commaPosition: integer;
  slashPosition: integer;
begin
  tmpStr := ADOQuery1.FieldValues['tippomp'];
  ttstr := ADOQuery1.FieldValues['tippomp'];
  commaPosition := pos('-', tmpStr);
  slashPosition := pos('/', ttstr);
  if (commaPosition > 0) or (slashPosition > 0) then
  begin
    SetLength(tmpStr, commaPosition - 1);
    SetLength(ttstr, slashPosition - 1);
    if tmpStr <> '' then
      Label7.Caption := tmpStr
    else if ttstr <> '' then
      Label7.Caption := ttstr;
  end;
  if ADOQuery1.RecordCount > 0 then
  begin
    ADOQuery2.SQL.Clear;
    ADOQuery2.SQL.Add
      ('SELECT tippomp, abdehy, ertefa FROM table3 where tippomp = ''' +
      ADOQuery1.FieldValues['tippomp'] + '''');
    ADOQuery2.Open;
    if starttype = 'D.O.L' then
    begin
      dlo.SQL.Clear;
      dlo.SQL.Add('SELECT top 1 tavanhp, (tolekabl- ' + cablelenght +
        ') AS tool, sathemaghta FROM dlo WHERE (((tavanhp)=' +
        ADOQuery1.FieldByName('kw').AsString + ') AND (((tolekabl- ' +
        cablelenght + '))>=0));');
      dlo.Open;
      if dlo.RecordCount > 0 then
      begin
        if temp = '<30' then
          maghdlo := dlo.FieldValues['sathemaghta']
        else if temp = '30 - 35' then
          maghdlo := (dlo.FieldValues['sathemaghta'] * 100) / 98
        else if temp = '35 - 40' then
          maghdlo := (dlo.FieldValues['sathemaghta'] * 100) / 82
        else if temp = '40 - 45' then
          maghdlo := (dlo.FieldValues['sathemaghta'] * 100) / 71
        else if temp = '45 - 50' then
          maghdlo := (dlo.FieldValues['sathemaghta'] * 100) / 58
        else if temp = '30 - 35' then
          maghdlo := (dlo.FieldValues['sathemaghta'] * 100) / 41;
        if maghdlo > 0 then
          sLabel33.Caption := '3 x ' + FloatToStr(Round(maghdlo)) + ' mm²';
      end
      else
      begin
        sLabel33.Caption := '----';
      end;
    end
    else if starttype = 'Star/Delta' then
    begin
      star.SQL.Clear;
      star.SQL.Add('SELECT top 1 tavanhp, (tolekabl- ' + cablelenght +
        ') AS tool, sathemaghta FROM setareh WHERE (((tavanhp)=' +
        ADOQuery1.FieldByName('hp').AsString + ') AND (((tolekabl- ' +
        cablelenght + '))>=0));');
      star.Open;
      if star.RecordCount > 0 then
      begin
        if temp = '<30' then
          maghstar := star.FieldValues['sathemaghta']
        else if temp = '30 - 35' then
          maghstar := (star.FieldValues['sathemaghta'] * 100) / 98
        else if temp = '35 - 40' then
          maghstar := (star.FieldValues['sathemaghta'] * 100) / 82
        else if temp = '40 - 45' then
          maghstar := (star.FieldValues['sathemaghta'] * 100) / 71
        else if temp = '45 - 50' then
          maghstar := (star.FieldValues['sathemaghta'] * 100) / 58
        else if temp = '30 - 35' then
          maghstar := (star.FieldValues['sathemaghta'] * 100) / 41;
        if maghstar > 0 then
          sLabel33.Caption := '3 x ' + FloatToStr(Round(maghstar)) + ' mm²';
      end
      else
      begin
        sLabel33.Caption := '----';
      end;
    end;
  end;
end;

procedure TForm6.DBGridEh1Columns9EditButtons0Click(Sender: TObject;
  var Handled: Boolean);
begin
  ShellExecute(0, 'open', 'acrord32',
    PChar(ExtractFilePath(ParamStr(0)) + 'shortcuts\' + Label7.Caption + '.pdf'), nil, SW_HIDE);
end;

procedure TForm6.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Form6.Hide;
  Previous;
end;

procedure TForm6.FormShow(Sender: TObject);
var
  igch: integer;
begin
WindowState:=wsMaximized;
with Screen.WorkAreaRect do
  Form6.SetBounds(Left, Top, Right - Left, Bottom - Top);
  sLabel1.Caption := FloatToStr(qqq) + ' m3/h';
  sLabel2.Caption := FloatToStr(hdd) + ' m';
  sLabel3.Caption := FloatToStr(fll) + ' m';
  sLabel4.Caption := starttype;
  sLabel5.Caption := cablelenght;
  sLabel6.Caption := temp + ' °C';
  /// /////////
  if formname = '1' then
    Panel1.Visible := true
  else
    Panel1.Visible := false;
  if formname = '3' then
    Panel2.Visible := true
  else
    Panel2.Visible := false;
  if formname = '4' then
    Panel3.Visible := true
  else
    Panel3.Visible := false;
  /// ////////// Q Scombo3//////////
  if form1.sComboBox10.Text <> '' then
  begin
    q1.Visible := true;
    q1.Caption := form1.sComboBox10.Text + ' inch';
  end
  else
  begin
    q1.Visible := false;
  end;
  if form3.sComboBox10.Text <> '' then
  begin
    q2.Visible := true;
    q2.Caption := form3.sComboBox10.Text + ' inch';
  end
  else
  begin
    q2.Visible := false;
  end;
  if form4.sComboBox10.Text <> '' then
  begin
    q3.Visible := true;
    q3.Caption := form4.sComboBox10.Text + ' inch';
  end
  else
  begin
    q3.Visible := false;
  end;
  /// // HS Edit3/////
  if form1.edit3.Text <> '' then
  begin
    hs1.Visible := true;
    hs1.Caption := form1.edit3.Text + ' ' + form1.sComboBox3.Text;
  end
  else
  begin
    hs1.Visible := false;
  end;
  if form3.edit3.Text <> '' then
  begin
    hs2.Visible := true;
    hs2.Caption := form3.edit3.Text + ' ' + form3.sComboBox3.Text;
  end
  else
  begin
    hs2.Visible := false;
  end;
  if form4.edit3.Text <> '' then
  begin
    hs3.Visible := true;
    hs3.Caption := form4.edit3.Text + ' ' + form4.sComboBox3.Text;
  end
  else
  begin
    hs3.Visible := false;
  end;
  /// // HD Edit4/////
  if form1.edit4.Text <> '' then
  begin
    hd1.Visible := true;
    hd1.Caption := form1.edit4.Text + ' ' + form1.sComboBox4.Text;
  end
  else
  begin
    hd1.Visible := false;
  end;
  if form3.edit4.Text <> '' then
  begin
    hd2.Visible := true;
    hd2.Caption := form3.edit4.Text + ' ' + form3.sComboBox4.Text;
  end
  else
  begin
    hd2.Visible := false;
  end;
  if form4.edit4.Text <> '' then
  begin
    hd3.Visible := true;
    hd3.Caption := form4.edit4.Text + ' ' + form4.sComboBox4.Text;
  end
  else
  begin
    hd3.Visible := false;
  end;
  /// // HH Edit5/////
  if form1.edit5.Text <> '' then
  begin
    hh1.Visible := true;
    hh1.Caption := form1.edit5.Text + ' ' + form1.sComboBox5.Text;
  end
  else
  begin
    hh1.Visible := false;
  end;
  if form3.edit5.Text <> '' then
  begin
    hh2.Visible := true;
    hh2.Caption := form3.edit5.Text + ' ' + form3.sComboBox5.Text;
  end
  else
  begin
    hh2.Visible := false;
  end;
  if form4.edit4.Text <> '' then
  begin
    hh3.Visible := true;
    hh3.Caption := form4.edit5.Text + ' ' + form4.sComboBox5.Text;
  end
  else
  begin
    hh3.Visible := false;
  end;
  /// // P Edit6/////
  if form1.edit6.Text <> '' then
  begin
    p1.Visible := true;
    p1.Caption := form1.edit6.Text + ' ' + form1.sComboBox9.Text;
  end
  else
  begin
    p2.Visible := false;
  end;
  if form3.edit6.Text <> '' then
  begin
    p2.Visible := true;
    p2.Caption := form3.edit6.Text + ' ' + form3.sComboBox9.Text;
  end
  else
  begin
    p2.Visible := false;
  end;
  /// // LL Edit8/////
  if form1.edit8.Text <> '' then
  begin
    ll1.Visible := true;
    ll1.Caption := form1.edit8.Text + ' ' + form1.sComboBox6.Text;
  end
  else
  begin
    ll1.Visible := false;
  end;
  if form3.edit8.Text <> '' then
  begin
    ll2.Visible := true;
    ll2.Caption := form3.edit8.Text + ' ' + form3.sComboBox6.Text;
  end
  else
  begin
    ll2.Visible := false;
  end;
  if form4.edit8.Text <> '' then
  begin
    ll3.Visible := true;
    ll3.Caption := form4.edit8.Text + ' ' + form4.sComboBox6.Text;
  end
  else
  begin
    ll3.Visible := false;
  end;
  /// // dn Combo13/////
  if form1.sComboBox13.Text <> '' then
  begin
    dn1.Visible := true;
    dn1.Caption := form1.sComboBox13.Text + ' ' + form1.sComboBox14.Text;
  end
  else
  begin
    dn1.Visible := false;
  end;
  /// // DN Combo11/////
  if form1.sComboBox11.Text <> '' then
  begin
    dnn1.Visible := true;
    dnn1.Caption := form1.sComboBox11.Text + ' ' + form1.sComboBox12.Text;
  end
  else
  begin
    dnn1.Visible := false;
  end;
  if form3.edit8.Text <> '' then
  begin
    dnn2.Visible := true;
    dnn2.Caption := form3.sComboBox11.Text + ' ' + form3.sComboBox12.Text;
  end
  else
  begin
    dnn2.Visible := false;
  end;
  if form4.edit8.Text <> '' then
  begin
    dnn3.Visible := true;
    dnn3.Caption := form4.sComboBox11.Text + ' ' + form4.sComboBox12.Text;
  end
  else
  begin
    dnn3.Visible := false;
  end;
  /// // HG Edit7/////
  if form1.Edit7.Text <> '' then
  begin
    hg1.Visible := true;
    hg1.Caption := form1.Edit7.Text + ' ' + form1.sComboBox7.Text;
  end
  else
  begin
    hg1.Visible := false;
  end;
  if form3.edit8.Text <> '' then
  begin
    hg2.Visible := true;
    hg2.Caption := form3.Edit7.Text + ' ' + form3.sComboBox7.Text;
  end
  else
  begin
    hg2.Visible := false;
  end;
  if form4.edit8.Text <> '' then
  begin
    hg3.Visible := true;
    hg3.Caption := form4.Edit7.Text + ' ' + form4.sComboBox7.Text;
  end
  else
  begin
    hg3.Visible := false;
  end;
  /// // l Edit10/////
  if form1.Edit10.Text <> '' then
  begin
    l1.Visible := true;
    l1.Caption := form1.Edit10.Text + ' ' + form1.sComboBox8.Text;
  end
  else
  begin
    l1.Visible := false;
  end;

  ADOQuery1.SQL.Clear;
  if gch = Null then
  begin
    ADOQuery1.SQL.Add('SELECT * FROM table3 where abdehy between ' +
      FloatToStr(qqq) + ' and ' + FloatToStr(qqq + 10) + ' and ertefa between '
      + FloatToStr(hdd - 10) + ' and ' + FloatToStr(hdd + 10) + '');
  end
  else
  begin
    ADOQuery1.SQL.Add('SELECT * FROM table3 where abdehy between ' +
      FloatToStr(qqq) + ' and ' + FloatToStr(qqq + 10) + ' and ertefa between '
      + FloatToStr(hdd - 10) + ' and ' + FloatToStr(hdd + 10) + '');
  end;
  ADOQuery1.Open;
end;

procedure TForm6.sButton6Click(Sender: TObject);
begin
close;
end;

end.
