unit user_add;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, unit2, Buttons, StdCtrls, Mask, DB, IBCustomDataSet, IBQuery, users;

type
  TForm6 = class(TForm)
    Edit1: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    Edit2: TEdit;
    Label5: TLabel;
    Edit3: TEdit;
    Label6: TLabel;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    Label7: TLabel;
    Label8: TLabel;
    Edit4: TEdit;
    Label9: TLabel;
    Edit5: TEdit;
    Label10: TLabel;
    ComboBox1: TComboBox;
    SpeedButton1: TSpeedButton;
    Label11: TLabel;
    Label12: TLabel;
    IBQuery1: TIBQuery;
    Label13: TLabel;
    IBQuery2: TIBQuery;
    IBQuery2ID: TIntegerField;
    IBQuery2NAME: TIBStringField;
    IBQuery2SECOND_NAME: TIBStringField;
    IBQuery2FAMILY: TIBStringField;
    IBQuery2PASS: TIBStringField;
    IBQuery2ROLE: TIBStringField;
    IBQuery2DOLGNOST: TIBStringField;
    IBQuery2OTDEL: TIBStringField;
    IBQuery3: TIBQuery;
    IBQuery4: TIBQuery;
    IBQuery4ID: TIntegerField;
    IBQuery4NAME: TIBStringField;
    IBQuery4SECOND_NAME: TIBStringField;
    IBQuery4FAMILY: TIBStringField;
    IBQuery4PASS: TIBStringField;
    IBQuery4ROLE: TIBStringField;
    IBQuery4DOLGNOST: TIBStringField;
    IBQuery4OTDEL: TIBStringField;
    IBQuery5: TIBQuery;
    Label15: TLabel;
    IBQuery6: TIBQuery;
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
    procedure Coding (F:string; fr: integer; fk1:string; var newstr:string);
    procedure Decoding(F:string; fr: integer; fk1:string; var newstr:string);
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

{$R *.dfm}

// CODING - DECODING
procedure TForm6.Coding(F:string;fr: integer; fk1:string; var newstr:string);
  var
   s: string;
   i, j, jj1, jj2:integer;
   m,key:byte;
   k:char;
   kk, kk1, pp1, pp2, key1, key2, fk2:string;
 begin
      key:=$aa;
    { Шифруем строку }
   s:='';
   s:=f;
   key1:=fk1;
  for i:=1 to Length(s) do
  begin
    k:=s[i];
    m:=ord(k) xor ord(key);
    s[i]:=chr(m);
  end;

  if fr<10 then fr:=fr+251;
  key1:=inttostr(fr);
  j:=length (key1);
  for i:=1 to Length(s) do
  begin
    k:=s[i];
    m:=ord(k) xor ord(key1[j]);
    j:=j-1;
    if j<1 then j:=length (key1);
    s[i]:=chr(m);
  end;


  newstr:=s;
end;


 procedure TForm6.decoding(F:string;fr: integer; fk1:string; var newstr:string);
 var
    s: string;
   i, j:integer;
   m,key:byte;
   k:char;
   kk, kk1, pp1, pp2, key2, key1:string;

 begin
     key:=$aa;
     j:=0;
   s:='';
     s:=f;
  key1:=fk1;

  if fr<10 then fr:=fr+251;
  key1:=inttostr(fr);
  j:=length (key1);
  for i:=1 to Length(s) do
  begin
    k:=s[i];
    m:=ord(k) xor ord(key1[j]);
    j:=j-1;
    if j<1 then j:=length (key1);
    s[i]:=chr(m);
  end;


  for i:=1 to Length(s) do
  begin
    k:=s[i];
    m:=ord(k) xor ord(key);
    s[i]:=chr(m);
  end;

     newstr:=s;
end;

// CODING - DECODING


procedure TForm6.SpeedButton1Click(Sender: TObject);
var PASS_NEW, ROLE_NEW:string;
    num_ID, FL:integer;
begin

if ((length(Edit1.Text)>0)and(length(Edit3.Text)>0)and(Length(MaskEdit1.Text)>0))
then begin

if MaskEdit1.Text=MaskEdit2.Text then begin



 if Label11.Caption='1' then
   begin
     // Режим добавления пользователя в систему

     // Проверка на совпадение имени-фамилии
     IBQuery4.SQL.Clear;
     IBQuery4.SQL.Append('select * from USERS WHERE FAMILY=:FAMILY AND NAME=:NAME');
     IBQuery4.ParamByName('FAMILY').AsString:=Edit3.Text;
     IBQuery4.ParamByName('NAME').AsString:=Edit1.Text;
     IBQuery4.Close;
     IBQuery4.Open;
     IBQuery4.First;
     if not IBQuery4.Eof then FL:=111
                         else FL:=999;

     if FL=999 then
     begin
     IBQuery1.SQL.Clear;
     IBQuery1.SQL.Append('INSERT INTO USERS (NAME, FAMILY, SECOND_NAME, ID_FIRM, OTDEL, DOLGNOST, PASS, ROLE) VALUES (:NAME, :FAMILY, :SECOND_NAME, :ID_FIRM, :OTDEL, :DOLGNOST, :PASS, :ROLE)');
     IBQuery1.ParamByName('NAME').AsString:=Edit1.Text;
     IBQuery1.ParamByName('FAMILY').AsString:=Edit3.Text;
     IBQuery1.ParamByName('SECOND_NAME').AsString:=Edit2.Text;
     IBQuery1.ParamByName('ID_FIRM').AsInteger:=0;
     IBQuery1.ParamByName('OTDEL').AsString:=Edit5.Text;
     IBQuery1.ParamByName('DOLGNOST').AsString:=Edit4.Text;
     IBQuery1.ParamByName('PASS').AsString:='';
     IBQuery1.ParamByName('ROLE').AsString:='';
     IBQuery1.Close;
     IBQuery1.Open;
     unit2.DataModule2.IBTransaction2.CommitRetaining;


 IBQuery2.SQL.Clear;
 IBQuery2.SQL.Append('select * from USERS ORDER BY ID');
 IBQuery2.Close;
 IBQuery2.Open;
 IBQuery2.Last;
 num_ID:=IBQuery2ID.AsInteger;
 Coding(MaskEdit1.Text,num_ID, Edit1.Text, PASS_NEW);
 Coding(ComboBox1.Text,num_ID, Edit1.Text, ROLE_NEW);
  // Кодируем пароль юзера
  // Кодируем роль пользователя
  IBQuery6.SQL.Clear;
  IBQuery6.SQL.Append('UPDATE USERS SET PASS=:PASS, ROLE=:ROLE WHERE ID=:ID');
  IBQuery6.ParamByName('PASS').AsString:=PASS_NEW;
  IBQuery6.ParamByName('ROLE').AsString:=ROLE_NEW;
  IBQuery6.ParamByName('ID').AsInteger:=num_ID;
     IBQuery6.Close;
     IBQuery6.Open;
     unit2.DataModule2.IBTransaction2.CommitRetaining;


     // Обновление выдачи в основном окне
     users.Form4.IBQuery4.Close;
     users.Form4.IBQuery4.Open;


     Form6.Close;
     end
     else showmessage('Данный пользователь уже существует');

   end;

    if Label11.Caption='2' then
   begin
   // Редактируем пользователя
        // Проверка на совпадение имени-фамилии
    {
     if checkbox1.Visible=false then begin

     IBQuery4.SQL.Clear;
     IBQuery4.SQL.Append('select * from USERS WHERE FAMILY=:FAMILY AND NAME=:NAME');
     IBQuery4.ParamByName('FAMILY').AsString:=Edit3.Text;
     IBQuery4.ParamByName('NAME').AsString:=Edit1.Text;
     IBQuery4.Close;
     IBQuery4.Open;
     IBQuery4.First;

     if not IBQuery4.Eof then begin
                                if IBQuery4ID.asInteger=strtoint(label13.Caption) then fl:=999
                                else FL:=111;

                              end
                         else FL:=999;

         end else }fl:=999;
    if fl=999 then begin
    IBQuery3.SQL.Clear;
    IBQuery3.SQL.Append('UPDATE USERS SET DOLGNOST=:DOLGNOST, FAMILY=:FAMILY, NAME=:NAME, OTDEL=:OTDEL, PASS=:PASS, ROLE=:ROLE, SECOND_NAME=:SECOND_NAME WHERE ID=:ID');
    IBQuery3.ParamByName('DOLGNOST').AsString:=Edit4.Text;
    IBQuery3.ParamByName('FAMILY').AsString:=Edit3.Text;
    IBQuery3.ParamByName('NAME').AsString:=Edit1.Text;
    IBQuery3.ParamByName('OTDEL').AsString:=Edit5.Text;
    Coding(MaskEdit1.Text,strtoint(label13.Caption), Edit1.Text, PASS_NEW);
    IBQuery3.ParamByName('PASS').AsString:=PASS_NEW;
    Coding(ComboBox1.Text,strtoint(label13.Caption), Edit1.Text, ROLE_NEW);
    IBQuery3.ParamByName('ROLE').AsString:=ROLE_NEW;
    IBQuery3.ParamByName('SECOND_NAME').AsString:=Edit2.Text;
    IBQuery3.ParamByName('ID').AsInteger:=strtoint(label13.Caption);
    IBQuery3.Close;
    IBQuery3.Open;
    unit2.DataModule2.IBTransaction2.CommitRetaining;
     users.Form4.IBQuery4.Close;
     users.Form4.IBQuery4.Open;



     // Обновление выдачи в основном окне

      Form6.Close;
     end
     else showmessage('Данный пользователь уже существует');

   end;

  end
  else showmessage ('Введенные пароли отличаются друг от друга!');

 end else showmessage('Необходимо заполнить поля: Имя, Фамилия, пароль!');
end;

end.
