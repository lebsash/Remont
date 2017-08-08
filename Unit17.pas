unit Unit17;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Buttons, unit2, DB, IBCustomDataSet, IBQuery,
  W7Classes, W7Buttons, AdvGlassButton, CurvyControls, rtflabel;

type
  TForm17 = class(TForm)
    StatusBar1: TStatusBar;
    Label5: TLabel;
    Label6: TLabel;
    SpeedButton1: TSpeedButton;
    IBQuery1: TIBQuery;
    Label7: TLabel;
    IBQuery2: TIBQuery;
    Memo1: TCurvyMemo;
    Edit3: TCurvyEdit;
    Edit4: TCurvyEdit;
    AdvGlassButton1: TAdvGlassButton;
    RTFLabel1: TRTFLabel;
    RTFLabel3: TRTFLabel;
    RTFLabel4: TRTFLabel;
    RTFLabel2: TRTFLabel;
    Edit2: TCurvyEdit;
    RTFLabel5: TRTFLabel;
    Edit5: TCurvyEdit;
    SpeedButton2: TSpeedButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure Edit22KeyPress(Sender: TObject; var Key: Char);
    procedure Edit32KeyPress(Sender: TObject; var Key: Char);
    procedure Edit22Change(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Edit32Change(Sender: TObject);
    procedure AdvGlassButton1Click(Sender: TObject);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3Change(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
    procedure Decoding(F:string; fr: integer; fk1:string; var newstr:string);
  public
    { Public declarations }
  end;

var
  Form17: TForm17;

implementation

uses newitem, unit1, Unit5, managers;
var r:string;

{$R *.dfm}
procedure TForm17.decoding(F:string;fr: integer; fk1:string; var newstr:string);
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



procedure TForm17.Edit22KeyPress(Sender: TObject; var Key: Char);
begin
case Key of
  #8,'0'..'9' :  ; // цифры и <Back Space>

       '.',',': // разделитель целой и дробной частей числа
                begin
                  if Key <> DecimalSeparator then
                  Key := DecimalSeparator; // заменим разделитель на допустимый
                  if Pos(DecimalSeparator,Edit2.Text) <> 0
                  then Key := Chr(0); // запрет ввода второго разделителя
                end;


        else   // остальные символы запрещены
               key := Chr(0);
    end;
end;

procedure TForm17.Edit32KeyPress(Sender: TObject; var Key: Char);
begin
case Key of
  #8,'0'..'9' :  ; // цифры и <Back Space>

     {
       '.',',': // разделитель целой и дробной частей числа
                begin
                  if Key <> DecimalSeparator then
                  Key := DecimalSeparator; // заменим разделитель на допустимый
                  if Pos(DecimalSeparator,Edit1.Text) <> 0
                  then Key := Chr(0); // запрет ввода второго разделителя
                end;

      }
        else   // остальные символы запрещены
               key := Chr(0);
    end;
end;

procedure TForm17.Edit22Change(Sender: TObject);
begin
if Form17.Showing=true then

 if Length (Edit3.Text)>0 then
     begin
     Edit4.Text:=floattostr(strtofloat(Edit2.Text)*strtoint(Edit3.Text));
     end;
end;

procedure TForm17.SpeedButton1Click(Sender: TObject);
begin
 if (length(Edit3.Text)>0) AND (length(Edit4.Text)>0) AND (length(Edit2.Text)>0)
 then
   begin
     IBQuery1.SQL.Clear;
     IBQuery1.SQL.Append('UPDATE TODO SET KOL_VO=:KOL_VO, TODO_COST=:TODO_COST, TOTAL_COST=:TOTAL_COST, FL_GOTOVO=:FL_GOTOVO, ');
     IBQuery1.SQL.Append('FL_SOGLASOVANO=:FL_SOGLASOVANO, ID_MASTER=:ID_MASTER, ID_SERVICE=:ID_SERVICE, MASTER_NAME=:MASTER_NAME ');
     IBQuery1.SQL.Append('WHERE ID_ITEM=:ID_ITEM AND ID_SHAPKA=:ID_SHAPKA AND TODO_NAME=:TODO_NAME');
     IBQuery1.ParamByName('KOL_VO').asInteger:=strtoint (Edit3.Text);
     IBQuery1.ParamByName('TODO_COST').Value:=strtofloat (Edit2.Text);
     IBQuery1.ParamByName('TOTAL_COST').Value:=strtofloat (Edit4.Text);
     IBQuery1.ParamByName('ID_ITEM').asInteger:=strtoint(label6.Caption);
     IBQuery1.ParamByName('ID_SHAPKA').AsInteger:=strtoint(label5.Caption);
     IBQuery1.ParamByName('TODO_NAME').AsString:=Label7.Caption;

     IBQuery1.ParamByName('ID_MASTER').AsInteger:=strtoint(Label1.Caption);
     IBQuery1.ParamByName('ID_SERVICE').AsInteger:=strtoint(Label2.Caption);
     IBQuery1.ParamByName('MASTER_NAME').AsString:=Edit5.Text;
     IBQuery1.ParamByName('FL_GOTOVO').AsInteger:=0;
     Decoding(unit1.ROLE_USER,unit1.ID_USER, unit1.NAME_USER, r);
     if r='Сервис' then
                      begin
                        IBQuery1.ParamByName('FL_SOGLASOVANO').AsInteger:=0;
                      end
                      else IBQuery1.ParamByName('FL_SOGLASOVANO').AsInteger:=1;
     IBQuery1.Close;
     IBQuery1.Open;
     unit2.DataModule2.IBTransaction1.CommitRetaining;




// Если услугу добавил мастер - флаг заявки делаем "НЕ СОГЛАСОВАНО"
     Decoding(unit1.ROLE_USER,unit1.ID_USER, unit1.NAME_USER, r);
     if r='Сервис' then
                      begin

     IBQuery2.SQL.Clear;
     IBQuery2.SQL.Append('UPDATE REM_USTR SET FL_SOGLASOVANO=:FL_SOGLASOVANO WHERE ID=:ID');
     IBQuery2.ParamByName('FL_SOGLASOVANO').AsInteger:=0;
     IBQuery2.ParamByName('ID').AsInteger:=strtoint(form12.label10.Caption);
     IBQuery2.Close;
     IBQuery2.Open;
     unit2.DataModule2.IBTransaction1.CommitRetaining;
     end;

     if Form5.Visible=true then form5.speedbutton7.Click;
     if Form12.Visible=true then begin
                                  form12.speedbutton5.Click;
                                  form12.speedbutton6.Click;
                                 end;

     Form17.Close;
   end;
end;

procedure TForm17.Edit32Change(Sender: TObject);
begin
if Form17.Showing=true then
 if (Length (Edit3.Text)>0)and(Length (Edit2.Text)>0) then
     begin
     Edit4.Text:=floattostr(strtofloat(Edit2.Text)*strtoint(Edit3.Text));
     end;
end;

procedure TForm17.AdvGlassButton1Click(Sender: TObject);
begin
Speedbutton1.Click;
end;

procedure TForm17.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
case Key of
  #8,'0'..'9' :  if (Length(Edit3.Text) = 1)and(Key=#8) then Edit3.Text:='0'; // цифры и <Back Space>

       '.',',': // разделитель целой и дробной частей числа
                begin
                  if Key <> DecimalSeparator then
                  Key := DecimalSeparator; // заменим разделитель на допустимый
                  if Pos(DecimalSeparator,Edit2.Text) <> 0
                  then Key := Chr(0); // запрет ввода второго разделителя
                end;
           '-':    // минус можно ввести только первым символом,
                // т.е. когда ячейка пустая
                if Length(Edit2.Text) <> 0
                      then Key := Chr(0);
 
        else   // остальные символы запрещены
               key := Chr(0);
    end;
end;

procedure TForm17.Edit4KeyPress(Sender: TObject; var Key: Char);
begin
case Key of
  #8,'0'..'9' :  ; // цифры и <Back Space>

       '.',',': // разделитель целой и дробной частей числа
                begin
                  if Key <> DecimalSeparator then
                  Key := DecimalSeparator; // заменим разделитель на допустимый
                  if Pos(DecimalSeparator,Edit2.Text) <> 0
                  then Key := Chr(0); // запрет ввода второго разделителя
                end;
           '-':    // минус можно ввести только первым символом,
                // т.е. когда ячейка пустая
                if Length(Edit2.Text) <> 0
                      then Key := Chr(0);
 
        else   // остальные символы запрещены
               key := Chr(0);
    end;
end;

procedure TForm17.Edit3Change(Sender: TObject);
begin
if length (Edit3.Text)<1 then Edit3.Text:='0';
Edit4.Text:=floattostrF((strtofloat(Edit2.Text)*strtofloat(Edit3.Text)), ffFixed,15,2);
end;

procedure TForm17.SpeedButton2Click(Sender: TObject);
begin
     Decoding(unit1.ROLE_USER,unit1.ID_USER, unit1.NAME_USER, r);
     if (r='Сервис')AND(Label1.Caption=inttostr(Unit1.ID_USER)) then
        begin
   Form10.IBQuery2.Close;
   Form10.IBQuery2.Open;
   Form10.IBQuery2.First;
   Form10.IBQuery1.Close;
   Form10.IBQuery1.Open;
   Form10.IBQuery1.First;
   Form10.ShowModal;
        end
        else
        begin
   Form10.IBQuery2.Close;
   Form10.IBQuery2.Open;
   Form10.IBQuery2.First;
   Form10.IBQuery1.Close;
   Form10.IBQuery1.Open;
   Form10.IBQuery1.First;
   Form10.ShowModal;
   end;
end;

end.
