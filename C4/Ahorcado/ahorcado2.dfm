object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Ahorcado Extremo'
  ClientHeight = 500
  ClientWidth = 550
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Image1: TImage
    Left = 8
    Top = 48
    Width = 300
    Height = 300
  end
  object Label1: TLabel
    Left = 346
    Top = 61
    Width = 35
    Height = 77
    Caption = '5'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -64
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    OnMouseEnter = Label1MouseEnter
    OnMouseLeave = Label1MouseLeave
  end
  object Label2: TLabel
    Left = 402
    Top = 90
    Width = 116
    Height = 42
    Caption = 'Fallaste'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -35
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Visible = False
  end
  object Label3: TLabel
    Left = 123
    Top = 440
    Width = 304
    Height = 42
    Caption = 'Dead, dead, dead...'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -35
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Visible = False
  end
  object Label4: TLabel
    Left = 146
    Top = 440
    Width = 258
    Height = 42
    Caption = 'Estais a salvo tio'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -35
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Visible = False
  end
  object Label5: TLabel
    Left = 8
    Top = 0
    Width = 396
    Height = 42
    Caption = #191'Quereis jugar de nuevo?'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -35
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Visible = False
    OnClick = Label5Click
    OnMouseEnter = Label5MouseEnter
    OnMouseLeave = Label5MouseLeave
  end
  object Label6: TLabel
    Left = 8
    Top = 365
    Width = 244
    Height = 45
    Caption = '_ _ _ _ _ _ _ _'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -37
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    OnMouseEnter = Label6MouseEnter
    OnMouseLeave = Label6MouseLeave
  end
  object Label7: TLabel
    Left = 330
    Top = 365
    Width = 12
    Height = 45
    Caption = ' '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -37
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Visible = False
    OnMouseEnter = Label6MouseEnter
    OnMouseLeave = Label6MouseLeave
  end
  object Label8: TLabel
    Left = 346
    Top = 144
    Width = 66
    Height = 19
    Caption = 'Correctas'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label9: TLabel
    Left = 452
    Top = 144
    Width = 78
    Height = 19
    Caption = 'Incorrectas'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label10: TLabel
    Left = 450
    Top = 0
    Width = 68
    Height = 42
    Caption = '10.0'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -35
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Visible = False
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 100
    OnTimer = Timer1Timer
    Left = 520
    Top = 472
  end
end
