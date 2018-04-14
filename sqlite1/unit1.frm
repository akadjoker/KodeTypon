object Form1: TForm1
  Left = 260
  Height = 456
  Top = 148
  Width = 778
  Caption = 'Form1'
  ClientHeight = 456
  ClientWidth = 778
  OnClose = FormClose
  OnCreate = FormCreate
  LCLVersion = '6.4'
  object Button1: TButton
    Left = 40
    Height = 25
    Top = 32
    Width = 75
    Caption = 'Ligar'
    OnClick = Button1Click
    TabOrder = 0
  end
  object Memo1: TMemo
    Left = 416
    Height = 90
    Top = 240
    Width = 150
    Lines.Strings = (
      'Memo1'
    )
    TabOrder = 1
  end
  object DBGrid1: TDBGrid
    Left = 24
    Height = 248
    Top = 64
    Width = 384
    Color = clWindow
    Columns = <>
    DataSource = DataSource1
    TabOrder = 2
  end
  object DBNavigator1: TDBNavigator
    Left = 120
    Height = 25
    Top = 32
    Width = 241
    BevelOuter = bvNone
    ChildSizing.EnlargeHorizontal = crsScaleChilds
    ChildSizing.EnlargeVertical = crsScaleChilds
    ChildSizing.ShrinkHorizontal = crsScaleChilds
    ChildSizing.ShrinkVertical = crsScaleChilds
    ChildSizing.Layout = cclLeftToRightThenTopToBottom
    ChildSizing.ControlsPerLine = 100
    ClientHeight = 25
    ClientWidth = 241
    DataSource = DataSource1
    Options = []
    TabOrder = 3
  end
  object DBEdit1: TDBEdit
    Left = 424
    Height = 27
    Top = 64
    Width = 80
    DataSource = DataSource1
    CharCase = ecNormal
    MaxLength = 0
    TabOrder = 4
  end
  object DBEdit2: TDBEdit
    Left = 424
    Height = 27
    Top = 96
    Width = 80
    DataSource = DataSource1
    CharCase = ecNormal
    MaxLength = 0
    TabOrder = 5
  end
  object DBEdit3: TDBEdit
    Left = 424
    Height = 27
    Top = 131
    Width = 80
    DataSource = DataSource1
    CharCase = ecNormal
    MaxLength = 0
    TabOrder = 6
  end
  object DBEdit4: TDBEdit
    Left = 424
    Height = 27
    Top = 166
    Width = 80
    DataSource = DataSource1
    CharCase = ecNormal
    MaxLength = 0
    TabOrder = 7
  end
  object DataSource1: TDataSource
    DataSet = SQLQuery1
    Left = 24
  end
  object SQLite3Connection1: TSQLite3Connection
    Connected = True
    LoginPrompt = False
    DatabaseName = '/home/djoker/dev/pascal/CodeOcean/pl_ZeosDBO/sqlite1/data.db'
    KeepConnection = False
    Transaction = SQLTransaction1
    Left = 24
    Top = 8
  end
  object SQLQuery1: TSQLQuery
    FieldDefs = <>
    Database = SQLite3Connection1
    Transaction = SQLTransaction1
    SQL.Strings = (
      'SELECT * FROM Alunos'
    )
    Params = <>
    Left = 592
    Top = 16
  end
  object SQLTransaction1: TSQLTransaction
    Active = True
    Database = SQLite3Connection1
    Left = 552
    Top = 24
  end
end
