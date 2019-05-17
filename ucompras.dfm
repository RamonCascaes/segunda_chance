object Fcompras: TFcompras
  Left = 0
  Top = 0
  Caption = 'Carrinho de compras'
  ClientHeight = 303
  ClientWidth = 599
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 167
    Top = 267
    Width = 114
    Height = 25
    Caption = 'Adicionar ao Carrinho'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Sair: TButton
    Left = 516
    Top = 267
    Width = 75
    Height = 25
    Caption = 'Sair'
    TabOrder = 1
    OnClick = SairClick
  end
  object pesqpro: TButton
    Left = 8
    Top = 8
    Width = 121
    Height = 25
    Caption = 'Pesquisar produtos'
    TabOrder = 2
    OnClick = pesqproClick
  end
  object dbgrd1: TDBGrid
    Left = 8
    Top = 48
    Width = 583
    Height = 213
    DataSource = Form1.ds2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ParentFont = False
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnColEnter = dbgrd1ColEnter
    OnDblClick = dbgrd1DblClick
  end
  object Cmbqtdpro: TComboBox
    Left = 16
    Top = 267
    Width = 145
    Height = 21
    TabOrder = 4
    Text = 'Quantidade '
  end
  object Button2: TButton
    Left = 444
    Top = 8
    Width = 147
    Height = 25
    Caption = 'Consultar Itens no carrinho'
    TabOrder = 5
    OnClick = Button2Click
  end
end
