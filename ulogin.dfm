object Flogin: TFlogin
  Left = 0
  Top = 0
  BorderStyle = bsSizeToolWin
  Caption = 'Sistema de compras'
  ClientHeight = 201
  ClientWidth = 285
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object MainMenu1: TMainMenu
    Left = 176
    Top = 16
    object Entrar1: TMenuItem
      Caption = 'Entrar'
      OnClick = Entrar1Click
    end
    object Consultar1: TMenuItem
      Caption = 'Consultar'
      object Compras1: TMenuItem
        Caption = 'Compras feitas'
        OnClick = Compras1Click
      end
      object Carrinho1: TMenuItem
        Caption = 'Carrinho'
        OnClick = Carrinho1Click
      end
    end
    object Sair1: TMenuItem
      Caption = 'Sair'
      OnClick = Sair1Click
    end
  end
end
