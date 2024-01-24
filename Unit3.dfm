object Form3: TForm3
  Left = 0
  Top = 0
  Caption = 'Form3'
  ClientHeight = 367
  ClientWidth = 654
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 15
  object Label1: TLabel
    Left = 208
    Top = 192
    Width = 34
    Height = 15
    Caption = 'Label1'
  end
  object Edit1: TEdit
    Left = 208
    Top = 121
    Width = 121
    Height = 23
    TabOrder = 0
  end
  object Button1: TButton
    Left = 376
    Top = 120
    Width = 75
    Height = 25
    Caption = 'Add'
    TabOrder = 1
    OnClick = Button1Click
  end
end
