unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, ExtCtrls, ComCtrls, StdCtrls, unit2, DB, IBCustomDataSet,
  IBQuery, Grids, DBGrids, Menus, XPMan, ThemedDBGrid, DateUtils,
  CurvyControls, ImgList, AdvMenus, Registry, ActiveX, ShlObj;

type
    TByteArr = array of byte;
    TStringArr = array of String;
  TForm1 = class(TForm)
    Panel1: TPanel;
    SpeedButton1: TSpeedButton;
    StatusBar1: TStatusBar;
    ComboBox10: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    DBGrid1: TDBGrid;
    IBQuery1: TIBQuery;
    DataSource1: TDataSource;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    IBQuery1ID_SHAPKA: TIntegerField;
    IBQuery1ID_CLIENT: TIntegerField;
    IBQuery1DATA_GET: TDateTimeField;
    IBQuery1DATA_KRAY: TDateTimeField;
    IBQuery1DATA_END: TDateTimeField;
    IBQuery1F_STATUS: TIntegerField;
    IBQuery1F_KORRECT: TIntegerField;
    IBQuery1ID_MASTER: TIntegerField;
    IBQuery1ID_MANAGER: TIntegerField;
    IBQuery1ID_SERVICE: TIntegerField;
    IBQuery1N_1C: TIBStringField;
    IBQuery1F_CLIENT: TIntegerField;
    IBQuery1ABOUT: TIBStringField;
    IBQuery1F_SOGL_C: TIntegerField;
    IBQuery1F_SOGL_V: TIntegerField;
    IBQuery1F_SOGL_T: TIntegerField;
    IBQuery1F_REZ_C: TIntegerField;
    IBQuery1F_REZ_O: TIntegerField;
    IBQuery1NOM_KARTA: TIBStringField;
    IBQuery2: TIBQuery;
    IBQuery2ID: TIntegerField;
    IBQuery2NAME: TIBStringField;
    IBQuery2SECOND_NAME: TIBStringField;
    IBQuery2FAMILY: TIBStringField;
    IBQuery2PASS: TIBStringField;
    IBQuery2ROLE: TIBStringField;
    IBQuery2DOLGNOST: TIBStringField;
    IBQuery2OTDEL: TIBStringField;
    IBQuery2ID_FIRM: TIntegerField;
    IBQuery2USLOGIN: TIBStringField;
    IBQuery3: TIBQuery;
    IBQuery3ID: TIntegerField;
    IBQuery3NAME: TIBStringField;
    IBQuery3CONTACT: TIBStringField;
    IBQuery3ABOUT: TIBStringField;
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
    IBQuery4USLOGIN: TIBStringField;
    IBQuery5: TIBQuery;
    IBQuery5ID: TIntegerField;
    IBQuery5NAME: TIBStringField;
    IBQuery5CONTACT: TIBStringField;
    IBQuery5ABOUT: TIBStringField;
    IBQuery6: TIBQuery;
    IBQuery6ID: TIntegerField;
    IBQuery6NAME: TIBStringField;
    IBQuery1FL_GOTOVO: TIntegerField;
    IBQuery1FL_SOGLASOVANO: TIntegerField;
    IBQuery1FL_VIDANO: TIntegerField;
    IBQuery1FL_VRABOTA: TIntegerField;
    N2: TMenuItem;
    IBQuery7: TIBQuery;
    IBQuery8: TIBQuery;
    IBQuery9: TIBQuery;
    SpeedButton5: TSpeedButton;
    IBQuery1HHH: TIBStringField;
    IBQuery1ID: TIntegerField;
    IBQuery1NAME: TIBStringField;
    IBQuery1CONTACT: TIBStringField;
    IBQuery1ABOUT1: TIBStringField;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    CheckBox5: TCheckBox;
    CheckBox6: TCheckBox;
    SpeedButton6: TSpeedButton;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    CheckBox7: TCheckBox;
    Edit1: TCurvyEdit;
    Edit2: TCurvyEdit;
    CheckBox8: TCheckBox;
    Label3: TLabel;
    Label4: TLabel;
    CheckBox9: TCheckBox;
    CheckBox10: TCheckBox;
    ImageList1: TImageList;
    GroupBox1: TGroupBox;
    Label5: TLabel;
    Edit3: TCurvyEdit;
    Label6: TLabel;
    Edit4: TCurvyEdit;
    SpeedButton7: TSpeedButton;
    Edit5: TCurvyEdit;
    Label7: TLabel;
    SpeedButton8: TSpeedButton;
    SpeedButton9: TSpeedButton;
    Edit6: TCurvyEdit;
    Label8: TLabel;
    SpeedButton10: TSpeedButton;
    SpeedButton11: TSpeedButton;
    XPManifest1: TXPManifest;
    AdvMainMenu1: TAdvMainMenu;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    N11: TMenuItem;
    N12: TMenuItem;
    Label9: TLabel;
    Label10: TLabel;
    N13: TMenuItem;
    N14: TMenuItem;
    N15: TMenuItem;
    N16: TMenuItem;
    N17: TMenuItem;
    N18: TMenuItem;
    N19: TMenuItem;
    IBQuery10: TIBQuery;
    IBQuery1DAT_SOGL: TDateTimeField;
    IBQuery1DAT_GOTOVO: TDateTimeField;
    IBQuery1DAT_VIDANO: TDateTimeField;
    N20: TMenuItem;
    IBQuery1ID1: TIntegerField;
    IBQuery1NAME1: TIBStringField;
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1DrawDataCell(Sender: TObject; const Rect: TRect;
      Field: TField; State: TGridDrawState);
    procedure N2Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure SpeedButton6Click(Sender: TObject);
    procedure Edit2DblClick(Sender: TObject);
    procedure PopupMenu1Popup(Sender: TObject);
    procedure CheckBox3Click(Sender: TObject);
    procedure CheckBox4Click(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure CheckBox7Click(Sender: TObject);
    procedure CheckBox8Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
    procedure Edit5KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
    procedure N12Click(Sender: TObject);
    procedure N10Click(Sender: TObject);
    procedure N20Click(Sender: TObject);
    procedure N11Click(Sender: TObject);
  private
    { Private declarations }
        procedure Coding (F:string; fr: integer; fk1:string; var newstr:string);
    procedure Decoding(F:string; fr: integer; fk1:string; var newstr:string);
    procedure Coding1 (F:string; fr: integer; fk1:string; var newstr:string);
    procedure Decoding1(F:string; fr: integer; fk1:string; var newstr:string);
    function StrToByte(const Value: String): TByteArr;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

  Login_Flag, ID_LOCAL_FIRM, UNITHALT: integer;
  NAME_USER, FAMILY_USER, LICFILE:string;
  ID_USER:Integer;
  ROLE_USER, speedtime, mod_k1, mod_k2, mod_k3, mod_k4, mod_MAINNAME, snumber1:string;
  adm:array[1..500] of integer;
  tus1, ten1_count, ten2_count, ten3_count, TPER:integer;
  variant: integer;
implementation

uses users, login, Unit5, Unit9, Unit15, Unit18, managers, Unit19, otchet,
  Unit21, Unit22, Unit23;

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


function TForm1.StrToByte(const Value: String): TByteArr;
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
procedure TForm1.Coding(F:string;fr: integer; fk1:string; var newstr:string);
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


 procedure TForm1.decoding(F:string;fr: integer; fk1:string; var newstr:string);
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
procedure TForm1.Coding1(F:string;fr: integer; fk1:string; var newstr:string);
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


 procedure TForm1.decoding1(F:string;fr: integer; fk1:string; var newstr:string);
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


procedure TForm1.SpeedButton1Click(Sender: TObject);
begin
 form4.show;
end;

procedure TForm1.FormActivate(Sender: TObject);
var
    er, er1:string;
    a, b, i, put1: integer;
    j: integer;
    f, f1: textFile;
    z,FC, FC_NEW, z1, x1, MAINNAME, k1,k2,k3,k4: string;
    res, pipi: integer;
    R: TRegistry;
    searchResult : TSearchRec;
    actdate: TDateTime;
begin

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
       
       unit1.TPER:=(30-DaysBetween(now(), strtodatetime(FC_NEW)));
       unit1.UNITHALT:=199;
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



if Login_Flag=1 then form3.showmodal
                else begin
                        N1.Click;

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
                                          end; end;


                     end;   
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
 Login_Flag:=1;
end;

procedure TForm1.SpeedButton2Click(Sender: TObject);
begin
 Form5.SpeedButton5.Click;
 Form5.Label8.Caption:='0';
 Form5.Label9.Caption:='0';
 Form5.Label12.Caption:='0';
 Form5.Edit2.Text:='';
 Form5.Edit4.Text:='';
 Form5.Memo1.Clear;
 Form5.Memo2.Clear;
 Form5.CheckBox1.Checked:=false;
 Form5.CheckBox2.Checked:=false;
 Form5.CheckBox4.Checked:=True;
 Form5.CheckBox3.Checked:=false;

 form5.ListBox1.Clear;
 Form5.SpeedButton2.Click;
 Form5.ComboBox2.Text:=unit1.FAMILY_USER+' '+unit1.NAME_USER;
 unit5.id_idmanager:=unit1.ID_USER;
 Form5.Edit1.Text:='';
 form5.Label15.Caption:='0';
 Form5.Label18.Caption:='';
 Form5.Edit1.Text:='';
 Form5.Edit3.Text:='';
 Form5.advStringGrid1.Clear;
 form5.show;
end;

procedure TForm1.SpeedButton3Click(Sender: TObject);
begin
       form9.IBQuery1.Close;
       form9.IBQuery1.Open;
       form9.IBQuery1.First;
       form9.showmodal;
end;

procedure TForm1.SpeedButton4Click(Sender: TObject);
begin
Form15.SpeedButton3.Click;
Form15.Edit1.Text:='';
Form15.ComboBox1.Text:='';
Form15.showmodal;
end;

procedure TForm1.N1Click(Sender: TObject);
var
    MyBookMark: TBookmark;
begin
MyBookMark:= Form1.IBQuery1.GetBookmark;
IBQuery1.Close;
IBQuery1.Open;
  if IBQuery1.Eof then begin
  Form1.IBQuery1.EnableControls;
                       end
                       else
                       begin
  Form1.IBQuery1.GotoBookmark(MyBookMark);
   Form1.IBQuery1.EnableControls;
   Form1.IBQuery1.FreeBookMark(MyBookMark);
                       end;

end;

procedure TForm1.DBGrid1DblClick(Sender: TObject);
begin
if not IBQuery1.Eof
then begin
 Form5.SpeedButton5.Click;
 Form5.Label8.Caption:='0';
 Form5.Label9.Caption:='0';
 Form5.Label12.Caption:='0';
 Form5.Edit2.Text:='';
 Form5.Edit4.Text:='';
 Form5.Memo1.Clear;
 Form5.Memo2.Clear;

 if IBQuery1F_SOGL_C.AsInteger=1 then Form5.CheckBox1.Checked:=true
                                 else Form5.CheckBox1.Checked:=false;
 if IBQuery1F_SOGL_V.AsInteger=1 then Form5.CheckBox2.Checked:=true
                                 else Form5.CheckBox2.Checked:=false;

 if IBQuery1F_SOGL_T.AsInteger=1 then Form5.CheckBox3.Checked:=true
                                 else Form5.CheckBox3.Checked:=false;
 if IBQuery1F_REZ_C.AsInteger=1 then Form5.CheckBox4.Checked:=true
                                else Form5.CheckBox4.Checked:=false;


 form5.ListBox1.Clear;
 Form5.SpeedButton2.Click;



 unit5.id_idmanager:=IBQuery1ID_MANAGER.AsInteger;
 // �� ID ��������� ���� ��� ������� � ���
 IBQuery2.SQL.Clear;
 IBQuery2.SQL.Append('select * from USERS WHERE ID=:ID');
 IBQuery2.ParamByName('ID').AsInteger:=unit5.id_idmanager;
 IBQuery2.Close;
 IBQuery2.Open;
 IBQuery2.First;
 Form5.ComboBox2.Text:=IBQuery2FAMILY.asString+' '+IBQuery2NAME.AsString;

 // �� ID-��������� ���� ������ ��������� � ���������� ��������������� ����
 Form5.Edit1.Text:='';
 IBQuery3.SQL.Clear;
 IBQuery3.SQL.Append('select * from OWNERS WHERE ID=:ID');
 IBQuery3.ParamByName('ID').AsInteger:=IBQuery1ID_CLIENT.AsInteger;
 IBQuery3.Close;
 IBQuery3.Open;
 IBQuery3.First;
 Form5.Edit1.Text:=IBQuery3NAME.AsString;
 Form5.Label8.Caption:=inttostr(IBQuery1ID_CLIENT.AsInteger);
 Form5.Memo1.Lines.Append(IBQuery3CONTACT.AsString);
 // �� ���������� ���� �����������
 if IBQuery1ID_MASTER.AsInteger<>0 then
    begin
     // ������ ��������� ��� ������
     Form5.Label12.Caption:='1';
     Form5.Label9.Caption:=inttostr(IBQuery1ID_MASTER.AsInteger);
     // �� �������������� ���� ������������ �������
     IBQuery4.SQL.Clear;
     IBQuery4.SQL.Append('select * from USERS WHERE ID=:ID');
     IBQuery4.ParamByName('ID').AsInteger:=IBQuery1ID_MASTER.AsInteger;
     IBQuery4.Close;
     IBQuery4.Open;
     IBQuery4.First;
     Form5.Edit3.Text:=IBQuery4FAMILY.AsString+' '+IBQuery4NAME.AsString;

    end
    else
    begin
     // ������ ��������� ��������� ������
      Form5.Label12.Caption:='2';
      Form5.Label9.Caption:=inttostr(IBQuery1ID_SERVICE.AsInteger);
      // �� ID ���� ������������ ���������� �������
      IBQuery5.SQL.Clear;
      IBQuery5.SQL.Append('select * from SERV WHERE ID=:ID');
      IBQuery5.ParamByName('ID').AsInteger:=IBQuery1ID_SERVICE.AsInteger;
      IBQuery5.Close;
      IBQuery5.Open;
      IBQuery5.First;
      Form5.Edit3.Text:=IBQuery5NAME.AsString;

    end;
    if IBQuery1DATA_END.VALUE=strtodate('30.12.1899') then
                                     begin
                                       Form5.DateTimePicker2.Date:=now;
                                       Form5.DateTimePicker2.Checked:=false;
                                     end
                                     else
                                     begin
                                      Form5.DateTimePicker2.Date:=IBQuery1DATA_END.AsDateTime;
                                      Form5.DateTimePicker2.Checked:=true;
                                     end;
      Form5.DateTimePicker1.Date:=IBQuery1DATA_GET.AsDateTime;

      Form5.DateTimePicker3.Date:=IBQuery1DATA_KRAY.AsDateTime;
 // ��������� �� ID ��������� �����
  IBQuery6.SQL.Clear;
  IBQuery6.SQL.Append('select * from FIRMS WHERE ID=:ID');
  IBQuery6.ParamByName('ID').AsInteger:=IBQuery1F_CLIENT.AsInteger;
  IBQuery6.Close;
  IBQuery6.Open;
  IBQuery6.First;
  Form5.ComboBox1.Text:=IBQuery6NAME.AsString;
  Form5.Memo2.Lines.Append(IBQuery1ABOUT.AsString);
  Form5.Edit4.Text:=IBQuery1N_1C.AsString;
  Form5.Edit2.Text:=IBQuery1NOM_KARTA.AsString;
  form5.Label15.Caption:=IBQuery1ID_SHAPKA.AsString;

  form5.label4.Caption:=IBQuery1FL_GOTOVO.AsString;
  form5.label5.Caption:=IBQuery1FL_SOGLASOVANO.AsString;
  form5.label16.Caption:=IBQuery1FL_VIDANO.AsString;
  form5.label17.Caption:=IBQuery1FL_VRABOTA.AsString;


 Form5.SpeedButton7.Click;  // ���� � ������������� ������
 form5.show;
end; 
end;

procedure TForm1.DBGrid1DrawDataCell(Sender: TObject; const Rect: TRect;
  Field: TField; State: TGridDrawState);
begin


        {
If gdFocused in State Then
with (SEnder as TDBGrid).Canvas do
Begin
Brush.Color := $00EACAB6;
FillRect(Rect);
TextOut(Rect.Left, Rect.Top, Field.Asstring);
End;
       }
       {
If gdSelected in State Then
begin
  DBGrid1.Canvas.Brush.Color := $00FCEBDC; {��������� �������}
  {DBGrid1.Canvas.Font.Color := clBlack;
  dbGrid1.DefaultDrawDataCell(Rect,Field,State);
  DBGrid1.Canvas.fillRect(Rect);
  DBGrid1.Canvas.TextOut(Rect.Left, Rect.Top, Field.Asstring);
  end;
     }


end;

procedure TForm1.N2Click(Sender: TObject);
var fg:integer;
begin

 if MessageDlg('�� ������������� ������ ������� ����� � '+IBQuery1ID_SHAPKA.AsString+'?',
            mtConfirmation, [mbYes, mbNo], 0) = mrYes
            then
 if not IBQUery1.Eof then
 begin

 IBQuery10.SQL.Clear;
 IBQuery10.SQL.Append('select * from TODO WHERE ID_SHAPKA=:ID_SHAPKA AND FL_GOTOVO=:FL_GOTOVO');
 IBQuery10.ParamByName('ID_SHAPKA').AsInteger:=IBQuery1ID_SHAPKA.AsInteger;
 IBQuery10.ParamByName('FL_GOTOVO').AsInteger:=1;
 IBQuery10.Close;
 IBQuery10.Open;
 IBQuery10.First;
 if not IBQuery10.Eof then fg:=1
                      else fg:=0;

 if (fg=1) and (Label2.Caption='�������������') then
    begin
       if MessageDlg('����� �������� ����������� ������! ����� �������?',
            mtConfirmation, [mbYes, mbNo], 0) = mrYes
            then fg:=0
            else fg:=1;
    end;
if fg=0 then begin
 IBQuery7.SQL.Clear;
 IBQuery7.SQL.Append('DELETE FROM TODO WHERE ID_SHAPKA=:ID_SHAPKA');
 IBQuery7.ParamByName('ID_SHAPKA').AsInteger:=IBQuery1ID_SHAPKA.AsInteger;
 IBQuery7.Close;
 IBQuery7.Open;

 IBQuery8.SQL.Clear;
 IBQuery8.SQL.Append('DELETE FROM REM_USTR WHERE ID_SHAPKA=:ID_SHAPKA');
 IBQuery8.ParamByName('ID_SHAPKA').AsInteger:=IBQuery1ID_SHAPKA.AsInteger;
 IBQuery8.Close;
 IBQuery8.Open;

 IBQuery9.SQL.Clear;
 IBQuery9.SQL.Append('DELETE FROM REM_SHAPKA WHERE ID_SHAPKA=:ID_SHAPKA');
 IBQuery9.ParamByName('ID_SHAPKA').AsInteger:=IBQuery1ID_SHAPKA.AsInteger;
 IBQuery9.Close;
 IBQuery9.Open;

 unit2.DataModule2.IBTransaction1.CommitRetaining;
 N1.Click;


   end;
 end;
end;

procedure TForm1.SpeedButton5Click(Sender: TObject);
begin
Form18.SpeedButton1.Click; // ��������� ������
form18.showmodal;
end;

procedure TForm1.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
var selfl: integer;
  Im : TBitmap;
  fixRect : TRect;
  bmpWidth : integer;

  imgIndex : integer;

begin
selfl:=0;
    with TDBGrid(Sender).canvas do
     begin

if  DBGrid1.DataSource.DataSet['FL_SOGLASOVANO']=0 then
begin
               If gdSelected in State Then
              begin
           // �� ����������� FF9966
           Brush.Color := $6699FF;
           FillRect(Rect);
           selfl:=1;
           end
           else
                         begin
           // �� �����������
           Brush.Color := $CCFFFF;
           FillRect(Rect);
           end


end else
if  DBGrid1.DataSource.DataSet['FL_VIDANO']=1 then
begin
           // ���������� ������, ��� � �����
           Brush.Color := $AEAEBE;
           FillRect(Rect);
end else
if  DBGrid1.DataSource.DataSet['FL_GOTOVO']=0 then
begin
if  (DBGrid1.DataSource.DataSet['DATA_KRAY'] > now())and(DBGrid1.DataSource.DataSet['DATA_KRAY'] < IncDAY(now(), 3)) then
  begin
     If gdSelected in State Then
              begin
              // �������� 3 ��� �� ������, ������ ��������
              DBGrid1.Canvas.Brush.Color := $6699FF;
              FillRect(Rect);
              selfl:=1;
              end
         else
          begin
          // �������� 3 ��� �� ������, ������ �� ��������
           Brush.Color := $99CCFF;
           FillRect(Rect);
          end

  end;

if DBGrid1.DataSource.DataSet['DATA_KRAY'] < now() then
  begin

         If gdSelected in State Then
              begin
              // ���� ������ ����������, ������ ��������
              DBGrid1.Canvas.Brush.Color := $6633FF;
              FillRect(Rect);
              selfl:=1;
              end
         else
          begin
          // ���� ������ ����������, ������ �� ��������
           Brush.Color := $9966FF;
           FillRect(Rect);
          end

  end;
end
else
begin
 // ���������� ������ �� ��� �� ������

 if DBGrid1.DataSource.DataSet['DATA_KRAY'] <= now() then
  begin
     // ������ ������� ����, �� ���������� ��� �� �������
       If gdSelected in State Then
              begin
              // ������ ��������   70A25F
              DBGrid1.Canvas.Brush.Color := $99CC99;
              FillRect(Rect);
              selfl:=1;
              end
         else
          begin
          // ������ �� ��������   0FE689
           Brush.Color := $70A25F;
           FillRect(Rect);
          end
  end
  else
  begin
    // ���������� ������, �� ������� ���� ��� �� ��������
        If gdSelected in State Then
              begin
              // ������ �������� 669999
              DBGrid1.Canvas.Brush.Color := $999966;
              FillRect(Rect);
              selfl:=1;
              end
         else
          begin
          // ������ �� ��������   99CCCC
           Brush.Color := $CCCC99;
           FillRect(Rect);
          end
  end; //

end;

If (gdSelected in State)and(selfl=0) Then
begin
  DBGrid1.Canvas.Brush.Color := $00FCEBDC; {��������� �������}
  DBGrid1.Canvas.Font.Color := clBlack;
  //dbGrid1.DefaultDrawDataCell(Rect,Field,State);
  DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
  DBGrid1.Canvas.fillRect(Rect);
  //DBGrid1.Canvas.TextOut(Rect.Left, Rect.Top, rect.Asstring);
  end;
end;
   DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
// ������ ��������

 Im := TBitmap.Create;
 //Im.TransparentColor:=clwhite;
  if Column.FieldName = 'FL_GOTOVO' then
    with DBGrid1.Canvas do
    begin
      //Brush.Color := clWhite;
      //FillRect(Rect);
      if DBGrid1.DataSource.DataSet['FL_GOTOVO'] = '1' then
      //if Table1.FieldByName('FL_GOTOVO').Value = 1 then
        begin
         TDBGrid(Sender).Canvas.FillRect(Rect);
         ImageList1.Draw(TDBGrid(Sender).Canvas,Rect.Left,Rect.Top, 1)

        end
        //ImageList1.GetBitmap(2, Im)
      else
       //ImageList1.GetBitmap(3, Im);
       begin
        //ImageList1.GetBitmap(3, Im);
        TDBGrid(Sender).Canvas.FillRect(Rect);
        ImageList1.Draw(TDBGrid(Sender).Canvas,Rect.Left,Rect.Top, 0);
       end;
          //Draw(round((Rect.Left + Rect.Right - Im.Width) / 2), Rect.Top, Im);
    end;

  if Column.FieldName = 'FL_SOGLASOVANO' then
    with DBGrid1.Canvas do
    begin
      if DBGrid1.DataSource.DataSet['FL_SOGLASOVANO'] = '1' then

        begin
         TDBGrid(Sender).Canvas.FillRect(Rect);
        ImageList1.Draw(TDBGrid(Sender).Canvas,Rect.Left,Rect.Top, 1)

        end
        //ImageList1.GetBitmap(2, Im)
      else
       // ImageList1.GetBitmap(3, Im);
       begin
        TDBGrid(Sender).Canvas.FillRect(Rect);
        ImageList1.Draw(TDBGrid(Sender).Canvas,Rect.Left,Rect.Top, 0);
       ImageList1.GetBitmap(3, Im);
       end;
          //Draw(round((Rect.Left + Rect.Right - Im.Width) / 2), Rect.Top, Im);
    end;



  if Column.FieldName = 'FL_VIDANO' then
    with DBGrid1.Canvas do
    begin
      if DBGrid1.DataSource.DataSet['FL_VIDANO'] = '1' then

        begin
         TDBGrid(Sender).Canvas.FillRect(Rect);
        ImageList1.Draw(TDBGrid(Sender).Canvas,Rect.Left,Rect.Top, 1)

        end
        //ImageList1.GetBitmap(2, Im)
      else
       // ImageList1.GetBitmap(3, Im);
       begin
        TDBGrid(Sender).Canvas.FillRect(Rect);
        ImageList1.Draw(TDBGrid(Sender).Canvas,Rect.Left,Rect.Top, 0);
       ImageList1.GetBitmap(3, Im);
       end;
          //Draw(round((Rect.Left + Rect.Right - Im.Width) / 2), Rect.Top, Im);
    end;


end;

procedure TForm1.SpeedButton6Click(Sender: TObject);
var sql:string;
    Sq1: string;
    fl1, fl2, fl_v: integer;
    MyBookMark: TBookmark;
begin
if length (edit2.Text)<1 then CheckBox8.Checked:=false;
if length (edit1.Text)<1 then CheckBox7.Checked:=false;
MyBookMark:= Form1.IBQuery1.GetBookmark;
sql:='';
fl1:=1;
fl2:=1;
fl_v:=1;
SQ1:='REM_SHAPKA.ID_SHAPKA, REM_SHAPKA.ID_CLIENT, REM_SHAPKA.DATA_GET, REM_SHAPKA.DATA_KRAY, REM_SHAPKA.DATA_END, REM_SHAPKA.F_STATUS, REM_SHAPKA.F_KORRECT, REM_SHAPKA.ID_MASTER, REM_SHAPKA.ID_MANAGER, REM_SHAPKA.ID_SERVICE,';
SQ1:=SQ1+' REM_SHAPKA.N_1C, REM_SHAPKA.F_CLIENT, REM_SHAPKA.ABOUT, REM_SHAPKA.F_SOGL_C, REM_SHAPKA.F_SOGL_V, REM_SHAPKA.F_SOGL_T, REM_SHAPKA.F_REZ_C, REM_SHAPKA.F_REZ_O, REM_SHAPKA.NOM_KARTA, REM_SHAPKA.FL_GOTOVO, REM_SHAPKA.FL_SOGLASOVANO, REM_SHAPKA.FL_VIDANO,';
SQ1:=SQ1+' REM_SHAPKA.FL_VRABOTA, REM_SHAPKA.HHH, REM_SHAPKA.DAT_SOGL, REM_SHAPKA.DAT_GOTOVO, REM_SHAPKA.DAT_VIDANO, ID, OWNERS.NAME, CONTACT, ABOUT, FIRMS.ID, FIRMS.NAME';

sql:=sql+'select DISTINCT '+SQ1+' from REM_SHAPKA LEFT JOIN OWNERS ON OWNERS.ID=REM_SHAPKA.ID_CLIENT LEFT JOIN FIRMS ON FIRMS.ID=REM_SHAPKA.F_CLIENT ';

if length (edit6.Text)>0 then sql:=sql+'LEFT JOIN REM_USTR ON REM_SHAPKA.ID_SHAPKA=REM_USTR.ID_SHAPKA ';
if length (edit2.Text)>0 then sql:=sql+'LEFT JOIN TODO ON REM_SHAPKA.ID_SHAPKA=TODO.ID_SHAPKA ';

if (checkbox1.Checked=false)and(checkbox2.Checked=false)and(checkbox3.Checked=false)and(checkbox4.Checked=false)and(checkbox5.Checked=false)and(checkbox6.Checked=false)
    and(checkbox7.Checked=false)and(checkbox8.Checked=false)and (checkbox9.Checked=false)and (checkbox10.Checked=false)and (length(Edit3.Text)=0)
    and (length(Edit4.Text)=0)and (length(Edit5.Text)=0)and (length(Edit6.Text)=0)then
     begin
      fl1:=2;
     end
     else
     begin
     sql:=sql+'WHERE ';
     end;
if (checkbox1.Checked=true)and(checkbox6.Checked=false) then begin
                                   if fl2=2 then sql:=sql+'AND ';
                                   sql:=sql+'REM_SHAPKA.FL_VIDANO=:FL_VIDANO ';
                                   fl2:=2;
                                 end;

if (checkbox2.Checked=true) then begin
                                   if fl2=2 then sql:=sql+'AND ';
                                   sql:=sql+'REM_SHAPKA.DATA_KRAY<=:DATA_NOW ';
                                   fl_v:=2; // ���������� �� �������� ������
                                   fl2:=2;
                                 end;
if (checkbox3.Checked=true)or(checkbox4.Checked=true) then begin
                                   if fl2=2 then sql:=sql+'AND ';
                                   sql:=sql+'REM_SHAPKA.FL_SOGLASOVANO=:FL_SOGLASOVANO ';
                                   fl2:=2;
                                 end;
if (checkbox5.Checked=true) then begin
                                   if fl2=2 then sql:=sql+'AND ';
                                   sql:=sql+'REM_SHAPKA.FL_GOTOVO=:FL_GOTOVO ';
                                   fl2:=2;
                                 end;
if (checkbox6.Checked=true)or(fl_v=2) then begin
                                   if fl2=2 then sql:=sql+'AND ';
                                   sql:=sql+'REM_SHAPKA.FL_VIDANO=:FL_VIDANO ';
                                   fl2:=2;
                                 end;

if (checkbox7.Checked=true) then begin
                                   if fl2=2 then sql:=sql+'AND ';
                                   sql:=sql+'upper(OWNERS.NAME) like :NAME ';
                                   fl2:=2;
                                 end;

if (checkbox8.Checked=true) then begin
                                   if fl2=2 then sql:=sql+'AND ';
                                  // sql:=sql+'(REM_SHAPKA.ID_MASTER=:ID_MASTER AND REM_SHAPKA.ID_SERVICE=:ID_SERVICE) ';
                                   sql:=sql+'(TODO.ID_MASTER=:ID_MASTER AND TODO.ID_SERVICE=:ID_SERVICE) ';
                                   fl2:=2;
                                 end;

if (checkbox9.Checked=true) then begin
                                   if fl2=2 then sql:=sql+'AND ';
                                   sql:=sql+'REM_SHAPKA.DATA_GET>=:DATA_GET1 ';
                                   fl2:=2;
                                 end;
if (checkbox10.Checked=true) then begin
                                   if fl2=2 then sql:=sql+'AND ';
                                   sql:=sql+'REM_SHAPKA.DATA_GET<=:DATA_GET2 ';
                                   fl2:=2;
                                 end;
if length(Edit4.Text)>0 then begin
                                   if fl2=2 then sql:=sql+'AND ';
                                   sql:=sql+'REM_SHAPKA.NOM_KARTA=:NOM_KARTA ';
                                   fl2:=2;
                        end;
if length(Edit3.Text)>0 then begin
                                   if fl2=2 then sql:=sql+'AND ';
                                   sql:=sql+'REM_SHAPKA.ID_SHAPKA=:ID_SHAPKA ';
                                   fl2:=2;
                        end;
if length(Edit5.Text)>0 then begin
                                   if fl2=2 then sql:=sql+'AND ';
                                   sql:=sql+'REM_SHAPKA.N_1C=:N_1C ';
                                   fl2:=2;
                        end;
if length (edit6.Text)>0 then begin
                                   if fl2=2 then sql:=sql+'AND ';
                                   sql:=sql+'REM_USTR.USTR_CODE like :USTR_CODE ';
                                   fl2:=2;
                        end;

sql:=sql+'ORDER BY REM_SHAPKA.ID_SHAPKA DESC';
//showmessage (sql);
IBQuery1.SQL.Clear;
IBQuery1.SQL.Append(sql);


IBQuery1.Params.ParseSQL(IBQuery1.SQL.text, true);

// ��������� ������ � �����������
if (checkbox1.Checked=true)and(checkbox6.Checked=false) then begin
                                   IBQuery1.ParamByName('FL_VIDANO').AsInteger:=0;
                                 end;

if (checkbox2.Checked=true) then begin
                                   IBQuery1.ParamByName('DATA_NOW').AsDate:=now();
                                 end;
if (checkbox3.Checked=true)or(checkbox4.Checked=true) then begin
                                   if checkbox4.Checked=true then
                                   IBQuery1.ParamByName('FL_SOGLASOVANO').AsInteger:=0
                                   else
                                   IBQuery1.ParamByName('FL_SOGLASOVANO').AsInteger:=1;
                                 end;
if (checkbox5.Checked=true) then begin
                                    IBQuery1.ParamByName('FL_GOTOVO').AsInteger:=1;
                                 end;
if (checkbox6.Checked=true)or(fl_v=2) then begin
                                    IBQuery1.ParamByName('FL_VIDANO').AsInteger:=0;
                                 end;

if (checkbox7.Checked=true) then begin
                                   IBQuery1.ParamByName('NAME').AsString:='%'+AnsiUpperCase(Edit1.Text)+'%';
                                 end;

if (checkbox8.Checked=true) then begin
                                   IBQuery1.ParamByName('ID_MASTER').AsInteger:=strtoint(label3.Caption);
                                   IBQuery1.ParamByName('ID_SERVICE').AsInteger:=strtoint(label4.Caption);
                                 end;

if (checkbox9.Checked=true) then begin
                                   IBQuery1.ParamByName('DATA_GET1').AsDate:=DateTimePicker1.Date;
                                 end;
if (checkbox10.Checked=true) then begin
                                   IBQuery1.ParamByName('DATA_GET2').AsDate:=DateTimePicker2.Date;
                                 end;

if (length(Edit3.Text)>0) then begin
                                   IBQuery1.ParamByName('ID_SHAPKA').AsInteger:=strtoint(Edit3.Text);
                                 end;
if (length(Edit4.Text)>0) then begin
                                   IBQuery1.ParamByName('NOM_KARTA').AsInteger:=strtoint(Edit4.Text);
                                 end;
if (length(Edit5.Text)>0) then begin
                                   IBQuery1.ParamByName('N_1C').AsInteger:=strtoint(Edit5.Text);
                                 end;
if (length(Edit6.Text)>0) then begin
                                   IBQuery1.ParamByName('USTR_CODE').AsString:=Edit6.Text;
                                 end;
 Form1.IBQuery1.DisableControls;
IBQuery1.Close;
IBQuery1.Open;
  if IBQuery1.Eof then begin
  Form1.IBQuery1.EnableControls;
                       end
                       else
                       begin
  Form1.IBQuery1.GotoBookmark(MyBookMark);
   Form1.IBQuery1.EnableControls;
   Form1.IBQuery1.FreeBookMark(MyBookMark);
                       end;

end;

procedure TForm1.Edit2DblClick(Sender: TObject);
begin
if unit1.Form1.Label2.Caption<>'������' then
begin
 Form10.Edit1.Text:=Edit2.Text;
 Form10.SpeedButton1.Click;
 Form10.IBQuery1.Close;
 Form10.IBQuery1.Open;
 Form10.IBQuery1.First;
 form10.Show;
end; 
end;

procedure TForm1.PopupMenu1Popup(Sender: TObject);
begin
if IBQuery1.Eof then begin
                        N1.Visible:=false;
                        N2.Visible:=false;
                     end else
                     begin
                        N1.Visible:=true;
                        N2.Visible:=true;
                     end;
end;

procedure TForm1.CheckBox3Click(Sender: TObject);
begin
if checkbox3.Checked=true then checkbox4.Checked:=false
                          else checkbox4.Checked:=true;
end;

procedure TForm1.CheckBox4Click(Sender: TObject);
begin
if checkbox4.Checked=true then checkbox3.Checked:=false
                          else checkbox3.Checked:=true;
end;

procedure TForm1.Edit2Change(Sender: TObject);
begin
if length(Edit2.Text)<1 then checkbox8.Checked:=false;
end;

procedure TForm1.Edit1Change(Sender: TObject);
begin
if length(Edit1.Text)<1 then checkbox7.Checked:=false
                        else checkbox7.Checked:=true;  
end;

procedure TForm1.CheckBox7Click(Sender: TObject);
begin
if checkbox7.Checked=false then Edit1.Text:='';
end;

procedure TForm1.CheckBox8Click(Sender: TObject);
begin
if unit1.Form1.Label2.Caption='������' then
                      begin
                       checkbox8.Checked:=true;
                      end else
if checkbox8.Checked=false then begin
                                  Edit2.Text:='';
                                  label3.Caption:='';
                                  label4.Caption:=''; 
                                end;
end;

procedure TForm1.SpeedButton7Click(Sender: TObject);
begin
 Form19.Caption:='����� �� ������ �����';
 Form19.Label1.Caption:='� �����:';
 Form19.Edit4.Left:=Form19.Label1.Left+form19.Label1.Width+5;
 Form19.Label2.Caption:='2'; // ����� �� ����� �������
 Edit3.Text:='';
 Edit4.Text:='';
 Edit5.Text:='';
 Edit6.Text:='';
 Form19.ShowModal;
end;

procedure TForm1.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
case Key of
  #8,'0'..'9' :  ; // ����� � <Back Space>


        else   // ��������� ������� ���������
               key := Chr(0);
    end;
end;

procedure TForm1.Edit4KeyPress(Sender: TObject; var Key: Char);
begin
case Key of
  #8,'0'..'9' :  ; // ����� � <Back Space>


        else   // ��������� ������� ���������
               key := Chr(0);
    end;
end;

procedure TForm1.Edit5KeyPress(Sender: TObject; var Key: Char);
begin
case Key of
  #8,'0'..'9' :  ; // ����� � <Back Space>


        else   // ��������� ������� ���������
               key := Chr(0);
    end;
end;

procedure TForm1.SpeedButton8Click(Sender: TObject);
begin
 Form19.Caption:='����� �� ������ ������';
 Form19.Label1.Caption:='� ������:';
 Form19.Edit4.Left:=Form19.Label1.Left+form19.Label1.Width+5;
 Form19.Label2.Caption:='1'; // ����� �� ����� �������
 Edit3.Text:='';
 Edit4.Text:='';
 Edit5.Text:='';
 Edit6.Text:='';
 Form19.ShowModal;
end;

procedure TForm1.SpeedButton9Click(Sender: TObject);
begin
 Form19.Caption:='����� �� ������ � 1�';
 Form19.Label1.Caption:='� � 1�:';
 Form19.Edit4.Left:=Form19.Label1.Left+form19.Label1.Width+5;
 Form19.Label2.Caption:='3'; // ����� �� ����� �������
 Edit3.Text:='';
 Edit4.Text:='';
 Edit5.Text:='';
 Edit6.Text:='';
 Form19.ShowModal;
end;

procedure TForm1.SpeedButton10Click(Sender: TObject);
begin
 Form19.Caption:='����� �� ������ ����������';
 Form19.Label1.Caption:='� ����������:';
 Form19.Edit4.Left:=Form19.Label1.Left+form19.Label1.Width+5;
 Form19.Label2.Caption:='4'; // ����� �� ����� �������
 Edit3.Text:='';
 Edit4.Text:='';
 Edit5.Text:='';
 Edit6.Text:='';
 Form19.ShowModal;
end;

procedure TForm1.SpeedButton11Click(Sender: TObject);
begin
 form20.IBQuery1.Close;
 Form20.IBQuery1.Open;

 Form20.DateTimePicker1.DateTime:=DateTimePicker1.DateTime;
 Form20.DateTimePicker2.DateTime:=DateTimePicker2.DateTime;
 Form20.CheckBox9.Checked:=CheckBox9.Checked;
 Form20.CheckBox10.Checked:=CheckBox10.Checked;
  Form20.CheckBox7.Checked:=CheckBox7.Checked;
 Form20.CheckBox8.Checked:=CheckBox8.Checked;
  Form20.CheckBox1.Checked:=CheckBox1.Checked;
 Form20.CheckBox2.Checked:=CheckBox2.Checked;
 Form20.CheckBox3.Checked:=CheckBox3.Checked;
 Form20.CheckBox4.Checked:=CheckBox4.Checked;
 Form20.CheckBox5.Checked:=CheckBox5.Checked;
 Form20.CheckBox6.Checked:=CheckBox6.Checked;
  Form20.Edit1.Text:=Edit1.Text;
  Form20.Edit2.Text:=Edit2.Text;
  
 Form20.CurvyEdit1.Text:='';
 Form20.CurvyEdit2.Text:='';
 Form20.CurvyMemo1.Lines.Clear;
 SpeedButton6.Click;
 Form20.SpeedButton3.Click;
 Form20.SpeedButton5.Click;
 form20.show;
end;

procedure TForm1.N12Click(Sender: TObject);
begin
 form1.Close;
end;

procedure TForm1.N10Click(Sender: TObject);
begin
 form21.showmodal;
end;

procedure TForm1.N20Click(Sender: TObject);
begin
 Form22.Show;
end;

procedure TForm1.N11Click(Sender: TObject);
begin
 form23.showmodal;
end;

end.
