object Form1: TForm1
  Left = 273
  Height = 347
  Top = 193
  Width = 830
  Caption = 'Form1'
  ClientHeight = 347
  ClientWidth = 830
  LCLVersion = '6.4'
  object DBGrid1: TDBGrid
    Left = 8
    Height = 224
    Top = 120
    Width = 544
    Color = clWindow
    Columns = <>
    DataSource = DataSource1
    TabOrder = 0
    OnCellClick = DBGrid1CellClick
    OnColEnter = DBGrid1ColEnter
    OnDrawColumnCell = DBGrid1DrawColumnCell
    OnDblClick = DBGrid1DblClick
    OnGetCellHint = DBGrid1GetCellHint
  end
  object Button1: TButton
    Left = 19
    Height = 25
    Top = 20
    Width = 75
    Caption = 'Connect'
    OnClick = Button1Click
    TabOrder = 1
  end
  object Button2: TButton
    Left = 19
    Height = 25
    Top = 56
    Width = 75
    Caption = 'Open'
    OnClick = Button2Click
    TabOrder = 2
  end
  object Button3: TButton
    Left = 130
    Height = 25
    Top = 22
    Width = 75
    Caption = 'Create'
    OnClick = Button3Click
    TabOrder = 3
  end
  object Button4: TButton
    Left = 130
    Height = 25
    Top = 56
    Width = 174
    Caption = 'Create And Insert'
    OnClick = Button4Click
    TabOrder = 4
  end
  object Button5: TButton
    Left = 19
    Height = 25
    Top = 88
    Width = 75
    Caption = 'Open'
    OnClick = Button5Click
    TabOrder = 5
  end
  object Button6: TButton
    Left = 389
    Height = 25
    Top = 48
    Width = 283
    Caption = 'Insert'
    OnClick = Button6Click
    TabOrder = 6
  end
  object Button7: TButton
    Left = 224
    Height = 25
    Top = 20
    Width = 75
    Caption = 'delete'
    OnClick = Button7Click
    TabOrder = 7
  end
  object Edit1: TEdit
    Left = 320
    Height = 27
    Top = 18
    Width = 32
    TabOrder = 8
    Text = '0'
  end
  object Edit2: TEdit
    Left = 389
    Height = 27
    Top = 19
    Width = 80
    TabOrder = 9
    Text = 'compname'
  end
  object Edit3: TEdit
    Left = 487
    Height = 27
    Top = 19
    Width = 80
    TabOrder = 10
    Text = 'username'
  end
  object Edit4: TEdit
    Left = 594
    Height = 27
    Top = 19
    Width = 80
    TabOrder = 11
    Text = 'model'
  end
  object Memo1: TMemo
    Left = 582
    Height = 167
    Top = 121
    Width = 226
    Lines.Strings = (
      'Procedure Jump'
    )
    TabOrder = 12
  end
  object DBNavigator1: TDBNavigator
    Left = 301
    Height = 25
    Top = 93
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
    ConfirmDelete = False
    DataSource = DataSource1
    OnClick = DBNavigator1Click
    Options = []
    TabOrder = 13
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbRefresh]
  end
  object ZConnection1: TZConnection
    ControlsCodePage = cCP_UTF8
    AutoEncodeStrings = False
    Properties.Strings = (
      'AutoEncodeStrings='
    )
    Port = 0
    Protocol = 'sqlite-3'
    Left = 376
    Top = 152
  end
  object ZQuery1: TZQuery
    Connection = ZConnection1
    UpdateObject = ZUpdateSQL1
    Params = <>
    Left = 408
    Top = 120
  end
  object DataSource1: TDataSource
    DataSet = ZQuery1
    Left = 448
    Top = 136
  end
  object ZUpdateSQL1: TZUpdateSQL
    UseSequenceFieldForRefreshSQL = False
    Left = 297
    Top = 161
  end
end
