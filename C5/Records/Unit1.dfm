object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Record'
  ClientHeight = 425
  ClientWidth = 663
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
    Left = 8
    Top = 8
    Width = 641
    Height = 289
    DefaultColWidth = 125
    FixedCols = 0
    RowCount = 1
    FixedRows = 0
    GridLineWidth = 2
    TabOrder = 10
  end
  object LabeledEdit1: TLabeledEdit
    Left = 8
    Top = 320
    Width = 216
    Height = 21
    EditLabel.Width = 37
    EditLabel.Height = 13
    EditLabel.Caption = 'Nombre'
    MaxLength = 30
    TabOrder = 0
    Text = 'Nombre'
  end
  object LabeledEdit2: TLabeledEdit
    Left = 8
    Top = 357
    Width = 216
    Height = 21
    EditLabel.Width = 43
    EditLabel.Height = 13
    EditLabel.Caption = 'Direcci'#243'n'
    MaxLength = 30
    TabOrder = 1
    Text = 'Direcci'#243'n '
  end
  object LabeledEdit3: TLabeledEdit
    Left = 230
    Top = 320
    Width = 163
    Height = 21
    EditLabel.Width = 28
    EditLabel.Height = 13
    EditLabel.Caption = 'E-mail'
    MaxLength = 40
    TabOrder = 2
    Text = 'Correo@ejemplo.com'
  end
  object LabeledEdit4: TLabeledEdit
    Left = 230
    Top = 357
    Width = 163
    Height = 21
    EditLabel.Width = 26
    EditLabel.Height = 13
    EditLabel.Caption = 'Saldo'
    TabOrder = 3
    Text = '0'
  end
  object Button1: TButton
    Left = 8
    Top = 384
    Width = 89
    Height = 33
    Caption = 'Agregar'
    TabOrder = 5
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 191
    Top = 384
    Width = 121
    Height = 33
    Caption = 'Ordenar por c'#243'digo'
    TabOrder = 7
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 318
    Top = 384
    Width = 131
    Height = 33
    Caption = 'Ordenar por nombre'
    TabOrder = 8
    OnClick = Button3Click
  end
  object LabeledEdit5: TLabeledEdit
    Left = 406
    Top = 320
    Width = 91
    Height = 21
    EditLabel.Width = 33
    EditLabel.Height = 13
    EditLabel.Caption = 'C'#243'digo'
    MaxLength = 40
    TabOrder = 4
    Text = '1'
  end
  object Button4: TButton
    Left = 455
    Top = 384
    Width = 75
    Height = 33
    Caption = 'Borrar todo'
    TabOrder = 9
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 103
    Top = 384
    Width = 82
    Height = 33
    Caption = 'Mostrar'
    TabOrder = 6
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 536
    Top = 384
    Width = 113
    Height = 33
    Caption = 'Modificar'
    TabOrder = 11
    OnClick = Button6Click
  end
end
