unit Serv;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, DB, IBCustomDataSet, IBQuery, StdCtrls, ComCtrls, unit2;

type
  TForm11 = class(TForm)
    StatusBar1: TStatusBar;
    Edit1: TEdit;
    Label1: TLabel;
    Label5: TLabel;
    Label4: TLabel;
    Memo1: TMemo;
    Label2: TLabel;
    Memo2: TMemo;
    IBQuery1: TIBQuery;
    IBQuery2: TIBQuery;
    IBQuery3: TIBQuery;
    SpeedButton1: TSpeedButton;
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form11: TForm11;

implementation

uses Unit7, managers;

{$R *.dfm}

procedure TForm11.SpeedButton1Click(Sender: TObject);

begin
if Length (Edit1.Text)>0 then
begin
if label4.Caption='1' then
 begin
 // Режим добавления нового контрагента
  IBQuery1.SQL.Clear;
  IBQuery1.SQL.Append('select * from SERV WHERE NAME=:NAME');
  IBQuery1.ParamByName('NAME').AsString:=Edit1.Text;
  IBQuery1.Close;
  IBQuery1.Open;
  IBQuery1.First;
  if NOT IBQuery1.Eof then showmessage ('Контрагент с данным именем уже зарегистрирован!')
  else
   begin
    // Начинаем непосредственное сохранение в базе
     IBQuery2.SQL.Clear;
     IBQuery2.SQL.Append('INSERT INTO SERV (ABOUT, CONTACT, NAME) VALUES (:ABOUT, :CONTACT, :NAME)');
     IBQuery2.ParamByName('ABOUT').AsString:=Memo2.Text;
     IBQuery2.ParamByName('CONTACT').AsString:=Memo1.Text;
     IBQuery2.ParamByName('NAME').AsString:=Edit1.Text;
     IBQuery2.Close;
     IBQuery2.Open;
     unit2.DataModule2.IBTransaction1.CommitRetaining;
     // Опновляем выдачу
     Form10.SpeedButton1.Click;
     Form11.Close;
     // Сохранение завершили
   end;

 end;  // if label4.Caption='1' then

 if label4.Caption='2' then begin
 // Режим редактирования объекта
  IBQuery1.SQL.Clear;
  IBQuery1.SQL.Append('select * from SERV WHERE NAME=:NAME AND ID<>:ID');
  IBQuery1.ParamByName('NAME').AsString:=Edit1.Text;
  IBQuery1.ParamByName('ID').AsInteger:=strtoint(label5.Caption);
  IBQuery1.Close;
  IBQuery1.Open;
  IBQuery1.First;
  if NOT IBQuery1.Eof then showmessage ('Контрагент с данным именем уже зарегистрирован!')
  else
   begin

     IBQuery3.SQL.Clear;
     IBQuery3.SQL.Append('UPDATE SERV SET ABOUT=:ABOUT, CONTACT=:CONTACT, NAME=:NAME WHERE ID=:ID');
     IBQuery3.ParamByName('ABOUT').AsString:=Memo2.Text;
     IBQuery3.ParamByName('CONTACT').AsString:=Memo1.Text;
     IBQuery3.ParamByName('NAME').AsString:=Edit1.Text;
     IBQuery3.ParamByName('ID').AsInteger:=strtoint(label5.Caption);
     IBQuery3.Close;
     IBQuery3.Open;
     unit2.DataModule2.IBTransaction1.CommitRetaining;
     // Опновляем выдачу
     Form10.SpeedButton1.Click;
     Form11.Close;
     // Сохранение завершили
   end; // if NOT IBQuery1.Eof
 end; // if label4.caption='2'


end // if Length (Edit1.Text)>0 then
else showmessage ('Поле НАИМЕНОВАНИЕ не должно оставаться пустым!');

end;

end.
