object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Operaciones matrices'
  ClientHeight = 347
  ClientWidth = 364
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
    Left = 8
    Top = 32
    Width = 137
    Height = 137
    DefaultColWidth = 24
    FixedCols = 0
    FixedRows = 0
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
    TabOrder = 0
  end
  object StringGrid2: TStringGrid
    Left = 208
    Top = 32
    Width = 137
    Height = 137
    DefaultColWidth = 24
    FixedCols = 0
    FixedRows = 0
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
    TabOrder = 1
  end
  object StringGrid3: TStringGrid
    Left = 104
    Top = 202
    Width = 137
    Height = 137
    DefaultColWidth = 24
    FixedCols = 0
    FixedRows = 0
    TabOrder = 2
  end
  object Button1: TButton
    Left = 151
    Top = 32
    Width = 51
    Height = 25
    Caption = '+'
    TabOrder = 3
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 151
    Top = 63
    Width = 51
    Height = 25
    Caption = '-'
    TabOrder = 4
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 151
    Top = 94
    Width = 51
    Height = 25
    Caption = '*'
    TabOrder = 5
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 8
    Top = 175
    Width = 75
    Height = 25
    Caption = 'Random'
    TabOrder = 6
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 270
    Top = 175
    Width = 75
    Height = 25
    Caption = 'Random'
    TabOrder = 7
    OnClick = Button5Click
  end
end
