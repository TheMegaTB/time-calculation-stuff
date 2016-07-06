object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 552
  ClientWidth = 1265
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Input1: TEdit
    Left = 200
    Top = 104
    Width = 121
    Height = 21
    TabOrder = 0
    Text = '1.1.2016'
  end
  object Input2: TEdit
    Left = 344
    Top = 104
    Width = 121
    Height = 21
    TabOrder = 1
    Text = '0:0:0'
  end
  object Input3: TEdit
    Left = 488
    Top = 104
    Width = 121
    Height = 21
    TabOrder = 2
    Text = '1.1.2017'
  end
  object Format1: TEdit
    Left = 200
    Top = 184
    Width = 121
    Height = 21
    TabOrder = 3
    Text = 'DD.MM YYYY hh:mm:ss'
  end
  object Format2: TEdit
    Left = 344
    Top = 184
    Width = 121
    Height = 21
    TabOrder = 4
    Text = 'DD hh:mm:ss'
  end
  object Format3: TEdit
    Left = 488
    Top = 184
    Width = 121
    Height = 21
    TabOrder = 5
    Text = 'DD.MM YYYY hh:mm:ss'
  end
  object Panel1: TPanel
    Left = 200
    Top = 57
    Width = 121
    Height = 41
    Caption = 't1'
    TabOrder = 6
  end
  object Panel2: TPanel
    Left = 344
    Top = 57
    Width = 121
    Height = 41
    Caption = 'delta t'
    TabOrder = 7
  end
  object Panel3: TPanel
    Left = 488
    Top = 57
    Width = 121
    Height = 41
    Caption = 't2'
    TabOrder = 8
  end
  object Panel4: TPanel
    Left = 73
    Top = 104
    Width = 121
    Height = 21
    Caption = 'value'
    TabOrder = 9
  end
  object Panel5: TPanel
    Left = 73
    Top = 183
    Width = 121
    Height = 21
    Caption = 'output-format'
    TabOrder = 10
  end
  object Button1: TButton
    Left = 200
    Top = 144
    Width = 121
    Height = 25
    Caption = 'Calculate'
    TabOrder = 11
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 344
    Top = 144
    Width = 121
    Height = 25
    Caption = 'Calculate'
    TabOrder = 12
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 488
    Top = 144
    Width = 121
    Height = 25
    Caption = 'Calculate'
    TabOrder = 13
  end
  object Output1: TPanel
    Left = 200
    Top = 224
    Width = 121
    Height = 25
    TabOrder = 14
  end
  object Output2: TPanel
    Left = 344
    Top = 224
    Width = 121
    Height = 25
    TabOrder = 15
  end
  object Output3: TPanel
    Left = 488
    Top = 224
    Width = 121
    Height = 25
    TabOrder = 16
  end
  object Panel9: TPanel
    Left = 73
    Top = 226
    Width = 121
    Height = 21
    Caption = 'output'
    TabOrder = 17
  end
end
