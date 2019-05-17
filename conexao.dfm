object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 97
  ClientWidth = 274
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object con1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Persist Security Info=False;User ID=sa;Initi' +
      'al Catalog=testehihappens;Data Source=10.121.16.199'
    Provider = 'SQLOLEDB.1'
    Left = 32
    Top = 16
  end
  object ds1: TADODataSet
    Connection = con1
    Parameters = <>
    Left = 88
    Top = 16
  end
  object Q: TADOQuery
    Connection = con1
    Parameters = <>
    Left = 136
    Top = 16
  end
  object ds2: TDataSource
    DataSet = Q
    Left = 176
    Top = 16
  end
end
