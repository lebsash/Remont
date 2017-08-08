unit Unit9;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, unit2, DB, Grids, DBGrids, IBCustomDataSet, IBQuery, ComCtrls,
  Menus, StdCtrls, ThemedDBGrid;

type
  TForm9 = class(TForm)
    StatusBar1: TStatusBar;
    IBQuery1: TIBQuery;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    IBQuery2: TIBQuery;
    IBQuery3: TIBQuery;
    IBQuery4: TIBQuery;
    IBQuery1ID: TIntegerField;
    IBQuery1NAME: TIBStringField;
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form9: TForm9;

implementation

{$R *.dfm}

procedure TForm9.N1Click(Sender: TObject);
 var s: string;
begin
  s := '';
  if not InputQuery('�������� �����',
    '������������ �����:', s)
  then s := 'No value';
  IBQuery2.SQL.Clear;
  IBQuery2.SQL.Append('select * from FIRMS WHERE NAME=:NAME');
  IBQuery2.ParamByName('NAME').AsString:=s;
  IBQuery2.Close;
  IBQuery2.Open;
  IBQuery2.First;
  if IBQuery2.Eof then
    begin
       IBQuery3.SQL.Clear;
       IBQuery3.SQL.Append('INSERT INTO FIRMS (NAME) VALUES (:NAME)');
       IBQuery3.ParamByName('NAME').AsString:=s;
       IBQuery3.Close;
       IBQuery3.Open;
       unit2.DataModule2.IBTransaction1.CommitRetaining;

       IBQuery1.Close;
       IBQuery1.Open;
       IBQuery1.First;


    end;

end;

procedure TForm9.N2Click(Sender: TObject);
var buttonSelected: integer;
begin
 buttonSelected := MessageDlg('�� ������������� ������� ����� '+IBQuery1NAME.AsString,mtError, mbOKCancel, 0);


  if buttonSelected = mrOK     then
     begin
       IBQuery4.SQL.Clear;
       IBQuery4.SQL.Append('DELETE FROM FIRMS WHERE ID=:ID AND NAME=:NAME');
       IBQuery4.ParamByName('ID').AsInteger:=IBQuery1ID.AsInteger;
       IBQuery4.ParamByName('NAME').AsString:=IBQuery1NAME.AsString;
       IBQuery4.Close;
       IBQuery4.Open;
       unit2.DataModule2.IBTransaction1.CommitRetaining;

       IBQuery1.Close;
       IBQuery1.Open;
       IBQuery1.First;
       
     end;
end;

end.
