object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 265
  ClientWidth = 440
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
  object Button1: TButton
    Left = 280
    Top = 32
    Width = 75
    Height = 25
    Caption = 'Ingresar'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 280
    Top = 88
    Width = 75
    Height = 25
    Caption = 'Borrar'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 280
    Top = 144
    Width = 75
    Height = 25
    Caption = 'Buscar'
    TabOrder = 2
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 280
    Top = 200
    Width = 75
    Height = 25
    Caption = 'Modificar'
    TabOrder = 3
    Visible = False
    OnClick = Button4Click
  end
  object Edit1: TEdit
    Left = 96
    Top = 34
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object Edit2: TEdit
    Left = 96
    Top = 90
    Width = 121
    Height = 21
    TabOrder = 5
  end
  object Edit3: TEdit
    Left = 96
    Top = 146
    Width = 121
    Height = 21
    TabOrder = 6
  end
  object Edit4: TEdit
    Left = 96
    Top = 202
    Width = 121
    Height = 21
    TabOrder = 7
  end
  object OpenDialog1: TOpenDialog
    Left = 8
  end
end