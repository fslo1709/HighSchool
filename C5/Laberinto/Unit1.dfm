object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Laberinto'
  ClientHeight = 400
  ClientWidth = 399
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Image1: TImage
    Left = 0
    Top = 0
    Width = 400
    Height = 400
  end
  object Timer1: TTimer
    Interval = 50
    OnTimer = Timer1Timer
    Left = 352
    Top = 16
  end
end
