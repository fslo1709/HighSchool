object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Connect 4'
  ClientHeight = 379
  ClientWidth = 637
  Color = clWhite
  DoubleBuffered = True
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnMouseDown = FormMouseDown
  OnMouseUp = FormMouseUp
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 40
    Width = 75
    Height = 25
    Caption = 'Player 1'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Visible = False
  end
  object Label2: TLabel
    Left = 8
    Top = 112
    Width = 75
    Height = 25
    Caption = 'Player 2'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Visible = False
  end
  object Shape1: TShape
    Left = 120
    Top = 40
    Width = 17
    Height = 25
    Brush.Color = clBlack
    Shape = stCircle
    Visible = False
  end
  object Shape2: TShape
    Left = 120
    Top = 112
    Width = 17
    Height = 25
    Brush.Color = clRed
    Pen.Color = clRed
    Shape = stCircle
    Visible = False
  end
  object Label3: TLabel
    Left = 32
    Top = 32
    Width = 82
    Height = 35
    Caption = 'BEGIN'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -29
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    OnClick = Label3Click
  end
  object Label4: TLabel
    Left = 40
    Top = 104
    Width = 61
    Height = 35
    Caption = 'EXIT'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -29
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    OnClick = Label4Click
  end
end
