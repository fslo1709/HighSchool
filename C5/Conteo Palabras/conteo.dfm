object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Conteo Palabras'
  ClientHeight = 425
  ClientWidth = 644
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
    Left = 8
    Top = 74
    Width = 103
    Height = 13
    Caption = 'Longitud l'#237'nea mayor:'
    Visible = False
  end
  object Label2: TLabel
    Left = 8
    Top = 122
    Width = 103
    Height = 13
    Caption = 'Longitud l'#237'nea menor:'
    Visible = False
  end
  object Label3: TLabel
    Left = 8
    Top = 93
    Width = 31
    Height = 13
    Caption = 'Label3'
    Visible = False
  end
  object Label4: TLabel
    Left = 8
    Top = 141
    Width = 31
    Height = 13
    Caption = 'Label3'
    Visible = False
  end
  object Image1: TImage
    Left = 223
    Top = 8
    Width = 400
    Height = 400
  end
  object Label5: TLabel
    Left = 8
    Top = 160
    Width = 31
    Height = 13
    Caption = 'Label5'
    Visible = False
  end
  object Button1: TButton
    Left = 8
    Top = 8
    Width = 209
    Height = 49
    Caption = 'Cargar Archivo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnClick = Button1Click
  end
  object Memo1: TMemo
    Left = 8
    Top = 179
    Width = 185
    Height = 229
    TabOrder = 1
  end
end
