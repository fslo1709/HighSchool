object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'B'#250'squeda Binaria'
  ClientHeight = 219
  ClientWidth = 457
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
    Top = 48
    Width = 289
    Height = 33
    DefaultColWidth = 24
    FixedCols = 0
    RowCount = 1
    FixedRows = 0
    TabOrder = 0
  end
  object SpinEdit1: TSpinEdit
    Left = 376
    Top = 48
    Width = 41
    Height = 29
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    MaxValue = 10
    MinValue = 1
    ParentFont = False
    TabOrder = 1
    Value = 5
    OnChange = SpinEdit1Change
  end
  object Button1: TButton
    Left = 40
    Top = 128
    Width = 75
    Height = 25
    Caption = 'Generar'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 40
    Top = 176
    Width = 121
    Height = 21
    TabOrder = 3
    Text = '0'
  end
  object Button2: TButton
    Left = 216
    Top = 174
    Width = 75
    Height = 25
    Caption = 'Buscar'
    TabOrder = 4
    OnClick = Button2Click
  end
end