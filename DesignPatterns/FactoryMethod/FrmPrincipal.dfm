object FrmCalculadora: TFrmCalculadora
  Left = 0
  Top = 0
  Caption = 'Calculadora'
  ClientHeight = 221
  ClientWidth = 301
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object CmbTipoCalculo: TComboBox
    Left = 88
    Top = 8
    Width = 121
    Height = 21
    ItemIndex = 0
    TabOrder = 0
    Text = 'Somar'
    Items.Strings = (
      'Somar'
      'Subtrair')
  end
  object BtnExecutar: TButton
    Left = 88
    Top = 80
    Width = 121
    Height = 25
    Caption = 'Executar'
    TabOrder = 1
    OnClick = BtnExecutarClick
  end
  object EdtValor1: TEdit
    Left = 88
    Top = 43
    Width = 49
    Height = 21
    NumbersOnly = True
    TabOrder = 2
    Text = '0'
  end
  object EdtValor2: TEdit
    Left = 160
    Top = 43
    Width = 49
    Height = 21
    NumbersOnly = True
    TabOrder = 3
    Text = '0'
  end
  object MmoResultado: TMemo
    Left = 88
    Top = 111
    Width = 121
    Height = 89
    Lines.Strings = (
      'MmoResultado')
    TabOrder = 4
  end
end
