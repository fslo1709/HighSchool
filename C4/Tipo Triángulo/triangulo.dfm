object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Tri'#225'ngulo - Sebasti'#225'n L'#243'pez, C4A'
  ClientHeight = 433
  ClientWidth = 358
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 96
    Top = 13
    Width = 162
    Height = 13
    Caption = 'Ingrese tres lados de un tri'#225'ngulo'
  end
  object Image1: TImage
    Left = 8
    Top = 99
    Width = 329
    Height = 326
  end
  object Edit1: TEdit
    Left = 8
    Top = 32
    Width = 89
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 128
    Top = 32
    Width = 89
    Height = 21
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 248
    Top = 32
    Width = 89
    Height = 21
    TabOrder = 2
  end
  object Button1: TButton
    Left = 128
    Top = 59
    Width = 89
    Height = 25
    Caption = 'Verificar'
    TabOrder = 3
    OnClick = Button1Click
  end
end
