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
    Left = 168
    Top = 80
    Width = 121
    Height = 21
    TabOrder = 0
    Text = '1.1.2016'
  end
  object Input2: TEdit
    Left = 312
    Top = 80
    Width = 121
    Height = 21
    TabOrder = 1
    Text = '0:0:0'
  end
  object Input3: TEdit
    Left = 456
    Top = 80
    Width = 121
    Height = 21
    TabOrder = 2
    Text = '1.1.2017'
  end
  object Format1: TEdit
    Left = 168
    Top = 160
    Width = 121
    Height = 21
    TabOrder = 3
    Text = 'DD.MM YYYY hh:mm:ss'
  end
  object Format2: TEdit
    Left = 312
    Top = 160
    Width = 121
    Height = 21
    TabOrder = 4
    Text = 'DD day(s) YYYY year(s) hh:mm:ss'
  end
  object Format3: TEdit
    Left = 456
    Top = 160
    Width = 121
    Height = 21
    TabOrder = 5
    Text = 'DD.MM YYYY hh:mm:ss'
  end
  object Panel1: TPanel
    Left = 168
    Top = 33
    Width = 121
    Height = 41
    Caption = 't1'
    TabOrder = 6
  end
  object Panel2: TPanel
    Left = 312
    Top = 33
    Width = 121
    Height = 41
    Caption = 'delta t'
    TabOrder = 7
  end
  object Panel3: TPanel
    Left = 456
    Top = 33
    Width = 121
    Height = 41
    Caption = 't2'
    TabOrder = 8
  end
  object Panel4: TPanel
    Left = 41
    Top = 80
    Width = 121
    Height = 21
    Caption = 'value'
    TabOrder = 9
  end
  object Panel5: TPanel
    Left = 41
    Top = 159
    Width = 121
    Height = 21
    Caption = 'output-format'
    TabOrder = 10
  end
  object Button1: TButton
    Left = 168
    Top = 120
    Width = 121
    Height = 25
    Caption = 'Calculate'
    TabOrder = 11
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 312
    Top = 120
    Width = 121
    Height = 25
    Caption = 'Calculate'
    TabOrder = 12
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 456
    Top = 120
    Width = 121
    Height = 25
    Caption = 'Calculate'
    TabOrder = 13
    OnClick = Button3Click
  end
  object Output1: TPanel
    Left = 168
    Top = 200
    Width = 121
    Height = 25
    TabOrder = 14
  end
  object Output2: TPanel
    Left = 312
    Top = 200
    Width = 121
    Height = 25
    TabOrder = 15
  end
  object Output3: TPanel
    Left = 456
    Top = 200
    Width = 121
    Height = 25
    TabOrder = 16
  end
  object Panel9: TPanel
    Left = 41
    Top = 202
    Width = 121
    Height = 21
    Caption = 'output'
    TabOrder = 17
  end
end
