object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 430
  ClientWidth = 786
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 1
    Top = 8
    Width = 760
    Height = 120
    DataSource = DataModule2.TDataSource
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object CheckBox1: TCheckBox
    Left = 22
    Top = 152
    Width = 97
    Height = 17
    Caption = 'Mixed Choir'
    TabOrder = 1
  end
  object SpinEdit1: TSpinEdit
    Left = 22
    Top = 200
    Width = 121
    Height = 22
    MaxValue = 0
    MinValue = 0
    TabOrder = 2
    Value = 0
  end
  object RadioGroup1: TRadioGroup
    Left = 22
    Top = 244
    Width = 185
    Height = 105
    Caption = 'Gender'
    Items.Strings = (
      'Male'
      'Female')
    TabOrder = 3
  end
  object Button1: TButton
    Left = 272
    Top = 252
    Width = 185
    Height = 25
    Caption = 'Add'
    TabOrder = 4
    OnClick = Button1Click
  end
  object ComboBox1: TComboBox
    Left = 22
    Top = 368
    Width = 145
    Height = 21
    TabOrder = 5
    Text = 'ComboBox1'
    Items.Strings = (
      'Girls Choir'
      'Boys Choir')
  end
  object Edit1: TEdit
    Left = 248
    Top = 150
    Width = 121
    Height = 21
    TabOrder = 6
    Text = 'Name'
  end
  object Edit2: TEdit
    Left = 248
    Top = 200
    Width = 121
    Height = 21
    TabOrder = 7
    Text = 'Surname'
  end
  object Button2: TButton
    Left = 272
    Top = 336
    Width = 185
    Height = 25
    Caption = 'Delete'
    TabOrder = 8
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 272
    Top = 296
    Width = 185
    Height = 25
    Caption = 'Generate Primary Key'
    TabOrder = 9
    OnClick = Button3Click
  end
end
