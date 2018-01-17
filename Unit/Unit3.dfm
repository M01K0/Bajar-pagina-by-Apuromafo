object Form3: TForm3
  Left = 0
  Top = 0
  Caption = 'Gestor Descarga'
  ClientHeight = 347
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
    Left = 56
    Top = 24
    Width = 122
    Height = 13
    Caption = '1.-Pagina para descargar'
  end
  object Label2: TLabel
    Left = 16
    Top = 289
    Width = 26
    Height = 13
    Caption = 'TU IP'
  end
  object Label3: TLabel
    Left = 56
    Top = 96
    Width = 202
    Height = 13
    Caption = '2.-nombre+ Formato (html/htm zip 7z etc)'
  end
  object Edit1: TEdit
    Left = 56
    Top = 56
    Width = 257
    Height = 21
    TabOrder = 0
    Text = 'http://www.google.cl'
  end
  object Edit2: TEdit
    Left = 57
    Top = 286
    Width = 121
    Height = 21
    Enabled = False
    ReadOnly = True
    TabOrder = 1
    Text = 'TU IP'
  end
  object Button2: TButton
    Left = 249
    Top = 231
    Width = 75
    Height = 25
    Caption = 'Download'
    TabOrder = 2
    OnClick = Button2Click
  end
  object Edit3: TEdit
    Left = 56
    Top = 128
    Width = 75
    Height = 21
    TabOrder = 3
    Text = 'prueba2.htm'
  end
  object Opcion: TRadioGroup
    Left = 34
    Top = 175
    Width = 185
    Height = 105
    Caption = 'Opcion'
    ItemIndex = 0
    Items.Strings = (
      'Descargar y abrir'
      'Descargar')
    TabOrder = 4
  end
end
