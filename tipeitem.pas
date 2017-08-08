unit tipeitem;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, unit2, DB, IBCustomDataSet, IBQuery, Grids, DBGrids, Buttons,
  StdCtrls, ExtCtrls, ComCtrls, Menus, ThemedDBGrid;

type
  TForm13 = class(TForm)
    StatusBar1: TStatusBar;
    Panel1: TPanel;
    Edit1: TEdit;
    SpeedButton1: TSpeedButton;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    IBQuery1: TIBQuery;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    IBQuery2: TIBQuery;
    IBQuery3: TIBQuery;
    IBQuery4: TIBQuery;
    IBQuery1ID: TIntegerField;
    IBQuery1NAME: TIBStringField;
    IBQuery2ID: TIntegerField;
    IBQuery2NAME: TIBStringField;
    IBQuery5: TIBQuery;
    procedure SpeedButton1Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid1DrawDataCell(Sender: TObject; const Rect: TRect;
      Field: TField; State: TGridDrawState);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form13: TForm13;

implementation

uses newitem;

{$R *.dfm}

procedure TForm13.SpeedButton1Click(Sender: TObject);
begin
IBQuery1.SQL.Clear;
IBQuery1.SQL.Append('select * from USTR_TIPE WHERE upper(NAME) like :NAME ORDER BY NAME');
IBQuery1.ParamByName('NAME').AsString:='%'+AnsiUpperCase(Edit1.Text)+'%';
IBQuery1.Close;
IBQuery1.Open;
IBQuery1.First;

end;

procedure TForm13.N1Click(Sender: TObject);
var s: string;
begin

   if not InputQuery('Новая группа', 'Введите тип оборудования:', s) then s:='';

  IBQuery2.SQL.Clear;
  IBQuery2.SQL.Append('SELECT* FROM USTR_TIPE WHERE NAME=:NAME');
  IBQuery2.ParamByName('NAME').AsString:=s;
  IBQuery2.Close;
  IBQuery2.Open;
  IBQuery2.First;
  if (IBQuery2.Eof)and(length(s)>0) then
    begin
     // Добавляем новый тип
     IBQuery3.SQL.Clear;
     IBQuery3.SQL.Append('INSERT INTO USTR_TIPE (NAME) VALUES (:NAME)');
     IBQuery3.ParamByName('NAME').AsString:=s;
     IBQuery3.Close;
     IBQuery3.Open;
     DataModule2.IBTransaction1.CommitRetaining;
     SpeedButton1.Click;

    end else showmessage ('Некорректное имя типа оборудования');


  


end;

procedure TForm13.N3Click(Sender: TObject);
var s:string;
begin
 if not InputQuery('Новая группа', 'Введите тип оборудования:', s) then s:='';

  IBQuery2.SQL.Clear;
  IBQuery2.SQL.Append('SELECT* FROM USTR_TIPE WHERE NAME=:NAME');
  IBQuery2.ParamByName('NAME').AsString:=s;
  IBQuery2.Close;
  IBQuery2.Open;
  IBQuery2.First;
  if (not IBQuery2.Eof)and(IBQuery2ID.AsInteger=IBQuery1ID.AsInteger)and(length(s)>0) then
  begin
    IBQuery4.SQL.Clear;
    IBQuery4.SQL.Append('UPDATE USTR_TIPE SET NAME=:NAME WHERE ID=:ID');
    IBQuery4.ParamByName('NAME').AsString:=s;
    IBQuery4.ParamByName('ID').AsInteger:=IBQuery1ID.AsInteger;
    IBQuery4.Close;
    IBQuery4.Open;
     DataModule2.IBTransaction1.CommitRetaining;
     SpeedButton1.Click;
  end else showmessage ('Некорректное имя типа оборудования');


end;

procedure TForm13.N2Click(Sender: TObject);
begin
 if MessageDlg('Вы действительно хотите удалить группу '+IBQuery1NAME.AsString+'?',
            mtConfirmation, [mbYes, mbNo], 0) = mrYes
            then
            begin
              IBQuery5.SQL.Clear;
              IBQuery5.SQL.Append('DELETE FROM USTR_TIPE WHERE ID=:ID');
              IBQuery5.ParamByName('ID').AsInteger:=IBQuery1ID.AsInteger;
              IBQuery5.Close;
              IBQuery5.Open;
              DataModule2.IBTransaction1.CommitRetaining;
              SpeedButton1.Click;
            end;
end;

procedure TForm13.Edit1Change(Sender: TObject);
begin
 SpeedButton1.Click;
end;

procedure TForm13.DBGrid1CellClick(Column: TColumn);
begin
  Form12.Edit4.Text:=IBQuery1NAME.AsString;
  form13.Close;
end;

procedure TForm13.DBGrid1DrawDataCell(Sender: TObject; const Rect: TRect;
  Field: TField; State: TGridDrawState);
begin
If gdSelected in State Then
begin
  DBGrid1.Canvas.Brush.Color := $00FCEBDC; {синеватый оттенок}
  DBGrid1.Canvas.Font.Color := clBlack;
  dbGrid1.DefaultDrawDataCell(Rect,Field,State);
  DBGrid1.Canvas.fillRect(Rect);
  DBGrid1.Canvas.TextOut(Rect.Left, Rect.Top, Field.Asstring);
  end;
end;

procedure TForm13.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
If gdSelected in State Then
begin
  DBGrid1.Canvas.Brush.Color := $00FCEBDC; {синеватый оттенок}
  DBGrid1.Canvas.Font.Color := clBlack;
  //dbGrid1.DefaultDrawDataCell(Rect,Field,State);
  DBGrid1.Canvas.fillRect(Rect);
  DBGrid1.Canvas.TextOut(Rect.Left, Rect.Top, Column.Field.Asstring);
  end;
end;

end.
