unit opt2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, login;

type
  TForm14 = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Edit3: TEdit;
    Label3: TLabel;
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form14: TForm14;

implementation

{$R *.dfm}

procedure TForm14.SpeedButton2Click(Sender: TObject);
begin
 Form14.Close;
end;

procedure TForm14.FormActivate(Sender: TObject);
var F: textFile;
    i,j:integer;
    s,s2,s1, s3:string;
begin
 // Грузим данные из файла доступа
 AssignFile(F,'dbconnect.ini');
 Reset(F);
 Readln(F,s);
 j:=0;
 s1:='';
 s2:='';
 for i:=1 to length(s) do
    begin
      if s[i]=':' then j:=1;
      if j=0 then s1:=s1+s[i]
             else s2:=s2+s[i];

    end;
  s3:='';
  for i:=2 to length(s2) do s3:=s3+s2[i];


  Edit1.Text:=s1;
  Edit2.Text:=s3;
   Readln(F,s);
 j:=0;
 s1:='';
 s2:='';
 for i:=1 to length(s) do
    begin
      if s[i]=':' then j:=1;
      if j=0 then s1:=s1+s[i]
             else s2:=s2+s[i];

    end;
  s3:='';
  for i:=2 to length(s2) do s3:=s3+s2[i];
  Edit3.Text:=s3;
 CloseFile(F);
end;

procedure TForm14.SpeedButton1Click(Sender: TObject);
var f: textfile;
    s:string;
begin
    AssignFile(F,'dbconnect.ini');
    rewrite (f);
    append(f);
    s:=Edit1.Text+':'+Edit2.Text;
    writeln(f,s);
    s:=Edit1.Text+':'+Edit3.Text;
    writeln(f,s);
    CloseFile(F);
    login.Form3.STARTFB.Enabled:=true;
    Form14.Close;
end;

end.
