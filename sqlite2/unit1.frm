object Form1: TForm1
  Left = 254
  Height = 296
  Top = 191
  Width = 723
  Caption = 'Form1'
  ClientHeight = 296
  ClientWidth = 723
  LCLVersion = '6.4'
  object DBGrid1: TDBGrid
    Left = 8
    Height = 224
    Top = 56
    Width = 464
    Color = clWindow
    Columns = <    
      item
        Color = clSilver
        ReadOnly = True
        Title.Caption = 'id'
        Width = 60
        FieldName = 'id'
      end    
      item
        Title.Caption = 'PrimeiroNome'
        Width = 120
        FieldName = 'PrimeiroNome'
      end    
      item
        Title.Caption = 'UltimoNome'
        Width = 120
        FieldName = 'UltimoNome'
      end    
      item
        Title.Caption = 'Idade'
        Width = 50
        FieldName = 'Idade'
      end    
      item
        Title.Caption = 'Nota'
        Width = 40
        FieldName = 'Nota'
      end>
    DataSource = DataSource1
    TabOrder = 0
  end
  object DBNavigator1: TDBNavigator
    Left = 40
    Height = 32
    Top = 8
    Width = 296
    BevelOuter = bvSpace
    ChildSizing.EnlargeHorizontal = crsScaleChilds
    ChildSizing.EnlargeVertical = crsScaleChilds
    ChildSizing.ShrinkHorizontal = crsScaleChilds
    ChildSizing.ShrinkVertical = crsScaleChilds
    ChildSizing.Layout = cclLeftToRightThenTopToBottom
    ChildSizing.ControlsPerLine = 100
    ClientHeight = 32
    ClientWidth = 296
    DataSource = DataSource1
    OnClick = DBNavigator1Click
    Options = []
    TabOrder = 1
  end
  object DBEdit1: TDBEdit
    Left = 543
    Height = 27
    Top = 25
    Width = 80
    DataField = 'PrimeiroNome'
    DataSource = DataSource1
    CharCase = ecNormal
    MaxLength = 40
    TabOrder = 2
  end
  object DBEdit2: TDBEdit
    Left = 544
    Height = 27
    Top = 56
    Width = 80
    DataField = 'UltimoNome'
    DataSource = DataSource1
    CharCase = ecNormal
    MaxLength = 40
    TabOrder = 3
  end
  object DBEdit3: TDBEdit
    Left = 544
    Height = 27
    Top = 88
    Width = 80
    DataField = 'Idade'
    DataSource = DataSource1
    Alignment = taRightJustify
    CharCase = ecNormal
    MaxLength = 0
    TabOrder = 4
  end
  object DBEdit4: TDBEdit
    Left = 544
    Height = 27
    Top = 120
    Width = 80
    DataField = 'Nota'
    DataSource = DataSource1
    Alignment = taRightJustify
    CharCase = ecNormal
    MaxLength = 0
    TabOrder = 5
  end
  object ZConnection1: TZConnection
    ControlsCodePage = cCP_UTF8
    AutoEncodeStrings = False
    Connected = True
    AfterConnect = ZConnection1AfterConnect
    Port = 0
    Database = '/home/djoker/dev/pascal/CodeOcean/pl_ZeosDBO/sqlite2/data.db'
    Protocol = 'sqlite-3'
    Left = 448
    Top = 8
  end
  object ZQuery1: TZQuery
    Connection = ZConnection1
    UpdateObject = ZUpdateSQL1
    AfterPost = ZQuery1AfterPost
    Active = True
    SQL.Strings = (
      'select * from Alunos'
    )
    Params = <>
    Left = 472
    Top = 64
    object ZQuery1id: TLargeintField
      FieldKind = fkData
      FieldName = 'id'
      Index = 0
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = False
      Required = False
    end
    object ZQuery1PrimeiroNome: TStringField
      FieldKind = fkData
      FieldName = 'PrimeiroNome'
      Index = 1
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = False
      Required = False
      Size = 40
    end
    object ZQuery1UltimoNome: TStringField
      FieldKind = fkData
      FieldName = 'UltimoNome'
      Index = 2
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = False
      Required = False
      Size = 40
    end
    object ZQuery1Idade: TLargeintField
      FieldKind = fkData
      FieldName = 'Idade'
      Index = 3
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = False
      Required = False
    end
    object ZQuery1Nota: TFloatField
      FieldKind = fkData
      FieldName = 'Nota'
      Index = 4
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = False
      Required = False
      Precision = 2
    end
  end
  object ZUpdateSQL1: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM Alunos'
      'WHERE'
      '  ((Alunos.id IS NULL AND :OLD_id IS NULL) OR (Alunos.id = :OLD_id))'
    )
    InsertSQL.Strings = (
      'INSERT INTO Alunos'
      '  (id, PrimeiroNome, UltimoNome, Idade, Nota)'
      'VALUES'
      '  (:id, :PrimeiroNome, :UltimoNome, :Idade, :Nota)'
    )
    ModifySQL.Strings = (
      'UPDATE Alunos SET'
      '  id = :id,'
      '  PrimeiroNome = :PrimeiroNome,'
      '  UltimoNome = :UltimoNome,'
      '  Idade = :Idade,'
      '  Nota = :Nota'
      'WHERE'
      '  ((Alunos.id IS NULL AND :OLD_id IS NULL) OR (Alunos.id = :OLD_id))'
    )
    UseSequenceFieldForRefreshSQL = False
    Left = 504
    Top = 192
    ParamData = <    
      item
        DataType = ftUnknown
        Name = 'id'
        ParamType = ptUnknown
      end    
      item
        DataType = ftUnknown
        Name = 'PrimeiroNome'
        ParamType = ptUnknown
      end    
      item
        DataType = ftUnknown
        Name = 'UltimoNome'
        ParamType = ptUnknown
      end    
      item
        DataType = ftUnknown
        Name = 'Idade'
        ParamType = ptUnknown
      end    
      item
        DataType = ftUnknown
        Name = 'Nota'
        ParamType = ptUnknown
      end    
      item
        DataType = ftUnknown
        Name = 'OLD_id'
        ParamType = ptUnknown
      end>
  end
  object DataSource1: TDataSource
    DataSet = ZQuery1
    Left = 488
    Top = 104
  end
end
