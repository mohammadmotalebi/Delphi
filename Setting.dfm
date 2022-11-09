object Form9: TForm9
  Left = 0
  Top = 0
  BiDiMode = bdRightToLeft
  BorderStyle = bsDialog
  Caption = #1578#1606#1592#1740#1605' '#1602#1575#1604#1576
  ClientHeight = 200
  ClientWidth = 362
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  ParentBiDiMode = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object sLabel1: TsLabel
    Left = 287
    Top = 88
    Width = 37
    Height = 13
    Caption = #1606#1575#1605' '#1602#1575#1604#1576
  end
  object sLabel2: TsLabel
    Left = 128
    Top = 24
    Width = 92
    Height = 13
    Caption = #1578#1606#1592#1740#1605' '#1602#1575#1604#1576' '#1606#1585#1605' '#1575#1601#1586#1575#1585
  end
  object sComboBox1: TsComboBox
    Left = 40
    Top = 85
    Width = 241
    Height = 21
    Alignment = taLeftJustify
    VerticalAlignment = taAlignTop
    Color = 16252396
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ItemIndex = -1
    ParentFont = False
    TabOrder = 0
    OnChange = sComboBox1Change
  end
  object sButton1: TsButton
    Left = 112
    Top = 136
    Width = 137
    Height = 41
    Caption = #1584#1582#1740#1585#1607' '#1578#1594#1740#1740#1585#1575#1578
    TabOrder = 1
    OnClick = sButton1Click
  end
end
