object DataBase: TDataBase
  Left = 0
  Top = 0
  Caption = 'DataBase connection parameters'
  ClientHeight = 268
  ClientWidth = 365
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 16
    Top = 16
    Width = 319
    Height = 25
    TabOrder = 0
    object Label1: TLabel
      Left = 130
      Top = 4
      Width = 53
      Height = 16
      Caption = 'Database'
      Font.Charset = BALTIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
  end
  object GroupBox2: TGroupBox
    Left = 16
    Top = 56
    Width = 97
    Height = 25
    TabOrder = 1
    object Label2: TLabel
      Left = 16
      Top = 4
      Width = 33
      Height = 16
      Caption = 'HOST'
      Font.Charset = BALTIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
  end
  object GroupBox3: TGroupBox
    Left = 16
    Top = 87
    Width = 97
    Height = 25
    TabOrder = 2
    object Label3: TLabel
      Left = 16
      Top = 4
      Width = 74
      Height = 16
      Caption = 'DataBase file'
      Font.Charset = BALTIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
  end
  object GroupBox4: TGroupBox
    Left = 16
    Top = 118
    Width = 97
    Height = 25
    TabOrder = 3
    object Label4: TLabel
      Left = 16
      Top = 4
      Width = 64
      Height = 16
      Caption = 'CFG record'
      Font.Charset = BALTIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
  end
  object GroupBox5: TGroupBox
    Left = 16
    Top = 149
    Width = 97
    Height = 25
    TabOrder = 4
    object Label5: TLabel
      Left = 16
      Top = 4
      Width = 30
      Height = 16
      Caption = 'Login'
      Font.Charset = BALTIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
  end
  object GroupBox6: TGroupBox
    Left = 16
    Top = 180
    Width = 97
    Height = 25
    TabOrder = 5
    object Label6: TLabel
      Left = 16
      Top = 4
      Width = 55
      Height = 16
      Caption = 'Password'
      Font.Charset = BALTIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
  end
  object Edit1: TEdit
    Left = 135
    Top = 58
    Width = 200
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    Text = '192.168.93.98'
  end
  object Edit2: TEdit
    Left = 135
    Top = 88
    Width = 200
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
    Text = 'D:\ZAKAZ\ZAKAZ.FDB'
  end
  object Edit3: TEdit
    Left = 135
    Top = 119
    Width = 200
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
    Text = '1'
  end
  object Edit4: TEdit
    Left = 135
    Top = 150
    Width = 200
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 9
    Text = 'SYSDBA'
  end
  object Edit5: TEdit
    Left = 135
    Top = 181
    Width = 200
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 10
    Text = 'masterkey'
  end
  object SaveButton: TButton
    Left = 135
    Top = 224
    Width = 91
    Height = 25
    Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
    TabOrder = 11
    OnClick = SaveButtonClick
  end
  object CloseButton: TButton
    Left = 244
    Top = 224
    Width = 91
    Height = 25
    Caption = #1047#1072#1082#1088#1099#1090#1100
    TabOrder = 12
    OnClick = CloseButtonClick
  end
end
