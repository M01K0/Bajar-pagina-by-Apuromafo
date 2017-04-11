object Form3: TForm3
  Left = 0
  Top = 0
  Caption = 'Form3'
  ClientHeight = 201
  ClientWidth = 447
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
    Left = 152
    Top = 16
    Width = 108
    Height = 13
    Caption = 'Pagina para descargar'
  end
  object Label2: TLabel
    Left = 88
    Top = 133
    Width = 26
    Height = 13
    Caption = 'TU IP'
  end
  object Edit1: TEdit
    Left = 112
    Top = 56
    Width = 257
    Height = 21
    TabOrder = 0
    Text = 'http://www.google.cl'
  end
  object Button1: TButton
    Left = 152
    Top = 104
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Edit2: TEdit
    Left = 72
    Top = 160
    Width = 121
    Height = 21
    Enabled = False
    ReadOnly = True
    TabOrder = 2
    Text = 'TU IP'
  end
end
