object Form3: TForm3
  Left = 0
  Top = 0
  Caption = 'Play'
  ClientHeight = 562
  ClientWidth = 676
  Color = clWhite
  DoubleBuffered = True
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -21
  Font.Name = 'Nightmare Hero'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 33
  object Label1: TLabel
    Left = 224
    Top = 200
    Width = 169
    Height = 50
    Caption = 'SELECT SONG'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -32
    Font.Name = 'Nightmare Hero'
    Font.Style = []
    ParentFont = False
    OnClick = Label1Click
  end
  object Label2: TLabel
    Left = 277
    Top = 288
    Width = 68
    Height = 50
    Caption = 'BACK'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -32
    Font.Name = 'Nightmare Hero'
    Font.Style = []
    ParentFont = False
    OnClick = Label2Click
  end
  object Label3: TLabel
    Left = 80
    Top = 521
    Width = 74
    Height = 33
    Caption = 'NOMBRE'
    Visible = False
  end
  object Label4: TLabel
    Left = 562
    Top = 103
    Width = 85
    Height = 50
    Caption = 'SCORE:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -32
    Font.Name = 'Nightmare Hero'
    Font.Style = []
    ParentFont = False
    Visible = False
  end
  object Label5: TLabel
    Left = 596
    Top = 159
    Width = 9
    Height = 33
    BiDiMode = bdLeftToRight
    Caption = '0'
    ParentBiDiMode = False
    Visible = False
  end
  object Shape1: TShape
    Left = 80
    Top = 449
    Width = 73
    Height = 25
    Brush.Color = clBlack
    Pen.Color = clGreen
    Pen.Width = 6
    Shape = stEllipse
    Visible = False
  end
  object Shape2: TShape
    Left = 176
    Top = 449
    Width = 73
    Height = 25
    Brush.Color = clBlack
    Pen.Color = clRed
    Pen.Width = 6
    Shape = stEllipse
    Visible = False
  end
  object Shape3: TShape
    Left = 272
    Top = 449
    Width = 73
    Height = 25
    Brush.Color = clBlack
    Pen.Color = clYellow
    Pen.Width = 6
    Shape = stEllipse
    Visible = False
  end
  object Shape4: TShape
    Left = 368
    Top = 449
    Width = 73
    Height = 25
    Brush.Color = clBlack
    Pen.Color = clBlue
    Pen.Width = 6
    Shape = stEllipse
    Visible = False
  end
  object Shape5: TShape
    Left = 464
    Top = 449
    Width = 73
    Height = 25
    Brush.Color = clBlack
    Pen.Color = 625119
    Pen.Width = 6
    Shape = stEllipse
    Visible = False
  end
  object MediaPlayer1: TMediaPlayer
    Left = 415
    Top = 2
    Width = 253
    Height = 30
    Visible = False
    TabOrder = 0
  end
  object Memo1: TMemo
    Left = 564
    Top = 297
    Width = 104
    Height = 257
    Ctl3D = True
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 1
    Visible = False
  end
  object OpenDialog1: TOpenDialog
    Left = 536
    Top = 88
  end
end
