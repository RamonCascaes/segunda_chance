object Fcupomfiscal: TFcupomfiscal
  Left = 0
  Top = 0
  BorderStyle = bsSizeToolWin
  Caption = 'Cupom'
  ClientHeight = 402
  ClientWidth = 299
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
  object Memo1: TMemo
    Left = 0
    Top = 0
    Width = 297
    Height = 402
    Align = alLeft
    Lines.Strings = (
      
        '----------------------------------------------------------------' +
        '------- '
      '                                   Ramon Sistemas'
      
        '----------------------------------------------------------------' +
        '-------'
      '               MATEUS COHAMA SUPERMERCADOS SA'
      '                                  S'#227'o Luis-Ma'
      
        'CGC:                                                         99.' +
        '999.99/9999-1'
      '                                    CUPOM FISCAL '
      '15/05/2019      19:00:52   998888889444444999        #SC'
      
        '----------------------------------------------------------------' +
        '------'
      
        'codigo    produtos                                       valor t' +
        'otal    qtd'
      '  ')
    TabOrder = 0
    ExplicitLeft = 8
    ExplicitTop = -1
    ExplicitHeight = 394
  end
end
