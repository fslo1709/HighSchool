object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Elevador'
  ClientHeight = 452
  ClientWidth = 566
  Color = clWhite
  DoubleBuffered = True
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Indicador: TImage
    Left = 40
    Top = 51
    Width = 318
    Height = 112
    Visible = False
  end
  object Puerta_1: TShape
    Left = 40
    Top = 162
    Width = 159
    Height = 271
    Brush.Color = clRed
    Visible = False
  end
  object Puerta_2: TShape
    Left = 199
    Top = 162
    Width = 159
    Height = 271
    Brush.Color = clRed
    Visible = False
  end
  object Label1: TLabel
    Left = 392
    Top = 320
    Width = 82
    Height = 25
    Caption = 'Su piso: '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Visible = False
  end
  object ComboBox1: TComboBox
    Left = 192
    Top = 24
    Width = 145
    Height = 21
    TabOrder = 0
    Text = 'PISO INICIAL'
    Items.Strings = (
      '1'
      '2'
      '3'
      '4'
      '5'
      '6'
      '7'
      '8'
      '9'
      '10')
  end
  object Button1: TButton
    Left = 359
    Top = 24
    Width = 75
    Height = 21
    Caption = 'Iniciar'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 392
    Top = 162
    Width = 137
    Height = 130
    Caption = 'LLAMAR AL ELEVADOR'
    TabOrder = 2
    Visible = False
    OnClick = Button2Click
  end
end