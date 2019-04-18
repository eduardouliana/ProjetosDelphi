object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 168
  ClientWidth = 337
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Memo1: TMemo
    Left = 8
    Top = 8
    Width = 321
    Height = 121
    Lines.Strings = (
      'Unit criada pela DLL')
    TabOrder = 0
  end
  object Button1: TButton
    Left = 8
    Top = 135
    Width = 321
    Height = 25
    Caption = 'Show message'
    TabOrder = 1
    OnClick = Button1Click
  end
end
