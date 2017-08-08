unit users;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, unit2, DB, Grids, DBGrids, IBCustomDataSet, IBQuery, Menus,
  Buttons, StdCtrls, ExtCtrls, ThemedDBGrid;

type
  TForm4 = class(TForm)
    IBQuery3: TIBQuery;
    DBGrid2: TDBGrid;
    DataSource2: TDataSource;
    IBQuery4: TIBQuery;
    PopupMenu2: TPopupMenu;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    IBQuery4ID: TIntegerField;
    IBQuery4NAME: TIBStringField;
    IBQuery4SECOND_NAME: TIBStringField;
    IBQuery4FAMILY: TIBStringField;
    IBQuery4PASS: TIBStringField;
    IBQuery4ROLE: TIBStringField;
    IBQuery4DOLGNOST: TIBStringField;
    IBQuery4OTDEL: TIBStringField;
    IBQuery5: TIBQuery;
    Panel1: TPanel;
    Edit1: TEdit;
    SpeedButton1: TSpeedButton;
    Label1: TLabel;
    IBQuery4ID_FIRM: TIntegerField;
    IBQuery4USLOGIN: TIBStringField;
    procedure FormCreate(Sender: TObject);

    procedure DBGrid1CellClick(Column: TColumn);
    procedure N4Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure N6Click(Sender: TObject);

    procedure DBGrid2DblClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
    procedure Coding (F:string; fr: integer; fk1:string; var newstr:string);
    procedure Decoding(F:string; fr: integer; fk1:string; var newstr:string);
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

uses user_add;

{$R *.dfm}

// CODING - DECODING
procedure TForm4.Coding(F:string;fr: integer; fk1:string; var newstr:string);
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


 procedure TForm4.decoding(F:string;fr: integer; fk1:string; var newstr:string);
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

procedure TForm4.FormCreate(Sender: TObject);
begin

if unit2.FLAG_DB_CONNECT=1 then begin


      IBQuery4.SQL.Clear;
      IBQuery4.SQL.Append('select * from USERS ORDER BY NAME');
      IBQuery4.Close;
      IBQuery4.Open;
    end;

end;



procedure TForm4.DBGrid1CellClick(Column: TColumn);
var
    fl1:integer;
begin

    fl1:=1;
    if length(edit1.Text)<1 then fl1:=1
                            else fl1:=2;

      IBQuery4.SQL.Clear;
      if fl1=1 then begin
      IBQuery4.SQL.Append('select * from USERS ORDER BY FAMILY');

      end;
      if fl1=2 then begin
      IBQuery4.SQL.Append('select * from USERS WHERE FAMILY LIKE :FAM');
      IBQuery4.ParamByName('FAM').AsString:='%'+Edit1.text+'%';
      end;
      IBQuery4.Close;
      IBQuery4.Open;

end;

procedure TForm4.N4Click(Sender: TObject);
begin

     // Добавляем пользователя
     form6.Label11.Caption:='1'; // Добавляем пользователя
      form6.Edit1.Text:='';
      form6.Edit2.Text:='';
      form6.Edit3.Text:='';
      form6.MaskEdit1.Text:='';
      form6.MaskEdit2.Text:='';
      form6.Edit4.Text:='';
      form6.Edit5.Text:='';
    //  Form6.CheckBox1.Visible:=false;

    //  Form6.CheckBox1.Checked:=false;


      Form6.Label15.Visible:=false;
     Form6.ShowModal;

end;

procedure TForm4.N5Click(Sender: TObject);
var parol, role:string;
    id: integer;
begin

     // Редактирование пользователя
     form6.Label11.Caption:='2'; // Добавляем пользователя
     form6.Label13.Caption:=inttostr(IBQuery4ID.AsInteger); // Идентификатор пользователя
     form6.Edit1.Text:=IBQuery4NAME.AsString;
     form6.Edit2.Text:=IBQuery4SECOND_NAME.AsString;
     form6.Edit3.Text:=IBQuery4FAMILY.AsString;
     Form6.Edit4.Text:=IBQuery4DOLGNOST.AsString;
     Form6.Edit5.Text:=IBQuery4OTDEL.AsString;

     // Декодируем пароль и роль пользователя
     Decoding(IBQuery4ROLE.AsString,IBQuery4ID.AsInteger, IBQuery4NAME.AsString, role);
     Decoding(IBQuery4PASS.AsString,IBQuery4ID.AsInteger, IBQuery4NAME.AsString, parol);
     Form6.MaskEdit1.Text:=parol;
     Form6.MaskEdit2.Text:=parol;
     Form6.ComboBox1.Text:=role;


     Form6.ShowModal;
end;

procedure TForm4.N6Click(Sender: TObject);
begin
// Ловим идентификатор пользователя и удаляем его
  if MessageDlg('Вы действительно хотите удалить пользователя '+IBQuery4NAME.AsString+'_'+IBQuery4FAMILY.AsString+'?',
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin


     IBQuery5.SQL.Clear;
     IBQuery5.SQL.Append('DELETE FROM USERS WHERE ID=:ID');
     IBQuery5.ParamByName('ID').AsInteger:=IBQuery4ID.AsInteger;
     IBQuery5.Close;
     IBQuery5.Open;
     unit2.DataModule2.IBTransaction1.CommitRetaining;



      IBQuery4.SQL.Clear;
      IBQuery4.SQL.Append('select * from USERS ORDER BY FAMILY');
      IBQuery4.Close;
      IBQuery4.Open;

    end;
end;


procedure TForm4.DBGrid2DblClick(Sender: TObject);
var parol, role:string;
    id: integer;
begin

     // Редактирование пользователя
                                           //         Form6.CheckBox1.Visible:=false;


                                                    Form6.Label15.Visible:=false;
                                                    Form6.Label15.Caption:='';
                                                    

     form6.Label11.Caption:='2'; // Добавляем пользователя
     form6.Label13.Caption:=inttostr(IBQuery4ID.AsInteger); // Идентификатор пользователя

     form6.Edit1.Text:=IBQuery4NAME.AsString;
     form6.Edit2.Text:=IBQuery4SECOND_NAME.AsString;
     form6.Edit3.Text:=IBQuery4FAMILY.AsString;
     Form6.Edit4.Text:=IBQuery4DOLGNOST.AsString;
     Form6.Edit5.Text:=IBQuery4OTDEL.AsString;


     // Декодируем пароль и роль пользователя
     Decoding(IBQuery4ROLE.AsString,IBQuery4ID.AsInteger, IBQuery4NAME.AsString, role);
     Decoding(IBQuery4PASS.AsString,IBQuery4ID.AsInteger, IBQuery4NAME.AsString, parol);
     Form6.MaskEdit1.Text:=parol;
     Form6.MaskEdit2.Text:=parol;
     Form6.ComboBox1.Text:=role;



     Form6.ShowModal;

end;

procedure TForm4.SpeedButton1Click(Sender: TObject);
var
    fl1:integer;
begin

    fl1:=1;
    if length(edit1.Text)<1 then fl1:=1
                            else fl1:=2;

      IBQuery4.SQL.Clear;
      if fl1=1 then begin
      IBQuery4.SQL.Append('select * from USERS ORDER BY FAMILY');

      end;
      if fl1=2 then begin
      IBQuery4.SQL.Append('select * from USERS WHERE (FAMILY LIKE :FAM OR USLOGIN LIKE :FAM) ORDER BY FAMILY');
      IBQuery4.ParamByName('FAM').AsString:='%'+Edit1.text+'%';
      end;
      IBQuery4.Close;
      IBQuery4.Open;

end;

end.
