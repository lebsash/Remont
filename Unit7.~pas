unit Unit7;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, unit2, Buttons, StdCtrls, ExtCtrls, Grids, DBGrids, ComCtrls,
  DB, IBCustomDataSet, IBQuery, Menus, unit1, ThemedDBGrid;

type
  TForm7 = class(TForm)
    StatusBar1: TStatusBar;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    Edit1: TEdit;
    SpeedButton1: TSpeedButton;
    IBQuery1: TIBQuery;
    DataSource1: TDataSource;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    IBQuery1ID: TIntegerField;
    IBQuery1NAME: TIBStringField;
    IBQuery1CONTACT: TIBStringField;
    IBQuery1ABOUT: TIBStringField;
    IBQuery2: TIBQuery;
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure PopupMenu1Popup(Sender: TObject);
  private
    { Private declarations }
        procedure Decoding(F:string; fr: integer; fk1:string; var newstr:string);
  public
    { Public declarations }
  end;

var
  Form7: TForm7;

implementation
uses unit5, Unit8;
{$R *.dfm}

procedure TForm7.decoding(F:string;fr: integer; fk1:string; var newstr:string);
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

procedure TForm7.N1Click(Sender: TObject);
begin
form8.label4.caption:='1';
form8.Edit1.Text:='';
Form8.Memo1.Lines.Clear;
Form8.Memo2.Lines.Clear;
Form8.Caption:='Форма работы с контрагентом - новый контрагент';
Form8.SpeedButton1.Caption:='Добавить контрагента';
Form8.showmodal;
end;

procedure TForm7.N2Click(Sender: TObject);
begin
form8.label4.caption:='2';
form8.label5.caption:=IBQuery1ID.AsString;
form8.Edit1.Text:=IBQuery1NAME.AsString;
Form8.Memo1.Lines.Clear;
Form8.Memo1.Lines.Append(IBQuery1CONTACT.AsString);
Form8.Memo2.Lines.Clear;
Form8.Memo2.Lines.Append(IBQuery1ABOUT.AsString);

Form8.Caption:='Форма работы с контрагентом - Редактирование записи';
Form8.SpeedButton1.Caption:='Редактировать контрагента';
Form8.showmodal;
end;

procedure TForm7.N3Click(Sender: TObject);
var buttonSelected: integer;
begin
 // Удаляем выделенного контрагента
 buttonSelected := MessageDlg('Вы действительно желаете удалить контрагента '+IBQuery1NAME.AsString,mtError, mbOKCancel, 0);


  if buttonSelected = mrOK     then
                begin
                 IBQuery2.SQL.Clear;
                 IBQuery2.SQL.Append('DELETE FROM OWNERS WHERE ID=:ID');
                 IBQuery2.ParamByName('ID').AsInteger:=IBQuery1ID.AsInteger;
                 IBQuery2.Close;
                 IBQuery2.Open;
                 unit2.DataModule2.IBTransaction1.CommitRetaining;
                 IBQuery1.Close;
                 IBQuery1.Open;
                 IBQuery1.First;

                end;
  if buttonSelected = mrCancel then begin
                                    end;
end;

procedure TForm7.SpeedButton1Click(Sender: TObject);
begin
 IBQuery1.SQL.Clear;
 IBQuery1.SQL.Append('select * from OWNERS WHERE NAME LIKE :NAME ORDER BY NAME');
 IBQuery1.ParamByName('NAME').AsString:='%'+Edit1.Text+'%';
 IBQuery1.Close;
 IBQuery1.Open;
 IBQuery1.First;
end;

procedure TForm7.Edit1Change(Sender: TObject);
begin
Speedbutton1.Click;
end;

procedure TForm7.DBGrid1DblClick(Sender: TObject);
begin
Form5.Edit1.Text:=IBQuery1NAME.AsString;
Form5.Label8.Caption:=IBQuery1ID.AsString;
Form5.Memo1.Clear;
Form5.Memo1.Text:=IBQuery1CONTACT.AsString;
Form7.Close;
end;

procedure TForm7.PopupMenu1Popup(Sender: TObject);
var r:string;
begin
Decoding(unit1.ROLE_USER,unit1.ID_USER, unit1.NAME_USER, r);

 if r='Сервис' then
   begin
     N1.Enabled:=false;
     N2.Enabled:=false;
     N3.Enabled:=false;
   end
   else
   begin
     N1.Enabled:=true;
     N2.Enabled:=true;
     N3.Enabled:=true;
   end;
end;

end.
