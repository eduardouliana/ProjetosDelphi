object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Cadastros de Gastos'
  ClientHeight = 241
  ClientWidth = 468
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
  inline FrameCadastrar1: TFrameCadastrar
    Left = 0
    Top = 0
    Width = 216
    Height = 142
    Align = alClient
    TabOrder = 0
    ExplicitHeight = 121
    inherited Label2: TLabel
      Left = 30
      Top = 43
      ExplicitLeft = 30
      ExplicitTop = 43
    end
    inherited EdtValor: TEdit
      Top = 40
      ExplicitTop = 40
    end
    inherited BtnSalvar: TButton
      Top = 84
      ExplicitTop = 84
    end
  end
  inline FrameSaldo1: TFrameSaldo
    Left = 216
    Top = 0
    Width = 252
    Height = 142
    Align = alRight
    TabOrder = 1
    ExplicitLeft = 224
    ExplicitHeight = 121
  end
  inline FrameLog1: TFrameLog
    Left = 0
    Top = 142
    Width = 468
    Height = 99
    Align = alBottom
    TabOrder = 2
    ExplicitTop = 200
    ExplicitWidth = 635
    ExplicitHeight = 99
    inherited MmoLog: TMemo
      Width = 468
      Height = 99
      ExplicitWidth = 635
      ExplicitHeight = 89
    end
  end
end
