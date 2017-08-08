unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Edit2: TEdit;
    Edit3: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Edit4: TEdit;
    Label7: TLabel;
    Memo3: TMemo;
    Memo1: TMemo;
    Memo2: TMemo;
    Button1: TButton;
    SaveDialog1: TSaveDialog;
    Label8: TLabel;
    Edit5: TEdit;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    OpenDialog1: TOpenDialog;
    SpeedButton3: TSpeedButton;
    procedure Memo1Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    
    procedure Coding (F:string; fr: integer; fk1:string; var newstr:string);
    procedure Decoding(F:string; fr: integer; fk1:string; var newstr:string);

  public
    { Public declarations }
  end;

var
  Form1: TForm1;
    sn1, sn2, sn3, ssn1, ssn2: string;
implementation

function XorString(const Key, Src: ShortString): ShortString;
var
 I: Integer;
begin
 Result := Src;
 if Length(Key) > 0 then
   for I := 1 to Length(Src) do
     Result[I] := Chr(Byte(Key[1 + ((I - 1) mod Length(Key))]) xor Ord(Src[I]));
end;

function XorEncode(const Key, Source: string): string;
var
 I: Integer;
 C: Byte;
begin
 Result := '';
 for I := 1 to Length(Source) do begin
   if Length(Key) > 0 then
     C := Byte(Key[1 + ((I - 1) mod Length(Key))]) xor Byte(Source[I])
   else
     C := Byte(Source[I]);
   Result := Result + AnsiLowerCase(IntToHex(C, 2));
 end;
end;

function XorDecode(const Key, Source: string): string;
var
 I: Integer;
 C: Char;
begin
 Result := '';
 for I := 0 to Length(Source) div 2 - 1 do begin
   C := Chr(StrToIntDef('$' + Copy(Source, (I * 2) + 1, 2), Ord(' ')));
   if Length(Key) > 0 then
     C := Chr(Byte(Key[1 + (I mod Length(Key))]) xor Byte(C));
   Result := Result + C;
 end;
end;


// CODING - DECODING
procedure TForm1.Coding(F:string;fr: integer; fk1:string; var newstr:string);
  var
   s: string;
   i, j, jj1, jj2:integer;
   m,key:byte;
   k:char;

   kk, kk1, pp1, pp2, key1, key2, fk2, jk:string;
 begin

      key:=$ba;
      // key:=ord(fk1[1]);

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
    m:=ord(k) xor ord( (key1[j]));
    j:=j-1;
    if j<1 then j:=length (key1);
    s[i]:=chr(m);
  end;


  newstr:=s;
end;


 procedure TForm1.decoding(F:string;fr: integer; fk1:string; var newstr:string);
 var
    s: string;
   i, j:integer;
   m,key:byte;
   k:char;
   kk, kk1, pp1, pp2, key2, key1:string;

 begin
     key:=$ba;
     // key:=ord(fk1[1]);
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
    m:=ord(k) xor ord( key1[j]);
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



{$R *.dfm}

procedure TForm1.Memo1Change(Sender: TObject);
var sn4, sn, nname, nmm, ntel,  ssn1, ssn2, tmp: string;
    i,j,k, p : integer;
begin



sn3:=XorDecode ('Edit1',memo1.Lines.Text);
memo2.Lines.Append('ОТ1: '+sn3);


decoding (sn3,length(Edit4.Text)+3, Edit4.Text, sn1);
 //sn1:=sn3;
memo2.Lines.Clear;
Memo2.Lines.Append(sn1);

// Удаляем лишнее
sn2:=Copy(sn1, 5, length(sn1));
k:=1;
sn:='';
nname:='';
ntel:='';
nmm:='';
for i:=1 to length(sn2) do
 begin
  if sn2[i]<>'%' then begin
                       if (k=1)or(k=7) then sn:=sn+sn2[i];
                       if k=2 then nname:=nname+sn2[i];
                       if k=4 then nmm:=nmm+sn2[i];
                       if k=6 then ntel:=ntel+sn2[i];
                      end else k:=k+1;

 end;
 Edit1.Text:=nname;
 Edit2.Text:=ntel;
 edit3.Text:=sn;
 edit5.Text:=nmm;
 sn1:=sn;
 // Снова начинаем кодирование
 tmp:='asasdsaASDjJSDSDjkSDSDIpokOPODfDd87sdsdFDKDFdsad';
Randomize;
 ssn1:=Copy(sn1, 1, length(sn1) div 2);
ssn2:=Copy(sn1, 1+(length(sn1) div 2), 1+(Length(sn1)-(length(sn1) div 2)));
p:=length(tmp);
sn1:=tmp[random(length(tmp))]+tmp[random(length(tmp))]+tmp[random(length(tmp))]+tmp[random(length(tmp))]+ssn1+'%'+Edit1.Text+'%dsfSsdsEEE%'+nmm+'%dd56567GDsd%'+Edit2.Text+'%'+ssn2+'%';
coding (sn1,length(Edit4.Text),Edit4.Text, sn3);
sn2:=XorEncode (Edit4.text,sn3);
memo3.Lines.Clear;
Memo3.Lines.Append(sn2);
end;

procedure TForm1.Button1Click(Sender: TObject);
var x1, x2, x3 : string;
    i, j, l: integer;
    f:textfile;
     sn4, sn, nname, nmm, ntel,  ssn1, ssn2, tmp: string;
    k, p : integer;
    
    begin







sn3:=XorDecode ('Edit1',memo1.Lines.Text);
memo2.Lines.Append('ОТ1: '+sn3);


decoding (sn3,length(Edit4.Text)+3, Edit4.Text, sn1);
 //sn1:=sn3;
memo2.Lines.Clear;
Memo2.Lines.Append(sn1);

// Удаляем лишнее
sn2:=Copy(sn1, 5, length(sn1));
k:=1;
sn:='';
nname:='';
ntel:='';
nmm:='';
for i:=1 to length(sn2) do
 begin
  if sn2[i]<>'%' then begin
                       if (k=1)or(k=7) then sn:=sn+sn2[i];
                       if k=2 then nname:=nname+sn2[i];
                       if k=4 then nmm:=nmm+sn2[i];
                       if k=6 then ntel:=ntel+sn2[i];
                      end else k:=k+1;

 end;
 Edit1.Text:=nname;

 Edit2.Text:=ntel;
 edit3.Text:=sn;
 edit5.Text:=nmm;
 sn1:=sn;
 // Снова начинаем кодирование
 tmp:='asasdsaASDjJSDSDjkSDSDIpokOPODfDd87sdsdFDKDFdsad';
Randomize;
 ssn1:=Copy(sn1, 1, length(sn1) div 2);
ssn2:=Copy(sn1, 1+(length(sn1) div 2), 1+(Length(sn1)-(length(sn1) div 2)));
p:=length(tmp);
sn1:=tmp[random(length(tmp))]+tmp[random(length(tmp))]+tmp[random(length(tmp))]+tmp[random(length(tmp))]+ssn1+'%'+Edit1.Text+'%dsfSsdsEEE%'+nmm+'%dd56567GDsd%'+Edit2.Text+'%'+ssn2+'%';
coding (sn1,length(Edit4.Text),Edit4.Text, sn3);
sn2:=XorEncode (Edit4.text,sn3);
memo3.Lines.Clear;
Memo3.Lines.Append(sn2);


  
end;

procedure TForm1.SpeedButton2Click(Sender: TObject);
var f:textfile;
     n, s: string;
     i,j: integer;
begin
if OpenDialog1.Execute then
   begin
   AssignFile (f,OpenDialog1.FileName);
   Reset (f);
   Readln (f,n);
   Edit4.Text:=n;

   For i:=1 to 45 do readln (f,s);
   readln (f,s);
   memo1.Lines.Clear;
   Memo1.Lines.Append(s);
   CloseFile (F);
   form1.Caption:='WorkDESK - SERIALS. ФАЙЛ: '+OpenDialog1.FileName;
   end;
end;

procedure TForm1.SpeedButton3Click(Sender: TObject);
var x1, x2, x3 : string;
    i, j, l: integer;
    f:textfile;
     sn4, sn, nname, nmm, ntel,  ssn1, ssn2, tmp: string;
    k, p : integer;
begin
if (Edit1.Text<>Edit4.Text)or (Edit5.Text<>'WDE') then showmessage ('КЛЮЧ НАРУШЕН')
  else
  begin

x3:='qwertyuiopasdfghjklzxcvbnm1234567890';
with SaveDialog1 do
      if Execute then
        begin
         randomize;
         x2:=memo3.Lines.Text;
         AssignFile(f,FileName);
         rewrite(f);
         append(f);
         for i:=1 to 45 do
           begin
             x1:='';
             for j:=1 to length(trim(x2)) do begin
                                        l:=random(length(x2)-1);
                                        if l=0 then l:=1;
                                        x1:=x1+x2[l];
                                       end;
             writeln (f, x1);
           end;
             write (f, x2);
           for i:=1 to 45 do
           begin
             x1:='';
             for j:=1 to length(trim(x2)) do begin
                                        l:=random(length(x2)-1);
                                        if l=0 then l:=1;
                                        x1:=x1+x2[l];
                                       end;
             writeln (f, x1);
           end;

         CloseFile(f);
         Showmessage ('Лицензия в файле '+SaveDialog1.FileName+' сгенерирована. Не забудьте отправить файл клиенту. Клиент: '+Edit4.Text);
         Edit4.Text:='';
         Edit1.Text:='';
Edit2.Text:='';
Edit3.Text:='';
Edit5.Text:='';
Memo1.Lines.Clear;
Memo2.Lines.Clear;
Memo3.Lines.Clear;
        end;
      end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
Edit4.Text:='';
Edit1.Text:='';
Edit2.Text:='';
Edit3.Text:='';
Edit5.Text:='';
Memo1.Lines.Clear;
Memo2.Lines.Clear;
Memo3.Lines.Clear;
end;

end.
