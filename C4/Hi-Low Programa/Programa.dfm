object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Programa - Sebasti'#225'n L'#243'pez'
  ClientHeight = 222
  ClientWidth = 388
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
    Left = 24
    Top = 168
    Width = 46
    Height = 19
    Caption = 'Label1'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Visible = False
  end
  object Button1: TButton
    Left = 256
    Top = 8
    Width = 75
    Height = 57
    Caption = 'Iniciar'
    TabOrder = 0
    OnClick = Button1Click
  end
  object LabeledEdit1: TLabeledEdit
    Left = 24
    Top = 89
    Width = 137
    Height = 21
    EditLabel.Width = 37
    EditLabel.Height = 13
    EditLabel.Caption = 'N'#250'mero'
    Enabled = False
    TabOrder = 1
  end
  object Button2: TButton
    Left = 256
    Top = 71
    Width = 75
    Height = 57
    Caption = 'Probar'
    Default = True
    Enabled = False
    TabOrder = 2
    OnClick = Button2Click
  end
end
