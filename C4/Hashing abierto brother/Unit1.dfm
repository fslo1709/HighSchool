object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 318
  ClientWidth = 659
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
  object Label1: TLabel
    Left = 32
    Top = 67
    Width = 36
    Height = 13
    Caption = 'Palabra'
  end
  object Label2: TLabel
    Left = 264
    Top = 45
    Width = 52
    Height = 13
    Caption = 'Elementos '
  end
  object Label3: TLabel
    Left = 392
    Top = 45
    Width = 47
    Height = 13
    Caption = 'Colisiones'
  end
  object Edit1: TEdit
    Left = 80
    Top = 64
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Button1: TButton
    Left = 80
    Top = 91
    Width = 121
    Height = 25
    Caption = 'Guardar'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Memo1: TMemo
    Left = 232
    Top = 64
    Width = 113
    Height = 153
    TabOrder = 2
  end
  object Memo2: TMemo
    Left = 359
    Top = 64
    Width = 113
    Height = 153
    TabOrder = 3
  end
end