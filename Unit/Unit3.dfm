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
    Left = 96
    Top = 104
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
  object Edit2: TEdit
    Left = 73
    Top = 123
    Width = 121
    Height = 21
    Enabled = False
    ReadOnly = True
    TabOrder = 1
    Text = 'TU IP'
  end
  object Button2: TButton
    Left = 200
    Top = 121
    Width = 75
    Height = 25
    Caption = 'Download'
    TabOrder = 2
    OnClick = Button2Click
  end
end
