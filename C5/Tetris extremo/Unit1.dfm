object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Tetris'
  ClientHeight = 245
  ClientWidth = 274
  Color = clBackground
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 88
    Top = 128
    Width = 90
    Height = 32
    Caption = 'JUGAR'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -32
    Font.Name = 'ArcadeClassic'
    Font.Style = []
    ParentFont = False
    OnClick = Label1Click
  end
  object Label2: TLabel
    Left = 88
    Top = 174
    Width = 90
    Height = 32
    Caption = 'AYUDA'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -32
    Font.Name = 'ArcadeClassic'
    Font.Style = []
    ParentFont = False
    OnClick = Label2Click
  end
  object Label3: TLabel
    Left = 80
    Top = 24
    Width = 108
    Height = 32
    Caption = 'tetris'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -32
    Font.Name = 'ArcadeClassic'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 70
    Top = 62
    Width = 126
    Height = 32
    Caption = 'EXTREMO'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -32
    Font.Name = 'ArcadeClassic'
    Font.Style = []
    ParentFont = False
  end
end