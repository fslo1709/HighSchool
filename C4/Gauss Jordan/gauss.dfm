object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Gauss Jordan'
  ClientHeight = 185
  ClientWidth = 342
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
  object StringGrid1: TStringGrid
    Left = 40
    Top = 24
    Width = 153
    Height = 129
    DefaultColWidth = 24
    FixedCols = 0
    FixedRows = 0
    TabOrder = 0
  end
  object Button1: TButton
    Left = 232
    Top = 48
    Width = 75
    Height = 25
    Caption = 'Generar'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 232
    Top = 112
    Width = 75
    Height = 25
    Caption = 'Operar'
    TabOrder = 2
    OnClick = Button2Click
  end
end
