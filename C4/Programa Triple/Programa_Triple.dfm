object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Programa Triple - Sebasti'#225'n L'#243'pez, C4A'
  ClientHeight = 389
  ClientWidth = 483
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 8
    Top = 8
    Width = 473
    Height = 377
    ActivePage = TabSheet3
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Factorial'
      object Label1: TLabel
        Left = 208
        Top = 200
        Width = 7
        Height = 25
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Edit1: TEdit
        Left = 80
        Top = 46
        Width = 121
        Height = 24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object Button1: TButton
        Left = 296
        Top = 46
        Width = 75
        Height = 25
        Caption = 'Factorial'
        TabOrder = 1
        OnClick = Button1Click
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Elevado'
      ImageIndex = 1
      object Label2: TLabel
        Left = 167
        Top = 78
        Width = 84
        Height = 19
        Caption = 'elevado a la'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 200
        Top = 238
        Width = 5
        Height = 19
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Edit2: TEdit
        Left = 40
        Top = 80
        Width = 121
        Height = 21
        TabOrder = 0
      end
      object Edit3: TEdit
        Left = 257
        Top = 80
        Width = 121
        Height = 21
        TabOrder = 1
      end
      object Button2: TButton
        Left = 167
        Top = 144
        Width = 84
        Height = 25
        Caption = 'Resultado'
        TabOrder = 2
        OnClick = Button2Click
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'F'#243'rmula'
      ImageIndex = 2
      object Label4: TLabel
        Left = 79
        Top = 38
        Width = 291
        Height = 19
        Caption = '(1/2^1)+(2/2^2)+(3/3^3)+...+(n/2^n)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 192
        Top = 270
        Width = 5
        Height = 19
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object LabeledEdit1: TLabeledEdit
        Left = 168
        Top = 144
        Width = 121
        Height = 21
        Alignment = taCenter
        EditLabel.Width = 9
        EditLabel.Height = 19
        EditLabel.BiDiMode = bdLeftToRight
        EditLabel.Caption = 'n'
        EditLabel.Font.Charset = DEFAULT_CHARSET
        EditLabel.Font.Color = clWindowText
        EditLabel.Font.Height = -16
        EditLabel.Font.Name = 'Tahoma'
        EditLabel.Font.Style = []
        EditLabel.ParentBiDiMode = False
        EditLabel.ParentFont = False
        TabOrder = 0
      end
      object Button3: TButton
        Left = 192
        Top = 200
        Width = 75
        Height = 25
        Caption = 'Resultado'
        TabOrder = 1
        OnClick = Button3Click
      end
    end
  end
end
