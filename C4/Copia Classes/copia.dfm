object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 202
  ClientWidth = 447
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnMouseDown = FormMouseDown
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 312
    Top = 40
    Width = 75
    Height = 25
    Caption = 'Push'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 312
    Top = 80
    Width = 75
    Height = 25
    Caption = 'Pop'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 312
    Top = 120
    Width = 75
    Height = 25
    Caption = 'Top'
    TabOrder = 2
    OnClick = Button3Click
  end
end