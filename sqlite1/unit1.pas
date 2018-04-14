unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, sqlite3conn, sqldb, db, Forms, Controls, Graphics, Dialogs,
  DBGrids, StdCtrls, DbCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    DataSource1: TDataSource;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    Memo1: TMemo;
    SQLite3Connection1: TSQLite3Connection;
    SQLQuery1: TSQLQuery;
    SQLTransaction1: TSQLTransaction;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure SQLite3Connection1AfterConnect(Sender: TObject);
    procedure SQLite3Connection1Log(Sender: TSQLConnection;
      EventType: TDBEventType; const Msg: String);
    procedure SQLite3Connection1Login(Sender: TObject; Username,
      Password: string);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.frm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
begin
 //   SQLite3Connection1.DatabaseName:='data.db';
 //   SQLite3Connection1.Transaction:=SQLTransaction1;

 //   SQLTransaction1.DataBase:=SQLite3Connection1;
  //  SQLTransaction1.Active:=true;


  //  SqlQuery1.DataBase:=SQLite3Connection1;
  //  SqlQuery1.Transaction:=SQLTransaction1;
//    SqlQuery1.SQL.Text:='SELECT * FROM tbl_userinfo';
 //  SqlQuery1.SQL.Text:='SELECT * FROM alunos';
  //  SqlQuery1.Active:=true;

 //   DataSource1.DataSet:=SqlQuery1;
  //  DBGrid1.DataSource:=DataSource1;


 // SQLite3Connection1.Open;
  if SQLite3Connection1.Connected then
  begin
  memo1.lines.add('Connected');

  end;

end;

procedure TForm1.FormClose(Sender: TObject; var CloseAction: TCloseAction);
begin
   SqlQuery1.Active:=false;
  SQLite3Connection1.Close(true);

end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  SqlQuery1.Active:=true;
  SQLite3Connection1.Open;
  if SQLite3Connection1.Connected then
  begin
  memo1.lines.add('Connected');

  end;
end;

procedure TForm1.SQLite3Connection1AfterConnect(Sender: TObject);
begin

end;

procedure TForm1.SQLite3Connection1Log(Sender: TSQLConnection;
  EventType: TDBEventType; const Msg: String);
begin
  memo1.lines.add('Log:'+msg);
end;

procedure TForm1.SQLite3Connection1Login(Sender: TObject; Username,
  Password: string);
begin
    memo1.lines.add('Loging');
end;

end.

