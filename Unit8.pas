unit Unit8;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, unit2, Buttons, StdCtrls, ComCtrls, DB, IBCustomDataSet, IBQuery;

type
  TForm8 = class(TForm)
    StatusBar1: TStatusBar;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Memo1: TMemo;
    Label3: TLabel;
    Memo2: TMemo;
    SpeedButton1: TSpeedButton;
    Label4: TLabel;
    IBQuery1: TIBQuery;
    IBQuery2: TIBQuery;
    Label5: TLabel;
    IBQuery3: TIBQuery;
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form8: TForm8;

implementation

uses unit7;

{$R *.dfm}

procedure TForm8.SpeedButton1Click(Sender: TObject);
var fl: integer;
begin
if Length (Edit1.Text)>0 then
begin
if label4.Caption='1' then
 begin
 // Режим добавления нового контрагента
  IBQuery1.SQL.Clear;
  IBQuery1.SQL.Append('select * from OWNERS WHERE NAME=:NAME');
  IBQuery1.ParamByName('NAME').AsString:=Edit1.Text;
  IBQuery1.Close;
  IBQuery1.Open;
  IBQuery1.First;
  if NOT IBQuery1.Eof then showmessage ('Контрагент с данным именем уже зарегистрирован!')
  else
   begin
    // Начинаем непосредственное сохранение в базе
     IBQuery2.SQL.Clear;
     IBQuery2.SQL.Append('INSERT INTO OWNERS (ABOUT, CONTACT, NAME) VALUES (:ABOUT, :CONTACT, :NAME)');
     IBQuery2.ParamByName('ABOUT').AsString:=Memo2.Text;
     IBQuery2.ParamByName('CONTACT').AsString:=Memo1.Text;
     IBQuery2.ParamByName('NAME').AsString:=Edit1.Text;
     IBQuery2.Close;
     IBQuery2.Open;
     unit2.DataModule2.IBTransaction1.CommitRetaining;
     // Опновляем выдачу
     Form7.SpeedButton1.Click;

     Form8.Close;
     // Сохранение завершили

   end;

 end;  // if label4.Caption='1' then

 if label4.Caption='2' then begin
 // Режим редактирования объекта
  IBQuery1.SQL.Clear;
  IBQuery1.SQL.Append('select * from OWNERS WHERE NAME=:NAME AND ID<>:ID');
  IBQuery1.ParamByName('NAME').AsString:=Edit1.Text;
  IBQuery1.ParamByName('ID').AsInteger:=strtoint(label5.Caption);
  IBQuery1.Close;
  IBQuery1.Open;
  IBQuery1.First;
  if NOT IBQuery1.Eof then showmessage ('Контрагент с данным именем уже зарегистрирован!')
  else
   begin

     IBQuery3.SQL.Clear;
     IBQuery3.SQL.Append('UPDATE OWNERS SET ABOUT=:ABOUT, CONTACT=:CONTACT, NAME=:NAME WHERE ID=:ID');
     IBQuery3.ParamByName('ABOUT').AsString:=Memo2.Text;
     IBQuery3.ParamByName('CONTACT').AsString:=Memo1.Text;
     IBQuery3.ParamByName('NAME').AsString:=Edit1.Text;
     IBQuery3.ParamByName('ID').AsInteger:=strtoint(label5.Caption);
     IBQuery3.Close;
     IBQuery3.Open;
     unit2.DataModule2.IBTransaction1.CommitRetaining;
     // Опновляем выдачу
     Form7.SpeedButton1.Click;
     Form8.Close;
     // Сохранение завершили
   end; // if NOT IBQuery1.Eof
 end; // if label4.caption='2'


end // if Length (Edit1.Text)>0 then
else showmessage ('Поле НАИМЕНОВАНИЕ не должно оставаться пустым!');
end;

end.
