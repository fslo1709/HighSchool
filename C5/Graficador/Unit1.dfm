object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Graficador'
  ClientHeight = 570
  ClientWidth = 595
  Color = clBackground
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Image1: TImage
    Left = 8
    Top = 62
    Width = 500
    Height = 500
    PopupMenu = PopupMenu1
    OnMouseMove = Image1MouseMove
  end
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 17
    Height = 19
    Caption = '(,)'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Visible = False
  end
  object Edit1: TEdit
    Left = 8
    Top = 29
    Width = 321
    Height = 27
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    Text = 'x+1'
  end
  object Button1: TButton
    Left = 514
    Top = 62
    Width = 66
    Height = 48
    Caption = 'Graficar'
    TabOrder = 1
    OnClick = Button1Click
  end
  object LabeledEdit1: TLabeledEdit
    Left = 397
    Top = 29
    Width = 45
    Height = 27
    EditLabel.Width = 50
    EditLabel.Height = 19
    EditLabel.Caption = 'L'#237'mites'
    EditLabel.Font.Charset = DEFAULT_CHARSET
    EditLabel.Font.Color = clWhite
    EditLabel.Font.Height = -16
    EditLabel.Font.Name = 'Tahoma'
    EditLabel.Font.Style = []
    EditLabel.ParentFont = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    LabelPosition = lpLeft
    ParentFont = False
    TabOrder = 3
    Text = '-10'
  end
  object Edit2: TEdit
    Left = 456
    Top = 29
    Width = 44
    Height = 27
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    Text = '10'
  end
  object Button2: TButton
    Left = 514
    Top = 116
    Width = 66
    Height = 48
    Caption = 'Borrar'
    TabOrder = 2
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 514
    Top = 233
    Width = 66
    Height = 48
    Caption = '+'
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 514
    Top = 287
    Width = 66
    Height = 48
    Caption = '-'
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    OnClick = Button4Click
  end
  object PopupMenu1: TPopupMenu
    Left = 8
    Top = 80
    object Zoom1: TMenuItem
      Caption = 'Zoom'
    end
  end
end
