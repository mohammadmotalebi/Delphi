object Form5: TForm5
  Left = 0
  Top = 0
  BiDiMode = bdRightToLeft
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1605#1581#1575#1587#1576#1607' '#1705#1575#1576#1604' '#1605#1608#1585#1583' '#1606#1740#1575#1586
  ClientHeight = 490
  ClientWidth = 589
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  ParentBiDiMode = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object sPanel1: TsPanel
    Left = 231
    Top = 8
    Width = 350
    Height = 234
    TabOrder = 0
    SkinData.SkinSection = 'PANEL'
    object sLabel1: TsLabel
      Left = 288
      Top = 16
      Width = 52
      Height = 13
      Caption = #1606#1608#1593' '#1575#1587#1578#1575#1585#1578
    end
    object sLabel2: TsLabel
      Left = 276
      Top = 48
      Width = 67
      Height = 13
      Caption = #1591#1608#1604' '#1705#1575#1576#1604' ('#1605#1578#1585')'
    end
    object Image1: TImage
      Left = 253
      Top = 47
      Width = 17
      Height = 17
      Cursor = crHelp
      Picture.Data = {
        0954506E67496D61676589504E470D0A1A0A0000000D494844520000001A0000
        001A0806000000A94A4CCE0000000473424954080808087C0864880000000970
        48597300000DD700000DD70142289B780000001974455874536F667477617265
        007777772E696E6B73636170652E6F72679BEE3C1A000001D24944415478DABD
        964F2804511CC7678A1C8872432E8AA383B8B9901C76E3401C9493147B735092
        B04A14C9693938BA4989EC166E722207E5624B4E943F070711697D5E7EC3ECD8
        99F736C6AFBEFDDAEDFB7E9FF7DEFCE6BDB133998CF51F619B806CDBAE2035BA
        A4E2C411356E7E0502D0464AA05A4D9D348A51EB202F108062D2021A523F0D77
        47155A45A3D47CD28280349036508D21C01B97A887BAA7BE2059C99901E40EBD
        A0EA0058BD7B655E907A1EC31AC816EA45EFB255833EBE156AC77E80E4C1EF59
        FA67D2CF9875D7987D1F9F2ADCEE34881B7461E9BB4BC511EA93AD5B431D01DE
        34F5EBBE40F29E5C1B40DCB3555B5760E0AD54EF990352B3DAD60C7843C7E801
        B5A012C34975C2D8714071FE980C30A7D0807302E02F221DA22603D00CE3A61C
        D02E7F4402CC8FA8148DE39F1798EACE840128C998A829C88959FC13021A212D
        E50BD26D9D1351FC49016D92BAF2DD3A936650ED5C8EFF19BFEAB67B546600CA
        6A0693F64EE18DC86A9AADCF663089EFF696C1BA17761A6F5CBC63A4390348F6
        0B2B83754790BB11BA49CBE8D5F23F80731F415220E850BD45ADF8CFC5AB66BA
        68F91F41B90F55196C724D5CA1425415E009BE260416FEC5E75959B857B90718
        EEC7490E60B89F5B7F191F7FC01ADCCF75EC730000000049454E44AE426082}
      Stretch = True
      OnMouseEnter = Image1MouseEnter
      OnMouseLeave = Image1MouseLeave
    end
    object sLabel3: TsLabel
      Left = 251
      Top = 86
      Width = 87
      Height = 26
      Alignment = taCenter
      Caption = #1578#1608#1575#1606' '#1605#1608#1578#1608#1585' '#1576#1585' '#1581#1587#1576' '#1575#1587#1576' '#1576#1582#1575#1585'(HP)'
      WordWrap = True
    end
    object sLabel4: TsLabel
      Left = 256
      Top = 127
      Width = 87
      Height = 26
      Alignment = taCenter
      Caption = #1578#1608#1575#1606' '#1605#1608#1578#1608#1585' '#1576#1585' '#1581#1587#1576' '#1705#1740#1604#1608' '#1608#1575#1578'(KW)'
      WordWrap = True
    end
    object sLabel5: TsLabel
      Left = 268
      Top = 175
      Width = 75
      Height = 13
      Alignment = taCenter
      Caption = #1583#1605#1575#1740' '#1605#1581#1740#1591' (C'#176')'
      WordWrap = True
    end
    object sComboBox1: TsComboBox
      Left = 103
      Top = 11
      Width = 145
      Height = 21
      Alignment = taLeftJustify
      SkinData.SkinSection = 'COMBOBOX'
      VerticalAlignment = taVerticalCenter
      Style = csDropDownList
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ItemIndex = -1
      ParentFont = False
      TabOrder = 0
      OnSelect = sComboBox1Select
      OnChange = sComboBox1Change
      Items.Strings = (
        #1578#1705' '#1601#1575#1586
        'D.O.L'
        'Star / Delta')
    end
    object sEdit1: TsEdit
      Left = 103
      Top = 43
      Width = 144
      Height = 21
      BiDiMode = bdLeftToRight
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      NumbersOnly = True
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 1
      SkinData.SkinSection = 'EDIT'
    end
    object sComboBox2: TsComboBox
      Left = 103
      Top = 88
      Width = 145
      Height = 21
      Alignment = taLeftJustify
      SkinData.SkinSection = 'COMBOBOX'
      VerticalAlignment = taVerticalCenter
      Style = csDropDownList
      BiDiMode = bdLeftToRight
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ItemIndex = -1
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 2
      OnChange = sComboBox2Change
    end
    object sComboBox3: TsComboBox
      Left = 103
      Top = 130
      Width = 145
      Height = 21
      Alignment = taLeftJustify
      SkinData.SkinSection = 'COMBOBOX'
      VerticalAlignment = taVerticalCenter
      Style = csDropDownList
      BiDiMode = bdLeftToRight
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ItemIndex = -1
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 3
      OnChange = sComboBox3Change
    end
    object sComboBox4: TsComboBox
      Left = 103
      Top = 170
      Width = 145
      Height = 21
      Alignment = taLeftJustify
      SkinData.SkinSection = 'COMBOBOX'
      VerticalAlignment = taVerticalCenter
      Style = csDropDownList
      BiDiMode = bdLeftToRight
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ItemIndex = 0
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 4
      Text = '<30'
      Items.Strings = (
        '<30'
        '30 - 35'
        '35 - 40'
        '40 - 45'
        '45 - 50'
        '50 - 55')
    end
    object sButton1: TsButton
      Left = 8
      Top = 11
      Width = 89
      Height = 214
      Cursor = crHandPoint
      Caption = #1578#1593#1740#1740#1606' '#1606#1608#1593' '#1705#1575#1576#1604
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ImageAlignment = iaTop
      ImageIndex = 46
      ImageMargins.Bottom = 30
      Images = Form1.sAlphaImageList1
      ParentFont = False
      TabOrder = 5
      OnClick = sButton1Click
      SkinData.SkinSection = 'BUTTON'
    end
  end
  object sPanel2: TsPanel
    Left = 231
    Top = 248
    Width = 350
    Height = 234
    TabOrder = 1
    SkinData.SkinSection = 'PANEL'
    object sLabel6: TsLabel
      Left = 253
      Top = 45
      Width = 86
      Height = 26
      Alignment = taCenter
      Caption = #1601#1575#1589#1604#1607' '#1605#1606#1576#1593' '#1578#1594#1584#1740#1607' '#1578#1575' '#1578#1575#1576#1604#1608' '#1576#1585#1602' ('#1605#1578#1585')'
      WordWrap = True
    end
    object sLabel7: TsLabel
      Left = 251
      Top = 86
      Width = 87
      Height = 26
      Alignment = taCenter
      Caption = #1578#1608#1575#1606' '#1605#1608#1578#1608#1585' '#1576#1585' '#1581#1587#1576' '#1575#1587#1576' '#1576#1582#1575#1585'(HP)'
      WordWrap = True
    end
    object sLabel8: TsLabel
      Left = 256
      Top = 127
      Width = 87
      Height = 26
      Alignment = taCenter
      Caption = #1578#1608#1575#1606' '#1605#1608#1578#1608#1585' '#1576#1585' '#1581#1587#1576' '#1705#1740#1604#1608' '#1608#1575#1578'(KW)'
      WordWrap = True
    end
    object sLabel9: TsLabel
      Left = 268
      Top = 175
      Width = 75
      Height = 13
      Alignment = taCenter
      Caption = #1583#1605#1575#1740' '#1605#1581#1740#1591' (C'#176')'
      WordWrap = True
    end
    object sLabelFX2: TsLabelFX
      Left = 1
      Top = 1
      Width = 348
      Height = 28
      Align = alTop
      Alignment = taCenter
      SkinSection = 'BAR'
      Caption = #1705#1575#1576#1604' '#1605#1606#1575#1587#1576' '#1576#1585#1575#1740' '#1605#1606#1576#1593' '#1578#1594#1584#1740#1607' '#1578#1575' '#1578#1575#1576#1604#1608' ('#1587#1607' '#1601#1575#1586')'
      ParentFont = False
      Font.Charset = ARABIC_CHARSET
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = 'B Nazanin'
      Font.Style = [fsBold]
      Angle = 0
      Shadow.AlphaValue = 100
      Shadow.BlurCount = 2
      Shadow.Color = clWhite
      Shadow.Mode = smCustom
      Shadow.OffsetKeeper.LeftTop = -1
      Shadow.OffsetKeeper.RightBottom = 3
      ExplicitWidth = 233
    end
    object sEdit2: TsEdit
      Left = 104
      Top = 47
      Width = 144
      Height = 21
      BiDiMode = bdLeftToRight
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      NumbersOnly = True
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 0
      SkinData.SkinSection = 'EDIT'
    end
    object sComboBox5: TsComboBox
      Left = 103
      Top = 88
      Width = 145
      Height = 21
      Alignment = taLeftJustify
      SkinData.SkinSection = 'COMBOBOX'
      VerticalAlignment = taVerticalCenter
      Style = csDropDownList
      BiDiMode = bdLeftToRight
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ItemIndex = -1
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 1
      OnChange = sComboBox5Change
    end
    object sComboBox6: TsComboBox
      Left = 103
      Top = 130
      Width = 145
      Height = 21
      Alignment = taLeftJustify
      SkinData.SkinSection = 'COMBOBOX'
      VerticalAlignment = taVerticalCenter
      Style = csDropDownList
      BiDiMode = bdLeftToRight
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ItemIndex = -1
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 2
      OnChange = sComboBox6Change
    end
    object sComboBox7: TsComboBox
      Left = 103
      Top = 170
      Width = 145
      Height = 21
      Alignment = taLeftJustify
      SkinData.SkinSection = 'COMBOBOX'
      VerticalAlignment = taVerticalCenter
      Style = csDropDownList
      BiDiMode = bdLeftToRight
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ItemIndex = 0
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 3
      Text = '<30'
      Items.Strings = (
        '<30'
        '30 - 35'
        '35 - 40'
        '40 - 45'
        '45 - 50'
        '50 - 55')
    end
    object sButton2: TsButton
      Left = 8
      Top = 34
      Width = 89
      Height = 191
      Cursor = crHandPoint
      Caption = #1578#1593#1740#1740#1606' '#1606#1608#1593' '#1705#1575#1576#1604
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ImageAlignment = iaTop
      ImageIndex = 46
      ImageMargins.Bottom = 30
      Images = Form1.sAlphaImageList1
      ParentFont = False
      TabOrder = 4
      OnClick = sButton2Click
      SkinData.SkinSection = 'BUTTON'
    end
  end
  object sPanel3: TsPanel
    Left = 8
    Top = 8
    Width = 217
    Height = 234
    TabOrder = 2
    Visible = False
    SkinData.SkinSection = 'PANEL'
    object sLabel10: TsLabel
      Left = 19
      Top = 60
      Width = 183
      Height = 25
      Caption = #1705#1575#1576#1604' '#1605#1608#1585#1583' '#1606#1740#1575#1586' '#1588#1605#1575
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
    end
    object sLabel11: TsLabel
      Left = 40
      Top = 114
      Width = 106
      Height = 29
      BiDiMode = bdLeftToRight
      Caption = 'sLabel11'
      ParentBiDiMode = False
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -24
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      UseSkinColor = False
    end
  end
  object sPanel4: TsPanel
    Left = 8
    Top = 248
    Width = 217
    Height = 234
    TabOrder = 3
    Visible = False
    SkinData.SkinSection = 'PANEL'
    object sLabel12: TsLabel
      Left = 40
      Top = 114
      Width = 106
      Height = 29
      BiDiMode = bdLeftToRight
      Caption = 'sLabel11'
      ParentBiDiMode = False
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -24
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      UseSkinColor = False
    end
    object sLabel13: TsLabel
      Left = 19
      Top = 60
      Width = 183
      Height = 25
      Caption = #1705#1575#1576#1604' '#1605#1608#1585#1583' '#1606#1740#1575#1586' '#1588#1605#1575
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
    end
  end
  object BalloonHint1: TBalloonHint
    Left = 528
  end
  object hpTableSD: TADOQuery
    Active = True
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT DISTINCT setareh.tavanhp'
      'FROM setareh;'
      '')
    Left = 176
    Top = 8
  end
  object kwTableSD: TADOQuery
    Active = True
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT DISTINCT setareh.tavankw'
      'FROM setareh;'
      '')
    Left = 280
  end
  object hpTableSF: TADOQuery
    Active = True
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT DISTINCT takfaz.tavanhp'
      'FROM takfaz;')
    Left = 328
  end
  object kwTableSF: TADOQuery
    Active = True
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT DISTINCT takfaz.tavankw'
      'FROM takfaz;')
    Left = 280
    Top = 56
  end
  object kwTableDLO: TADOQuery
    Active = True
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT DISTINCT tavankw'
      'FROM dlo'
      '')
    Left = 368
    Top = 8
  end
  object hpTableDLO: TADOQuery
    Active = True
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT DISTINCT tavanhp'
      'FROM dlo'
      '')
    Left = 224
  end
  object dlo: TADOQuery
    Active = True
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select *  from dlo')
    Left = 80
    Top = 8
  end
  object star: TADOQuery
    Active = True
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select *  from setareh')
    Left = 144
    Top = 8
  end
  object takfaz: TADOQuery
    Active = True
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select *  from takfaz')
    Left = 112
    Top = 8
  end
  object MessageDialog1: TMessageDialog
    BiDiMode = bdRightToLeft
    ButtonCaptions.OK = #1576#1587#1740#1575#1585' '#1582#1608#1576
    Captions.Warning = #1575#1582#1591#1575#1585
    Captions.Error = #1582#1591#1575
    Captions.Information = #1575#1591#1604#1575#1593#1575#1578
    Captions.Confirmation = #1578#1575#1740#1740#1583
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBiDiMode = False
    ParentFont = False
    Left = 608
    Top = 112
  end
  object MessageDialog2: TMessageDialog
    BiDiMode = bdRightToLeft
    ButtonCaptions.OK = #1576#1587#1740#1575#1585' '#1582#1608#1576
    Captions.Warning = #1575#1582#1591#1575#1585
    Captions.Error = #1582#1591#1575
    Captions.Information = #1575#1591#1604#1575#1593#1575#1578
    Captions.Confirmation = #1578#1575#1740#1740#1583
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBiDiMode = False
    ParentFont = False
    Left = 608
    Top = 112
  end
end
