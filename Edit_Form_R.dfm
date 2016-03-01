object FormEdit_R: TFormEdit_R
  Left = 0
  Top = 0
  Align = alCustom
  Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1079#1072#1103#1074#1082#1091
  ClientHeight = 611
  ClientWidth = 1122
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 195
    Top = 62
    Width = 5
    Height = 18
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object StaticText6: TStaticText
    Left = 25
    Top = 184
    Width = 128
    Height = 20
    Align = alCustom
    Alignment = taCenter
    AutoSize = False
    BorderStyle = sbsSingle
    Caption = #1053#1086#1084#1077#1088' '#1079#1072#1082#1072#1079#1072
    Color = clSkyBlue
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    TabOrder = 0
  end
  object Edit1: TEdit
    Left = 168
    Top = 184
    Width = 201
    Height = 21
    TabOrder = 1
  end
  object cxButtonEdit3: TcxButtonEdit
    Left = 25
    Top = 8
    Properties.Buttons = <
      item
        Default = True
        Kind = bkEllipsis
      end>
    TabOrder = 2
    Text = 'cxButtonEdit3'
    Visible = False
    Width = 65
  end
  object cxButtonEdit4: TcxButtonEdit
    Left = 168
    Top = 144
    Properties.Buttons = <
      item
        Default = True
        Kind = bkEllipsis
      end>
    Properties.OnButtonClick = cxButtonEdit4PropertiesButtonClick
    TabOrder = 3
    Width = 201
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 168
    Top = 104
    Width = 201
    Height = 21
    DataField = 'REQ_CLNAME'
    DataSource = DataModule.Source_Request
    DropDownRows = 14
    KeyField = 'CL_ID'
    ListField = 'CL_NAME'
    ListSource = DataModule.Source_Clients
    TabOrder = 4
  end
  object Panel1: TPanel
    Left = 385
    Top = 8
    Width = 695
    Height = 282
    Caption = 'Panel1'
    TabOrder = 5
    object cxGrid1: TcxGrid
      Left = 0
      Top = 29
      Width = 697
      Height = 253
      TabOrder = 0
      LookAndFeel.Kind = lfStandard
      LookAndFeel.NativeStyle = True
      LookAndFeel.SkinName = ''
      object cxGrid1DBTableView1: TcxGridDBTableView
        DataController.DataSource = DataModule.Source_SERV_R
        DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoImmediatePost]
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object cxGrid1DBTableView1SVR_NAME: TcxGridDBColumn
          Caption = #1052#1072#1090#1077#1088#1080#1072#1083
          DataBinding.FieldName = 'SVR_NAME'
          Options.Editing = False
          Width = 250
        end
        object cxGrid1DBTableView1SVR_COUNT: TcxGridDBColumn
          Caption = #1050#1086#1083'-'#1074#1086
          DataBinding.FieldName = 'SVR_COUNT'
        end
        object cxGrid1DBTableView1SVR_UNITM: TcxGridDBColumn
          Caption = #1045#1076'.'#1080#1079#1084
          DataBinding.FieldName = 'SVR_UNITM'
          Options.Editing = False
        end
        object cxGrid1DBTableView1SVR_GOST: TcxGridDBColumn
          Caption = #1043#1054#1057#1058
          DataBinding.FieldName = 'SVR_GOST'
          Width = 250
        end
        object cxGrid1DBTableView1SVR_TMID: TcxGridDBColumn
          DataBinding.FieldName = 'SVR_TMID'
          Visible = False
          Width = 50
        end
        object cxGrid1DBTableView1SVR_ID: TcxGridDBColumn
          DataBinding.FieldName = 'SVR_ID'
          Visible = False
          Width = 35
        end
        object cxGrid1DBTableView1SVR_REQID: TcxGridDBColumn
          DataBinding.FieldName = 'SVR_REQID'
          Visible = False
          Width = 50
        end
        object cxGrid1DBTableView1SVR_LOGIN: TcxGridDBColumn
          DataBinding.FieldName = 'SVR_LOGIN'
          Visible = False
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
    object RzBitBtn2: TRzBitBtn
      Left = 4
      Top = 2
      Width = 95
      Hint = #1059#1076#1072#1083#1080#1090#1100
      Caption = #1059#1076#1072#1083#1080#1090#1100
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = RzBitBtn2Click
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FB00FFFB00FF
        FB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00
        FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB
        00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FF
        FB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00
        FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FF6464B86464B8FB00FFFB
        00FFFB00FFFB00FF6464B86464B8FB00FFFB00FFFB00FFFB00FFFB00FFFB00FF
        FB00FF6464B89898EE9898EE6464B8FB00FFFB00FF6464B89898EE9898EE6464
        B8FB00FFFB00FFFB00FFFB00FFFB00FFFB00FF6464B86060E36060E39C9CF164
        64B86464B89C9CF16060E36060E36464B8FB00FFFB00FFFB00FFFB00FFFB00FF
        FB00FFFB00FF6464B86666E86666E8A1A1F3A1A1F36666E86666E86464B8FB00
        FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FF6464B86D6DED6D
        6DED6D6DED6D6DED6464B8FB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FF
        FB00FFFB00FFFB00FF6464B87373F37373F37373F37373F36464B8FB00FFFB00
        FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FF6464B8B0B0FB7979F879
        79F87979F87979F8B0B0FB6464B8FB00FFFB00FFFB00FFFB00FFFB00FFFB00FF
        FB00FF6464B8B3B3FD7E7EFC7E7EFC6464B86464B87E7EFC7E7EFCB3B3FD6464
        B8FB00FFFB00FFFB00FFFB00FFFB00FFFB00FF6464B88181FF8181FF6464B8FB
        00FFFB00FF6464B88181FF8181FF6464B8FB00FFFB00FFFB00FFFB00FFFB00FF
        FB00FFFB00FF6464B86464B8FB00FFFB00FFFB00FFFB00FF6464B86464B8FB00
        FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB
        00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FF
        FB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00
        FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB
        00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FF}
    end
    object BtnPrint: TBitBtn
      Left = 105
      Top = 2
      Width = 112
      Height = 25
      Caption = #1055#1077#1095#1072#1090#1100' '#1079#1072#1103#1074#1082#1080
      DoubleBuffered = True
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFF710EFD259A9D651B1E631D0F710EFFF
        00FFED22B8D17744DCA26DD95B63F11BC6FF00FFFF00FFFF00FFFF00FFE239C8
        C98797E0C4C4DDBBBBC79292C48C8CCE7887E7B180FFECD8FFF0E2FCECDEE3B2
        86D95B63F11BC6FF00FFD651B1D9B6B6EFE0E0EFDFDFF0E1E1DEBDBDCC9999CC
        9999E9C1AFFFE2C4FFE6CEFFEBD7FFF0E1FCECDDD59154F11BC6D4AEAEF9F3F3
        F6EDEDF3E7E7F0E2E2F1E4E4CC9999CC9999CC9999D7ADA8E8C4B4F9DAC1F2CF
        B1D78A6EE3378EFF00FFDEC0C0FDFBFBFAF6F6F8F0F0F3E8E8D8B1B1CD9A9ACC
        9999CC9999D7AFAFDCBABAD5AEAEBF857BBA7D7DDA49B9FF00FFDEC1C1FFFFFF
        FEFDFDEFDFDFD8B1B1D2A6A6CFA0A0CD9B9BD0A2A2E7CFCFE8D1D1E4C9C9DEBD
        BDB87D7DC69090DA49B9DEC1C1F8F0F0E7CECEDCB8B8D9B2B2D6ADADD3A7A7D9
        B4B4F0E1E1EFE0E0ECDADAEAD4D4E7CFCFBE8686CC9999C38B8BC98999E0C1C1
        E2C5C562EF8A8CBB81DCB8B8E9D3D3F9F3F3F6EEEEF4E8E8F1E3E3EEDDDDCEA3
        A3CC9C9CCD9B9BC47F8FF711F0D753B3CE9E9AE9CBC3F3D0B9FDD5AFFFD7AEFE
        E1C5F9E1CEF2E1D7F0E2E2D2A9A9D5ACACD3A7A7C58090F318E7FF00FFFA13E9
        E7B381FFE2C4FFDFBFFFDCB9FFD9B4FFD7AEE2A66FCDA198DAB9B9DEBEBECD9F
        9FCF64A4F710EFFF00FFFF00FFE86C8EFBE2CAFFE7CFFFE4CAFFE2C4FFDFBFF4
        C79BD17C85D188A8C89696D45EAEE631D0FF00FFFF00FFFF00FFF82AD9EDC398
        FFEFE0FFEDDAFFEAD5FFE7CFFFE4CAE49C74FC09F3FF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFF358B9F4D9BBFDF1E5FFF2E5FFEFE0FFEDDAF5D2AFED
        4DAAFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFE0BF7F743CC
        F263B0EF8DA7EEC396F2CEA9E99B89FD0AF5FF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      ParentDoubleBuffered = False
      TabOrder = 2
      OnClick = BtnPrintClick
    end
  end
  object CloseButton: TButton
    Left = 230
    Top = 568
    Width = 117
    Height = 25
    Hint = #1047#1072#1082#1088#1099#1090#1100
    Caption = #1047#1072#1082#1088#1099#1090#1100
    ModalResult = 2
    TabOrder = 6
  end
  object SaveButton: TButton
    Left = 36
    Top = 568
    Width = 117
    Height = 25
    Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
    TabOrder = 7
    OnClick = SaveButtonClick
  end
  object Panel3: TPanel
    Left = 384
    Top = 296
    Width = 697
    Height = 297
    Caption = 'Panel3'
    TabOrder = 8
    object RzToolbar1: TRzToolbar
      Left = 1
      Top = 1
      Width = 695
      Height = 29
      BorderInner = fsNone
      BorderOuter = fsGroove
      BorderSides = [sdTop]
      BorderWidth = 0
      TabOrder = 0
      ToolbarControls = (
        AddBtn
        RzEditBtn
        RzDelBtn
        RzSpacer1
        eFilter
        RzSpacer3
        RzBitBtn1
        RzSpacer2)
      object RzSpacer1: TRzSpacer
        Left = 91
        Top = 2
        Grooved = True
      end
      object RzSpacer3: TRzSpacer
        Left = 340
        Top = 2
        Width = 4
        Grooved = True
      end
      object RzSpacer2: TRzSpacer
        Left = 445
        Top = 2
        Width = 4
        Grooved = True
      end
      object AddBtn: TRzBitBtn
        Left = 4
        Top = 2
        Width = 29
        Action = Main.ActionAddMetal
        Caption = #1044#1086#1073#1072#1074#1080#1090#1100
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000120B0000120B00000000000000000000FB00FFFB00FF
          FB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00
          FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB
          00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FF
          FB00FFFB00FFFB00FFFB00FFFB00FF64B89C64B89CFB00FFFB00FFFB00FFFB00
          FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FF64B89C98
          EEC998EEC964B89CFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FF
          FB00FFFB00FFFB00FFFB00FF64B89C5EE1A35EE1A364B89CFB00FFFB00FFFB00
          FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FF64B89C63
          E5A863E5A864B89CFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FF
          FB00FF64B89C64B89C64B89C64B89C67E9AD67E9AD64B89C64B89C64B89C64B8
          9CFB00FFFB00FFFB00FFFB00FFFB00FF64B89CA7F6D5A7F6D5A7F6D5A7F6D56D
          EDB26DEDB2A7F6D5A7F6D5A7F6D5A7F6D564B89CFB00FFFB00FFFB00FFFB00FF
          64B89C72F2B872F2B872F2B872F2B872F2B872F2B872F2B872F2B872F2B872F2
          B864B89CFB00FFFB00FFFB00FFFB00FFFB00FF64B89C64B89C64B89C64B89C76
          F6BD76F6BD64B89C64B89C64B89C64B89CFB00FFFB00FFFB00FFFB00FFFB00FF
          FB00FFFB00FFFB00FFFB00FF64B89C7BFAC27BFAC264B89CFB00FFFB00FFFB00
          FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FF64B89C7E
          FDC57EFDC564B89CFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FF
          FB00FFFB00FFFB00FFFB00FF64B89C81FFC881FFC864B89CFB00FFFB00FFFB00
          FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FF64
          B89C64B89CFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FF
          FB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00
          FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB
          00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FF}
      end
      object RzDelBtn: TRzBitBtn
        Left = 62
        Top = 2
        Width = 29
        Hint = #1059#1076#1072#1083#1080#1090#1100
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000120B0000120B00000000000000000000FB00FFFB00FF
          FB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00
          FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB
          00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FF
          FB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00
          FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FF6464B86464B8FB00FFFB
          00FFFB00FFFB00FF6464B86464B8FB00FFFB00FFFB00FFFB00FFFB00FFFB00FF
          FB00FF6464B89898EE9898EE6464B8FB00FFFB00FF6464B89898EE9898EE6464
          B8FB00FFFB00FFFB00FFFB00FFFB00FFFB00FF6464B86060E36060E39C9CF164
          64B86464B89C9CF16060E36060E36464B8FB00FFFB00FFFB00FFFB00FFFB00FF
          FB00FFFB00FF6464B86666E86666E8A1A1F3A1A1F36666E86666E86464B8FB00
          FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FF6464B86D6DED6D
          6DED6D6DED6D6DED6464B8FB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FF
          FB00FFFB00FFFB00FF6464B87373F37373F37373F37373F36464B8FB00FFFB00
          FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FF6464B8B0B0FB7979F879
          79F87979F87979F8B0B0FB6464B8FB00FFFB00FFFB00FFFB00FFFB00FFFB00FF
          FB00FF6464B8B3B3FD7E7EFC7E7EFC6464B86464B87E7EFC7E7EFCB3B3FD6464
          B8FB00FFFB00FFFB00FFFB00FFFB00FFFB00FF6464B88181FF8181FF6464B8FB
          00FFFB00FF6464B88181FF8181FF6464B8FB00FFFB00FFFB00FFFB00FFFB00FF
          FB00FFFB00FF6464B86464B8FB00FFFB00FFFB00FFFB00FF6464B86464B8FB00
          FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB
          00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FF
          FB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00
          FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB
          00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FF}
      end
      object eFilter: TEdit
        Left = 99
        Top = 4
        Width = 241
        Height = 21
        TabOrder = 2
        OnChange = eFilterChange
      end
      object RzEditBtn: TRzBitBtn
        Left = 33
        Top = 2
        Width = 29
        Action = Main.ActionEditMetal
        Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000120B0000120B00000000000000000000FB00FFFB00FF
          FB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00
          FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB
          00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FF
          FB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00
          FFFB00FFFB00FFFB00FFFB00FFFB00FF7E7E7EBABABABABABABABABAFB00FFFB
          00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FF
          BABABABABABAE0E0E0E0E0E0BA945DFB00FFFB00FFFB00FFFB00FFFB00FFFB00
          FFFB00FFFB00FFFB00FFFB00FFFB00FFBABABAE0E0E0E0E0E0BA945DF9D79BBA
          945DFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FF
          BABABAE0E0E0BA945DF6D199F4C57FF6D199BA945DFB00FFFB00FFFB00FFFB00
          FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFBA945DF0C894ECBA79ECBA79EC
          BA79F0C894BA945DFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FF
          FB00FFFB00FFBA945DEABF8FE5AF73E5AF73E5AF73EABF8FBA945DFB00FFFB00
          FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFBA945DE5B98CDF
          A76FDFA76FDFA76FE5B98C5654B0FB00FFFB00FFFB00FFFB00FFFB00FFFB00FF
          FB00FFFB00FFFB00FFFB00FFBA945DE9BE8FE4AE73E4AE735654B07859F65654
          B0FB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFBA
          945DF9D79B5654B05345DC5345DC5654B0FB00FFFB00FFFB00FFFB00FFFB00FF
          FB00FFFB00FFFB00FFFB00FFFB00FFFB00FF5654B07859F67859F65654B0FB00
          FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB
          00FFFB00FF5654B05654B0FB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FF
          FB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00
          FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB
          00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FF}
      end
      object RzBitBtn1: TRzBitBtn
        Left = 344
        Top = 2
        Width = 101
        Caption = #1054#1095#1080#1089#1090#1080#1090#1100
        ParentShowHint = False
        ShowHint = True
        TabOrder = 4
        OnClick = RzBitBtn1Click
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
          FF00FFFF00FFAF21AF14721706870A8F2E8FFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFEF07EF50475015991F1EB72D1AB3277F
          347FFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFBF1ABF
          2D723432C24B37D05332CB4B2EC7441A9D2615951F108E1936653A8F2E8FEF07
          EFFF00FFFF00FFFF00FFFF00FF188D2559F28654ED7E4EE77649E26E44DD663F
          D85E3AD35735CE5030C94927BA3B1E7F269F279FFF00FFFF00FFFF00FF365E3A
          46D06965FE9864FD9560F9915CF58A58F18554ED7F4DE67447E06B42DB633DD6
          5B1792239F279FFF00FFFF00FFFF00FF7F347F2DAA4360F68F66FF9966FF9940
          4E407F347F56515A2E8E3D37BD5255EE804FE87724812EFF00FFFF00FFFF00FF
          FF00FFCF14CF3D67434DD97360F68F7F347FFF00FFFF00FFFF00FF9F279F3277
          3C51E17931B14AFF00FFFF00FF723F74C01CC1FF00FFEF07EF7F347F4D6153BF
          1ABFFF00FFFF00FFFF00FFFF00FFEF07EF365E3A209730FF00FFFF00FF108C1A
          36623BEF07F0FF00FFFF00FFFF00FFFF00FFBF1ABF4155417F347FFF00FFFF00
          FFBF1ABF703A70FF00FFFF00FF20A6322BBC412E7636A12BA3FF00FFFF00FFFF
          00FF7F347F0FA5160A970F325D32CF14CFFF00FFFF00FFFF00FFFF00FF2F9641
          49E26D41DA622AB340268A3356535A813782414F4121BA311CB52A16AC220A88
          0F7F347FFF00FFFF00FFFF00FFA533AA2BAF4459F28552EB7B4CE57246DF6940
          D9603AD35735CE4F2FC8472AC33F25BE3718A124325933FF00FFFF00FFFF00FF
          A534AB39A4525AEF8862FB935DF68C57F08351EA794BE47045DE673FD85E39D2
          5636CF510B7F11FF00FFFF00FFFF00FFFF00FFF009F1963B9B4C835D34B85038
          BE563CC35B61FA925CF58A56EF8141D1612F7337BF1ABFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF843F8966FF9966FF993CC25A524C
          54EF07EFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FF953A9A39C058319543B125B3FF00FFFF00FFFF00FFFF00FF}
      end
    end
    object cxGrid2: TcxGrid
      Left = 5
      Top = 36
      Width = 684
      Height = 253
      TabOrder = 1
      object cxGrid2DBTableView1: TcxGridDBTableView
        OnCellDblClick = cxGrid2DBTableView1CellDblClick
        DataController.DataSource = DataModule.Source_Metal
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object cxGrid2DBTableView1TM_NAME: TcxGridDBColumn
          DataBinding.FieldName = 'TM_NAME'
          Width = 250
        end
        object cxGrid2DBTableView1TM_UNITM: TcxGridDBColumn
          DataBinding.FieldName = 'TM_UNITM'
          Width = 30
        end
        object cxGrid2DBTableView1TM_GOST: TcxGridDBColumn
          DataBinding.FieldName = 'TM_GOST'
          Width = 250
        end
        object cxGrid2DBTableView1TM_ID: TcxGridDBColumn
          DataBinding.FieldName = 'TM_ID'
          Width = 30
        end
      end
      object cxGrid2Level1: TcxGridLevel
        GridView = cxGrid2DBTableView1
      end
    end
  end
  object Edit4: TEdit
    Left = 168
    Top = 335
    Width = 201
    Height = 21
    TabOrder = 9
    Visible = False
  end
  object eDateBegin: TDateTimePicker
    Left = 168
    Top = 224
    Width = 201
    Height = 21
    Date = 41338.000000000000000000
    Format = 'dd.MM.yyyy HH:mm:ss'
    Time = 41338.000000000000000000
    DateFormat = dfLong
    Enabled = False
    TabOrder = 10
  end
  object StaticText5: TStaticText
    Left = 25
    Top = 224
    Width = 128
    Height = 20
    Align = alCustom
    Alignment = taCenter
    AutoSize = False
    BorderStyle = sbsSingle
    Caption = #1044#1072#1090#1072
    Color = clSkyBlue
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    TabOrder = 11
  end
  object StaticText1: TStaticText
    Left = 25
    Top = 64
    Width = 128
    Height = 20
    Align = alCustom
    Alignment = taCenter
    AutoSize = False
    BorderStyle = sbsSingle
    Caption = #1053#1086#1084#1077#1088' '#1079#1072#1103#1074#1082#1080' (ID)'
    Color = clSkyBlue
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    TabOrder = 12
  end
  object StaticText2: TStaticText
    Left = 25
    Top = 104
    Width = 128
    Height = 20
    Align = alCustom
    Alignment = taCenter
    AutoSize = False
    BorderStyle = sbsSingle
    Caption = #1047#1072#1082#1072#1079#1095#1080#1082
    Color = clSkyBlue
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    TabOrder = 13
  end
  object StaticText3: TStaticText
    Left = 25
    Top = 144
    Width = 128
    Height = 20
    Align = alCustom
    Alignment = taCenter
    AutoSize = False
    BorderStyle = sbsSingle
    Caption = #1054#1073#1098#1077#1082#1090
    Color = clSkyBlue
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    TabOrder = 14
  end
  object StaticText4: TStaticText
    Left = 25
    Top = 260
    Width = 128
    Height = 20
    Align = alCustom
    Alignment = taCenter
    AutoSize = False
    BorderStyle = sbsSingle
    Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
    Color = clSkyBlue
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    TabOrder = 15
  end
  object Memo1: TMemo
    Left = 168
    Top = 260
    Width = 201
    Height = 67
    TabOrder = 16
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSet = DataModule.ds_product
    BCDToCurrency = False
    Left = 48
    Top = 328
  end
  object frxReport1: TfrxReport
    Version = '4.13.1'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41884.669147650460000000
    ReportOptions.LastChange = 41884.669147650460000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 112
    Top = 368
    Datasets = <>
    Variables = <>
    Style = <>
  end
  object frxFIBComponents1: TfrxFIBComponents
    DefaultDatabase = DataModule.DB
    Left = 48
    Top = 400
  end
end
