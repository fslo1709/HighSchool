object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 329
  ClientWidth = 573
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object StringGrid1: TStringGrid
    Left = 8
    Top = 34
    Width = 557
    Height = 191
    DefaultColWidth = 100
    FixedCols = 0
    FixedRows = 0
    TabOrder = 0
  end
  object Button1: TButton
    Left = 80
    Top = 248
    Width = 75
    Height = 25
    Caption = 'Agregar'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 200
    Top = 248
    Width = 75
    Height = 25
    Caption = 'Borrar'
    TabOrder = 2
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 320
    Top = 248
    Width = 75
    Height = 25
    Caption = 'Modificar'
    TabOrder = 3
    OnClick = Button3Click
  end
  object LabeledEdit1: TLabeledEdit
    Left = 80
    Top = 72
    Width = 121
    Height = 21
    EditLabel.Width = 37
    EditLabel.Height = 13
    EditLabel.Caption = 'Nombre'
    TabOrder = 4
    Visible = False
  end
  object LabeledEdit2: TLabeledEdit
    Left = 274
    Top = 72
    Width = 121
    Height = 21
    EditLabel.Width = 29
    EditLabel.Height = 13
    EditLabel.Caption = 'Altura'
    TabOrder = 5
    Visible = False
  end
  object LabeledEdit3: TLabeledEdit
    Left = 80
    Top = 136
    Width = 121
    Height = 21
    EditLabel.Width = 24
    EditLabel.Height = 13
    EditLabel.Caption = 'Edad'
    TabOrder = 6
    Visible = False
  end
  object LabeledEdit4: TLabeledEdit
    Left = 274
    Top = 136
    Width = 121
    Height = 21
    EditLabel.Width = 43
    EditLabel.Height = 13
    EditLabel.Caption = 'Direcci'#243'n'
    TabOrder = 7
    Visible = False
  end
  object LabeledEdit5: TLabeledEdit
    Left = 168
    Top = 24
    Width = 121
    Height = 21
    EditLabel.Width = 11
    EditLabel.Height = 13
    EditLabel.Caption = 'ID'
    TabOrder = 8
    Visible = False
  end
  object Button4: TButton
    Left = 144
    Top = 192
    Width = 75
    Height = 25
    TabOrder = 9
    Visible = False
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 240
    Top = 192
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 10
    Visible = False
    OnClick = Button5Click
  end
  object MyConnection1: TMyConnection
    LoginPrompt = False
    Left = 64
  end
  object MyQuery1: TMyQuery
    Connection = MyConnection1
    Left = 144
  end
end
