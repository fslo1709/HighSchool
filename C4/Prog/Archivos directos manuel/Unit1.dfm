object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Archivos directos Manuel Mansilla'
  ClientHeight = 512
  ClientWidth = 726
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
    Left = 40
    Top = 51
    Width = 33
    Height = 13
    Caption = 'Codigo'
  end
  object Label2: TLabel
    Left = 40
    Top = 91
    Width = 37
    Height = 13
    Caption = 'Nombre'
  end
  object Label3: TLabel
    Left = 40
    Top = 131
    Width = 24
    Height = 13
    Caption = 'Email'
  end
  object Label4: TLabel
    Left = 40
    Top = 171
    Width = 43
    Height = 13
    Caption = 'Direccion'
  end
  object Label5: TLabel
    Left = 40
    Top = 211
    Width = 29
    Height = 13
    Caption = 'Saldo '
  end
  object StringGrid1: TStringGrid
    Left = 272
    Top = 16
    Width = 433
    Height = 378
    TabOrder = 0
  end
  object Edit1: TEdit
    Left = 104
    Top = 48
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Edit2: TEdit
    Left = 104
    Top = 88
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object Edit3: TEdit
    Left = 104
    Top = 128
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object Edit4: TEdit
    Left = 104
    Top = 168
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object Edit5: TEdit
    Left = 104
    Top = 208
    Width = 121
    Height = 21
    TabOrder = 5
  end
  object Button1: TButton
    Left = 32
    Top = 280
    Width = 75
    Height = 57
    Caption = 'Guardar'
    TabOrder = 6
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 136
    Top = 280
    Width = 75
    Height = 57
    Caption = 'Mostrar'
    TabOrder = 7
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 32
    Top = 359
    Width = 75
    Height = 58
    Caption = 'Borrar'
    TabOrder = 8
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 272
    Top = 416
    Width = 113
    Height = 25
    Caption = 'Bubble codigo'
    TabOrder = 9
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 273
    Top = 447
    Width = 112
    Height = 25
    Caption = 'Conteo codigo'
    TabOrder = 10
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 273
    Top = 478
    Width = 112
    Height = 25
    Caption = 'Insercion codigo'
    TabOrder = 11
  end
  object Button7: TButton
    Left = 425
    Top = 416
    Width = 112
    Height = 25
    Caption = 'Bubble nombre'
    TabOrder = 12
    OnClick = Button7Click
  end
  object Button8: TButton
    Left = 425
    Top = 447
    Width = 112
    Height = 25
    Caption = 'Conteo nombre'
    TabOrder = 13
  end
  object Button9: TButton
    Left = 425
    Top = 478
    Width = 112
    Height = 25
    Caption = 'Insercion nombre'
    TabOrder = 14
  end
  object Button10: TButton
    Left = 136
    Top = 359
    Width = 75
    Height = 58
    Caption = 'Modificar'
    TabOrder = 15
    OnClick = Button10Click
  end
end