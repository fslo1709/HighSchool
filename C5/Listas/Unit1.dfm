object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 263
  ClientWidth = 447
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
    Left = 8
    Top = 35
    Width = 31
    Height = 13
    Caption = 'Label1'
  end
  object Edit1: TEdit
    Left = 8
    Top = 8
    Width = 121
    Height = 21
    TabOrder = 0
    Text = 'Edit1'
  end
  object Button1: TButton
    Left = 288
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Insertar'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 288
    Top = 39
    Width = 75
    Height = 25
    Caption = 'Mostrar'
    TabOrder = 2
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 288
    Top = 100
    Width = 75
    Height = 25
    Caption = 'Anterior'
    TabOrder = 3
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 288
    Top = 131
    Width = 75
    Height = 25
    Caption = #218'ltimo'
    TabOrder = 4
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 288
    Top = 193
    Width = 75
    Height = 25
    Caption = 'Borrar'
    TabOrder = 5
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 288
    Top = 70
    Width = 75
    Height = 25
    Caption = 'Siguiente'
    TabOrder = 6
    OnClick = Button6Click
  end
  object Button7: TButton
    Left = 288
    Top = 162
    Width = 75
    Height = 25
    Caption = 'Primero'
    TabOrder = 7
    OnClick = Button7Click
  end
  object Button8: TButton
    Left = 8
    Top = 112
    Width = 75
    Height = 25
    Caption = 'Tlista1'
    TabOrder = 8
    OnClick = Button8Click
  end
  object Button9: TButton
    Left = 8
    Top = 143
    Width = 75
    Height = 25
    Caption = 'Tlista2'
    TabOrder = 9
    OnClick = Button9Click
  end
end
