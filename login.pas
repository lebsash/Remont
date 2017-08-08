unit login;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, Mask, StdCtrls, unit2, unit1, DB, IBCustomDataSet, IBQuery,
  ComCtrls, ExtCtrls, unit3, W7Classes, W7Buttons, AdvGlassButton,
  rtflabel, CurvyControls, AdvSmoothLabel, ActiveX, ShlObj, Registry, DateUtils;


type
    TByteArr = array of byte;
    TStringArr = array of String;
  TForm3 = class(TForm)
    SpeedButton1: TSpeedButton;
    IBQuery1: TIBQuery;
    IBQuery1PASS: TIBStringField;
    IBQuery1ID: TIntegerField;
    IBQuery1NAME: TIBStringField;
    IBQuery1SECOND_NAME: TIBStringField;
    IBQuery1FAMILY: TIBStringField;
    IBQuery1ROLE: TIBStringField;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    IBQuery4: TIBQuery;
    IBQuery4ID: TIntegerField;
    IBQuery4NAME: TIBStringField;
    IBQuery4SECOND_NAME: TIBStringField;
    IBQuery4FAMILY: TIBStringField;
    IBQuery4PASS: TIBStringField;
    IBQuery4ROLE: TIBStringField;
    IBQuery4DOLGNOST: TIBStringField;
    IBQuery4OTDEL: TIBStringField;
    IBQuery4ID_FIRM: TIntegerField;
    StatusBar1: TStatusBar;
    IBQuery5: TIBQuery;
    STARTFB: TTimer;
    SpeedButton2: TSpeedButton;
    CurvyPanel1: TCurvyPanel;
    Edit1: TCurvyEdit;
    RTFLabel1: TRTFLabel;
    AdvGlassButton2: TAdvGlassButton;
    AdvGlassButton3: TAdvGlassButton;
    AdvSmoothLabel1: TAdvSmoothLabel;
    CurvyPanel2: TCurvyPanel;
    RTFLabel2: TRTFLabel;
    MaskEdit1: TCurvyEdit;
    AdvGlassButton1: TAdvGlassButton;
    AdvSmoothLabel2: TAdvSmoothLabel;
    IBQuery2: TIBQuery;
    IBQuery2NAME: TIBStringField;
    IBQuery2ADRESS: TIBStringField;
    IBQuery2PHONE: TIBStringField;
    IBQuery2SITE: TIBStringField;
    IBQuery2EMAIL: TIBStringField;
    IBQuery2INN: TIBStringField;
    IBQuery2KPP: TIBStringField;
    IBQuery2RS: TIBStringField;
    IBQuery2BIK: TIBStringField;
    IBQuery2KS: TIBStringField;
    IBQuery2BANK: TIBStringField;
    IBQuery2OTHER: TIBStringField;
    IBQuery2MAINFIRM: TIBStringField;
    Button1: TButton;
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure Edit12KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure STARTFBTimer(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure AdvGlassButton1Click(Sender: TObject);
    procedure AdvGlassButton2Click(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CurvyPanel1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure AdvGlassButton3Click(Sender: TObject);
    procedure AdvSmoothLabel1MouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure AdvGlassButton1MouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure Edit1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure MaskEdit1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure RTFLabel1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure RTFLabel2MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure AdvSmoothLabel2MouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure AdvGlassButton2MouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure AdvGlassButton3MouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure MaskEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CurvyPanel2MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
    procedure Coding (F:string; fr: integer; fk1:string; var newstr:string);
    procedure Decoding(F:string; fr: integer; fk1:string; var newstr:string);
    procedure Coding1 (F:string; fr: integer; fk1:string; var newstr:string);
    procedure Decoding1(F:string; fr: integer; fk1:string; var newstr:string);
    function StrToByte(const Value: String): TByteArr;
   // function GetPatch(CSIDL: integer) : string;
  public
    { Public declarations }
    Thread1: TSimpleThread;
  end;

var
  Form3: TForm3;
  NUM_LOGIN:integer;
  ia:array[1..500] of Integer;
  Flag_WORK_thrd:integer;
  sn1, sn2, sn3: string;
  snumber1 : string;
implementation

uses opt2, Unit24;

{$R *.dfm}
const
SMART_GET_VERSION = $074080;
SMART_SEND_DRIVE_COMMAND = $07C084;
SMART_RCV_DRIVE_DATA = $07C088;

// Values of ds_bDriverError
DRVERR_NO_ERROR = 0;
DRVERR_IDE_ERROR = 1;
DRVERR_INVALID_FLAG = 2;
DRVERR_INVALID_COMMAND = 3;
DRVERR_INVALID_BUFFER = 4;
DRVERR_INVALID_DRIVE = 5;
DRVERR_INVALID_IOCTL = 6;
DRVERR_ERROR_NO_MEM = 7;
DRVERR_INVALID_REGISTER = 8;
DRVERR_NOT_SUPPORTED = 9;
DRVERR_NO_IDE_DEVICE = 10;

// Values of ir_bCommandReg
ATAPI_ID_CMD = $A1;
ID_CMD = $EC;
SMART_CMD = $B0;

type
TIdeRegs = packed record
bFeaturesReg,
bSectorCountReg,
bSectorNumberReg,
bCylLowReg,
bCylHighReg,
bDriveHeadReg,
bCommandReg,
bReserved: Byte;
end;

TDriverStatus = packed record
bDriverError: Byte;
bIDEError: Byte;
bReserved: array[1..2] of Byte;
dwReserved: array[1..2] of DWORD;
end;

TSendCmdInParams = packed record
dwBufferSize: DWORD;
irDriveRegs: TIdeRegs;
bDriveNumber: Byte;
bReserved: array[1..3] of Byte;
dwReserved: array[1..4] of DWORD;
bBuffer: Byte;
end;

TSendCmdOutParams = packed record
dwBufferSize: DWORD;
dsDriverStatus: TDriverStatus;
bBuffer: array[1..512] of Byte;
end;

TGetVersionInParams = packed record
bVersion,
bRevision,
bReserved,
bIDEDeviceMap: Byte;
dwCapabilities: DWORD;
dwReserved: array[1..4] of DWORD;
end;

function TForm3.StrToByte(const Value: String): TByteArr;
var
    I: integer;
begin
    SetLength(Result, Length(Value));
    for I := 0 to Length(Value) - 1 do
        Result[I] := ord(Value[I + 1]);
end;


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

procedure CorrectDevInfo(var _params: TSendCmdOutParams);
asm
lea edi, _params.bBuffer
 
add edi,14h
mov ecx,0Ah
 
@@SerNumLoop: mov ax,[edi]
xchg al,ah
stosw
loop @@SerNumLoop
 
 
add edi,6
mov cl,18h
 
@@ModelNumLoop: mov ax,[edi]
xchg al,ah
stosw
loop @@ModelNumLoop
end;

function GetFileDateTime(FileName: string): TDateTime;
var
  intFileAge: LongInt;
begin
  intFileAge := FileAge(FileName);
  if intFileAge = -1 then
    Result := 0
  else
    Result := FileDateToDateTime(intFileAge)
end;


function GetDirTime(const Dir: string): TDateTime;
var
  H: Integer;
  F: TFileTime;
  S: TSystemTime;
begin
  H := CreateFile(PChar(Dir), $0080, 0, nil, OPEN_EXISTING,
    FILE_FLAG_BACKUP_SEMANTICS, 0);
  if H <> -1 then
  begin
    GetFileTime(H, @F, nil, nil);
    FileTimeToLocalFileTime(F, F);
    FileTimeToSystemTime(F, S);
    Result := SystemTimeToDateTime(S);
    CloseHandle(H);
  end
  else
    Result := -1;
end;

function GetPatch(CSIDL: integer) : string;

var

  SpecialDir: PItemIdList;

begin

    SetLength(result, MAX_PATH);

    SHGetSpecialFolderLocation(Form1.Handle, CSIDL, SpecialDir);

    SHGetPathFromIDList(SpecialDir, PChar(Result));

    SetLength(result, lStrLen(PChar(Result)));

end;


// CODING - DECODING
procedure TForm3.Coding(F:string;fr: integer; fk1:string; var newstr:string);
  var
   s: string;
   i, j, jj1, jj2:integer;
   m,key:byte;
   k:char;
   kk, kk1, pp1, pp2, key1, key2, fk2:string;
 begin
      key:=$aa;
    { ������� ������ }
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


 procedure TForm3.decoding(F:string;fr: integer; fk1:string; var newstr:string);
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



//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++=//
procedure TForm3.Coding1(F:string;fr: integer; fk1:string; var newstr:string);
  var
   s: string;
   i, j, jj1, jj2:integer;
   m,key:byte;
   k:char;
   kk, kk1, pp1, pp2, key1, key2, fk2:string;
 begin
      key:=$ba;
    { ������� ������ }
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


 procedure TForm3.decoding1(F:string;fr: integer; fk1:string; var newstr:string);
 var
    s: string;
   i, j:integer;
   m,key:byte;
   k:char;
   kk, kk1, pp1, pp2, key2, key1:string;

 begin
     key:=$ba;
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


procedure TForm3.SpeedButton1Click(Sender: TObject);
var name, family, s, p_get,new_pass, newrole, newrole1, r:string;
    i,fl, num_ID, kl:integer;
    INDEX_OF_FIRM, pipi:integer;
    f: textFile;
begin

//   label6.caption:=inttostr(ComboBox1.ItemIndex);

   s:=Edit1.Text;
   fl:=1;
   name:='';
   family:='';
   for i:=1 to length(s) do
    begin
     if s[i]='_' then fl:=fl+1
                 else begin
                        if fl=2 then name:=name+s[i];
                        if fl=1 then family:=family+s[i];
                      end;

    end;
    if ((family='admin')and(fl=1)) then name:=family;

   IBQuery1.SQL.Clear;
   IBQuery1.SQL.Append('select * from USERS WHERE NAME=:NAME and FAMILY=:FAMILY');
   IBQuery1.ParamByName('NAME').AsString:=name;
   IBQuery1.ParamByName('FAMILY').AsString:=family;
   IBQuery1.Close;
   IBQuery1.Open;
   IBQuery1.First;

   if not IBQuery1.Eof then
   begin

   p_get:=IBQuery1PASS.AsString;
   num_ID:=IBQuery1ID.AsInteger;
   // �������� ��������� ������

   Coding(MaskEdit1.Text,num_ID, name, new_pass);
   Decoding(IBQuery1ROLE.AsString,num_ID, IBQuery1NAME.AsString, newrole1);

   if ((p_get=new_pass)and(newrole1='�������������')) then begin
                            AssignFile(f,GetPatch(CSIDL_PERSONAL)+'\WorkDEST\log.dat');
                            Rewrite(f);
                            Append(f);
                            Writeln(f,Edit1.Text);
                            CloseFile(f);



                            // �������� ��������� �����
                            NUM_LOGIN:=0;
                                                                      unit1.Form1.DateTimePicker1.DateTime:=now;
                                                                      unit1.Form1.DateTimePicker2.DateTime:=now;
                            unit1.Login_Flag:=2;
                            unit1.NAME_USER:=name;
                            unit1.FAMILY_USER:=family;
                            unit1.ROLE_USER:=IBQuery1ROLE.AsString;
                            Decoding(IBQuery1ROLE.AsString,num_ID, IBQuery1NAME.AsString, r);
                            unit1.Form1.Label2.Caption:=r;
                            // ���� ���������� ���� ������������



                            unit1.ID_USER:=IBQuery1ID.AsInteger;
                            unit1.Form1.StatusBar1.Panels[0].Text:='������������:'+Family+' '+NAME;
                            // ������������ �������������� ���������� ������



                               // �������� ������ ���������� � ComboBox10
                               IBQuery4.SQL.Clear;
                               IBQuery4.SQL.Append('select * from USERS ORDER BY FAMILY');
                               IBQuery4.Close;
                               IBQuery4.Open;
                               IBQuery4.First;
                               form1.ComboBox10.Clear;


                               kl:=1;
                               While not IBQuery4.Eof do
                                  begin
                                   // ���������� ���� ��� �������������

                                   Decoding(IBQuery4ROLE.AsString,IBQuery4ID.AsInteger, IBQuery4NAME.AsString, newrole);
                                   if newrole='�������������' then begin
                                                                     form1.ComboBox10.Items.Append(IBQuery4FAMILY.AsString+' '+IBQuery4NAME.AsString+' '+IBQuery4SECOND_NAME.AsString);

                                                                     unit1.adm[kl]:=IBQuery4ID.AsInteger;
                                                                     kl:=kl+1;
                                                                   end;
                                   IBQuery4.Next;
                                  end;


                                  // ������ ������ � �������


                                          // ����������� � ������� ���-����� ������ � �����
                                          IBQuery5.SQL.Clear;
                                          IBQuery5.SQL.Append('INSERT INTO ACTIONS (ACT_TYPE, DATE_GET, FIO, ID_USER, TEXT) VALUES (:ACT_TYPE, :DATE_GET, :FIO, :ID_USER, :TEXT)');
                                          IBQuery5.ParamByName('ACT_TYPE').AsString:='���� � �������';
                                          IBQuery5.ParamByName('DATE_GET').AsDateTime:=now;
                                          IBQuery5.ParamByName('FIO').AsString:=IBQuery1FAMILY.AsString+' '+IBQuery1NAME.AsString+' '+IBQuery1SECOND_NAME.AsString;
                                          IBQuery5.ParamByName('ID_USER').AsInteger:=IBQuery1ID.AsInteger;
                                          IBQuery5.ParamByName('TEXT').AsString:='���� � �������';
                                          IBQuery5.Close;
                                          IBQuery5.Open;
                                          unit2.DataModule2.IBTransaction2.CommitRetaining;

                                                                                    // ��

                                          if (unit1.mod_k3='WDE')and(unit1.mod_k2=unit1.mod_MAINNAME)and(snumber1=unit1.mod_k1)
                                            then begin
                                                 end else
                                                    begin
                                          //unit1.Form1.CheckBox8.Checked:=true;
                                          if unit1.UNITHALT=911 then begin
                                          unit1.Form1.SpeedButton2.Enabled:=false;
                                          unit1.Form1.N2.Enabled:=false;
                                          unit1.Form1.N5.Enabled:=false;
                                          unit1.Form1.N6.Enabled:=false;
                                          unit1.Form1.N7.Enabled:=true;
                                          unit1.Form1.N8.Enabled:=false;
                                          unit1.Form1.N20.Enabled:=false;
                                          unit1.Form1.N19.Enabled:=false;
                                          //unit1.Form1.Edit2.ReadOnly:=true;
                                          //unit1.Form1.SpeedButton6.Click;
                                          unit1.Form1.N14.Enabled:=false;
                                          unit1.Form1.N15.Enabled:=false;
                                          unit1.Form1.N16.Enabled:=false;
                                          unit1.Form1.N17.Enabled:=false;
                                          form24.AdvSmoothLabel3.Caption.Text:='�������� ������ �������';
                                          form24.AdvMetroProgressBar1.Min:=0;
                                          form24.AdvMetroProgressBar1.max:=100;
                                          Form24.Timer1.Enabled:=true;
                                          form24.Showmodal;
                                          //showmessage ('�������� ������ �������');
                                          end else begin
                                                     if unit1.TPER=1 then form24.AdvSmoothLabel3.Caption.Text:='�� ��������� �������� ������� ������� 1 ����';
                                                     if (unit1.TPER>1)and(unit1.TPER<5) then form24.AdvSmoothLabel3.Caption.Text:='�� ��������� �������� ������� �������� '+inttostr(unit1.TPER)+' ���';
                                                     if (unit1.TPER>4)or(unit1.TPER=0) then form24.AdvSmoothLabel3.Caption.Text:='�� ��������� �������� ������� �������� '+inttostr(unit1.TPER)+' ����';
                                                     form24.AdvMetroProgressBar1.Min:=0;
                                                     form24.AdvMetroProgressBar1.max:=100;
                                                     Form24.Timer1.Enabled:=true;
                                                     form24.Showmodal;


                                                   end;
                                                    end;

                            // ���������� �������������� ����������
                                          unit1.ID_LOCAL_FIRM:=INDEX_OF_FIRM;
                                          unit1.Form1.N1.Click;
                                          unit1.Form1.SpeedButton6.Click;
                          end
                          else
 if ((p_get=new_pass)and(newrole1='��������')) then begin
                           AssignFile(f,GetPatch(CSIDL_PERSONAL)+'\WorkDEST\log.dat');
                            Rewrite(f);
                            Append(f);
                            Writeln(f,Edit1.Text);
                            CloseFile(f);
                          // �������� ��������� �����
                                          unit1.Form1.DateTimePicker1.DateTime:=now;
                                          unit1.Form1.DateTimePicker2.DateTime:=now;
                            NUM_LOGIN:=0;
                            unit1.Login_Flag:=2;
                            unit1.NAME_USER:=name;
                            unit1.FAMILY_USER:=family;
                            unit1.ROLE_USER:=IBQuery1ROLE.AsString;
                            unit1.ID_USER:=IBQuery1ID.AsInteger;
                            Decoding(IBQuery1ROLE.AsString,num_ID, IBQuery1NAME.AsString, r);
                            unit1.Form1.Label2.Caption:=r;
                            unit1.Form1.StatusBar1.Panels[0].Text:='������������:'+Family+' '+NAME;
                            // ������������ �������������� ���������� ������
                           // ����������� � ������� ���-����� ������ � �����
                                          IBQuery5.SQL.Clear;
                                          IBQuery5.SQL.Append('INSERT INTO ACTIONS (ACT_TYPE, DATE_GET, FIO, ID_USER, TEXT) VALUES (:ACT_TYPE, :DATE_GET, :FIO, :ID_USER, :TEXT)');
                                          IBQuery5.ParamByName('ACT_TYPE').AsString:='���� � �������';
                                          IBQuery5.ParamByName('DATE_GET').AsDateTime:=now;
                                          IBQuery5.ParamByName('FIO').AsString:=IBQuery1FAMILY.AsString+' '+IBQuery1NAME.AsString+' '+IBQuery1SECOND_NAME.AsString;
                                          IBQuery5.ParamByName('ID_USER').AsInteger:=IBQuery1ID.AsInteger;
                                          IBQuery5.ParamByName('TEXT').AsString:='���� � �������';
                                          IBQuery5.Close;
                                          IBQuery5.Open;
                                          unit2.DataModule2.IBTransaction2.CommitRetaining;
                                          unit1.Form1.N1.Click;
                                          unit1.ID_LOCAL_FIRM:=INDEX_OF_FIRM;
                                // ������������ ��������
                                          unit1.Form1.N5.Enabled:=false;
                                          unit1.Form1.N6.Enabled:=false;
                                          unit1.Form1.N7.Enabled:=false;
                                          unit1.Form1.N8.Enabled:=false;
                                          unit1.Form1.SpeedButton6.Click;
                                          unit1.Form1.N20.Enabled:=false;

                                                                                                      // ��

                                          if (unit1.mod_k3='WDE')and(unit1.mod_k2=unit1.mod_MAINNAME)and(snumber1=unit1.mod_k1)
                                            then begin
                                                 end else
                                                    begin
                                          //unit1.Form1.CheckBox8.Checked:=true;
                                          unit1.Form1.DateTimePicker1.DateTime:=now;
                                          if unit1.UNITHALT=911 then begin
                                          unit1.Form1.SpeedButton2.Enabled:=false;
                                          unit1.Form1.N2.Enabled:=false;
                                          unit1.Form1.N5.Enabled:=false;
                                          unit1.Form1.N6.Enabled:=false;
                                          unit1.Form1.N7.Enabled:=true;
                                          unit1.Form1.N8.Enabled:=false;
                                          unit1.Form1.N20.Enabled:=false;
                                          unit1.Form1.N19.Enabled:=false;
                                          //unit1.Form1.Edit2.ReadOnly:=true;
                                          //unit1.Form1.SpeedButton6.Click;
                                          unit1.Form1.N14.Enabled:=false;
                                          unit1.Form1.N15.Enabled:=false;
                                          unit1.Form1.N16.Enabled:=false;
                                          unit1.Form1.N17.Enabled:=false;
                                          form24.AdvSmoothLabel3.Caption.Text:='�������� ������ �������';
                                          form24.AdvMetroProgressBar1.Min:=0;
                                          form24.AdvMetroProgressBar1.max:=100;
                                          Form24.Timer1.Enabled:=true;
                                          form24.Showmodal;
                                          //showmessage ('�������� ������ �������');
                                          end else begin
                                                     if unit1.TPER=1 then form24.AdvSmoothLabel3.Caption.Text:='�� ��������� �������� ������� ������� 1 ����';
                                                     if (unit1.TPER>1)and(unit1.TPER<5) then form24.AdvSmoothLabel3.Caption.Text:='�� ��������� �������� ������� �������� '+inttostr(unit1.TPER)+' ���';
                                                     if (unit1.TPER>4)or(unit1.TPER=0) then form24.AdvSmoothLabel3.Caption.Text:='�� ��������� �������� ������� �������� '+inttostr(unit1.TPER)+' ����';
                                                     form24.AdvMetroProgressBar1.Min:=0;
                                                     form24.AdvMetroProgressBar1.max:=100;
                                                     Form24.Timer1.Enabled:=true;
                                                     form24.Showmodal;


                                                   end;
                                                    end;

                          end
                          else
 if ((p_get=new_pass)and(newrole1='������')) then begin
                            AssignFile(f,GetPatch(CSIDL_PERSONAL)+'\WorkDEST\log.dat');
                            Rewrite(f);
                            Append(f);
                            Writeln(f,Edit1.Text);
                            CloseFile(f);
                           // �������� ��������� �����
                             unit1.Form1.DateTimePicker1.DateTime:=now;
                               unit1.Form1.DateTimePicker2.DateTime:=now;
                            NUM_LOGIN:=0;
                            unit1.Login_Flag:=2;
                            unit1.NAME_USER:=name;
                            unit1.FAMILY_USER:=family;
                            unit1.ROLE_USER:=IBQuery1ROLE.AsString;
                            unit1.ID_USER:=IBQuery1ID.AsInteger;
                            unit1.Form1.StatusBar1.Panels[0].Text:='������������:'+Family+' '+NAME;
                            Decoding(IBQuery1ROLE.AsString,num_ID, IBQuery1NAME.AsString, r);
                            unit1.Form1.Label2.Caption:=r;
                            // ������������ �������������� ���������� ������
                           // ����������� � ������� ���-����� ������ � �����
                                          IBQuery5.SQL.Clear;
                                          IBQuery5.SQL.Append('INSERT INTO ACTIONS (ACT_TYPE, DATE_GET, FIO, ID_USER, TEXT) VALUES (:ACT_TYPE, :DATE_GET, :FIO, :ID_USER, :TEXT)');
                                          IBQuery5.ParamByName('ACT_TYPE').AsString:='���� � �������';
                                          IBQuery5.ParamByName('DATE_GET').AsDateTime:=now;
                                          IBQuery5.ParamByName('FIO').AsString:=IBQuery1FAMILY.AsString+' '+IBQuery1NAME.AsString+' '+IBQuery1SECOND_NAME.AsString;
                                          IBQuery5.ParamByName('ID_USER').AsInteger:=IBQuery1ID.AsInteger;
                                          IBQuery5.ParamByName('TEXT').AsString:='���� � �������';
                                          IBQuery5.Close;
                                          IBQuery5.Open;
                                          unit2.DataModule2.IBTransaction2.CommitRetaining;
                                          unit1.Form1.N1.Click;
                                          unit1.ID_LOCAL_FIRM:=INDEX_OF_FIRM;

                                          // ����������� �� �������� �����
                                          unit1.Form1.Label4.Caption:='0';
                                          unit1.Form1.Label3.Caption:=IBQuery1ID.AsString;
                                          Unit1.Form1.Edit2.Text:=Family+' '+NAME;
                                          unit1.Form1.CheckBox8.Checked:=true;
                                          unit1.Form1.SpeedButton2.Enabled:=false;
                                          unit1.Form1.N2.Enabled:=false;
                                          unit1.Form1.N5.Enabled:=false;
                                          unit1.Form1.N6.Enabled:=false;
                                          unit1.Form1.N7.Enabled:=false;
                                          unit1.Form1.N8.Enabled:=false;
                                          unit1.Form1.N20.Enabled:=false;
                                          unit1.Form1.Edit2.ReadOnly:=true;
                                          
                                          unit1.Form1.SpeedButton6.Click;
                                                                                                   // ��

                                          if (unit1.mod_k3='WDE')and(unit1.mod_k2=unit1.mod_MAINNAME)and(snumber1=unit1.mod_k1)
                                            then begin
                                                 end else
                                                    begin
                                          //unit1.Form1.CheckBox8.Checked:=true;
                                          if unit1.UNITHALT=911 then begin
                                          unit1.Form1.SpeedButton2.Enabled:=false;
                                          unit1.Form1.N2.Enabled:=false;
                                          unit1.Form1.N5.Enabled:=false;
                                          unit1.Form1.N6.Enabled:=false;
                                          unit1.Form1.N7.Enabled:=true;
                                          unit1.Form1.N8.Enabled:=false;
                                          unit1.Form1.N20.Enabled:=false;
                                          unit1.Form1.N19.Enabled:=false;
                                          //unit1.Form1.Edit2.ReadOnly:=true;
                                          //unit1.Form1.SpeedButton6.Click;
                                          unit1.Form1.N14.Enabled:=false;
                                          unit1.Form1.N15.Enabled:=false;
                                          unit1.Form1.N16.Enabled:=false;
                                          unit1.Form1.N17.Enabled:=false;
                                          form24.AdvSmoothLabel3.Caption.Text:='�������� ������ �������';
                                          form24.AdvMetroProgressBar1.Min:=0;
                                          form24.AdvMetroProgressBar1.max:=100;
                                          Form24.Timer1.Enabled:=true;
                                          form24.Showmodal;
                                          //showmessage ('�������� ������ �������');
                                          end else begin
                                                     if unit1.TPER=1 then form24.AdvSmoothLabel3.Caption.Text:='�� ��������� �������� ������� ������� 1 ����';
                                                     if (unit1.TPER>1)and(unit1.TPER<5) then form24.AdvSmoothLabel3.Caption.Text:='�� ��������� �������� ������� �������� '+inttostr(unit1.TPER)+' ���';
                                                     if (unit1.TPER>4)or(unit1.TPER=0) then form24.AdvSmoothLabel3.Caption.Text:='�� ��������� �������� ������� �������� '+inttostr(unit1.TPER)+' ����';
                                                     form24.AdvMetroProgressBar1.Min:=0;
                                                     form24.AdvMetroProgressBar1.max:=100;
                                                     Form24.Timer1.Enabled:=true;
                                                     form24.Showmodal;


                                                   end;
                                                    end;
                          end
                          else NUM_LOGIN:=NUM_LOGIN+1;


   end
   else begin
         // �������� ����, ����������� ������� ��������
         NUM_LOGIN:=NUM_LOGIN+1;
        end;

 if ((unit1.Login_Flag=1) and (NUM_LOGIN>3)) then
     begin
      Unit1.Form1.Close;
     end else if unit1.Login_Flag=2 then form3.Close;

end;

procedure TForm3.FormCreate(Sender: TObject);
var i, j: integer;
    f, f1: textFile;
    z,FC, FC_NEW, z1, x1: string;
    res: integer;
    R: TRegistry;
    searchResult : TSearchRec;

begin




STARTFB.Enabled:=true;
//showmessage(GetPatch(CSIDL_PERSONAL));
  begin
    // ���� �� ������� ����������� � �� - ������� ��������� �� ������.
    // ��������� ������ �������

    StatusBar1.Panels[0].Text:='������ ���������� � ��';
    AdvSmoothLabel2.Caption.Text:='������ ���������� � ��';
    SpeedButton1.Enabled:=false;
 if DirectoryExists (GetPatch(CSIDL_PERSONAL)+'\WorkDEST\')=false then createdir (GetPatch(CSIDL_PERSONAL)+'\WorkDEST\');

 AssignFile (f,GetPatch(CSIDL_PERSONAL)+'\WorkDEST\log.dat');

  {$I-}
  Reset(f); // ������� ���� ��� ������
  {$I+}
  res := IOResult;

  if res <> 0 then
   begin
     Rewrite(F);
     CloseFile(F);
   end;

      {$I-}
  Reset(f); // ������� ���� ��� ������
  {$I+}
  res := IOResult;
  if res <> 0 then
   begin
     Edit1.Text:='';
   end
   else begin
         Readln(F,z);
         CloseFile(F);
         Edit1.Text:=z;
        end;

  end;


end;

procedure TForm3.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
if unit1.Login_Flag<>2 then form1.Close;
end;

procedure TForm3.Edit12KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (Key = VK_RETURN) then SpeedButton1.Click;
end;

procedure TForm3.STARTFBTimer(Sender: TObject);

var er, er1:string;
    a, b, i, put1: integer;
    j: integer;
    f, f1: textFile;
    z,FC, FC_NEW, z1, x1, MAINNAME, k1,k2,k3,k4: string;
    res, pipi: integer;
    R: TRegistry;
    searchResult : TSearchRec;
    actdate: TDateTime;
begin
// ���� ����������� �� ����������� - ��������� ����� � ���������
// ���� �������� � ���������� ���, �� ������� ���������� - ��������� �������
if (unit2.FLAG_DB_CONNECT=0) then
  begin
     SpeedButton1.Enabled:=false;

     StatusBar1.Panels[0].Text:='������ ���������� � ��';
     AdvSmoothLabel2.Caption.Text:='������ ���������� � ��';

     if Flag_WORK_thrd=0 then begin
        Flag_WORK_thrd:=1;
        login.Form3.StatusBar1.Panels[0].Text:='���������� � ��';
        AdvSmoothLabel2.Caption.Text:='���������� � ��';
        Thread1 :=TSimpleThread.Create(true);
        Thread1.FreeOnTerminate:=true;
        Thread1.Priority := tpLowest;
        Thread1.Resume;
      end;
  end
  else begin
          STARTFB.Enabled:=false;
          SpeedButton1.Enabled:=true;
          login.Form3.StatusBar1.Panels[0].Text:='����������� � ��';
          StatusBar1.Panels[0].Text:='����������� � ��';
          AdvSmoothLabel2.Caption.Text:='����������� � ��';
            NUM_LOGIN:=0;
            i:=1;



         // �����
         // ����� ����� � ���������
// �������� ����� ���������� �����, ��������������� Unit1.d* � ������� ��������
sn1:='';
sn2:='';
sn3:='';
 unit1.mod_k1:='';
 unit1.mod_k2:='';
  unit1.mod_k3:='';
   unit1.mod_k4:='';






// ���� ���� ��������
// ����� ������������ �������
 IBQuery2.Close;
 IBQuery2.Open;
 IBQuery2.First;
 if not IBQuery2.Eof then MAINNAME:=IBQuery2MAINFIRM.AsString
                     else MAINNAME:='';
 unit1.mod_MAINNAME:=MAINNAME;
 button1.Click;
   pipi:=0;
   if FindFirst('*.lic', faAnyFile, searchResult) = 0 then
  begin
    repeat
    unit1.LICFILE:=searchResult.Name;

    pipi:=pipi+1;
 if FileExists(unit1.LICFILE) then begin
 AssignFile(f1,unit1.LICFILE);
 Reset(F1);
  for j:=1 to 45 do
    begin
     readln(f1,x1);
    end;
    readln(f1,x1); //


  //memo1.Lines.Clear;
  //memo1.Lines.Append(x1);
  sn2:=x1+'\n';
  sn3:=XorDecode (MAINNAME,sn2);

 decoding1 (sn3,length(MAINNAME), MAINNAME, sn1);





  for j:=1 to 45 do
    begin
     readln(f1,x1);
    end;



 CloseFile (f1);



 put1:=1;
 k1:=''; k2:=''; k3:=''; k4:='';
 for i:=5 to length(sn1) do begin
                             if sn1[i]='%' then put1:=put1+1
                                 else
                                 begin
                                  if (put1=1)or(put1=7) then k1:=k1+sn1[i];
                                  if (put1=2) then k2:=k2+sn1[i];
                                  if (put1=4) then k3:=k3+sn1[i];
                                  if (put1=6) then k4:=k4+sn1[i];
                                 end;
                            end;
 unit1.mod_k1:=k1;
 unit1.mod_k2:=k2;
  unit1.mod_k3:=k3; // W
   unit1.mod_k4:=k4;
   
 end;

     until (FindNext(searchResult) <> 0) or (unit1.mod_k3='WDE')and(unit1.mod_k2=MAINNAME)and(snumber1=unit1.mod_k1) or (pipi>100);
    FindClose(searchResult);
  end;

    if (unit1.mod_k3='WDE')and(unit1.mod_k2=MAINNAME)and(snumber1=unit1.mod_k1) then 
                 else
    begin

   // �������� � ������
  R := TRegistry.Create;
  R.RootKey := HKEY_LOCAL_MACHINE;
  {
    �������� �����. �������� True ��������,
    ��� ��� ���������� ����� �� ������������� ���������
  }
  if R.KeyExists('Software\WorkDESK')=false then
     begin
     // Showmessage ('���� �� ������');
    // ���������� ���� �������� ������

      // ��������� ����������� � ����������
     if DirectoryExists(GetPatch(CSIDL_PERSONAL)+'\WorkDEST')=true then begin

                                                                                    if 2>(DaysBetween(now(),GetDirTime(GetPatch(CSIDL_PERSONAL)+'\WorkDEST'))) then
                                                                                                                   begin
                                                                                                                     // ������� ������ �������
                                                                                                                     // ������� ���� �������� �������� � ����������
                                                                                                                     actdate:=GetDirTime (PChar(ExtractFileDir(ParamStr(0))));
                                                                                                                   end   else actdate:=GetDirTime(GetPatch(CSIDL_PERSONAL)+'\WorkDEST');
                                                                            end else begin
                                                                                         actdate:=GetDirTime (PChar(ExtractFileDir(ParamStr(0))));
                                                                                         AssignFile(f,GetPatch(CSIDL_PERSONAL)+'\WorkDEST\log.dat');
                                                                                         Rewrite(f);
                                                                                          Append(f);

                                                                                           CloseFile(f);
                                                                                     end;

       if 30<=(DaysBetween(now(),actdate)) then
            begin

             unit1.UNITHALT:=911;
             // ������ � ������ ���� �����������
             // �������� ����


            end
            else begin
                    unit1.UNITHALT:=199;
                    unit1.TPER:=(30-DaysBetween(now(), actdate));

                 end;
              FC:=datetimetostr(actdate);
              Coding(FC,10, 'Hddfresdsd', FC_NEW);

              R.OpenKey('Software\WorkDESK', True);
             {���������� ��������}
             R.WriteString('WDESK', FC_NEW);
            {��������� ����}
     end

     else
     begin
     // ���������� ����
     // ���������� �� �������
       R.OpenKey('Software\WorkDESK', True);

       decoding (R.ReadString('WDESK'),10, 'Hddfresdsd', FC_NEW);

       if (DaysBetween(now(),strtodatetime(FC_NEW))<=30)and(DaysBetween(now(),strtodatetime(FC_NEW))>=0) then begin
       unit1.UNITHALT:=199;
       unit1.TPER:=(30-DaysBetween(now(), strtodatetime(FC_NEW)));

                                                            end
                                                            else
                                                            begin

                                                             unit1.UNITHALT:=911;
                                                            end;
     end;

  {��������� ����}
  R.CloseKey;
  R.Free;
 end;
// ������ � ������ ���������










    end;



end;

procedure TForm3.SpeedButton2Click(Sender: TObject);
begin
STARTFB.Enabled:=false;
form14.showmodal;

end;

procedure TForm3.AdvGlassButton1Click(Sender: TObject);
begin
// �������� ����� �����

SpeedButton1.Click;
end;

procedure TForm3.AdvGlassButton2Click(Sender: TObject);
begin
SpeedButton2.Click;
end;

procedure TForm3.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (Key = VK_RETURN) then SpeedButton1.Click;
end;

procedure TForm3.CurvyPanel1MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
ReleaseCapture;
Perform (WM_SYSCOMMAND,SC_MOVE+2,0);
end;

procedure TForm3.AdvGlassButton3Click(Sender: TObject);
begin
 form3.Close;
end;

procedure TForm3.AdvSmoothLabel1MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
ReleaseCapture;
Perform (WM_SYSCOMMAND,SC_MOVE+2,0);
end;

procedure TForm3.AdvGlassButton1MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
ReleaseCapture;
Perform (WM_SYSCOMMAND,SC_MOVE+2,0);
end;

procedure TForm3.Edit1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
//ReleaseCapture;
//Perform (WM_SYSCOMMAND,SC_MOVE+2,0);
end;

procedure TForm3.MaskEdit1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
//ReleaseCapture;
//Perform (WM_SYSCOMMAND,SC_MOVE+2,0);
end;

procedure TForm3.RTFLabel1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
ReleaseCapture;
Perform (WM_SYSCOMMAND,SC_MOVE+2,0);
end;

procedure TForm3.RTFLabel2MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
ReleaseCapture;
Perform (WM_SYSCOMMAND,SC_MOVE+2,0);
end;

procedure TForm3.AdvSmoothLabel2MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
ReleaseCapture;
Perform (WM_SYSCOMMAND,SC_MOVE+2,0);
end;

procedure TForm3.AdvGlassButton2MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
ReleaseCapture;
Perform (WM_SYSCOMMAND,SC_MOVE+2,0);
end;

procedure TForm3.AdvGlassButton3MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
ReleaseCapture;
Perform (WM_SYSCOMMAND,SC_MOVE+2,0);
end;

procedure TForm3.MaskEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (Key = VK_RETURN) then SpeedButton1.Click;
end;

procedure TForm3.CurvyPanel2MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
ReleaseCapture;
Perform (WM_SYSCOMMAND,SC_MOVE+2,0);
end;

procedure TForm3.Button1Click(Sender: TObject);
var
i: DWORD;
tmp: string;
dev: THandle;
scip: TSendCmdInParams;
scop: TSendCmdOutParams;
gvip: TGetVersionInParams;
ret: DWORD;

VolumeName,
FileSystemName : array [0..MAX_PATH-1] of Char;
VolumeSerialNo, DS : DWord;
MaxComponentLength,
FileSystemFlags : DWORD;
 
begin
dev := CreateFile('\\.\PhysicalDrive0', GENERIC_READ or GENERIC_WRITE,
FILE_SHARE_READ or FILE_SHARE_WRITE, nil, OPEN_EXISTING, 0, 0);
if dev <> INVALID_HANDLE_VALUE then begin
if DeviceIoControl(dev, SMART_GET_VERSION, nil, 0, @gvip, SizeOf(gvip),
ret, nil) then begin
scip.dwBufferSize := 512;
scip.bDriveNumber := 0;
scip.irDriveRegs.bSectorCountReg := 1;
scip.irDriveRegs.bSectorNumberReg := 1;
scip.irDriveRegs.bDriveHeadReg := $A0; // ???
scip.irDriveRegs.bCommandReg := ID_CMD; // ???
 
if not DeviceIoControl(dev, SMART_RCV_DRIVE_DATA, @scip, SizeOf(scip),
@scop, SizeOf(scop), ret, nil) then
ShowMessage(SysErrorMessage(GetLastError))
else
if scop.dsDriverStatus.bDriverError = DRVERR_NO_ERROR then begin
CorrectDevInfo(scop);
SetLength(tmp, 20);
Move(scop.bBuffer[21], tmp[1], 20);

snumber1:=(tmp);
unit1.snumber1:=snumber1;
SetLength(tmp, 8);
Move(scop.bBuffer[47], tmp[1], 8);


SetLength(tmp, 40);
Move(scop.bBuffer[55], tmp[1], 40);

tmp:=trim(tmp);


//ssn1:=Copy(sn1, 1, length(sn1) div 2);
//ssn2:=Copy(sn1, 1+(length(sn1) div 2), 1+(Length(sn1)-(length(sn1) div 2)));
//sn1:=tmp[length(tmp)-5]+tmp[length(tmp)-4]+tmp[length(tmp)-2]+tmp[length(tmp)-1]+ssn1+'%'+Edit1.Text+'%dsfSSfFGDsd%'+IBQuery1PHONE.AsString+'%'+ssn2+'%';

end
else
ShowMessageFmt('Error code: %d', [scop.dsDriverStatus.bDriverError])
end
else
ShowMessage(SysErrorMessage(GetLastError));

CloseHandle(dev);
end else
 begin


      GetVolumeInformation('C:\',VolumeName,MAX_PATH,@VolumeSerialNo,
      MaxComponentLength,FileSystemFlags,
      FileSystemName,MAX_PATH);
      DS:=VolumeSerialNo;
      //SetString( sn1, Pointer(@DS), 4 );
      sn1:=inttostr(DS);
      tmp:=sn1;
      snumber1:=sn1;
      tmp:=trim(tmp);
      unit1.snumber1:=snumber1;

 end;

end;
end.
