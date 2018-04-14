unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, db, Forms, Controls, Graphics, Dialogs, DBGrids, DbCtrls,
  ZConnection, ZDataset, ZSqlUpdate;

type

  { TForm1 }

  TForm1 = class(TForm)
    DataSource1: TDataSource;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    ZConnection1: TZConnection;
    ZQuery1: TZQuery;
    ZQuery1id: TLargeintField;
    ZQuery1Idade: TLargeintField;
    ZQuery1Nota: TFloatField;
    ZQuery1PrimeiroNome: TStringField;
    ZQuery1UltimoNome: TStringField;
    ZUpdateSQL1: TZUpdateSQL;
    procedure DBNavigator1Click(Sender: TObject; Button: TDBNavButtonType);
    procedure ZConnection1AfterConnect(Sender: TObject);
    procedure ZQuery1AfterPost(DataSet: TDataSet);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.frm}

{ TForm1 }

procedure TForm1.ZQuery1AfterPost(DataSet: TDataSet);
begin
  ZQuery1.ApplyUpdates;
  ZQuery1.Refresh;
end;

procedure TForm1.ZConnection1AfterConnect(Sender: TObject);
begin

end;

procedure TForm1.DBNavigator1Click(Sender: TObject; Button: TDBNavButtonType);
begin

end;

end.

