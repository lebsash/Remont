unit Unit23;
interface
 
uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, unit2, DB, IBCustomDataSet, IBQuery, Buttons, CurvyControls,
  rtflabel;
 
type
    TByteArr = array of byte;
    TStringArr = array of String;

  TForm23 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    IBQuery1: TIBQuery;
    IBQuery1NAME: TIBStringField;
    IBQuery1ADRESS: TIBStringField;
    IBQuery1PHONE: TIBStringField;
    IBQuery1SITE: TIBStringField;
    IBQuery1EMAIL: TIBStringField;
    IBQuery1INN: TIBStringField;
    IBQuery1KPP: TIBStringField;
    IBQuery1RS: TIBStringField;
    IBQuery1BIK: TIBStringField;
    IBQuery1KS: TIBStringField;
    IBQuery1BANK: TIBStringField;
    IBQuery1OTHER: TIBStringField;
    IBQuery1MAINFIRM: TIBStringField;
    SpeedButton1: TSpeedButton;
    SaveDialog1: TSaveDialog;
    RTFLabel1: TRTFLabel;
    Edit1: TCurvyEdit;
    Edit2: TCurvyEdit;
    RTFLabel2: TRTFLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
  private
    { Private declarations }
//   function XorString(const Key, Src: ShortString): ShortString;
//   function XorEncode(const Key, Source: string): string;
//   function XorDecode(const Key, Source: string): string;

    procedure Coding (F:string; fr: integer; fk1:string; var newstr:string);
    procedure Decoding(F:string; fr: integer; fk1:string; var newstr:string);
    function StrToByte(const Value: String): TByteArr;
  public
    { Public declarations }
  end;


var
  Form23: TForm23;
  sn1, sn2, sn3, ssn1, ssn2: string;


implementation
uses Unit1;
{$R *.DFM}
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

function TForm23.StrToByte(const Value: String): TByteArr;
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


// CODING - DECODING
procedure TForm23.Coding(F:string;fr: integer; fk1:string; var newstr:string);
  var
   s: string;
   i, j, jj1, jj2:integer;
   m,key:byte;
   k:char;
   xByte: TByteArr;
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


 procedure TForm23.decoding(F:string;fr: integer; fk1:string; var newstr:string);
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
 
 
procedure TForm23.Button1Click(Sender: TObject);
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
//Memo1.Lines.Add('Serial Number: ' + tmp);
sn1:=(tmp);


SetLength(tmp, 8);
Move(scop.bBuffer[47], tmp[1], 8);
//Memo1.Lines.Add('Firmware Revision: ' + tmp);

SetLength(tmp, 40);
Move(scop.bBuffer[55], tmp[1], 40);
//Memo1.Lines.Add('Model: ' + tmp);
tmp:=trim(tmp);



ssn1:=Copy(sn1, 1, length(sn1) div 2);
ssn2:=Copy(sn1, 1+(length(sn1) div 2), 1+(Length(sn1)-(length(sn1) div 2)));
sn1:=tmp[length(tmp)-5]+tmp[length(tmp)-4]+tmp[length(tmp)-2]+tmp[length(tmp)-1]+ssn1+'%'+Edit1.Text+'%dsf%WDE%FGDsd%'+IBQuery1PHONE.AsString+'%'+ssn2+'%';

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
      sn1:=inttostr(DS);
      //sn1:=DS;
      tmp:=sn1;
      tmp:=trim(tmp);
      ssn1:=Copy(sn1, 1, length(sn1) div 2);
      ssn2:=Copy(sn1, 1+(length(sn1) div 2), 1+(Length(sn1)-(length(sn1) div 2)));
      sn1:=tmp[length(tmp)-5]+tmp[length(tmp)-4]+tmp[length(tmp)-2]+tmp[length(tmp)-1]+ssn1+'%'+Edit1.Text+'%dsf%WDE%FGDsd%'+IBQuery1PHONE.AsString+'%'+ssn2+'%';

 end;

end;


procedure TForm23.Button2Click(Sender: TObject);
var f: textfile;
    i,j,l: integer;
    s:string;
begin
button1.Click;

coding (sn1,length(Edit1.Text)+3, Edit1.Text, sn3);

sn2:=XorEncode ('Edit1',sn3);
//memo1.Lines.Append('ОТ: '+sn2);
if savedialog1.Execute then
  begin
    randomize;
    AssignFile(f,savedialog1.FileName);
    Rewrite (f);
    Append(f);
    writeln (f, Edit1.Text);
    for i:=1 to 45 do
       begin
          s:='';
         for j:=1 to length(trim(sn2)) do  begin
                                              l:=random(length(trim(sn2)));
                                              s:=s+sn2[l];
                                           end;
         Writeln(f,s);
       end;
       Writeln(f,trim(sn2));
           for i:=1 to 45 do
       begin
          s:='';
         for j:=1 to length(trim(sn2)) do  begin
                                              l:=random(length(trim(sn2)));
                                              s:=s+sn2[l];
                                           end;
         Writeln(f,s);
       end;

    CloseFile (f);
  end;
   Showmessage('Файл '+savedialog1.FileName+' успешно создан. Отправьте данный файл в наш центр учета лицензий и, после получения оплаты, Вы получите ключ для работы в соответствии с выбранным тарифным планом. Подробнее на http://www.studio911.org');
 {
sn3:=XorDecode ('Edit1',sn2);
memo1.Lines.Append('ОТ1: '+sn3);

coding (sn1,length(Edit1.Text),Edit1.Text, sn3);
memo1.Lines.Append(sn3);
  }
// decoding (sn3,length(Edit1.Text), Edit1.Text, sn1);
//memo1.Lines.Append(sn1);
{

sn2:=XorEncode (Edit1.text,sn3);

memo1.Lines.Append('TO:'+sn2);
memo1.Lines.Append('Дешифруем');
sn3:=XorDecode (Edit1.text,sn2);
memo1.Lines.Append('Этап 1: '+sn3);
 decoding (sn3,length(Edit1.Text), Edit1.Text, sn1);
 memo1.Lines.Append('Этап 2: '+sn1);
 }
end;

procedure TForm23.FormActivate(Sender: TObject);
begin
                                                      RTFLabel1.Visible:=true;
                                                      RTFLabel2.Visible:=false;
                                                      Form23.Height:=RTFLabel1.Height+50;

 if (unit1.mod_k3='WDE')and(unit1.mod_k2=unit1.mod_MAINNAME)and(unit1.snumber1=unit1.mod_k1)
                                            then begin
                                                 // Лицензия прошла
                                                 Edit2.Text:='СТАТУС: Лицензия активирована';
                                                 end else
                                                    begin
                                          //unit1.Form1.CheckBox8.Checked:=true;
                                          if unit1.UNITHALT=911 then begin
                                          Edit2.Text:='СТАТУС: Лицензия отсутствует';
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
                                          end else Edit2.Text:='СТАТУС: Лицензия отсутствует';

                                                  end;


 IBQuery1.Close;
 IBQuery1.Open;

 IBQuery1.First;
 Edit1.Text:=IBQuery1MAINFIRM.AsString;
 if length(Edit1.Text)<3 then
    begin
     showmessage ('Вам необходимо заполнить реквизиты фирмы в разделе СЕРВИС/НАШИ РЕКВИЗИТЫ')
    end
    else
    begin

    end;
end;

procedure TForm23.SpeedButton1Click(Sender: TObject);
begin
Button2.Click;
end;

procedure TForm23.Edit2Change(Sender: TObject);
begin
  if Edit2.Text='СТАТУС: Лицензия отсутствует' then begin
                                                      RTFLabel1.Visible:=true;
                                                      RTFLabel2.Visible:=false;
                                                      Form23.Height:=RTFLabel1.Height+50;
                                                    end
                                                    else
                                                    begin
                                                      RTFLabel1.Visible:=false;
                                                      RTFLabel2.Visible:=true;
                                                      Form23.Height:=RTFLabel2.Height+50;
                                                    end;
end;

end.
