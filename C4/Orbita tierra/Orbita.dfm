object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 547
  ClientWidth = 562
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Shape1: TShape
    Left = 200
    Top = 200
    Width = 100
    Height = 100
    Shape = stCircle
  end
  object Shape2: TShape
    Left = 50
    Top = 240
    Width = 25
    Height = 25
    Shape = stCircle
  end
  object Shape3: TShape
    Left = 90
    Top = 247
    Width = 15
    Height = 15
    Shape = stCircle
  end
  object Timer1: TTimer
    Interval = 1
    OnTimer = Timer1Timer
  end
end
