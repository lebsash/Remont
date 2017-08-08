unit Unit15;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, ExtCtrls, ComCtrls, ComObj, Grids, unit2, DB,
  IBCustomDataSet, IBQuery, DBGrids, Menus, ThemedDBGrid;

type
  TForm15 = class(TForm)
    StatusBar1: TStatusBar;
    Panel1: TPanel;
    Edit1: TEdit;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Panel2: TPanel;
    Memo1: TMemo;
    OpenDialog1: TOpenDialog;
    ComboBox1: TComboBox;
    IBQuery1: TIBQuery;
    SpeedButton3: TSpeedButton;
    IBQuery1ID: TIntegerField;
    IBQuery1RAZDEL: TIBStringField;
    IBQuery1ABOUT: TIBStringField;
    IBQuery2: TIBQuery;
    IBQuery3: TIBQuery;
    IBQuery4: TIBQuery;
    IBQuery2ID: TIntegerField;
    IBQuery2RAZDEL: TIBStringField;
    IBQuery2ABOUT: TIBStringField;
    IBQuery5: TIBQuery;
    IBQuery4ID: TIntegerField;
    IBQuery4ID_RAZDEL: TIntegerField;
    IBQuery4ARTICUL: TIBStringField;
    IBQuery4NAME: TIBStringField;
    IBQuery4COST: TFloatField;
    IBQuery4ABOUT: TIBStringField;
    IBQuery4LONG_TIME: TIBStringField;
    IBQuery4US_MASTER_ID: TIntegerField;
    IBQuery6: TIBQuery;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    DBGrid1: TDBGrid;
    IBQuery7: TIBQuery;
    DBGrid2: TDBGrid;
    IBQuery8: TIBQuery;
    IBQuery7ID: TIntegerField;
    IBQuery7RAZDEL: TIBStringField;
    IBQuery7ABOUT: TIBStringField;
    SpeedButton4: TSpeedButton;
    IBQuery9: TIBQuery;
    IBQuery9ID: TIntegerField;
    IBQuery9ID_RAZDEL: TIntegerField;
    IBQuery9ARTICUL: TIBStringField;
    IBQuery9NAME: TIBStringField;
    IBQuery9COST: TFloatField;
    IBQuery9ABOUT: TIBStringField;
    IBQuery9LONG_TIME: TIBStringField;
    IBQuery9US_MASTER_ID: TIntegerField;
    IBQuery10: TIBQuery;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    IBQuery11: TIBQuery;
    IBQuery8ID: TIntegerField;
    IBQuery8ID_RAZDEL: TIntegerField;
    IBQuery8ARTICUL: TIBStringField;
    IBQuery8NAME: TIBStringField;
    IBQuery8COST: TFloatField;
    IBQuery8ABOUT: TIBStringField;
    IBQuery8LONG_TIME: TIBStringField;
    IBQuery8US_MASTER_ID: TIntegerField;
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure SpeedButton4Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form15: TForm15;
  ExcelApp : OleVariant;
implementation

{$R *.dfm}

procedure TForm15.SpeedButton2Click(Sender: TObject);
var Rows, Cols, i,j: integer;
    WorkSheet: OLEVariant;
    FData: OLEVariant;
    d: TDateTime;
begin
if (length(ComboBox1.Text)>0)and(length(Edit1.Text)>3) then begin
   ExcelApp := CreateOleObject('Excel.Application');
    ExcelApp.Visible := true; //показываем Excel
  ExcelApp.Workbooks.Open(Edit1.Text);

  WorkSheet:=ExcelApp.ActiveWorkbook.ActiveSheet;

  Rows:=WorkSheet.UsedRange.Rows.Count;
  Cols:=WorkSheet.UsedRange.Columns.Count;


  FData:=WorkSheet.UsedRange.Value;
 {
  StringGrid1.RowCount:=Rows;
  StringGrid1.ColCount:=Cols;
  }

  d:=Now;
  memo1.Lines.Clear;
 // Проверяем раздел
 IBQuery2.SQL.Clear;
 IBQuery2.SQL.Append('select * from PRICE_RAZD WHERE RAZDEL=:RAZDEL');
 IBQuery2.ParamByName('RAZDEL').AsString:=ComboBox1.Text;
 IBQuery2.Close;
 IBQuery2.Open;
 IBQuery2.First;
 if IBQuery2.Eof then
   begin
   // Добавляем новый раздел
     IBQuery3.SQL.Clear;
     IBQuery3.SQL.Append('INSERT INTO PRICE_RAZD (ABOUT, RAZDEL) VALUES (:ABOUT, :RAZDEL)');
     IBQuery3.ParamByName('ABOUT').AsString:='';
     IBQuery3.ParamByName('RAZDEL').AsString:=ComboBox1.Text;
     IBQuery3.Close;
     IBQuery3.Open;
     unit2.DataModule2.IBTransaction1.CommitRetaining;

     memo1.Lines.Append('Создали раздел: '+Combobox1.Text);
   end;

  // Начинаем вносить прайс-лист
        // Определяем идентификатор раздела
 IBQuery2.SQL.Clear;
 IBQuery2.SQL.Append('select * from PRICE_RAZD WHERE RAZDEL=:RAZDEL');
 IBQuery2.ParamByName('RAZDEL').AsString:=ComboBox1.Text;
 IBQuery2.Close;
 IBQuery2.Open;
 IBQuery2.First;


  for I := 0 to Rows-1 do
      begin
       // StringGrid1.Cells[J,I]:=FData[I+1,J+1];
        memo1.Lines.Append(FData[I+1,2]);
        if length (FData[I+1,2])>0 then
        begin
        IBQuery4.SQL.Clear;
        IBQuery4.SQL.Append('select * from PRICE WHERE NAME=:NAME AND ID_RAZDEL=:ID_RAZDEL');
        IBQuery4.ParamByName('NAME').AsString:=FData[I+1,2];
        IBQuery4.ParamByName('ID_RAZDEL').AsInteger:=IBQuery2ID.AsInteger;
        IBQuery4.Close;
        IBQuery4.Open;
        IBQuery4.First;
        if not IBQuery4.Eof then
           begin
            //Корректируем ценник

             IBQuery6.SQL.Clear;
             IBQuery6.SQL.Append('UPDATE PRICE SET COST=:COST WHERE ID=:ID');
             IBQuery6.ParamByName('COST').Value:=(FData[I+1,3]);
             IBQuery6.ParamByName('ID').AsInteger:=IBQuery4ID.AsInteger;
             IBQuery6.Close;
             IBQuery6.Open;

             unit2.DataModule2.IBTransaction1.CommitRetaining;

           end
           else
           begin
           // Добавляем новую цену

           IBQuery5.SQL.Clear;
           IBQuery5.SQL.Append('INSERT INTO PRICE (ABOUT, COST, ID_RAZDEL, NAME) VALUES (:ABOUT, :COST, :ID_RAZDEL, :NAME)');
           IBQuery5.ParamByName('ABOUT').AsString:='';
           IBQuery5.ParamByName('COST').Value:=strtofloat(FData[I+1,3]);
           IBQuery5.ParamByName('ID_RAZDEL').AsInteger:=IBQuery2ID.AsInteger;
           IBQuery5.ParamByName('NAME').AsString:=FData[I+1,2];
           IBQuery5.Close;
           IBQuery5.Open;
           unit2.DataModule2.IBTransaction1.CommitRetaining;

           end;
          end;
      end;
  ExcelApp.ActiveWorkbook.Close(Edit1.Text);
  ExcelApp.Quit;
  memo1.Lines.Append('Обработка окончена. ');
  end else showmessage ('Поля заполнены некорректно');
       SpeedButton4.Click;
       SpeedButton3.Click;

end;


procedure TForm15.SpeedButton1Click(Sender: TObject);
begin
if OpenDialog1.Execute then Edit1.Text:=OpenDialog1.FileName;
end;

procedure TForm15.SpeedButton3Click(Sender: TObject);
begin
IBQuery1.SQL.Clear;
IBQuery1.SQL.Append('select * from PRICE_RAZD ORDER BY RAZDEL');
IBQuery1.Close;
IBQuery1.Open;
IBQuery1.First;
ComboBox1.Clear;
WHile not IBQuery1.Eof do
  begin
   ComboBox1.Items.Append(IBQuery1RAZDEL.AsString);
   IBQuery1.Next;
  end;

IBQuery7.Close;
IBQuery7.Open;
IBQuery7.First;
end;

procedure TForm15.DBGrid1CellClick(Column: TColumn);
begin
 IBQuery8.SQL.Clear;
 IBQuery8.SQL.Append('select * from PRICE WHERE ID_RAZDEL=:ID_RAZDEL');
 IBQuery8.ParamByName('ID_RAZDEL').AsInteger:=IBQuery7ID.AsInteger;
 IBQuery8.Close;
 IBQuery8.Open;
 IBQuery8.First;
end;

procedure TForm15.SpeedButton4Click(Sender: TObject);
begin
 // Тримируем все записи
 IBQuery9.SQL.Clear;
 IBQuery9.SQL.Append('select * from PRICE');
 IBQuery9.Close;
 IBQuery9.Open;
 IBQuery9.First;
 While not IBQuery9.Eof do
  begin
   IBQuery10.SQL.Clear;
   IBQuery10.SQL.Append('UPDATE PRICE SET NAME=:NAME WHERE ID=:ID');
   IBQuery10.ParamByName('NAME').AsString:=TrimLeft(IBQuery9NAME.AsString);
   IBQuery10.ParamByName('ID').AsInteger:=IBQuery9ID.AsInteger;
   IBQuery10.Close;
   IBQuery10.Open;


  IBQuery9.Next;
  end;
   unit2.DataModule2.IBTransaction1.CommitRetaining;
end;

procedure TForm15.N1Click(Sender: TObject);
var  s: string;
begin
    s := IBQuery8COST.AsString;
  if not InputQuery('Корректировка цены',
    'Цена на услугу:'+IBQuery8NAME.AsString, s)
  then s := IBQuery8COST.AsString;;
  if IBQuery8COST.AsFloat <> strtofloat(s) then
    begin
      IBQuery11.SQL.Clear;
      IBQuery11.SQL.Append('UPDATE PRICE SET COST=:COST WHERE ID=:ID');
      IBQuery11.ParamByName('COST').Value:=strtofloat(s);
      IBQuery11.ParamByName('ID').AsInteger:=IBQuery8ID.AsInteger;
      IBQuery11.Close;
      IBQuery11.Open;

      unit2.DataModule2.IBTransaction1.CommitRetaining;

       IBQuery8.SQL.Clear;
       IBQuery8.SQL.Append('select * from PRICE WHERE ID_RAZDEL=:ID_RAZDEL');
       IBQuery8.ParamByName('ID_RAZDEL').AsInteger:=IBQuery7ID.AsInteger;
       IBQuery8.Close;
       IBQuery8.Open;
       IBQuery8.First;
    end;
end;

end.
