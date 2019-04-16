object FrameCadastrar: TFrameCadastrar
  Left = 0
  Top = 0
  Width = 228
  Height = 149
  TabOrder = 0
  object Label1: TLabel
    Left = 14
    Top = 11
    Width = 47
    Height = 13
    Caption = 'Opera'#231#227'o'
  end
  object Label2: TLabel
    Left = 33
    Top = 56
    Width = 28
    Height = 13
    Caption = 'Valor:'
  end
  object CmbOperacao: TComboBox
    Left = 64
    Top = 8
    Width = 145
    Height = 21
    ItemIndex = 0
    TabOrder = 0
    Text = 'Cr'#233'dito'
    Items.Strings = (
      'Cr'#233'dito'
      'D'#233'bito')
  end
  object EdtValor: TEdit
    Left = 64
    Top = 53
    Width = 145
    Height = 21
    NumbersOnly = True
    TabOrder = 1
    Text = '0'
  end
  object BtnSalvar: TButton
    Left = 16
    Top = 104
    Width = 193
    Height = 25
    Caption = 'Salvar'
    TabOrder = 2
    OnClick = BtnSalvarClick
  end
end
