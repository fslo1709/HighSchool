object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Josu'#233' Jacobs Tercero'
  ClientHeight = 245
  ClientWidth = 298
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
  object PageControl1: TPageControl
    Left = 12
    Top = 8
    Width = 281
    Height = 229
    ActivePage = TabSheet1
    TabOrder = 6
    object TabSheet1: TTabSheet
      Caption = 'Archivo'
      object Label4: TLabel
        Left = 32
        Top = 103
        Width = 24
        Height = 13
        Caption = 'Email'
      end
      object Label3: TLabel
        Left = 32
        Top = 76
        Width = 42
        Height = 13
        Caption = 'Telefono'
      end
      object Label2: TLabel
        Left = 32
        Top = 49
        Width = 43
        Height = 13
        Caption = 'Direcci'#243'n'
      end
      object Label1: TLabel
        Left = 32
        Top = 22
        Width = 37
        Height = 13
        Caption = 'Nombre'
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Buscar Archivos'
      ImageIndex = 1
      object Label5: TLabel
        Left = 32
        Top = 22
        Width = 37
        Height = 13
        Caption = 'Nombre'
      end
      object Label6: TLabel
        Left = 32
        Top = 49
        Width = 43
        Height = 13
        Caption = 'Direccion'
      end
      object Label7: TLabel
        Left = 32
        Top = 76
        Width = 42
        Height = 13
        Caption = 'Telefono'
      end
      object Label8: TLabel
        Left = 32
        Top = 103
        Width = 24
        Height = 13
        Caption = 'Email'
      end
    end
  end
  object Edit1: TEdit
    Left = 104
    Top = 51
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 104
    Top = 78
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 104
    Top = 105
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object Edit4: TEdit
    Left = 104
    Top = 132
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object Button1: TButton
    Left = 72
    Top = 167
    Width = 75
    Height = 25
    Caption = 'Ingresar'
    TabOrder = 4
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 185
    Top = 167
    Width = 75
    Height = 25
    Caption = 'Borrar'
    TabOrder = 5
    OnClick = Button2Click
  end
  object OpenDialog1: TOpenDialog
    Left = 184
    Top = 200
  end
end
