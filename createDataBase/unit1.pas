unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, db, Forms, Controls, Graphics, Dialogs, DBGrids, StdCtrls,
  ZConnection, ZDataset, ZSqlUpdate, Grids, DbCtrls, Menus;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Memo1: TMemo;
    ZConnection1: TZConnection;
    ZQuery1: TZQuery;
    ZUpdateSQL1: TZUpdateSQL;
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid1ColEnter(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1GetCellHint(Sender: TObject; Column: TColumn;
      var AText: String);
    procedure DBNavigator1Click(Sender: TObject; Button: TDBNavButtonType);
  private

  public

  end;

var
  Form1: TForm1;

implementation
uses variants;

{$R *.frm}

{ TForm1 }
function Locate(ADataset: TDataset; const KeyField: string; const KeyValue: Variant;
  Options: TLocateOptions): boolean;
var
  F: TField;
begin
  Result := false;
  F := ADataset.FieldByName(KeyField);
  ADataset.DisableControls;
  try
    ADataset.First;
    while not ADataset.Eof do begin
      if VarSameValue(F.Value, KeyValue) then
        exit(true);
      ADataset.Next;
    end;
  finally
    ADataset.EnableControls;
  end;
end;


procedure TForm1.Button3Click(Sender: TObject);
begin
  ZConnection1.Protocol:='sqlite-3';
  ZConnection1.Database:='Database.bd';
  ZConnection1.Connect;
//  ZConnection1.Disconnect;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
    ZConnection1.Connect;
end;

procedure TForm1.Button10Click(Sender: TObject);
begin
   DBGrid1.SelectedRows.Clear;
end;

procedure TForm1.Button11Click(Sender: TObject);
begin
    DBGrid1.SelectedRows.Delete;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  ZQuery1.SQL.Text := 'SELECT id, compname FROM hardware';
  ZQuery1.Open
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
    ZQuery1.SQL.Text := 'CREATE TABLE IF NOT EXISTS hardware (id INTEGER PRIMARY KEY, compname VARCHAR(30), username VARCHAR(30), model VARCHAR(30))';
    ZQuery1.ExecSQL;
    ZQuery1.SQL.Text := 'CREATE INDEX sHardware ON hardware(compname)';
    ZQuery1.ExecSQL;
    //ZQuery1.SQL.Text := 'INSERT INTO hardware(id, compname, username, model) VALUES (1, "AMD8537", "OMonge", "Gigabyte");';
    //ZQuery1.ExecSQL;
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
  ZQuery1.SQL.Text := 'SELECT * FROM hardware';
  ZQuery1.Open
end;

procedure TForm1.Button6Click(Sender: TObject);

begin


    {
   dbgrid1.DataSource.DataSet.DisableControls;
   ZQuery1.Close;
   ZQuery1.SQL.Clear;
   ZQuery1.SQL.Text := 'INSERT INTO hardware(compname, username, model) VALUES ("'+edit2.text+'", "'+edit3.text+'", "'+edit4.text+'");';
   ZQuery1.ExecSQL;
   ZQuery1.SQL.Text := 'SELECT * FROM hardware';
   ZQuery1.Open;
   dbgrid1.DataSource.DataSet.Refresh;
   dbgrid1.DataSource.DataSet.EnableControls;
   }
   DBNavigator1.BtnClick(nbInsert);
  // DBNavigator1.BtnClick(nbRefresh);

end;

procedure TForm1.Button7Click(Sender: TObject);
var
  index:integer;
begin
 //  ZQuery1.SQL.Text := 'DELETE FROM hardware WHERE  ID='+EDIT1.TEXT+';';
//   ZQuery1.ExecSQL;



  // dbgrid1.DataSource.DataSet.DisableControls;
 //  ZQuery1.SQL.Clear;
//   dbgrid1.DataSource.DataSet.Refresh;
//   dbgrid1.DataSource.DataSet.EnableControls;
   DBNavigator1.BtnClick(nbDelete);
 //  DBNavigator1.BtnClick(nbRefresh);


end;

procedure TForm1.Button8Click(Sender: TObject);
begin
  if DBgrid1.SelectedRows.Count > 0 then
  begin
    ShowMessage(IntToStr(DBgrid1.SelectedRows.Count));
  end;
end;

procedure TForm1.Button9Click(Sender: TObject);
begin
    if DBgrid1.SelectedRows.CurrentRowSelected then
    ShowMessage('Selected');
end;

procedure TForm1.DBGrid1CellClick(Column: TColumn);
var
  index:integer;
begin
    memo1.Lines.Clear;
    memo1.lines.add(inttostr(  DBGrid1.SelectedIndex));
    DBGrid1.SelectedIndex;
    memo1.lines.add(inttostr(   DBGRid1.DataSource.DataSet.RecNo));
    index:=DBGRid1.DataSource.DataSet.RecNo-1;
    if not (DBGRid1.DataSource.DataSet.Fields[0].Value=NULL) then
    begin
    edit1.text:=DBGRid1.DataSource.DataSet.Fields[0].Value;

    edit2.text:=DBGRid1.DataSource.DataSet.Fields[1].Value;
    edit3.text:=DBGRid1.DataSource.DataSet.Fields[2].Value;
    edit4.text:=DBGRid1.DataSource.DataSet.Fields[3].Value;


    memo1.lines.add(   DBGRid1.DataSource.DataSet.Fields[0].Value);
    memo1.lines.add(   DBGRid1.DataSource.DataSet.Fields[1].Value);
    memo1.lines.add(   DBGRid1.DataSource.DataSet.Fields[2].Value);
    memo1.lines.add(   DBGRid1.DataSource.DataSet.Fields[3].Value);

    end;



   // memo1.lines.add(Column.FieldName);


end;

procedure TForm1.DBGrid1ColEnter(Sender: TObject);
begin
end;

procedure TForm1.DBGrid1DblClick(Sender: TObject);
begin
//    memo1.lines.add(inttostr(  DBGrid1.SelectedIndex));
 //   memo1.lines.add(inttostr(   DBGRid1.DataSource.DataSet.RecNo));


  //ZQuery1.SQL.Text := 'SELECT * FROM hardware WHERE  ID='+EDIT1.TEXT+';';
  //caption:= ZQuery1.FieldByName('compname').AsString;
  //Button5Click(self);
end;

procedure TForm1.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin

end;

procedure TForm1.DBGrid1GetCellHint(Sender: TObject; Column: TColumn;
  var AText: String);
begin



end;

procedure TForm1.DBNavigator1Click(Sender: TObject; Button: TDBNavButtonType);
begin
     ZConnection1.StartTransaction;


    if Button=nbDelete then
  begin
  ZConnection1.ExecuteDirect('DELETE FROM hardware WHERE  ID='+EDIT1.TEXT+';');
  ZQuery1.Refresh;
  end;
  if Button=nbInsert then
 begin
 ZConnection1.ExecuteDirect('INSERT INTO hardware(compname, username, model) VALUES ("'+edit2.text+'", "'+edit3.text+'", "'+edit4.text+'");');
  ZQuery1.Refresh;
end;
    if Button=nbEdit then
 begin
    ZConnection1.ExecuteDirect('UPDATE   hardware SET compname="'+edit2.text+'" WHERE  ID='+EDIT1.TEXT+';');
    ZQuery1.Refresh;
    ZConnection1.ExecuteDirect('UPDATE   hardware SET username="'+edit3.text+'" WHERE  ID='+EDIT1.TEXT+';');
    ZQuery1.Refresh;
    ZConnection1.ExecuteDirect('UPDATE   hardware SET model="'+edit4.text+'" WHERE  ID='+EDIT1.TEXT+';');
    ZQuery1.Refresh;
    end;




 if Button=nbPost then
 begin
   case DBGrid1.SelectedIndex of
    1:begin

      ZConnection1.ExecuteDirect('UPDATE   hardware SET compname="'+DBGRid1.DataSource.DataSet.Fields[1].Value+'" WHERE  ID='+EDIT1.TEXT+';');
       ZQuery1.Refresh;
    end;
    2:begin
    ZConnection1.ExecuteDirect('UPDATE   hardware SET username="'+DBGRid1.DataSource.DataSet.Fields[2].Value+'" WHERE  ID='+EDIT1.TEXT+';');
     ZQuery1.Refresh;
    end;
    3:begin
    ZConnection1.ExecuteDirect('UPDATE   hardware SET model="'+DBGRid1.DataSource.DataSet.Fields[3].Value+'" WHERE  ID='+EDIT1.TEXT+';');
     ZQuery1.Refresh;
    end;


   end;






end;


  if Button=nbRefresh then
 begin
 end;
      ZConnection1.Commit;


  {
  if Button=nbDelete then
  begin
   ZQuery1.SQL.Text := 'DELETE FROM hardware WHERE  ID='+EDIT1.TEXT+';';
   ZQuery1.ExecSQL;
  end else
   if Button=nbInsert then
  begin
   ZQuery1.SQL.Text := 'INSERT INTO hardware(compname, username, model) VALUES ("'+edit2.text+'", "'+edit3.text+'", "'+edit4.text+'");';
   ZQuery1.ExecSQL;
  end else
   if Button=nbRefresh then
  begin
      ZQuery1.SQL.Text := 'SELECT * FROM hardware';
      ZQuery1.Open;
  end;


       }


end;

end.

