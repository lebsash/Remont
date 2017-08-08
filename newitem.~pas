unit newitem;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, unit2, DB, Grids, DBGrids, IBCustomDataSet,
  IBQuery, Buttons, ComCtrls, Menus, ThemedDBGrid, AdvObj, BaseGrid,
  AdvGrid, DBAdvGrid;

type
  TForm12 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Label3: TLabel;
    Edit2: TEdit;
    Edit3: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    Edit4: TEdit;
    Memo1: TMemo;
    Label7: TLabel;
    IBQuery1: TIBQuery;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    IBQuery2: TIBQuery;
    IBQuery2ID: TIntegerField;
    IBQuery2USTR_CODE: TIBStringField;
    IBQuery2USTR_NAME: TIBStringField;
    IBQuery2USTR_TIPE: TIBStringField;
    IBQuery2ABOUT: TIBStringField;
    IBQuery2SERIAL: TIBStringField;
    IBQuery2OWNER_ID: TIntegerField;
    IBQuery3: TIBQuery;
    IBQuery4: TIBQuery;
    SpeedButton4: TSpeedButton;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    IBQuery5: TIBQuery;
    IBQuery5ID: TIntegerField;
    IBQuery5USTR_CODE: TIBStringField;
    IBQuery5USTR_NAME: TIBStringField;
    IBQuery5USTR_TIPE: TIBStringField;
    IBQuery5SERIAL: TIBStringField;
    IBQuery5ABOUT: TIBStringField;
    IBQuery5FL_GOTOVO: TIntegerField;
    IBQuery5FL_SOGLASOVANO: TIntegerField;
    IBQuery5FL_VIDANO: TIntegerField;
    IBQuery5ID_SHAPKA: TIntegerField;
    IBQuery6: TIBQuery;
    IBQuery7: TIBQuery;
    SpeedButton5: TSpeedButton;
    IBQuery8: TIBQuery;
    StatusBar1: TStatusBar;
    IBQuery8ID_ITEM: TIntegerField;
    IBQuery8ID_SHAPKA: TIntegerField;
    IBQuery8TODO_NAME: TIBStringField;
    IBQuery8TODO_ID: TIntegerField;
    IBQuery8TODO_COST: TFloatField;
    IBQuery8KOL_VO: TIntegerField;
    IBQuery8TOTAL_COST: TFloatField;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    IBQuery9: TIBQuery;
    SpeedButton6: TSpeedButton;
    IBQuery8FL_GOTOVO: TIntegerField;
    IBQuery8FL_SOGLASOVANO: TIntegerField;
    IBQuery16: TIBQuery;
    IBQuery16ID: TIntegerField;
    IBQuery16USTR_CODE: TIBStringField;
    IBQuery16USTR_NAME: TIBStringField;
    IBQuery16USTR_TIPE: TIBStringField;
    IBQuery16SERIAL: TIBStringField;
    IBQuery16ABOUT: TIBStringField;
    IBQuery16FL_GOTOVO: TIntegerField;
    IBQuery16FL_SOGLASOVANO: TIntegerField;
    IBQuery16FL_VIDANO: TIntegerField;
    IBQuery16ID_SHAPKA: TIntegerField;
    IBQuery17: TIBQuery;
    IBQuery18: TIBQuery;
    IBQuery19: TIBQuery;
    IBQuery21: TIBQuery;
    IBQuery21ID_SHAPKA: TIntegerField;
    IBQuery21ID_CLIENT: TIntegerField;
    IBQuery21DATA_GET: TDateTimeField;
    IBQuery21DATA_KRAY: TDateTimeField;
    IBQuery21DATA_END: TDateTimeField;
    IBQuery21F_STATUS: TIntegerField;
    IBQuery21F_KORRECT: TIntegerField;
    IBQuery21ID_MASTER: TIntegerField;
    IBQuery21ID_MANAGER: TIntegerField;
    IBQuery21ID_SERVICE: TIntegerField;
    IBQuery21N_1C: TIBStringField;
    IBQuery21F_CLIENT: TIntegerField;
    IBQuery21ABOUT: TIBStringField;
    IBQuery21F_SOGL_C: TIntegerField;
    IBQuery21F_SOGL_V: TIntegerField;
    IBQuery21F_SOGL_T: TIntegerField;
    IBQuery21F_REZ_C: TIntegerField;
    IBQuery21F_REZ_O: TIntegerField;
    IBQuery21NOM_KARTA: TIBStringField;
    IBQuery21FL_GOTOVO: TIntegerField;
    IBQuery21FL_SOGLASOVANO: TIntegerField;
    IBQuery21FL_VIDANO: TIntegerField;
    IBQuery21FL_VRABOTA: TIntegerField;
    IBQuery20: TIBQuery;
    N3: TMenuItem;
    N2: TMenuItem;
    SpeedButton7: TSpeedButton;
    IBQuery16DAT_SOGL: TDateTimeField;
    IBQuery16DAT_GOTOVO: TDateTimeField;
    IBQuery16DAT_VIDANO: TDateTimeField;
    IBQuery21HHH: TIBStringField;
    IBQuery21DAT_SOGL: TDateTimeField;
    IBQuery21DAT_GOTOVO: TDateTimeField;
    IBQuery21DAT_VIDANO: TDateTimeField;
    IBQuery5DAT_SOGL: TDateTimeField;
    IBQuery5DAT_GOTOVO: TDateTimeField;
    IBQuery5DAT_VIDANO: TDateTimeField;
    GroupBox1: TGroupBox;
    Label4: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    IBQuery29: TIBQuery;
    IBQuery29ID: TIntegerField;
    IBQuery29USTR_CODE: TIBStringField;
    IBQuery29USTR_NAME: TIBStringField;
    IBQuery29USTR_TIPE: TIBStringField;
    IBQuery29SERIAL: TIBStringField;
    IBQuery29ABOUT: TIBStringField;
    IBQuery29FL_GOTOVO: TIntegerField;
    IBQuery29FL_SOGLASOVANO: TIntegerField;
    IBQuery29FL_VIDANO: TIntegerField;
    IBQuery29ID_SHAPKA: TIntegerField;
    IBQuery29DAT_SOGL: TDateTimeField;
    IBQuery29DAT_GOTOVO: TDateTimeField;
    IBQuery29DAT_VIDANO: TDateTimeField;
    IBQuery30: TIBQuery;
    IBQuery30ID_SHAPKA: TIntegerField;
    IBQuery30ID_CLIENT: TIntegerField;
    IBQuery30DATA_GET: TDateTimeField;
    IBQuery30DATA_KRAY: TDateTimeField;
    IBQuery30DATA_END: TDateTimeField;
    IBQuery30F_STATUS: TIntegerField;
    IBQuery30F_KORRECT: TIntegerField;
    IBQuery30ID_MASTER: TIntegerField;
    IBQuery30ID_MANAGER: TIntegerField;
    IBQuery30ID_SERVICE: TIntegerField;
    IBQuery30N_1C: TIBStringField;
    IBQuery30F_CLIENT: TIntegerField;
    IBQuery30ABOUT: TIBStringField;
    IBQuery30F_SOGL_C: TIntegerField;
    IBQuery30F_SOGL_V: TIntegerField;
    IBQuery30F_SOGL_T: TIntegerField;
    IBQuery30F_REZ_C: TIntegerField;
    IBQuery30F_REZ_O: TIntegerField;
    IBQuery30NOM_KARTA: TIBStringField;
    IBQuery30FL_GOTOVO: TIntegerField;
    IBQuery30FL_SOGLASOVANO: TIntegerField;
    IBQuery30FL_VIDANO: TIntegerField;
    IBQuery30FL_VRABOTA: TIntegerField;
    IBQuery30HHH: TIBStringField;
    IBQuery30DAT_SOGL: TDateTimeField;
    IBQuery30DAT_GOTOVO: TDateTimeField;
    IBQuery30DAT_VIDANO: TDateTimeField;
    IBQuery10: TIBQuery;
    IBQuery10ID: TIntegerField;
    IBQuery10USTR_CODE: TIBStringField;
    IBQuery10USTR_NAME: TIBStringField;
    IBQuery10USTR_TIPE: TIBStringField;
    IBQuery10SERIAL: TIBStringField;
    IBQuery10ABOUT: TIBStringField;
    IBQuery10FL_GOTOVO: TIntegerField;
    IBQuery10FL_SOGLASOVANO: TIntegerField;
    IBQuery10FL_VIDANO: TIntegerField;
    IBQuery10ID_SHAPKA: TIntegerField;
    IBQuery10DAT_SOGL: TDateTimeField;
    IBQuery10DAT_GOTOVO: TDateTimeField;
    IBQuery10DAT_VIDANO: TDateTimeField;
    IBQuery11: TIBQuery;
    IBQuery12: TIBQuery;
    IBQuery11ID_ITEM: TIntegerField;
    IBQuery11ID_SHAPKA: TIntegerField;
    IBQuery11TODO_NAME: TIBStringField;
    IBQuery11TODO_ID: TIntegerField;
    IBQuery11TODO_COST: TFloatField;
    IBQuery11KOL_VO: TIntegerField;
    IBQuery11TOTAL_COST: TFloatField;
    IBQuery11FL_GOTOVO: TIntegerField;
    IBQuery11FL_SOGLASOVANO: TIntegerField;
    IBQuery8ID_MASTER: TIntegerField;
    IBQuery8ID_SERVICE: TIntegerField;
    IBQuery8MASTER_NAME: TIBStringField;
    IBQuery13: TIBQuery;
    IBQuery14: TIBQuery;
    IBQuery14ID_SHAPKA: TIntegerField;
    IBQuery14ID_CLIENT: TIntegerField;
    IBQuery14DATA_GET: TDateTimeField;
    IBQuery14DATA_KRAY: TDateTimeField;
    IBQuery14DATA_END: TDateTimeField;
    IBQuery14F_STATUS: TIntegerField;
    IBQuery14F_KORRECT: TIntegerField;
    IBQuery14ID_MASTER: TIntegerField;
    IBQuery14ID_MANAGER: TIntegerField;
    IBQuery14ID_SERVICE: TIntegerField;
    IBQuery14N_1C: TIBStringField;
    IBQuery14F_CLIENT: TIntegerField;
    IBQuery14ABOUT: TIBStringField;
    IBQuery14F_SOGL_C: TIntegerField;
    IBQuery14F_SOGL_V: TIntegerField;
    IBQuery14F_SOGL_T: TIntegerField;
    IBQuery14F_REZ_C: TIntegerField;
    IBQuery14F_REZ_O: TIntegerField;
    IBQuery14NOM_KARTA: TIBStringField;
    IBQuery14FL_GOTOVO: TIntegerField;
    IBQuery14FL_SOGLASOVANO: TIntegerField;
    IBQuery14FL_VIDANO: TIntegerField;
    IBQuery14FL_VRABOTA: TIntegerField;
    IBQuery14HHH: TIBStringField;
    IBQuery14DAT_SOGL: TDateTimeField;
    IBQuery14DAT_GOTOVO: TDateTimeField;
    IBQuery14DAT_VIDANO: TDateTimeField;
    IBQuery15: TIBQuery;
    IBQuery15ID: TIntegerField;
    IBQuery15NAME: TIBStringField;
    IBQuery15SECOND_NAME: TIBStringField;
    IBQuery15FAMILY: TIBStringField;
    IBQuery15PASS: TIBStringField;
    IBQuery15ROLE: TIBStringField;
    IBQuery15DOLGNOST: TIBStringField;
    IBQuery15OTDEL: TIBStringField;
    IBQuery15ID_FIRM: TIntegerField;
    IBQuery15USLOGIN: TIBStringField;
    IBQuery22: TIBQuery;
    IBQuery22ID: TIntegerField;
    IBQuery22NAME: TIBStringField;
    IBQuery22CONTACT: TIBStringField;
    IBQuery22ABOUT: TIBStringField;
    SpeedButton8: TSpeedButton;
    SpeedButton9: TSpeedButton;
    IBQuery23: TIBQuery;
    IBQuery23ID_SHAPKA: TIntegerField;
    IBQuery23ID_CLIENT: TIntegerField;
    IBQuery23DATA_GET: TDateTimeField;
    IBQuery23DATA_KRAY: TDateTimeField;
    IBQuery23DATA_END: TDateTimeField;
    IBQuery23F_STATUS: TIntegerField;
    IBQuery23F_KORRECT: TIntegerField;
    IBQuery23ID_MASTER: TIntegerField;
    IBQuery23ID_MANAGER: TIntegerField;
    IBQuery23ID_SERVICE: TIntegerField;
    IBQuery23N_1C: TIBStringField;
    IBQuery23F_CLIENT: TIntegerField;
    IBQuery23ABOUT: TIBStringField;
    IBQuery23F_SOGL_C: TIntegerField;
    IBQuery23F_SOGL_V: TIntegerField;
    IBQuery23F_SOGL_T: TIntegerField;
    IBQuery23F_REZ_C: TIntegerField;
    IBQuery23F_REZ_O: TIntegerField;
    IBQuery23NOM_KARTA: TIBStringField;
    IBQuery23FL_GOTOVO: TIntegerField;
    IBQuery23FL_SOGLASOVANO: TIntegerField;
    IBQuery23FL_VIDANO: TIntegerField;
    IBQuery23FL_VRABOTA: TIntegerField;
    IBQuery23HHH: TIBStringField;
    IBQuery23DAT_SOGL: TDateTimeField;
    IBQuery23DAT_GOTOVO: TDateTimeField;
    IBQuery23DAT_VIDANO: TDateTimeField;
    IBQuery24: TIBQuery;
    IBQuery24ID: TIntegerField;
    IBQuery24USTR_CODE: TIBStringField;
    IBQuery24USTR_NAME: TIBStringField;
    IBQuery24USTR_TIPE: TIBStringField;
    IBQuery24SERIAL: TIBStringField;
    IBQuery24ABOUT: TIBStringField;
    IBQuery24FL_GOTOVO: TIntegerField;
    IBQuery24FL_SOGLASOVANO: TIntegerField;
    IBQuery24FL_VIDANO: TIntegerField;
    IBQuery24ID_SHAPKA: TIntegerField;
    IBQuery24DAT_SOGL: TDateTimeField;
    IBQuery24DAT_GOTOVO: TDateTimeField;
    IBQuery24DAT_VIDANO: TDateTimeField;
    procedure Edit4DblClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);

    procedure DBGrid1DragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure DBGrid1DragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure SpeedButton5Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure N1Click(Sender: TObject);
    procedure PopupMenu1Popup(Sender: TObject);
    procedure DBGrid1DrawDataCell(Sender: TObject; const Rect: TRect;
      Field: TField; State: TGridDrawState);
    procedure SpeedButton6Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure DBGrid1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
     procedure Decoding(F:string; fr: integer; fk1:string; var newstr:string);
  public
    { Public declarations }
  end;

var
  Form12: TForm12;
  r: string;
implementation

uses tipeitem, price, unit1, Unit17, Unit5;

{$R *.dfm}


procedure TForm12.decoding(F:string;fr: integer; fk1:string; var newstr:string);
 var
    s: string;
   i, j:integer;
   m,key:byte;
   k:char;
   kk, kk1, pp1, pp2, key2, key1:string;
   r: string;   // Роль текущего пользователя для локальной цели формы
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

procedure TForm12.Edit4DblClick(Sender: TObject);
begin
 form13.Edit1.Text:=Edit4.Text;
 Form13.Showmodal;
end;

procedure TForm12.SpeedButton1Click(Sender: TObject);
begin
 form13.Edit1.Text:=Edit4.Text;
 Form13.Showmodal;
end;

procedure TForm12.SpeedButton2Click(Sender: TObject);
begin
// Поиск устройства в система
if Length(Edit1.Text)>0 then
begin
  IBQuery2.SQL.Clear;
  IBQuery2.SQL.Append('select * from USTR WHERE USTR_CODE=:CODE');
  IBQuery2.ParamByName('CODE').AsString:=Edit1.Text;
  IBQuery2.Close;
  IBQuery2.Open;
  IBQuery2.First;
  if not IBQuery2.Eof then
     begin
      // Найден по коду, запоняем формы
       Edit2.Text:=IBQuery2USTR_NAME.AsString;
       Edit3.Text:=IBQuery2SERIAL.AsString;
       Edit4.Text:=IBQuery2USTR_TIPE.AsString;
       Memo1.Lines.Clear;
       Memo1.Lines.Append(IBQuery2ABOUT.AsString);



     end;

 end;
end;

procedure TForm12.SpeedButton3Click(Sender: TObject);
begin
 // Зарегистрировать новое устройство в системе
if (Length(Edit1.Text)>0)and(length(Edit2.Text)>0) then
begin
  IBQuery2.SQL.Clear;
  IBQuery2.SQL.Append('select * from USTR WHERE USTR_CODE=:CODE');
  IBQuery2.ParamByName('CODE').AsString:=Edit1.Text;
  IBQuery2.Close;
  IBQuery2.Open;
  IBQuery2.First;
  if  IBQuery2.Eof then
  begin
     IBQuery3.SQL.Clear;
     IBQuery3.SQL.Append('INSERT INTO USTR (ABOUT, SERIAL, USTR_CODE, USTR_NAME, USTR_TIPE, OWNER_ID) VALUES (:ABOUT, :SERIAL, :USTR_CODE, :USTR_NAME, :USTR_TIPE, :OWNER_ID)');
     IBQuery3.ParamByName('ABOUT').AsString:=Memo1.Text;
     IBQuery3.ParamByName('SERIAL').AsString:=Edit3.Text;
     IBQuery3.ParamByName('USTR_CODE').AsString:=Edit1.Text;
     IBQuery3.ParamByName('USTR_NAME').AsString:=Edit2.Text;
     IBQuery3.ParamByName('USTR_TIPE').AsString:=Edit4.Text;
     IBQuery3.ParamByName('OWNER_ID').AsInteger:=strtoint(label9.Caption);
     IBQuery3.Close;
     IBQuery3.Open;

     Unit2.DataModule2.IBTransaction1.CommitRetaining;

  end
  else
  if MessageDlg('Данное устройство зарегистрировано в базе. Внести изменения в запись?',
            mtConfirmation, [mbYes, mbNo], 0) = mrYes
            then
            begin
            IBQuery4.SQL.Clear;
            IBQuery4.SQL.Append('UPDATE USTR SET ABOUT=:ABOUT, OWNER_ID=:OWNER_ID, SERIAL=:SERIAL, USTR_CODE=:USTR_CODE, USTR_NAME=:USTR_NAME, USTR_TIPE=:USTR_TIPE WHERE ID=:ID');
            IBQuery4.ParamByName('ABOUT').AsString:=Memo1.Text;
            IBQuery4.ParamByName('OWNER_ID').AsInteger:=strtoint(label9.Caption);
            IBQuery4.ParamByName('SERIAL').AsString:=Edit3.Text;
            IBQuery4.ParamByName('USTR_CODE').AsString:=Edit1.Text;
            IBQuery4.ParamByName('USTR_NAME').AsString:=Edit2.Text;
            IBQuery4.ParamByName('USTR_TIPE').AsString:=Edit4.Text;
            IBQuery4.ParamByName('ID').AsInteger:=IBQuery2ID.AsInteger;
            IBQuery4.Close;
            IBQuery4.Open;
            Unit2.DataModule2.IBTransaction1.CommitRetaining;
            end;

           SpeedButton2.Click; 
end;

end;

procedure TForm12.SpeedButton4Click(Sender: TObject);
begin
// Сохраняем устройство для ремонта в базе
if label10.Caption='0' then
    begin
    // Сохраняем устройство в базу
    IBQuery1.SQL.Clear;
    IBQuery1.SQL.Append('INSERT INTO REM_USTR (ABOUT, FL_GOTOVO, FL_SOGLASOVANO, FL_VIDANO, ID_SHAPKA, SERIAL, USTR_CODE, ');
    IBQuery1.SQL.Append('USTR_NAME, USTR_TIPE) VALUES (:ABOUT, :FL_GOTOVO, :FL_SOGLASOVANO, :FL_VIDANO, :ID_SHAPKA, :SERIAL, ');
    IBQuery1.SQL.Append(':USTR_CODE, :USTR_NAME, :USTR_TIPE)');
    IBQuery1.ParamByName('ABOUT').AsString:=Memo1.Text;
    IBQuery1.ParamByName('FL_GOTOVO').AsInteger:=0;


    Decoding(unit1.ROLE_USER,unit1.ID_USER, unit1.NAME_USER, r);
     if r='Сервис' then
                      begin
                        IBQuery1.ParamByName('FL_SOGLASOVANO').AsInteger:=0;
                      end else
                      begin
                        IBQuery1.ParamByName('FL_SOGLASOVANO').AsInteger:=1;
                      end;



     IBQuery1.ParamByName('FL_VIDANO').AsInteger:=0;
     IBQuery1.ParamByName('ID_SHAPKA').AsInteger:=strtoint(label8.Caption);
     IBQuery1.ParamByName('SERIAL').AsString:=Edit3.Text;
     IBQuery1.ParamByName('USTR_CODE').AsString:=Edit1.Text;
     IBQuery1.ParamByName('USTR_NAME').AsString:=Edit2.Text;
     IBQuery1.ParamByName('USTR_TIPE').AsString:=Edit4.Text;
     IBQuery1.Close;
     IBQuery1.Open;
     unit2.DataModule2.IBTransaction1.CommitRetaining;
     // Теперь ищем идентификатор

     IBQuery5.SQL.Clear;
     IBQuery5.SQL.Append('select * from REM_USTR WHERE ID_SHAPKA=:ID_SHAPKA AND USTR_NAME=:USTR_NAME AND ');
     IBQuery5.SQL.Append('USTR_CODE=:USTR_CODE AND SERIAL=:SERIAL AND FL_VIDANO=:FL_VIDANO AND FL_SOGLASOVANO=:FL_SOGLASOVANO ');
     IBQuery5.SQL.Append('AND FL_GOTOVO=:FL_GOTOVO');

     IBQuery5.ParamByName('FL_GOTOVO').AsInteger:=0;


    Decoding(unit1.ROLE_USER,unit1.ID_USER, unit1.NAME_USER, r);
     if r='Сервис' then
                      begin
                        IBQuery5.ParamByName('FL_SOGLASOVANO').AsInteger:=0;
                      end else
                      begin
                        IBQuery5.ParamByName('FL_SOGLASOVANO').AsInteger:=1;
                      end;



     IBQuery5.ParamByName('FL_VIDANO').AsInteger:=0;
     IBQuery5.ParamByName('ID_SHAPKA').AsInteger:=strtoint(label8.Caption);
     IBQuery5.ParamByName('SERIAL').AsString:=Edit3.Text;
     IBQuery5.ParamByName('USTR_CODE').AsString:=Edit1.Text;
     IBQuery5.ParamByName('USTR_NAME').AsString:=Edit2.Text;
    // IBQuery5.ParamByName('USTR_TIPE').AsString:=Edit4.Text;
     IBQuery5.close;
     IBQuery5.Open;
     IBQuery5.First;
     Label10.Caption:=IBQuery5ID.AsString;
    end
    else
    begin
    // Иначе делаем UPDATE
    IBQuery6.SQL.Clear;
    IBQuery6.SQL.Append('UPDATE REM_USTR SET ABOUT=:ABOUT, ');
    IBQuery6.SQL.Append('FL_VIDANO=:FL_VIDANO, ID_SHAPKA=:ID_SHAPKA,SERIAL=:SERIAL, USTR_CODE=:USTR_CODE, USTR_NAME=:USTR_NAME, USTR_TIPE=:USTR_TIPE WHERE ID=:ID');
    IBQuery6.ParamByName('FL_VIDANO').AsInteger:=0;


     IBQuery6.ParamByName('ID_SHAPKA').AsInteger:=strtoint(label8.Caption);
     IBQuery6.ParamByName('SERIAL').AsString:=Edit3.Text;
     IBQuery6.ParamByName('USTR_CODE').AsString:=Edit1.Text;
     IBQuery6.ParamByName('USTR_NAME').AsString:=Edit2.Text;
     IBQuery6.ParamByName('USTR_TIPE').AsString:=Edit4.Text;
     IBQuery6.ParamByName('ID').AsInteger:=strtoint(label10.Caption);
     IBQuery6.Close;
     IBQuery6.Open;
     unit2.DataModule2.IBTransaction1.CommitRetaining;
    end;
speedbutton5.Click;
Form16.Edit1.Text:=Edit2.Text;
Form16.SpeedButton2.Click;
form16.show;
end;




procedure TForm12.DBGrid1DragDrop(Sender, Source: TObject; X, Y: Integer);
begin

// Проверяем на задвоение, На один предмет нельзя вешать 2 одинаковые работы
  IBQuery11.SQL.Clear;
  IBQuery11.SQL.Append('select * from TODO WHERE ID_SHAPKA=:ID_SHAPKA AND ID_ITEM=:ID_ITEM AND TODO_ID=:TODO_ID');
  IBQuery11.ParamByName('ID_SHAPKA').AsInteger:=strtoint(label8.Caption);
  IBQuery11.ParamByName('ID_ITEM').AsInteger:=strtoint (label10.Caption);
  IBQuery11.ParamByName('TODO_ID').AsInteger:=Form16.IBQuery2ID.AsInteger;
  IBQuery11.Close;
  IBQuery11.Open;
  IBQuery11.First;

  if NOT IBQuery11.Eof then begin
                         //Showmessage ('На конкретное устройство нельзя назначать одинаковые работы. Корректируйте кол-во работ в списке');
                         IBQuery12.SQL.Clear;
                         IBQuery12.SQL.Append('UPDATE TODO SET FL_GOTOVO=:FL_GOTOVO, FL_SOGLASOVANO=:FL_SOGLASOVANO, KOL_VO=:KOL_VO, ');
                         IBQuery12.SQL.Append('TODO_COST=:TODO_COST, TOTAL_COST=:TOTAL_COST WHERE TODO_ID=:TODO_ID AND ID_ITEM=:ID_ITEM AND ID_SHAPKA=:ID_SHAPKA');

                          if r='Сервис' then IBQuery12.ParamByName('FL_SOGLASOVANO').AsInteger:=0
                                        else IBQuery12.ParamByName('FL_SOGLASOVANO').AsInteger:=1;
                           IBQuery12.ParamByName('KOL_VO').AsInteger:=IBQuery11KOL_VO.AsInteger+1;
                           IBQuery12.ParamByName('TODO_COST').VALUE:=FORM16.IBQuery2COST.AsVariant;
                           IBQuery12.ParamByName('TOTAL_COST').VALUE:=FORM16.IBQuery2COST.AsVariant*(IBQuery11KOL_VO.AsInteger+1);
                           IBQuery12.ParamByName('FL_GOTOVO').AsInteger:=0;
                           IBQuery12.ParamByName('ID_SHAPKA').AsInteger:=strtoint(label8.Caption);
                           IBQuery12.ParamByName('ID_ITEM').AsInteger:=strtoint (label10.Caption);
                           IBQuery12.ParamByName('TODO_ID').AsInteger:=Form16.IBQuery2ID.AsInteger;
                           IBQuery12.Close;
                           IBQuery12.Open;
                           unit2.DataModule2.IBTransaction1.CommitRetaining;

                          // Корректируем согласованности
                          speedbutton6.Click;

                          // Обновляем окно выдачи
                            speedbutton5.Click;

                        end else begin

// Добавляем новую услугу
IBQuery7.SQL.Clear;
IBQuery7.SQL.Append('INSERT INTO TODO (ID_ITEM, ID_SHAPKA, TODO_COST, TODO_ID, TODO_NAME, KOL_VO, TOTAL_COST, FL_GOTOVO, FL_SOGLASOVANO, ID_MASTER, ID_SERVICE, MASTER_NAME) VALUES ');
IBQuery7.SQL.Append('(:ID_ITEM, :ID_SHAPKA, :TODO_COST, :TODO_ID, :TODO_NAME, :KOL_VO, :TOTAL_COST, :FL_GOTOVO, :FL_SOGLASOVANO, :ID_MASTER, :ID_SERVICE, :MASTER_NAME)');
IBQuery7.ParamByName('ID_ITEM').AsInteger:=strtoint (label10.Caption);
IBQuery7.ParamByName('ID_SHAPKA').AsInteger:=strtoint(label8.Caption);
IBQuery7.ParamByName('TODO_COST').VALUE:=FORM16.IBQuery2COST.AsVariant;
IBQuery7.ParamByName('TODO_ID').AsInteger:=Form16.IBQuery2ID.AsInteger;
IBQuery7.ParamByName('TODO_NAME').AsString:=Form16.IBQuery2NAME.AsString;

IBQuery7.ParamByName('KOL_VO').AsInteger:=1;
IBQuery7.ParamByName('FL_GOTOVO').AsInteger:=0;



// Если услугу добавил мастер - флаг заявки делаем "НЕ СОГЛАСОВАНО"
      Decoding(unit1.ROLE_USER,unit1.ID_USER, unit1.NAME_USER, r);


if Form5.Label12.Caption='2' then begin
                                    if r='Сервис' then begin
                                                       IBQuery7.ParamByName('ID_MASTER').AsInteger:=unit1.ID_USER;
                                                       IBQuery7.ParamByName('ID_SERVICE').AsInteger:=0;
                                                       IBQuery7.ParamByName('MASTER_NAME').AsString:=Unit1.FAMILY_USER+' '+unit1.NAME_USER;
                                                       end
                                                       else
                                                       begin
                                                       IBQuery7.ParamByName('ID_MASTER').AsInteger:=0;
                                                       IBQuery7.ParamByName('ID_SERVICE').AsInteger:=strtoint (Form5.Label9.Caption);
                                                       IBQuery7.ParamByName('MASTER_NAME').AsString:=Form5.Edit3.Text;
                                                       end;
                                   // Основным является СЕРВИСНЫЙ ЦЕНТР
                                  end;

if Form5.Label12.Caption='1' then begin
                                     // Основной - МАСТЕР
                                    if r='Сервис' then begin
                                                       IBQuery7.ParamByName('ID_MASTER').AsInteger:=unit1.ID_USER;
                                                       IBQuery7.ParamByName('ID_SERVICE').AsInteger:=0;
                                                       IBQuery7.ParamByName('MASTER_NAME').AsString:=Unit1.FAMILY_USER+' '+unit1.NAME_USER;
                                                       end
                                                       else
                                                       begin
                                                       IBQuery7.ParamByName('ID_MASTER').AsInteger:=strtoint (Form5.Label9.Caption);;
                                                       IBQuery7.ParamByName('ID_SERVICE').AsInteger:=0;
                                                       IBQuery7.ParamByName('MASTER_NAME').AsString:=Form5.Edit3.Text;
                                                       end;
                                  end;

     if r='Сервис' then IBQuery7.ParamByName('FL_SOGLASOVANO').AsInteger:=0
                   else IBQuery7.ParamByName('FL_SOGLASOVANO').AsInteger:=1;


IBQuery7.ParamByName('TOTAL_COST').VALUE:=FORM16.IBQuery2COST.AsVariant;
IBQuery7.Close;
IBQuery7.Open;
unit2.DataModule2.IBTransaction1.CommitRetaining;

// Корректируем согласованности
speedbutton6.Click;

// Обновляем окно выдачи
speedbutton5.Click;
  end;
end;

procedure TForm12.DBGrid1DragOver(Sender, Source: TObject; X, Y: Integer;
  State: TDragState; var Accept: Boolean);
begin
Accept := (Source = Form16.DBGrid2);
end;

procedure TForm12.SpeedButton5Click(Sender: TObject);
var nn: string;
begin
nn:='';
if label10.Caption='0' then
 begin
   // Обнуляем строки
   memo1.Lines.Clear;
   Edit1.Text:='';
   Edit2.Text:='';
   Edit3.Text:='';
   Edit4.Text:='';
  // Edit5.Text:='';

   //

    IBQuery8.SQL.Clear;
    IBQuery8.SQL.Append('select * from TODO WHERE ID_SHAPKA=:ID_SHAPKA AND ID_ITEM=:ID_ITEM');
    IBQuery8.ParamByName('ID_SHAPKA').AsInteger:=strtoint(label8.caption);

    IBQuery8.ParamByName('ID_ITEM').AsInteger:=strtoint(label10.Caption);
    IBQuery8.Close;
    IBQuery8.Open;
    IBQuery8.First;



 end
 else
 begin
  
    IBQuery8.SQL.Clear;
    IBQuery8.SQL.Append('select * from TODO WHERE ID_SHAPKA=:ID_SHAPKA AND ID_ITEM=:ID_ITEM');
    IBQuery8.ParamByName('ID_SHAPKA').AsInteger:=strtoint(label8.caption);

    IBQuery8.ParamByName('ID_ITEM').AsInteger:=strtoint(label10.Caption);
    IBQuery8.Close;
    IBQuery8.Open;
    IBQuery8.First;
 end;
end;

procedure TForm12.DBGrid1DblClick(Sender: TObject);
begin
if not IBQuery8.Eof then if IBQuery8FL_GOTOVO.AsInteger=0 then
begin
     Decoding(unit1.ROLE_USER,unit1.ID_USER, unit1.NAME_USER, r);
     if (r='Сервис')and (IBQuery8ID_MASTER.AsInteger<>unit1.ID_USER) then
            begin
            end
            else
            begin
Form17.Memo1.Lines.Clear;
Form17.Memo1.Lines.Append(IBQuery8TODO_NAME.AsString);
Form17.Edit2.text:=IBQuery8TODO_COST.AsString;
Form17.Edit3.text:=IBQuery8KOL_VO.AsString;
Form17.Edit4.text:=IBQuery8TOTAL_COST.AsString;
Form17.Edit5.Text:=IBQuery8MASTER_NAME.asString;
Form17.Label1.caption:=IBQuery8ID_MASTER.asString;
Form17.Label2.caption:=IBQuery8ID_SERVICE.asString;
Form17.label5.Caption:=IBQuery8ID_SHAPKA.AsString;
Form17.Label6.Caption:=IBQuery8ID_ITEM.AsString;
Form17.Label7.Caption:=IBQuery8TODO_NAME.AsString;
Form17.Showmodal;
             end;
end;

end;

procedure TForm12.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
 if Label10.Caption<>'' then if strtoint(Label10.Caption)<>0 then
  begin
    // Делаем Апдейт
     IBQuery6.SQL.Clear;
     IBQuery6.SQL.Append('UPDATE REM_USTR SET ABOUT=:ABOUT, ');
     IBQuery6.SQL.Append('FL_VIDANO=:FL_VIDANO, ID_SHAPKA=:ID_SHAPKA,SERIAL=:SERIAL, USTR_CODE=:USTR_CODE, USTR_NAME=:USTR_NAME, USTR_TIPE=:USTR_TIPE WHERE ID=:ID');
     IBQuery6.ParamByName('ABOUT').AsString:=Memo1.Text;
     IBQuery6.ParamByName('FL_VIDANO').AsInteger:=0;
     IBQuery6.ParamByName('ID_SHAPKA').AsInteger:=strtoint(label8.Caption);
     IBQuery6.ParamByName('SERIAL').AsString:=Edit3.Text;
     IBQuery6.ParamByName('USTR_CODE').AsString:=Edit1.Text;
     IBQuery6.ParamByName('USTR_NAME').AsString:=Edit2.Text;
     IBQuery6.ParamByName('USTR_TIPE').AsString:=Edit4.Text;
     IBQuery6.ParamByName('ID').AsInteger:=strtoint(label10.Caption);
     IBQuery6.Close;
     IBQuery6.Open;
     unit2.DataModule2.IBTransaction1.CommitRetaining;
   end;
end;

procedure TForm12.N1Click(Sender: TObject);
begin
if not IBQuery8.Eof then if IBQuery8FL_GOTOVO.AsInteger=0
then begin
  IBQuery9.SQL.Clear;
  IBQuery9.SQL.Append('DELETE FROM TODO WHERE ID_ITEM=:ID_ITEM AND ID_SHAPKA=:ID_SHAPKA AND TODO_ID=:TODO_ID');
  IBQuery9.ParamByName('ID_SHAPKA').AsInteger:=strtoint(label8.Caption);
  IBQuery9.ParamByName('ID_ITEM').AsInteger:=strtoint(label10.Caption);
  IBQuery9.ParamByName('TODO_ID').AsInteger:=IBQuery8TODO_ID.AsInteger;
  IBQuery9.Close;
  IBQuery9.Open;
  unit2.DataModule2.IBTransaction1.CommitRetaining;

  // Нормализуем
  SpeedButton6.Click;

  // Обновляем
  SpeedButton5.Click;
 end else showmessage ('Невозможно редактировать данную работу так как мастер ее уже выполнил!');
end;

procedure TForm12.PopupMenu1Popup(Sender: TObject);
begin
 if IBQuery8.Eof then
    begin
     N1.Visible:=false;
     N2.Visible:=false;
     N3.Visible:=false;
    end else
     begin
     Decoding(unit1.ROLE_USER,unit1.ID_USER, unit1.NAME_USER, r);
     if (r='Сервис')and (IBQuery8ID_MASTER.AsInteger<>unit1.ID_USER) then
            begin
              N1.Visible:=false;
              N2.Visible:=false;
              N3.Visible:=false;
            end else
            begin
     N1.Visible:=true;
     N2.Visible:=true;
     N3.Visible:=true;
            end;
     end;
end;

procedure TForm12.DBGrid1DrawDataCell(Sender: TObject; const Rect: TRect;
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

procedure TForm12.SpeedButton6Click(Sender: TObject);
begin



     // Проверка: согласованность работ внутри айтема
    IBQuery17.SQL.Clear;
    IBQuery17.SQL.Append('select * from TODO WHERE ID_SHAPKA=:ID_SHAPKA AND ID_ITEM=:ID_ITEM AND FL_SOGLASOVANO=:FL_SOGLASOVANO');
    IBQuery17.ParamByName('ID_SHAPKA').AsInteger:=strtoint(label8.Caption);
    IBQuery17.ParamByName('ID_ITEM').AsInteger:=strtoint(label10.Caption);
    IBQuery17.ParamByName('FL_SOGLASOVANO').AsInteger:=0;
    IBQuery17.Close;
    IBQuery17.Open;
    IBQuery17.First;
    if IBQuery17.Eof then
             begin
         // 0 несогласованных работ внутри айтема => айтем согласован

         // Не забываем выставить время согласования айтема
         IBQuery29.SQL.Clear;
         IBQuery29.SQL.Append('select * from REM_USTR WHERE ID=:ID AND ID_SHAPKA=:ID_SHAPKA');
         IBQuery29.ParamByName('ID').AsInteger:=strtoint (label10.Caption);
         IBQuery29.ParamByName('ID_SHAPKA').AsInteger:=strtoint (label8.Caption);
         IBQuery29.Close;
         IBQuery29.Open;
         IBQuery29.First;
         if IBQuery29DAT_SOGL.asstring='' then
          begin
           IBQuery18.SQL.Clear;
           IBQuery18.SQL.Append('UPDATE REM_USTR SET FL_SOGLASOVANO=:FL_SOGLASOVANO, DAT_SOGL=:DAT_SOGL WHERE ID=:ID AND ID_SHAPKA=:ID_SHAPKA');
           IBQuery18.ParamByName('FL_SOGLASOVANO').AsInteger:=1;
           IBQuery18.ParamByName('ID').AsInteger:=strtoint (label10.Caption);
           IBQuery18.ParamByName('DAT_SOGL').AsDateTime:=now();
           IBQuery18.ParamByName('ID_SHAPKA').AsInteger:=strtoint (label8.Caption);
           IBQuery18.Close;
           IBQuery18.Open;

          end
          else
          begin
           IBQuery18.SQL.Clear;
           IBQuery18.SQL.Append('UPDATE REM_USTR SET FL_SOGLASOVANO=:FL_SOGLASOVANO WHERE ID=:ID AND ID_SHAPKA=:ID_SHAPKA');
           IBQuery18.ParamByName('FL_SOGLASOVANO').AsInteger:=1;
           IBQuery18.ParamByName('ID').AsInteger:=strtoint (label10.Caption);
           IBQuery18.ParamByName('ID_SHAPKA').AsInteger:=strtoint (label8.Caption);
           IBQuery18.Close;
           IBQuery18.Open;

          end;
       end else
          begin
           // Иначе шапка не согласована
           // Даты готовности, согласованности и выданности сбрасываем в ноль
           IBQuery18.SQL.Clear;
           IBQuery18.SQL.Append('UPDATE REM_USTR SET FL_SOGLASOVANO=:FL_SOGLASOVANO, DAT_SOGL=:DAT_SOGL, DAT_GOTOVO=:DAT_GOTOVO, DAT_VIDANO=:DAT_VIDANO WHERE ID=:ID AND ID_SHAPKA=:ID_SHAPKA');
           IBQuery18.ParamByName('FL_SOGLASOVANO').AsInteger:=0;
           IBQuery18.ParamByName('DAT_SOGL').Value:=NuLL;
           IBQuery18.ParamByName('DAT_GOTOVO').Value:=NuLL;
           IBQuery18.ParamByName('DAT_VIDANO').Value:=NuLL;
           IBQuery18.ParamByName('ID').AsInteger:=strtoint (label10.Caption);
           IBQuery18.ParamByName('ID_SHAPKA').AsInteger:=strtoint (label8.Caption);
           IBQuery18.Close;
           IBQuery18.Open;
          end;


    // Проверка выполненных работ внутри айтема
    IBQuery17.SQL.Clear;
    IBQuery17.SQL.Append('select * from TODO WHERE ID_SHAPKA=:ID_SHAPKA AND ID_ITEM=:ID_ITEM AND FL_GOTOVO=:FL_GOTOVO');
    IBQuery17.ParamByName('ID_SHAPKA').AsInteger:=strtoint(label8.Caption);
    IBQuery17.ParamByName('ID_ITEM').AsInteger:=strtoint(label10.Caption);
    IBQuery17.ParamByName('FL_GOTOVO').AsInteger:=0;
    IBQuery17.Close;
    IBQuery17.Open;
    IBQuery17.First;
        if IBQuery17.Eof then
          begin
            // Все работы внутри айтема готовы   => айтем готов
         IBQuery29.SQL.Clear;
         IBQuery29.SQL.Append('select * from REM_USTR WHERE ID=:ID AND ID_SHAPKA=:ID_SHAPKA');
         IBQuery29.ParamByName('ID').AsInteger:=strtoint (label10.Caption);
         IBQuery29.ParamByName('ID_SHAPKA').AsInteger:=strtoint (label8.Caption);
         IBQuery29.Close;
         IBQuery29.Open;
         IBQuery29.First;
         if IBQuery29DAT_GOTOVO.asstring='' then
          begin

         IBQuery18.SQL.Clear;
         IBQuery18.SQL.Append('UPDATE REM_USTR SET FL_GOTOVO=:FL_GOTOVO, DAT_GOTOVO=:DAT_GOTOVO WHERE ID=:ID AND ID_SHAPKA=:ID_SHAPKA');
         IBQuery18.ParamByName('FL_GOTOVO').AsInteger:=1;
         IBQuery18.ParamByName('DAT_GOTOVO').AsDateTime:=now();
         IBQuery18.ParamByName('ID').AsInteger:=strtoint (label10.Caption);
         IBQuery18.ParamByName('ID_SHAPKA').AsInteger:=strtoint (label8.Caption);
         IBQuery18.Close;
         IBQuery18.Open;

          end
          else begin
                 IBQuery18.SQL.Clear;
                 IBQuery18.SQL.Append('UPDATE REM_USTR SET FL_GOTOVO=:FL_GOTOVO WHERE ID=:ID AND ID_SHAPKA=:ID_SHAPKA');
                 IBQuery18.ParamByName('FL_GOTOVO').AsInteger:=1;
                 IBQuery18.ParamByName('ID').AsInteger:=strtoint (label10.Caption);
                 IBQuery18.ParamByName('ID_SHAPKA').AsInteger:=strtoint (label8.Caption);
                 IBQuery18.Close;
                 IBQuery18.Open;
               end;

           end else
           begin
            // Все работы внутри айтема готовы   => айтем не готов
         IBQuery18.SQL.Clear;
         IBQuery18.SQL.Append('UPDATE REM_USTR SET FL_GOTOVO=:FL_GOTOVO, DAT_GOTOVO=:DAT_GOTOVO, DAT_VIDANO=:DAT_VIDANO WHERE ID=:ID AND ID_SHAPKA=:ID_SHAPKA');
         IBQuery18.ParamByName('FL_GOTOVO').AsInteger:=0;
         IBQuery18.ParamByName('DAT_GOTOVO').Value:=NuLL;
         IBQuery18.ParamByName('DAT_VIDANO').Value:=NuLL;
         IBQuery18.ParamByName('ID').AsInteger:=strtoint (label10.Caption);
         IBQuery18.ParamByName('ID_SHAPKA').AsInteger:=strtoint (label8.Caption);
         IBQuery18.Close;
         IBQuery18.Open;
           end;
     // АЙТЕМ НОРМАЛИЗОВАН, нормализуем ШАПКУ


  unit2.DataModule2.IBTransaction1.CommitRetaining;
  // Корректировка согласованности шапки
  IBQuery19.SQL.Clear;
  IBQuery19.SQL.Append('select * from REM_USTR WHERE ID_SHAPKA=:ID_SHAPKA AND FL_SOGLASOVANO=:FL_SOGLASOVANO');
  IBQuery19.ParamByName('ID_SHAPKA').AsInteger:=strtoint(label8.Caption);
  IBQuery19.ParamByName('FL_SOGLASOVANO').AsInteger:=0;
 // IBQuery19.ParamByName('FL_VIDANO').AsInteger:=0;
 // IBQuery19.ParamByName('FL_GOTOVO').AsInteger:=0;
  IBQuery19.Close;
  IBQuery19.Open;
  IBQuery19.First;
  if IBQuery19.Eof then begin
// Шапка согласована
                           IBQuery30.SQL.Clear;
                           IBQuery30.SQL.Append('select * from REM_SHAPKA WHERE ID_SHAPKA=:ID_SHAPKA');
                           IBQuery30.ParamByName('ID_SHAPKA').AsInteger:=strtoint(label8.Caption);
                           IBQuery30.Close;
                           IBQuery30.Open;
                           IBQuery30.First;
                           if IBQuery30DAT_SOGL.asstring='' then
                           begin

                           IBQuery20.SQL.Clear;
                           IBQuery20.SQL.Append('UPDATE REM_SHAPKA SET FL_SOGLASOVANO=:FL_SOGLASOVANO, DAT_SOGL=:DAT_SOGL WHERE ID_SHAPKA=:ID_SHAPKA');
                           IBQuery20.ParamByName('ID_SHAPKA').AsInteger:=strtoint(label8.Caption);
                           IBQuery20.ParamByName('DAT_SOGL').AsDateTime:=now();
                           IBQuery20.ParamByName('FL_SOGLASOVANO').AsInteger:=1;
                           IBQuery20.Close;
                           IBQuery20.Open;
                           end else
                              begin
                           IBQuery20.SQL.Clear;
                           IBQuery20.SQL.Append('UPDATE REM_SHAPKA SET FL_SOGLASOVANO=:FL_SOGLASOVANO WHERE ID_SHAPKA=:ID_SHAPKA');
                           IBQuery20.ParamByName('ID_SHAPKA').AsInteger:=strtoint(label8.Caption);
                           IBQuery20.ParamByName('FL_SOGLASOVANO').AsInteger:=1;
                           IBQuery20.Close;
                           IBQuery20.Open;
                              end;

                        end
                        else
                        begin
                           // Шапка не согласована
                           IBQuery20.SQL.Clear;
                           IBQuery20.SQL.Append('UPDATE REM_SHAPKA SET FL_SOGLASOVANO=:FL_SOGLASOVANO, DAT_SOGL=:DAT_SOGL, DAT_GOTOVO=:DAT_GOTOVO, DAT_VIDANO=:DAT_VIDANO WHERE ID_SHAPKA=:ID_SHAPKA');
                           IBQuery20.ParamByName('ID_SHAPKA').AsInteger:=strtoint(label8.Caption);
                           IBQuery20.ParamByName('FL_SOGLASOVANO').AsInteger:=0;
                           IBQuery20.ParamByName('DAT_SOGL').Value:=NuLL;
                           IBQuery20.ParamByName('DAT_GOTOVO').Value:=NuLL;
                           IBQuery20.ParamByName('DAT_VIDANO').Value:=NuLL;
                           IBQuery20.Close;
                           IBQuery20.Open;
                        end;
    unit2.DataModule2.IBTransaction1.CommitRetaining;

  // Корректировка окончания работ шапки
   IBQuery19.SQL.Clear;
  IBQuery19.SQL.Append('select * from REM_USTR WHERE ID_SHAPKA=:ID_SHAPKA AND FL_GOTOVO=:FL_GOTOVO');
  IBQuery19.ParamByName('ID_SHAPKA').AsInteger:=strtoint(label8.Caption);
//  IBQuery19.ParamByName('FL_SOGLASOVANO').AsInteger:=1;
//  IBQuery19.ParamByName('FL_VIDANO').AsInteger:=0;
  IBQuery19.ParamByName('FL_GOTOVO').AsInteger:=0;
  IBQuery19.Close;
  IBQuery19.Open;
  IBQuery19.First;
  if IBQuery19.Eof then begin
                          // Шапка готова
                           IBQuery30.SQL.Clear;
                           IBQuery30.SQL.Append('select * from REM_SHAPKA WHERE ID_SHAPKA=:ID_SHAPKA');
                           IBQuery30.ParamByName('ID_SHAPKA').AsInteger:=strtoint(label8.Caption);
                           IBQuery30.Close;
                           IBQuery30.Open;
                           IBQuery30.First;
                           if IBQuery30DAT_GOTOVO.asstring='' then
                           begin

                           IBQuery20.SQL.Clear;
                           IBQuery20.SQL.Append('UPDATE REM_SHAPKA SET FL_GOTOVO=:FL_GOTOVO, DAT_GOTOVO=:DAT_GOTOVO WHERE ID_SHAPKA=:ID_SHAPKA');
                           IBQuery20.ParamByName('ID_SHAPKA').AsInteger:=strtoint(label8.Caption);
                           IBQuery20.ParamByName('FL_GOTOVO').AsInteger:=1;
                           IBQuery20.ParamByName('DAT_GOTOVO').AsDateTime:=now();
                           IBQuery20.Close;
                           IBQuery20.Open;
                           end
                            else
                            begin
                           IBQuery20.SQL.Clear;
                           IBQuery20.SQL.Append('UPDATE REM_SHAPKA SET FL_GOTOVO=:FL_GOTOVO WHERE ID_SHAPKA=:ID_SHAPKA');
                           IBQuery20.ParamByName('ID_SHAPKA').AsInteger:=strtoint(label8.Caption);
                           IBQuery20.ParamByName('FL_GOTOVO').AsInteger:=1;
                           IBQuery20.Close;
                           IBQuery20.Open;
                            end;
                        end
                        else
                        begin
                           // Шапка не готова
                           IBQuery20.SQL.Clear;
                           IBQuery20.SQL.Append('UPDATE REM_SHAPKA SET FL_GOTOVO=:FL_GOTOVO, DAT_GOTOVO=:DAT_GOTOVO, DAT_VIDANO=:DAT_VIDANO WHERE ID_SHAPKA=:ID_SHAPKA');
                           IBQuery20.ParamByName('ID_SHAPKA').AsInteger:=strtoint(label8.Caption);
                           IBQuery20.ParamByName('FL_GOTOVO').AsInteger:=0;
                           IBQuery20.ParamByName('DAT_GOTOVO').Value:=NuLL;
                           IBQuery20.ParamByName('DAT_VIDANO').Value:=NuLL;
                           IBQuery20.Close;
                           IBQuery20.Open;
                        end;

  // Корректировка ВЫДАНО - на всякий
   IBQuery19.SQL.Clear;
  IBQuery19.SQL.Append('select * from REM_USTR WHERE ID_SHAPKA=:ID_SHAPKA AND FL_VIDANO=:FL_VIDANO');
  IBQuery19.ParamByName('ID_SHAPKA').AsInteger:=strtoint(label8.Caption);
//  IBQuery19.ParamByName('FL_SOGLASOVANO').AsInteger:=1;
//  IBQuery19.ParamByName('FL_VIDANO').AsInteger:=0;
  IBQuery19.ParamByName('FL_VIDANO').AsInteger:=0;
  IBQuery19.Close;
  IBQuery19.Open;
  IBQuery19.First;
  if IBQuery19.Eof then begin
                            // Шапка готова
                           IBQuery20.SQL.Clear;
                           IBQuery20.SQL.Append('UPDATE REM_SHAPKA SET FL_VIDANO=:FL_VIDANO, DAT_VIDANO=:DAT_VIDANO WHERE ID_SHAPKA=:ID_SHAPKA');
                           IBQuery20.ParamByName('ID_SHAPKA').AsInteger:=strtoint(label8.Caption);
                           IBQuery20.ParamByName('FL_VIDANO').AsInteger:=1;
                           IBQuery20.ParamByName('DAT_VIDANO').AsDateTime:=now();
                           IBQuery20.Close;
                           IBQuery20.Open;
                        end
                        else
                        begin
                           // Шапка не готова
                           IBQuery20.SQL.Clear;
                           IBQuery20.SQL.Append('UPDATE REM_SHAPKA SET FL_VIDANO=:FL_VIDANO, DAT_VIDANO=:DAT_VIDANO WHERE ID_SHAPKA=:ID_SHAPKA');
                           IBQuery20.ParamByName('ID_SHAPKA').AsInteger:=strtoint(label8.Caption);
                           IBQuery20.ParamByName('FL_VIDANO').AsInteger:=0;
                           IBQuery20.ParamByName('DAT_VIDANO').Value:=Null;                           
                           IBQuery20.Close;
                           IBQuery20.Open;
                        end;

  unit2.DataModule2.IBTransaction1.CommitRetaining;
  // Обновляем лейблы
  // на текущей форме

  IBQuery10.SQL.Clear;
 IBQuery10.SQL.Append('select * from REM_USTR WHERE ID=:ID AND ID_SHAPKA=:ID_SHAPKA');
 IBQuery10.ParamByName('ID').AsInteger:=strtoint(label10.Caption);
 IBQuery10.ParamByName('ID_SHAPKA').AsInteger:=strtoint(label8.Caption);
 IBQuery10.Close;
 IBQuery10.Open;
 IBQuery10.First;


 Form12.Label4.Caption:=IBQuery10DAT_SOGL.AsString;
 if IBQuery10DAT_SOGL.AsString<>'' then Form12.label13.Visible:=true
                                   else Form12.Label13.Visible:=false;

 Form12.Label11.Caption:=IBQuery10DAT_GOTOVO.AsString;
 if IBQuery10DAT_GOTOVO.AsString<>'' then Form12.label14.Visible:=true
                                     else Form12.Label14.Visible:=false;

 Form12.Label12.Caption:=IBQuery10DAT_VIDANO.AsString;
 if IBQuery10DAT_VIDANO.AsString<>'' then Form12.label15.Visible:=true
                                     else Form12.Label15.Visible:=false;



  // На форме 5
  if form5.Visible=true then
  begin
  IBQuery21.SQL.Clear;
  IBQuery21.SQL.Append('select * from REM_SHAPKA WHERE ID_SHAPKA=:ID_SHAPKA');
  IBQuery21.ParamByName('ID_SHAPKA').AsInteger:=strtoint(label8.Caption);
  IBQuery21.Close;
  IBQuery21.Open;
  IBQuery21.First;
  form5.label4.Caption:=IBQuery21FL_GOTOVO.AsString;
  form5.label5.Caption:=IBQuery21FL_SOGLASOVANO.AsString;
  form5.label16.Caption:=IBQuery21FL_VIDANO.AsString;
  form5.label17.Caption:=IBQuery21FL_VRABOTA.AsString;

  form5.SpeedButton6.Click;   // Обновляем выдачу
  end;
end;

procedure TForm12.N3Click(Sender: TObject);
begin
if not IBQuery8.Eof then if IBQuery8FL_GOTOVO.AsInteger=0 then
begin

Form17.Memo1.Lines.Clear;
Form17.Memo1.Lines.Append(IBQuery8TODO_NAME.AsString);
Form17.Edit2.text:=IBQuery8TODO_COST.AsString;
Form17.Edit3.text:=IBQuery8KOL_VO.AsString;
Form17.Edit4.text:=IBQuery8TOTAL_COST.AsString;
Form17.label5.Caption:=IBQuery8ID_SHAPKA.AsString;
Form17.Label6.Caption:=IBQuery8ID_ITEM.AsString;
Form17.Label7.Caption:=IBQuery8TODO_NAME.AsString;
Form17.Showmodal;
end else showmessage ('Невозможно редактировать данную работу так как мастер ее уже выполнил!');
end;

procedure TForm12.N2Click(Sender: TObject);
begin
 Speedbutton4.Click;
end;

procedure TForm12.Edit1Change(Sender: TObject);
begin
SPEEDBUTTON2.Click;
end;

procedure TForm12.SpeedButton8Click(Sender: TObject);
var nn : string;
begin
  // Корректировка исполнителей в TODO
      Decoding(unit1.ROLE_USER,unit1.ID_USER, unit1.NAME_USER, r);
     if r='Сервис' then begin
                     SpeedButton2.Enabled:=false;
                     SpeedButton3.Enabled:=False;
                     Edit1.ReadOnly:=true;
                     Edit2.ReadOnly:=true;
                     Edit3.ReadOnly:=true;
                     Edit4.ReadOnly:=true;
                     SpeedButton1.Enabled:=false;
                        end
                        else begin
                     SpeedButton2.Enabled:=true;
                     SpeedButton3.Enabled:=true;
                     Edit1.ReadOnly:=false;
                     Edit2.ReadOnly:=false;
                     Edit3.ReadOnly:=false;
                     Edit4.ReadOnly:=false;
                     SpeedButton1.Enabled:=true;
                             end;

    IBQuery14.SQL.Clear;
    IBQuery14.SQL.Append('select * from REM_SHAPKA WHERE ID_SHAPKA=:ID_SHAPKA');
    IBQuery14.ParamByName('ID_SHAPKA').AsInteger:=strtoint(label8.caption);
    IBQuery14.Close;
    IBQuery14.Open;
    IBQuery14.First;

    if IBQuery14ID_MASTER.AsInteger<>0 then
    begin
    IBQuery15.SQL.Clear;
    IBQuery15.SQL.Append('select * from USERS WHERE ID=:ID');
    IBQuery15.ParamByName('ID').AsInteger:=IBQuery14ID_MASTER.AsInteger;
    IBQuery15.Close;
    IBQuery15.Open;
    IBQuery15.First;
    nn:=IBQuery15FAMILY.AsString+' '+IBQuery15NAME.AsString;
    end else
    begin
     // Ищем сервис-центр
     IBQuery22.SQL.Clear;
     IBQuery22.SQL.Append('select * from SERV WHERE ID=:ID');
     IBQuery22.ParamByName('ID').AsInteger:=IBQuery14ID_SERVICE.AsInteger;
     IBQuery22.Close;
     IBQuery22.Open;
     IBQuery22.First;
     nn:=IBQuery22NAME.AsString;

    end;




    IBQuery13.SQL.Clear;
    IBQuery13.SQL.Append('UPDATE TODO SET ID_MASTER=:ID_MASTER, ID_SERVICE=:ID_SERVICE, ');
    IBQuery13.SQL.Append('MASTER_NAME=:MASTER_NAME WHERE ID_SHAPKA=:ID_SHAPKA AND ID_ITEM=:ID_ITEM AND ');
    IBQuery13.SQL.Append('ID_MASTER is NULL AND ID_SERVICE is NULL');
    IBQuery13.ParamByName('ID_SHAPKA').AsInteger:=strtoint(label8.caption);
    IBQuery13.ParamByName('ID_ITEM').AsInteger:=strtoint(label10.Caption);
    IBQuery13.ParamByName('ID_MASTER').AsInteger:=IBQuery14ID_MASTER.AsInteger;
    IBQuery13.ParamByName('ID_SERVICE').AsInteger:=IBQuery14ID_SERVICE.AsInteger;
    IBQuery13.ParamByName('MASTER_NAME').AsString:=nn;

    IBQuery13.Close;
    IBQuery13.Open;

    unit2.DataModule2.IBTransaction1.CommitRetaining;


    //
end;

procedure TForm12.SpeedButton9Click(Sender: TObject);
var nn: string;
begin
IBQuery23.Close;

IBQuery23.Open;
IBQuery23.First;
While not IBQuery23.Eof do
begin

 IBQuery24.SQL.Clear;
 IBQuery24.SQL.Append('select * from REM_USTR WHERE ID_SHAPKA=:ID_SHAPKA');
 IBQuery24.ParamByName('ID_SHAPKA').AsInteger:=IBQuery23ID_SHAPKA.AsInteger;
 IBQuery24.Close;
 IBQuery24.Open;
 IBQuery24.First;


  IBQuery14.SQL.Clear;
    IBQuery14.SQL.Append('select * from REM_SHAPKA WHERE ID_SHAPKA=:ID_SHAPKA');
    IBQuery14.ParamByName('ID_SHAPKA').AsInteger:=IBQuery23ID_SHAPKA.AsInteger;
    IBQuery14.Close;
    IBQuery14.Open;
    IBQuery14.First;

    if IBQuery14ID_MASTER.AsInteger<>0 then
    begin
    IBQuery15.SQL.Clear;
    IBQuery15.SQL.Append('select * from USERS WHERE ID=:ID');
    IBQuery15.ParamByName('ID').AsInteger:=IBQuery14ID_MASTER.AsInteger;
    IBQuery15.Close;
    IBQuery15.Open;
    IBQuery15.First;
    nn:=IBQuery15FAMILY.AsString+' '+IBQuery15NAME.AsString;
    end else
    begin
     // Ищем сервис-центр
     IBQuery22.SQL.Clear;
     IBQuery22.SQL.Append('select * from SERV WHERE ID=:ID');
     IBQuery22.ParamByName('ID').AsInteger:=IBQuery14ID_SERVICE.AsInteger;
     IBQuery22.Close;
     IBQuery22.Open;
     IBQuery22.First;
     nn:=IBQuery22NAME.AsString;

    end;


    While not IBQuery24.Eof do
     begin

    IBQuery13.SQL.Clear;
    IBQuery13.SQL.Append('UPDATE TODO SET ID_MASTER=:ID_MASTER, ID_SERVICE=:ID_SERVICE, ');
    IBQuery13.SQL.Append('MASTER_NAME=:MASTER_NAME WHERE ID_SHAPKA=:ID_SHAPKA AND ID_ITEM=:ID_ITEM AND ');
    IBQuery13.SQL.Append('ID_MASTER is NULL AND ID_SERVICE is NULL');
    IBQuery13.ParamByName('ID_SHAPKA').AsInteger:=IBQuery23ID_SHAPKA.AsInteger;
    IBQuery13.ParamByName('ID_ITEM').AsInteger:=IBQuery24ID.AsInteger;
    IBQuery13.ParamByName('ID_MASTER').AsInteger:=IBQuery14ID_MASTER.AsInteger;
    IBQuery13.ParamByName('ID_SERVICE').AsInteger:=IBQuery14ID_SERVICE.AsInteger;
    IBQuery13.ParamByName('MASTER_NAME').AsString:=nn;

    IBQuery13.Close;
    IBQuery13.Open;
     IBQuery24.Next
     end;
    unit2.DataModule2.IBTransaction1.CommitRetaining;

    IBQuery23.Next;
    end;
end;

procedure TForm12.DBGrid1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
// Эмуляция нажатия мыши
  if Button = mbRight then
    mouse_event(MOUSEEVENTF_LEFTDOWN Or MOUSEEVENTF_LEFTUP, 0, 0, 0, 0);
end;

end.
