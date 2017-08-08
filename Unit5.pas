unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, unit2, DB, IBCustomDataSet, IBQuery, Grids, DBGrids, ComCtrls,
  StdCtrls, Buttons, ExtCtrls, DateUtils, Menus, frxCross, frxClass, AdvObj, BaseGrid, AdvGrid,
  AdvMemo, AdvMetroButton, W7Classes, W7Buttons, AdvMenus, AdvAppStyler,
  CurvyControls, AdvGlassButton, ImgList, frxDesgn, frxDBSet, IBTable,
  frxBarcode, frxChBox;

type
  TForm5 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    SpeedButton1: TSpeedButton;
    Label2: TLabel;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker3: TDateTimePicker;
    Label3: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox4: TCheckBox;
    Label8: TLabel;
    Label9: TLabel;
    StatusBar1: TStatusBar;
    Label10: TLabel;
    SpeedButton3: TSpeedButton;
    IBQuery1: TIBQuery;
    SpeedButton4: TSpeedButton;
    Label11: TLabel;
    CheckBox3: TCheckBox;
    SpeedButton5: TSpeedButton;
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
    Label12: TLabel;
    Label13: TLabel;
    Panel2: TPanel;
    GroupBox1: TGroupBox;
    Memo1: TMemo;
    GroupBox2: TGroupBox;
    SpeedButton2: TSpeedButton;
    ListBox1: TListBox;
    DateTimePicker2: TDateTimePicker;
    Label14: TLabel;
    GroupBox3: TGroupBox;
    Memo2: TMemo;
    Label15: TLabel;
    IBQuery4: TIBQuery;
    IBQuery5: TIBQuery;
    IBQuery5ID: TIntegerField;
    IBQuery5NAME: TIBStringField;
    IBQuery6: TIBQuery;
    IBQuery6ID_SHAPKA: TIntegerField;
    IBQuery6ID_CLIENT: TIntegerField;
    IBQuery6DATA_GET: TDateTimeField;
    IBQuery6DATA_KRAY: TDateTimeField;
    IBQuery6DATA_END: TDateTimeField;
    IBQuery6F_STATUS: TIntegerField;
    IBQuery6F_KORRECT: TIntegerField;
    IBQuery6ID_MASTER: TIntegerField;
    IBQuery6ID_MANAGER: TIntegerField;
    IBQuery6ID_SERVICE: TIntegerField;
    IBQuery6N_1C: TIBStringField;
    IBQuery6F_CLIENT: TIntegerField;
    IBQuery6ABOUT: TIBStringField;
    IBQuery6F_SOGL_C: TIntegerField;
    IBQuery6F_SOGL_V: TIntegerField;
    IBQuery6F_SOGL_T: TIntegerField;
    IBQuery6F_REZ_C: TIntegerField;
    IBQuery6F_REZ_O: TIntegerField;
    IBQuery6NOM_KARTA: TIBStringField;
    IBQuery7: TIBQuery;
    SpeedButton6: TSpeedButton;
    IBQuery8: TIBQuery;
    DataSource1: TDataSource;
    IBQuery9: TIBQuery;
    IBQuery9ID: TIntegerField;
    IBQuery9USTR_CODE: TIBStringField;
    IBQuery9USTR_NAME: TIBStringField;
    IBQuery9USTR_TIPE: TIBStringField;
    IBQuery9SERIAL: TIBStringField;
    IBQuery9ABOUT: TIBStringField;
    IBQuery9FL_GOTOVO: TIntegerField;
    IBQuery9FL_SOGLASOVANO: TIntegerField;
    IBQuery9FL_VIDANO: TIntegerField;
    IBQuery9ID_SHAPKA: TIntegerField;
    IBQuery10: TIBQuery;
    IBQuery10ID_ITEM: TIntegerField;
    IBQuery10ID_SHAPKA: TIntegerField;
    IBQuery10TODO_NAME: TIBStringField;
    IBQuery10TODO_ID: TIntegerField;
    IBQuery10TODO_COST: TFloatField;
    IBQuery11: TIBQuery;
    IBQuery11ID: TIntegerField;
    IBQuery11USTR_CODE: TIBStringField;
    IBQuery11USTR_NAME: TIBStringField;
    IBQuery11USTR_TIPE: TIBStringField;
    IBQuery11SERIAL: TIBStringField;
    IBQuery11ABOUT: TIBStringField;
    IBQuery11FL_GOTOVO: TIntegerField;
    IBQuery11FL_SOGLASOVANO: TIntegerField;
    IBQuery11FL_VIDANO: TIntegerField;
    IBQuery11ID_SHAPKA: TIntegerField;
    AdvStringGrid1: TAdvStringGrid;
    IBQuery10KOL_VO: TIntegerField;
    IBQuery10TOTAL_COST: TFloatField;
    IBQuery12: TIBQuery;
    IBQuery13: TIBQuery;
    AdvMenuStyler1: TAdvMenuStyler;
    AdvPopupMenu1: TAdvPopupMenu;
    N1: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    ComboBox1: TCurvyCombo;
    Edit1: TCurvyEdit;
    ComboBox2: TCurvyCombo;
    Edit3: TCurvyEdit;
    Edit4: TCurvyEdit;
    Edit2: TCurvyEdit;
    Timer1: TTimer;
    N2: TMenuItem;
    IBQuery14: TIBQuery;
    IBQuery14ID_ITEM: TIntegerField;
    IBQuery14ID_SHAPKA: TIntegerField;
    IBQuery14TODO_NAME: TIBStringField;
    IBQuery14TODO_ID: TIntegerField;
    IBQuery14TODO_COST: TFloatField;
    IBQuery14KOL_VO: TIntegerField;
    IBQuery14TOTAL_COST: TFloatField;
    N3: TMenuItem;
    IBQuery15: TIBQuery;
    IBQuery6FL_GOTOVO: TIntegerField;
    IBQuery6FL_SOGLASOVANO: TIntegerField;
    IBQuery6FL_VIDANO: TIntegerField;
    IBQuery6FL_VRABOTA: TIntegerField;
    IBQuery16: TIBQuery;
    SpeedButton7: TSpeedButton;
    IBQuery17: TIBQuery;
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
    IBQuery18: TIBQuery;
    IBQuery19: TIBQuery;
    IBQuery20: TIBQuery;
    Label4: TLabel;
    Label5: TLabel;
    Label16: TLabel;
    Label17: TLabel;
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
    IBQuery10FL_GOTOVO: TIntegerField;
    IBQuery10FL_SOGLASOVANO: TIntegerField;
    N4: TMenuItem;
    N5: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    N11: TMenuItem;
    N12: TMenuItem;
    N13: TMenuItem;
    IBQuery22: TIBQuery;
    IBQuery23: TIBQuery;
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
    ImageList1: TImageList;
    SpeedButton8: TSpeedButton;
    frxReport1: TfrxReport;
    frxCrossObject1: TfrxCrossObject;
    frxDesigner1: TfrxDesigner;
    DataSource2: TDataSource;
    frxDBDataset1: TfrxDBDataset;
    frxDBDataset2: TfrxDBDataset;
    IBTable1: TIBTable;
    IBTable2: TIBTable;
    IBQuery25: TIBQuery;
    Label18: TLabel;
    IBQuery26: TIBQuery;
    IBQuery6HHH: TIBStringField;
    frxBarCodeObject1: TfrxBarCodeObject;
    IBQuery27: TIBQuery;
    IBQuery27NAME: TIBStringField;
    IBQuery27ADRESS: TIBStringField;
    IBQuery27PHONE: TIBStringField;
    IBQuery27SITE: TIBStringField;
    IBQuery27EMAIL: TIBStringField;
    IBQuery27INN: TIBStringField;
    IBQuery27KPP: TIBStringField;
    IBQuery27RS: TIBStringField;
    IBQuery27BIK: TIBStringField;
    IBQuery27KS: TIBStringField;
    IBQuery27BANK: TIBStringField;
    IBQuery27OTHER: TIBStringField;
    IBQuery27MAINFIRM: TIBStringField;
    IBQuery28: TIBQuery;
    IBQuery28ID_ITEM: TIntegerField;
    IBQuery28ID_SHAPKA: TIntegerField;
    IBQuery28TODO_NAME: TIBStringField;
    IBQuery28TODO_ID: TIntegerField;
    IBQuery28TODO_COST: TFloatField;
    IBQuery28KOL_VO: TIntegerField;
    IBQuery28TOTAL_COST: TFloatField;
    IBQuery28FL_GOTOVO: TIntegerField;
    IBQuery28FL_SOGLASOVANO: TIntegerField;
    frxCheckBoxObject1: TfrxCheckBoxObject;
    frxReport2: TfrxReport;
    N14: TMenuItem;
    N15: TMenuItem;
    frxReport3: TfrxReport;
    N16: TMenuItem;
    frxReport4: TfrxReport;
    N17: TMenuItem;
    frxReport5: TfrxReport;
    N18: TMenuItem;
    IBQuery9DAT_SOGL: TDateTimeField;
    IBQuery9DAT_GOTOVO: TDateTimeField;
    IBQuery11DAT_SOGL: TDateTimeField;
    IBQuery11DAT_GOTOVO: TDateTimeField;
    IBQuery16DAT_SOGL: TDateTimeField;
    IBQuery16DAT_GOTOVO: TDateTimeField;
    IBQuery21HHH: TIBStringField;
    IBQuery21DAT_SOGL: TDateTimeField;
    IBQuery21DAT_GOTOVO: TDateTimeField;
    IBQuery21DAT_VIDANO: TDateTimeField;
    IBQuery24DAT_SOGL: TDateTimeField;
    IBQuery24DAT_GOTOVO: TDateTimeField;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    IBQuery16DAT_VIDANO: TDateTimeField;
    IBQuery9DAT_VIDANO: TDateTimeField;
    IBQuery24DAT_VIDANO: TDateTimeField;
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
    IBQuery11DAT_VIDANO: TDateTimeField;
    IBQuery14FL_GOTOVO: TIntegerField;
    IBQuery14FL_SOGLASOVANO: TIntegerField;
    CEdit1: TCurvyEdit;
    CEdit2: TCurvyEdit;
    CEdit3: TCurvyEdit;
    Label22: TLabel;
    Label23: TLabel;
    AdvFormStyler1: TAdvFormStyler;
    IBQuery31: TIBQuery;
    IBQuery31ID: TIntegerField;
    IBQuery31NAME: TIBStringField;
    N19: TMenuItem;
    IBQuery14ID_MASTER: TIntegerField;
    IBQuery14ID_SERVICE: TIntegerField;
    IBQuery14MASTER_NAME: TIBStringField;
    IBQuery10ID_MASTER: TIntegerField;
    IBQuery10ID_SERVICE: TIntegerField;
    IBQuery10MASTER_NAME: TIBStringField;
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure ComboBox21Select(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure PopupMenu1Popup(Sender: TObject);
    procedure StringGrid1ContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure AdvStringGrid1ContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure N3Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure W7ToolButton1Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure AdvPopupMenu1Popup(Sender: TObject);
    procedure ComboBox2Select(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure N10Click(Sender: TObject);
    procedure N9Click(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure N12Click(Sender: TObject);
    procedure N13Click(Sender: TObject);
    procedure AdvStringGrid1DrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure AdvStringGrid1GetDisplText(Sender: TObject; ACol,
      ARow: Integer; var Value: String);
    procedure SpeedButton8Click(Sender: TObject);
    procedure frxReport1BeforePrint(Sender: TfrxReportComponent);
    procedure FormCreate(Sender: TObject);
    procedure N15Click(Sender: TObject);
    procedure N16Click(Sender: TObject);
    procedure N17Click(Sender: TObject);
    procedure N18Click(Sender: TObject);
    procedure AdvStringGrid1DblClick(Sender: TObject);
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton4Click(Sender: TObject);
//    procedure frxReport1GetValue(const VarName: String; var Value: string);

  private
    { Private declarations }
        procedure Decoding(F:string; fr: integer; fk1:string; var newstr:string);
        function RandomStr(StrLen:Integer):string;
  public
    { Public declarations }
  end;

var
  Form5: TForm5;
  r: string;
  idmanager: array[1..100] of integer;
  id_idmanager:integer;
  ID_USTR_SELECT, l1,l2,l3:integer;
implementation

uses Unit7, unit1, Unit9, managers, newitem, Unit17;

{$R *.dfm}

function TForm5.RandomStr(StrLen:Integer):string;

// ������� ��������, ������������ � ������

const StrTable:string ='_ABCDEFGHIJKLMNOPQRSTUVWXYZ'+
                       'abcdefghijklmnopqrstuvwxyz'+
                       '0123456789';

var N,K,X,Y:Integer;
begin
// ��������� ������������ ����� ������
if (StrLen > Length(StrTable)) then K:=Length(StrTable)-1
else K:=StrLen;
SetLength(Result,K); // ������������� ����� �������� ������
Y:=Length(StrTable); // ����� ������� ��� ����������� �����
N:=0; // ��������� �������� �����
while N < K do
begin // ���� ��� �������� K ��������
X:=Random(Y)+1; // ���� ��������� ��������� ������
// ��������� ����������� ����� ������� � �������� ������
if (Pos(StrTable[X],Result)=0) then
begin
Inc(N); // ������ �� ������
Result[N]:=StrTable[X]; // ������ ��� ���������
end;
end;
end;

procedure TForm5.decoding(F:string;fr: integer; fk1:string; var newstr:string);
 var
    s: string;
   i, j:integer;
   m,key:byte;
   k:char;
   kk, kk1, pp1, pp2, key2, key1:string;
   r: string;   // ���� �������� ������������ ��� ��������� ���� �����
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

procedure TForm5.SpeedButton1Click(Sender: TObject);
begin
 if unit1.Form1.Label2.Caption='������' then begin
 end
 else
 begin
  Form7.Edit1.Text:=Edit1.Text;
  form7.SpeedButton1.Click;
  Form7.Showmodal;
 end;
end;

procedure TForm5.FormActivate(Sender: TObject);
begin
Decoding(unit1.ROLE_USER,unit1.ID_USER, unit1.NAME_USER, r);
 if r='������' then
   begin
    Edit1.Enabled:=false;
    SpeedButton1.Enabled:=false;
    DateTimePicker1.Enabled:=false;
    DateTimePicker3.Enabled:=false;
    CheckBox1.Enabled:=false;
    CheckBox2.Enabled:=false;
    CheckBox3.Enabled:=false;
    CheckBox4.Enabled:=false;
    ComboBox1.Enabled:=false;
    ComboBox2.Enabled:=false;
    Edit3.Enabled:=false;
    Edit2.Enabled:=false;
    Edit4.Enabled:=false;
    SpeedButton3.Enabled:=false;
    l1:=0; // ������������

    l2:=0; // ������

    l3:=1; // ������

    N7.Visible:=false;  // �����������
    N9.Visible:=true;   // ���������
    N10.Visible:=false; // �� ���������
    N11.Visible:=true;  // �� ���������
    N12.Visible:=false; // ������
    N13.Visible:=false; // �� ������
    N8.Visible:=false;  // ��������

    N7.Enabled:=false;  // �����������
    N9.Enabled:=true;   // ���������
    N10.Enabled:=false; // �� ���������
    N11.Enabled:=true;  // �� ���������
    N12.Enabled:=false; // ������
    N13.Enabled:=false; // �� ������
    N8.Enabled:=false;  // ��������

   end;
 if  r='��������' then
 begin
    Edit1.Enabled:=true;
    SpeedButton1.Enabled:=true;

    ComboBox2.Enabled:=false;


    DateTimePicker1.Enabled:=true;
    DateTimePicker3.Enabled:=true;
    CheckBox1.Enabled:=true;
    CheckBox2.Enabled:=true;
    CheckBox3.Enabled:=true;
    CheckBox4.Enabled:=true;
    ComboBox1.Enabled:=true;

    Edit3.Enabled:=true;
    Edit2.Enabled:=true;
    Edit4.Enabled:=true;



    Edit3.Enabled:=true;
    SpeedButton3.Enabled:=true;
    l1:=1; // ������������

    l2:=1; // ������

    if (combobox2.Text=Edit3.Text)and(unit1.FAMILY_USER+' '+unit1.NAME_USER=combobox2.Text) then
    begin
    l3:=1; // ������
    end else
    l3:=0; // ������

    N7.Visible:=true;  // �����������
    if label12.Caption='2' then
          begin
           N9.Visible:=true;   // ���������
           N11.Visible:=true;  // �� ���������
           N9.Enabled:=true;   // ���������
           N11.Enabled:=true;  // �� ���������
          end
          else
          begin
           N9.Visible:=false;   // ���������
           N11.Visible:=true;  // �� ���������
           N9.Enabled:=true;   // ���������
           N11.Enabled:=true;  // �� ���������

          end;
    N10.Visible:=true; // �� �����������
    N12.Visible:=true; // ������
    N13.Visible:=true; // �� ������
    N8.Visible:=true;  // ��������

    N7.Enabled:=true;  // �����������
    N10.Enabled:=true; // �� �����������
    N12.Enabled:=true; // ������
    N13.Enabled:=true; // �� ������
    N8.Enabled:=true;  // ��������


 end;

 if  r='�������������' then
 begin
    Edit1.Enabled:=true;
    SpeedButton1.Enabled:=true;

    ComboBox2.Enabled:=true;
    DateTimePicker1.Enabled:=true;
    DateTimePicker3.Enabled:=true;
    CheckBox1.Enabled:=true;
    CheckBox2.Enabled:=true;
    CheckBox3.Enabled:=true;
    CheckBox4.Enabled:=true;
    ComboBox1.Enabled:=true;

    Edit3.Enabled:=true;
    Edit2.Enabled:=true;
    Edit4.Enabled:=true;


    Edit3.Enabled:=true;
    SpeedButton3.Enabled:=true;
    l1:=1; // ������������

    l2:=1; // ������

    l3:=1; // ������
       N7.Visible:=true;  // �����������

           N9.Visible:=true;   // ���������
           N11.Visible:=true;  // �� ���������
           N9.Enabled:=true;   // ���������
           N11.Enabled:=true;  // �� ���������

    N10.Visible:=true; // �� �����������
    N12.Visible:=true; // ������
    N13.Visible:=true; // �� ������
    N8.Visible:=true;  // ��������

    N7.Enabled:=true;  // �����������
    N10.Enabled:=true; // �� �����������
    N12.Enabled:=true; // ������
    N13.Enabled:=true; // �� ������
    N8.Enabled:=true;  // ��������

 end;

end;

procedure TForm5.SpeedButton2Click(Sender: TObject);
begin
ListBox1.Clear;
if checkBox1.Checked then ListBox1.Items.Append('����������� ����');
if checkBox2.Checked then ListBox1.Items.Append('����������� ����� �����');
if checkBox3.Checked then ListBox1.Items.Append('����������� ����� ����������');
if checkBox4.Checked then ListBox1.Items.Append('������ �� ����������');
end;

procedure TForm5.SpeedButton5Click(Sender: TObject);
var r1:string;
    i: integer;
begin
 ComboBox2.items.Clear;
 IBQuery2.SQL.Clear;
 IBQuery2.SQL.Append('select * from USERS ORDER BY FAMILY');
 IBQuery2.Close;
 IBQuery2.Open;
 IBQuery2.First;
 //ComboBox2.Text:=IBQuery2FAMILY.AsString+' '+IBQuery2NAME.AsString;
 //id_idmanager:=IBQuery2ID.AsInteger;
 i:=1;
 WHile not IBQuery2.Eof do
   begin
   Decoding(IBQuery2ROLE.AsString,IBQuery2ID.AsInteger, IBQuery2NAME.AsString, r1);
   if (r1='��������')or(r1='�������������') then
      begin
       ComboBox2.Items.Append(IBQuery2FAMILY.AsString+' '+IBQuery2NAME.AsString);
       idmanager[i]:=IBQuery2ID.AsInteger; // ������ ��������������� ������� ����������
       i:=i+1;
        SpeedButton3.Enabled:=true;
        SpeedButton1.Enabled:=True;
        Edit3.ReadOnly:=false;
        Edit1.ReadOnly:=false;
        ComboBox2.Enabled:=true;

       end
       else
       begin
        SpeedButton3.Enabled:=true;
        SpeedButton1.Enabled:=false;
        Edit3.ReadOnly:=false;
        Edit1.ReadOnly:=true;
        ComboBox2.Enabled:=false;
       end;
   IBQuery2.Next;
   end;



   comboBox1.Items.Clear;
//   comboBox1.Clear;
   IBQuery3.SQL.Clear;
   IBQuery3.SQL.Append('select * from FIRMS ORDER BY NAME');
   IBQuery3.Close;
   IBQuery3.Open;
   IBQuery3.First;
   ComboBox1.text:=IBQuery3NAME.AsString;
   while not IBQuery3.Eof do
    begin
     ComboBox1.Items.Append(IBQuery3NAME.AsString);
    IBQuery3.Next;
    end;

  // ������������ ����
  DateTimePicker1.DateTime:=now();
  DateTimePicker3.DateTime:=IncDAY(DateTimePicker1.DateTime, 7);
  DateTimePicker2.DateTime:=now();
  DateTimePicker2.Checked:=false;
end;

procedure TForm5.ComboBox21Select(Sender: TObject);
begin

id_idmanager:= idmanager[ComboBox2.ItemIndex+1];

end;

procedure TForm5.SpeedButton3Click(Sender: TObject);
begin
if (strtoint (label8.Caption)<>0) and(strtoint (label9.Caption)<>0)and(strtoint (label12.Caption)<>0) then
 begin
   form12.Label1.Caption:='1'; // ���������� ����� ������
   form12.Edit1.text:='';
   form12.label4.Caption:='';
   form12.label11.Caption:='';
   form12.label12.Caption:='';
       // ���� ID ���������� �����
       IBQuery5.SQL.Clear;
       IBQuery5.SQL.Append('select * from FIRMS WHERE NAME=:NAME');
       IBQuery5.ParamByName('NAME').AsString:=ComboBox1.text;
       IBQuery5.Close;
       IBQuery5.Open;
       IBQuery5.First;

   // ��������� �����, ���� �� �� ��������
   if label15.Caption='0' then
     begin
       // ���������� � �����




       IBQuery4.SQL.Clear;
       IBQuery4.SQL.Append('INSERT INTO REM_SHAPKA (ABOUT, DATA_END, DATA_GET, DATA_KRAY, F_CLIENT, F_KORRECT, ');
       IBQuery4.SQL.Append('F_REZ_C, F_REZ_O, F_SOGL_C, F_SOGL_V, F_SOGL_T, F_STATUS, ID_CLIENT, ID_MANAGER, ID_MASTER, ');
       IBQuery4.SQL.Append('ID_SERVICE, N_1C, NOM_KARTA, HHH) VALUES (:ABOUT, :DATA_END, :DATA_GET, :DATA_KRAY, :F_CLIENT, :F_KORRECT, ');
       IBQuery4.SQL.Append(':F_REZ_C, :F_REZ_O, :F_SOGL_C, :F_SOGL_V, :F_SOGL_T, :F_STATUS, :ID_CLIENT, :ID_MANAGER, :ID_MASTER, :ID_SERVICE, :N_1C, :NOM_KARTA, :HHH)');
       IBQuery4.ParamByName('ABOUT').AsString:=memo2.Text;
       if DatetimePicker2.Checked=true then  IBQuery4.ParamByName('DATA_END').AsDate:=Trunc(DateTimePicker2.Date)
                             else IBQuery4.ParamByName('DATA_END').Value:=NUlL;                          // ���� ������ �������
       IBQuery4.ParamByName('DATA_GET').AsDate:=Trunc(DateTimePicker1.Date);  // �������� � ������
       IBQuery4.ParamByName('DATA_KRAY').AsDate:=Trunc(DateTimePicker3.Date); // �������� ��������� �������

       IBQuery4.ParamByName('F_CLIENT').AsInteger:=IBQuery5ID.AsInteger; // ID ��������� �����
       IBQuery4.ParamByName('F_KORRECT').AsInteger:=0;


      if checkBox1.Checked then IBQuery4.ParamByName('F_SOGL_C').AsInteger:=1
                           else IBQuery4.ParamByName('F_SOGL_C').AsInteger:=0;
      if checkBox2.Checked then IBQuery4.ParamByName('F_SOGL_V').AsInteger:=1
                           else IBQuery4.ParamByName('F_SOGL_V').AsInteger:=0;
      if checkBox3.Checked then IBQuery4.ParamByName('F_SOGL_T').AsInteger:=1
                           else IBQuery4.ParamByName('F_SOGL_T').AsInteger:=0;
      if checkBox4.Checked then IBQuery4.ParamByName('F_REZ_C').AsInteger:=1
                           else IBQuery4.ParamByName('F_REZ_C').AsInteger:=0;
       IBQuery4.ParamByName('F_REZ_O').AsInteger:=0;
       IBQuery4.ParamByName('F_STATUS').AsInteger:=1; // ������ �������
       IBQuery4.ParamByName('ID_CLIENT').AsInteger:=strtoint (label8.Caption);
       IBQuery4.ParamByName('ID_MANAGER').AsInteger:=id_idmanager;

       if label12.Caption='1' then begin
                                   IBQuery4.ParamByName('ID_MASTER').AsInteger:=strtoint(label9.Caption);
                                   IBQuery4.ParamByName('ID_SERVICE').AsInteger:=0;
                                 end else begin
                                            IBQuery4.ParamByName('ID_MASTER').AsInteger:=0;
                                            IBQuery4.ParamByName('ID_SERVICE').AsInteger:=strtoint(label9.Caption);
                                          end;
      IBQuery4.ParamByName('N_1C').AsString:=Edit4.Text;
      IBQuery4.ParamByName('NOM_KARTA').AsString:=Edit2.Text;


      label18.Caption:=RandomStr(20);
      IBQuery4.ParamByName('HHH').AsString:=label18.Caption;
      IBQuery4.Close;
      IBQuery4.Open;
      Unit2.DataModule2.IBTransaction1.CommitRetaining;

      // ���� ID
      IBQuery6.SQL.Clear;
      //IBQuery6.SQL.Append('select * from REM_SHAPKA WHERE DATA_END=:DATA_END AND DATA_GET=:DATA_GET AND DATA_KRAY=:DATA_KRAY AND ');
      //IBQuery6.SQL.Append('ID_CLIENT=:ID_CLIENT AND ID_MANAGER=:ID_MANAGER AND ID_MASTER=:ID_MASTER AND ID_SERVICE=:ID_SERVICE AND ');
      //IBQuery6.SQL.Append('N_1C=:N_1C ORDER BY ID_SHAPKA');
      IBQuery6.SQL.Append('select * from REM_SHAPKA WHERE ');
      IBQuery6.SQL.Append('HHH=:HHH ORDER BY ID_SHAPKA');
      IBQuery6.ParamByName('HHH').AsString:=label18.Caption;
      IBQuery6.Close;
      IBQuery6.Open;
      IBQuery6.Last;
      label15.Caption:=IBQuery6ID_SHAPKA.AsString;

      // ������ ������������������ �� ������ ������
      IBQuery26.SQL.Clear;
      IBQuery26.SQL.Append('UPDATE REM_SHAPKA SET HHH=:HHH WHERE ID_SHAPKA=:ID_SHAPKA');
      IBQuery26.ParamByName('ID_SHAPKA').AsInteger:=strtoint(label15.Caption);
      IBQuery26.Close;
      IBQuery26.Open;
      Unit2.DataModule2.IBTransaction1.CommitRetaining;
      label18.Caption:='';


     end
     else
     begin
     // ���� � Label15 �� ���� - �� ��� ������������� �����
     // ���������� UPDATE ����� � �������
     IBQuery7.SQL.Clear;
     IBQuery7.SQL.Append('UPDATE REM_SHAPKA SET ABOUT=:ABOUT, DATA_END=:DATA_END, DATA_GET=:DATA_GET, DATA_KRAY=:DATA_KRAY, ');
     IBQuery7.SQL.Append('F_CLIENT=:F_CLIENT, F_KORRECT=:F_KORRECT, F_REZ_C=:F_REZ_C, F_REZ_O=:F_REZ_O, F_SOGL_C=:F_SOGL_C, ');
     IBQuery7.SQL.Append('F_SOGL_T=:F_SOGL_T, F_SOGL_V=:F_SOGL_V, F_STATUS=:F_STATUS, ID_CLIENT=:ID_CLIENT, ID_MANAGER=:ID_MANAGER, ');
     IBQuery7.SQL.Append('ID_MASTER=:ID_MASTER, ID_SERVICE=:ID_SERVICE, N_1C=:N_1C, NOM_KARTA=:NOM_KARTA WHERE ID_SHAPKA=:ID_SHAPKA');
     IBQuery7.ParamByName('ABOUT').AsString:=memo2.Text;
        if DatetimePicker2.Checked=true then IBQuery4.ParamByName('DATA_END').AsDate:=Trunc(DateTimePicker2.Date)
                                        else IBQuery7.ParamByName('DATA_END').Value:=Null;                          // ���� ������ �������
       IBQuery7.ParamByName('DATA_GET').AsDate:=Trunc(DateTimePicker1.Date);  // �������� � ������
       IBQuery7.ParamByName('DATA_KRAY').AsDate:=Trunc(DateTimePicker3.Date); // �������� ��������� �������

       IBQuery7.ParamByName('F_CLIENT').AsInteger:=IBQuery5ID.AsInteger; // ID ��������� �����
       IBQuery7.ParamByName('F_KORRECT').AsInteger:=0;


      if checkBox1.Checked then IBQuery7.ParamByName('F_SOGL_C').AsInteger:=1
                           else IBQuery7.ParamByName('F_SOGL_C').AsInteger:=0;
      if checkBox2.Checked then IBQuery7.ParamByName('F_SOGL_V').AsInteger:=1
                           else IBQuery7.ParamByName('F_SOGL_V').AsInteger:=0;
      if checkBox3.Checked then IBQuery7.ParamByName('F_SOGL_T').AsInteger:=1
                           else IBQuery7.ParamByName('F_SOGL_T').AsInteger:=0;
      if checkBox4.Checked then IBQuery7.ParamByName('F_REZ_C').AsInteger:=1
                           else IBQuery7.ParamByName('F_REZ_C').AsInteger:=0;
       IBQuery7.ParamByName('F_REZ_O').AsInteger:=0;
       IBQuery7.ParamByName('F_STATUS').AsInteger:=1; // ������ �������
       IBQuery7.ParamByName('ID_CLIENT').AsInteger:=strtoint (label8.Caption);
       IBQuery7.ParamByName('ID_MANAGER').AsInteger:=id_idmanager;

       if label12.Caption='1' then begin
                                   IBQuery7.ParamByName('ID_MASTER').AsInteger:=strtoint(label9.Caption);
                                   IBQuery7.ParamByName('ID_SERVICE').AsInteger:=0;
                                 end else begin
                                            IBQuery7.ParamByName('ID_MASTER').AsInteger:=0;
                                            IBQuery7.ParamByName('ID_SERVICE').AsInteger:=strtoint(label9.Caption);
                                          end;
      IBQuery7.ParamByName('N_1C').AsString:=Edit4.Text;
      IBQuery7.ParamByName('NOM_KARTA').AsString:=Edit2.Text;
      IBQuery7.ParamByName('ID_SHAPKA').AsInteger:=strtoint(Label15.Caption);
      IBQuery7.Close;
      IBQuery7.Open;
      Unit2.DataModule2.IBTransaction1.CommitRetaining;

     end;

   form12.label8.caption:=Label15.Caption;
   Form12.Label9.Caption:=Label8.Caption;
   unit1.Form1.N1.Click;
   Form12.label10.caption:='0';
   form12.SpeedButton5.Click;
   form12.Show;
 end
 else showmessage ('���������� ������� ���������, �����������');
end;

procedure TForm5.CheckBox1Click(Sender: TObject);
begin
SpeedButton2.Click;
end;

procedure TForm5.SpeedButton6Click(Sender: TObject);
var i:integer;
  x, y, w: integer;
  s: string;
  MaxWidth: integer;
begin
 advStringGrid1.Clear;
 advStringGrid1.Multilinecells:=true;
 advStringGrid1.WordWrap:=true;

 IBQuery8.SQL.Clear;
 IBQuery8.SQL.Append('select * from TODO WHERE ID_SHAPKA=:ID_SHAPKA');
 IBQuery8.ParamByName('ID_SHAPKA').AsInteger:=strtoint(label15.Caption);
 IBQuery8.Close;
 IBQuery8.Open;
 IBQuery8.FetchAll;

// StringGrid1.RowCount:=IBQuery8.RecordCount+3;


 IBQuery9.SQL.Clear;
 IBQuery9.SQL.Append('select * from REM_USTR WHERE ID_SHAPKA=:ID_SHAPKA ORDER BY ID');
 IBQuery9.ParamByName('ID_SHAPKA').AsInteger:=strtoint(label15.Caption);
 IBQuery9.Close;
 IBQuery9.Open;
 IBQuery9.FetchAll;

 advStringGrid1.RowCount:=IBQuery8.RecordCount+1+IBQuery9.RecordCount;
 advStringGrid1.ColCount:=16;

    advStringGrid1.ColWidths[1]:=5;
    advStringGrid1.ColWidths[2]:=5;
    advStringGrid1.ColWidths[3]:=60;
    advStringGrid1.ColWidths[5]:=30;
    advStringGrid1.ColWidths[6]:=60;
    advStringGrid1.ColWidths[0]:=5;
    advStringGrid1.ColWidths[4]:=0;
    advStringGrid1.ColWidths[7]:=0;
     advStringGrid1.ColWidths[8]:=0;

     advStringGrid1.ColWidths[9]:=50;  // ������



    advStringGrid1.ColWidths[10]:=50;  // �����������
     advStringGrid1.ColWidths[11]:=50; // ������

     advStringGrid1.ColWidths[12]:=0;
     advStringGrid1.ColWidths[13]:=100;
     advStringGrid1.ColWidths[14]:=0;
     advStringGrid1.ColWidths[15]:=150;
        advStringGrid1.ColWidths[2]:=300;
    //advStringGrid1.ColWidths[1]:=10;

    advStringGrid1.Cells[9,0]:='������';
        advStringGrid1.Cells[10,0]:='������.';
                advStringGrid1.Cells[11,0]:='�����';
                advStringGrid1.Cells[13,0]:='���';
               advStringGrid1.Cells[15,0]:='�����������';
 IBQuery9.First;
 i:=1;
 WHile not IBQuery9.Eof do
   begin

    AdvStringGrid1.MergeCells(1,i,3,1);
    advStringGrid1.Cells[1,i]:=IBQuery9USTR_NAME.AsString;
    advStringGrid1.Cells[4,i]:=IBQuery9ID.AsString;
    advStringGrid1.Cells[7,i]:='0';
    advStringGrid1.Cells[8,i]:='0';

    advstringgrid1.AddDataImage(9, i, 0, haLeft, vaTop);
    advstringgrid1.AddDataImage(10, i, 0, haLeft, vaTop);
    advstringgrid1.AddDataImage(11, i, 0, haLeft, vaTop);
    //advstringgrid1.AddDataImage(13, i, 0, haLeft, vaTop);
    //advstringgrid1.AddDataImage(12, i, 0, haLeft, vaTop);

    advStringGrid1.Cells[9,i]:=IBQuery9FL_GOTOVO.AsString;

//     advstringgrid1.Cells[9,i] := 'N';
//advstringgrid1.Cells[1,2] := 'Y';

    advStringGrid1.Cells[10,i]:=IBQuery9FL_SOGLASOVANO.AsString;
    advStringGrid1.Cells[11,i]:=IBQuery9FL_VIDANO.AsString;
    advStringGrid1.Cells[13,i]:=IBQuery9USTR_CODE.AsString;
    //advStringGrid1.Cells[12,i]:='0';
       i:=i+1;
       IBQuery10.SQL.Clear;

       IBQuery10.SQL.Append('select * from TODO WHERE ID_ITEM=:ID_ITEM AND ID_SHAPKA=:ID_SHAPKA');
       IBQuery10.ParamByName('ID_ITEM').AsInteger:=IBQuery9ID.AsInteger;
       IBQuery10.ParamByName('ID_SHAPKA').AsInteger:=strtoint(label15.Caption);
       IBQuery10.Close;
       IBQuery10.Open;
       IBQuery10.First;
       WHile not IBQuery10.Eof do
          begin

               advstringgrid1.AddDataImage(9, i, 0, haLeft, vaTop);
               advstringgrid1.AddDataImage(10, i, 0, haLeft, vaTop);


           advStringGrid1.Cells[2,i]:=IBQuery10TODO_NAME.AsString;
           advStringGrid1.Cells[3,i]:=IBQuery10TODO_COST.AsString;
           advStringGrid1.Cells[5,i]:=IBQuery10KOL_VO.AsString;
           advStringGrid1.Cells[6,i]:=IBQuery10TOTAL_COST.AsString;
           advStringGrid1.Cells[4,i]:=IBQuery9ID.AsString;
           advStringGrid1.Cells[7,i]:=IBQuery10ID_ITEM.AsString;
           advStringGrid1.Cells[8,i]:=IBQuery10TODO_ID.AsString;
           advStringGrid1.Cells[9,i]:=IBQuery10FL_GOTOVO.AsString;
           advStringGrid1.Cells[14,i]:=IBQuery10ID_MASTER.AsString;
           advStringGrid1.Cells[15,i]:=IBQuery10MASTER_NAME.AsString;
    advStringGrid1.Cells[10,i]:=IBQuery10FL_SOGLASOVANO.AsString;
    // advStringGrid1.Cells[11,i]:='0';
   // advStringGrid1.Cells[12,i]:='0';
           IBQuery10.Next;
           i:=i+1;
          end;


   IBQuery9.Next;
   end;
   advStringGrid1.AutoSizeRows(true);

end;

procedure TForm5.N5Click(Sender: TObject);
begin
if (r='������') and (advStringGrid1.Cells [14, advStringGrid1.Row]<>inttostr(unit1.ID_USER)) then begin
  end else
  begin
  // ����������� ����� �� �����������
if l1=1 then
 if (label15.Caption<>'0')and(NOT IBQuery8.Eof) then
 begin
   // ���������� � ������������

   // ���� ������ ����� - ��������� ����� �������
    if advStringGrid1.Cells [1, advStringGrid1.Row]<>'' then
       begin
       // Showmessage ('��������� ���� ITEM')
        // ��������� ��� ������ ������ ������
         IBQuery22.SQL.Clear;
         IBQuery22.SQL.Append('UPDATE TODO SET FL_SOGLASOVANO=:FL_SOGLASOVANO WHERE ID_ITEM=:ID_ITEM AND ID_SHAPKA=:ID_SHAPKA');
         IBQuery22.ParamByName('FL_SOGLASOVANO').AsInteger:=1;
         IBQuery22.ParamByName('ID_ITEM').AsInteger:=strtoint(advStringGrid1.Cells[4, advStringGrid1.Row]);
         IBQuery22.ParamByName('ID_SHAPKA').AsInteger:=strtoint(label15.Caption);
         IBQuery22.Close;
         IBQuery22.Open;
         unit2.DataModule2.IBTransaction1.CommitRetaining;

         // ������ ����� ������������ �� ���� ����� (��� ������)speedbutton7.Click; // ��������� ������� � ��������� ������
          speedbutton7.Click; // ��������� ������� � ��������� ������
         

       end
       else
       begin
        // Showmessage ('��������� ���������� ������');
         IBQuery22.SQL.Clear;
         IBQuery22.SQL.Append('UPDATE TODO SET FL_SOGLASOVANO=:FL_SOGLASOVANO WHERE ID_ITEM=:ID_ITEM AND ID_SHAPKA=:ID_SHAPKA AND TODO_ID=:TODO_ID');
         IBQuery22.ParamByName('FL_SOGLASOVANO').AsInteger:=1;
         IBQuery22.ParamByName('ID_ITEM').AsInteger:=strtoint(advStringGrid1.Cells [7, advStringGrid1.Row]);
         IBQuery22.ParamByName('ID_SHAPKA').AsInteger:=strtoint(label15.Caption);
         IBQuery22.ParamByName('TODO_ID').AsInteger:=strtoint(advStringGrid1.Cells [8, advStringGrid1.Row]);
         IBQuery22.Close;
         IBQuery22.Open;
         unit2.DataModule2.IBTransaction1.CommitRetaining;
         speedbutton7.Click; // ��������� ������� � ��������� ������
       end;


 end;
 end;
end;

procedure TForm5.PopupMenu1Popup(Sender: TObject);
begin
if  advStringGrid1.Cells [4, advStringGrid1.Row]<>'' then
                                 begin
                                  ID_USTR_SELECT:=strtoint(advStringGrid1.Cells [4, advStringGrid1.Row]);
                                  N1.Visible:=true;
                                 end
                                    else begin
                                             ID_USTR_SELECT:=0;
                                             N1.Visible:=false;
                                         end;

end;

procedure TForm5.StringGrid1ContextPopup(Sender: TObject; MousePos: TPoint;
  var Handled: Boolean);
  var C1, R1: Integer;
begin
  with TStringGrid(Sender) do begin

  MouseToCell(MousePos.X, MousePos.Y, C1, R1);
  if (C1>=FixedCols) and (R1>=FixedRows) then begin
   Row:=R1; Col:=C1;
  end else Handled:=True;
  end;
end;

procedure TForm5.AdvStringGrid1ContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
   var C1, R1: Integer;
begin
  with TadvStringGrid(Sender) do begin

  MouseToCell(MousePos.X, MousePos.Y, C1, R1);
  if (C1>=FixedCols) and (R1>=FixedRows) then begin
   Row:=R1; Col:=C1;
  end else Handled:=True;
  end;
end;

procedure TForm5.N3Click(Sender: TObject);
begin
if (r='������') and (advStringGrid1.Cells [14, advStringGrid1.Row]<>inttostr(unit1.ID_USER)) then begin
  end else
  begin


  IBQuery15.SQL.Clear;
  IBQuery15.SQL.Append('DELETE FROM TODO WHERE ID_ITEM=:ID_ITEM AND ID_SHAPKA=:ID_SHAPKA AND TODO_ID=:TODO_ID');
  IBQuery15.ParamByName('ID_SHAPKA').AsInteger:=strtoint(label15.Caption);
  IBQuery15.ParamByName('ID_ITEM').AsInteger:=strtoint(advStringGrid1.Cells [7, advStringGrid1.Row]);
  IBQuery15.ParamByName('TODO_ID').AsInteger:=strtoint(advStringGrid1.Cells [8, advStringGrid1.Row]);
  IBQuery15.Close;
  IBQuery15.Open;
 // unit2.DataModule2.IBTransaction1.CommitRetaining;


 unit2.DataModule2.IBTransaction1.CommitRetaining;
 Speedbutton7.Click; // ����������� � ��������� ������
 end;
end;

procedure TForm5.N4Click(Sender: TObject);
begin
SpeedButton3.Click;
end;

procedure TForm5.W7ToolButton1Click(Sender: TObject);
begin
 speedbutton3.Click;
end;

procedure TForm5.N6Click(Sender: TObject);
begin



 if (label15.Caption<>'0') then
 begin

 form12.Label10.Caption:=inttostr(ID_USTR_SELECT);
 form12.Label8.Caption:=label15.Caption;

 IBQuery11.SQL.Clear;
 IBQuery11.SQL.Append('select * from REM_USTR WHERE ID=:ID AND ID_SHAPKA=:ID_SHAPKA');
 IBQuery11.ParamByName('ID').AsInteger:=ID_USTR_SELECT;
 IBQuery11.ParamByName('ID_SHAPKA').AsInteger:=strtoint(label15.Caption);
 IBQuery11.Close;
 IBQuery11.Open;
 IBQuery11.First;
 Form12.Edit1.Text:=IBQuery11USTR_CODE.AsString;
 Form12.Edit2.Text:=IBQuery11USTR_NAME.AsString;
 Form12.Edit3.Text:=IBQuery11SERIAL.AsString;
 Form12.Edit4.Text:=IBQuery11USTR_TIPE.AsString;
 Form12.Memo1.Lines.Clear;
 Form12.Memo1.Lines.Append(IBQuery11ABOUT.AsString);

 Form12.Label4.Caption:=IBQuery11DAT_SOGL.AsString;
 if IBQuery11DAT_SOGL.AsString<>'' then Form12.label13.Visible:=true
                                   else Form12.Label13.Visible:=false;

 Form12.Label11.Caption:=IBQuery11DAT_GOTOVO.AsString;
 if IBQuery11DAT_GOTOVO.AsString<>'' then Form12.label14.Visible:=true
                                     else Form12.Label14.Visible:=false;

 Form12.Label12.Caption:=IBQuery11DAT_VIDANO.AsString;
 if IBQuery11DAT_VIDANO.AsString<>'' then Form12.label15.Visible:=true
                                     else Form12.Label15.Visible:=false;

  form12.SpeedButton8.Click;
  Form12.SpeedButton5.Click;

 form12.ShowModal;
 end;


end;

procedure TForm5.N7Click(Sender: TObject);
begin
if MessageDlg('�� ������������� ������ ������� ������� '+advStringGrid1.Cells [1, advStringGrid1.Row]+' �� ������?',
            mtConfirmation, [mbYes, mbNo], 0) = mrYes
            then
            begin
IBQuery12.SQL.Clear;
IBQuery12.SQL.Append('DELETE FROM REM_USTR WHERE ID=:ID AND ID_SHAPKA=:ID_SHAPKA');
IBQuery12.ParamByName('ID').AsInteger:=ID_USTR_SELECT;
IBQuery12.ParamByName('ID_SHAPKA').AsInteger:=strtoint (label15.Caption);
IBQuery12.Close;
IBQuery12.Open;
 // ������� ������ �����
 IBQuery13.SQL.Clear;
 IBQuery13.SQL.Append('DELETE from TODO WHERE ID_ITEM=:ID_ITEM AND ID_SHAPKA=:ID_SHAPKA');
 IBQuery13.ParamByName('ID_ITEM').AsInteger:=ID_USTR_SELECT;
 IBQuery13.ParamByName('ID_SHAPKA').AsInteger:=strtoint (label15.Caption);
 IBQuery13.Close;
 IBQuery13.Open;

 unit2.DataModule2.IBTransaction1.CommitRetaining;
 Speedbutton7.Click;
 end;
end;

procedure TForm5.N8Click(Sender: TObject);
begin
SpeedButton3.Click;
end;

procedure TForm5.AdvPopupMenu1Popup(Sender: TObject);
begin





// �� ����� ���������� �����
if  strtoint(advStringGrid1.Cells [10, advStringGrid1.Row])=1 then // ���� ����������� - ��������� ��������� ������
 begin
  // ��� ������� ������������ ����� ��������������
  if l1=1 then
             begin
              N10.Enabled:=true; // �� �����������
              N10.Visible:=true;
              N5.Visible:=false;
              N5.Enabled:=false; // �����������
             end
             else
             begin
              N10.Enabled:=false; // �� �����������
              N10.Visible:=false;
              N5.Visible:=false;
              N5.Enabled:=false; // �����������
             end;



if  (strtoint(advStringGrid1.Cells [9, advStringGrid1.Row])=0) then
                                                          begin
                                                            if (l3=1)or(label12.Caption='2') then begin
                                                                                        N9.Visible:=true; // ������
                                                                                        N11.Visible:=false; // �� ������
                                                                                        N9.Enabled:=true; // ������
                                                                                        N11.Enabled:=false; // �� ������


                                                                          end
                                                                          else
                                                                          begin
                                                                                        N9.Visible:=false; // ������
                                                                                        N11.Visible:=false; // �� ������
                                                                                        N9.Enabled:=false; // ������
                                                                                        N11.Enabled:=false; // �� ������
                                                                          end;
                                                           // ���� �� ������ - ������ ������
                                                            if l2=1 then begin

                                                                          N12.Enabled:=false; // ������
                                                                          N12.Visible:=false;
                                                                          N13.Enabled:=false; // �� ������
                                                                          N13.Visible:=false;
                                                                               end;



                                                          end else
                                                           begin
                                                            if (l3=1)or(label12.Caption='2') then begin
                                                                                        N9.Visible:=false; // ������
                                                                                        N11.Visible:=true; // �� ������
                                                                                        N11.Enabled:=true; // ������
                                                                                        N9.Enabled:=false; // �� ������

                                                                                     end else
                                                                                       begin
                                                                                        N9.Visible:=false; // ������
                                                                                        N11.Visible:=false; // �� ������
                                                                                        N11.Enabled:=false; // ������
                                                                                        N9.Enabled:=false; // �� ������
                                                                                       end;
                                                           // ���� ������ - �� ����������� ������, ����� ������
                                                           if l1=1 then begin
                                                                          // ������������� ������� ������ ������
                                                                          N2.Visible:=false;
                                                                          N2.Enabled:=false;
                                                                          N3.Visible:=False;
                                                                          N3.Enabled:=false;


                                                                          N5.Enabled:=false; // �����������
                                                                          N5.Visible:=false;
                                                                          N10.Enabled:=false; // �� �����������
                                                                          N10.Visible:=false;
                                                                        end;
                                                           // ���� ������ - �� ����������� ������, ����� ������
                                                           if l2=1 then begin

                                                                         if (advStringGrid1.Cells [11, advStringGrid1.Row]='0')
                                                                            then
                                                                              begin
                                                                          N12.Enabled:=true; // ������
                                                                          N12.Visible:=true;
                                                                          N13.Enabled:=false; // �� ������
                                                                          N13.Visible:=false;
                                                                               end
                                                                               else
                                                                               begin
                                                                          N12.Enabled:=false; // ������
                                                                          N12.Visible:=false;
                                                                          N13.Enabled:=true; // �� ������
                                                                          N13.Visible:=true;
                                                                               end;
                                                                        end;
                                                           end;
              end else
              begin
               // ��������� ������ ������, ����������� ������������
                     N9.Visible:=false; // ������
                     N11.Visible:=false; // �� ������
                     N9.Enabled:=false; // ������
                     N11.Enabled:=false; // �� ������
               // ������ ������
                     N12.Enabled:=false; // ������
                     N12.Visible:=false;
                     N13.Enabled:=false; // �� ������
                     N13.Visible:=false;
               // ����� �����������
              N10.Enabled:=false; // �� �����������
              N10.Visible:=false;


         if l1=1 then
             begin
                N5.Enabled:=true; // �����������
                N5.Visible:=true;
             end
             else
             begin
                N5.Enabled:=false; // �����������
                N5.Visible:=false;
             end;

              end;

if  advStringGrid1.Cells [1, advStringGrid1.Row]='' then
           begin
            // ������ ������ ������ ������, ����� ������ ���� �����
            N12.Visible:=false;
            N13.Visible:=false;
           end;

if  advStringGrid1.Cells [4, advStringGrid1.Row]<>'' then
                                 begin
                                  ID_USTR_SELECT:=strtoint(advStringGrid1.Cells [4, advStringGrid1.Row]);
                                  N1.Visible:=true;
                                 end
                                    else begin
                                             ID_USTR_SELECT:=0;
                                             N1.Visible:=false;
                                         end;



// �� �������� �������������� ������ �������, ������ �� �������, ���� ������� ������ - �� �� �� �����
// �������� ����������, �, ��� ���������, �������� ������������ ����� ������ � ������� �������� � �����������
 IBQuery24.SQL.Clear;
 IBQuery24.SQL.Append('select * from REM_USTR WHERE ID_SHAPKA=:ID_SHAPKA AND ID=:ID');
 IBQuery24.ParamByName('ID_SHAPKA').AsInteger:=strtoint(label15.Caption);
 IBQuery24.ParamByName('ID').AsInteger:=strtoint(advStringGrid1.Cells [4, advStringGrid1.Row]);
 IBQuery24.Close;
 IBQuery24.Open;
 IBQuery24.First;
 if IBQuery24FL_VIDANO.AsInteger=1 then
                                     begin
                                       N11.Visible:=false;
                                       N11.Enabled:=false;
                                       N10.Enabled:=false;
                                       N10.Visible:=false;
                                       N5.Enabled:=false;
                                       N5.Visible:=false;
                                       N6.Visible:=false;
                                       N6.Enabled:=false;
                                       N2.Visible:=false;
                                       N2.Enabled:=false;
                                       N7.Visible:=false;
                                       N7.Enabled:=false;
                                       N3.Enabled:=false;
                                       N3.Visible:=false;
                                       N8.Visible:=false;
                                       N8.Enabled:=false;

                                     end
                                     else
                                     begin
    if r='������'  then begin
                          
                                 if advStringGrid1.Cells [1, advStringGrid1.Row]<>'' then
                                 begin
                                       N6.Visible:=true;
                                       N6.Enabled:=true;
                                       N2.Visible:=false;
                                       N2.Enabled:=false;
                                      // N7.Visible:=true;
                                      // N7.Enabled:=true;
                                       N3.Enabled:=false;
                                       N3.Visible:=false;
                                       N8.Visible:=false;
                                       N8.Enabled:=false;
                                       N14.Visible:=false;
                                       //N6.Visible:=false;
                                       //N6.Enabled:=false;

                                       N7.Visible:=false;
                                       N7.Enabled:=false;
                                 end
                                 else
                                 begin
                                       N6.Visible:=false;
                                       N6.Enabled:=false;

                                       N7.Visible:=false;
                                       N7.Enabled:=false;

                                       N8.Visible:=false;
                                       N8.Enabled:=false;
                                       N14.Visible:=false;


                                       N3.Enabled:=true;
                                       N3.Visible:=true;
                                       N2.Visible:=true;
                                       N2.Enabled:=true;
                                       {
                                       N3.Enabled:=true;
                                       N3.Visible:=true;
                                       N2.Visible:=true;
                                       N2.Enabled:=true;
                                        }
                                     end;
                        end
                        else
                        begin
                   if advStringGrid1.Cells [1, advStringGrid1.Row]<>'' then
                                 begin

                                       N6.Visible:=true;
                                       N6.Enabled:=true;
                                       N2.Visible:=false;
                                       N2.Enabled:=false;
                                       N7.Visible:=true;
                                       N7.Enabled:=true;
                                       N3.Enabled:=false;
                                       N3.Visible:=false;
                                       N8.Visible:=true;
                                       N8.Enabled:=true;

                                       // ��������� �������� ��������� ���������
                                       N14.Visible:=true;

                                    end
                                    else
                                    begin
                                       N6.Visible:=true;
                                       N6.Enabled:=true;
                                       N2.Visible:=true;
                                       N2.Enabled:=true;
                                       N7.Visible:=true;
                                       N7.Enabled:=true;
                                       N3.Enabled:=true;
                                       N3.Visible:=true;
                                       N8.Visible:=true;
                                       N8.Enabled:=true;
                                       N14.Visible:=false;
                                     if strtoint(advStringGrid1.Cells [9, advStringGrid1.Row])<>0 then
                                             begin
                                               N2.Visible:=false;
                                               N3.Visible:=false;
                                             end;


                                    end;
                        end;


                                     end;

end;

procedure TForm5.ComboBox2Select(Sender: TObject);
begin
id_idmanager:= idmanager[ComboBox2.ItemIndex+1];
end;

procedure TForm5.N2Click(Sender: TObject);
begin
if (r='������') and (advStringGrid1.Cells [14, advStringGrid1.Row]<>inttostr(unit1.ID_USER)) then begin
  end else
  begin
   IBQuery14.SQL.Clear;
 IBQuery14.SQL.Append('select * from TODO WHERE ID_ITEM=:ID_ITEM AND ID_SHAPKA=:ID_SHAPKA AND TODO_ID=:TODO_ID');
 IBQuery14.ParamByName('ID_ITEM').AsInteger:=strtoint(advStringGrid1.Cells [7, advStringGrid1.Row]);
 IBQuery14.ParamByName('ID_SHAPKA').AsInteger:=strtoint(label15.Caption);
 IBQuery14.ParamByName('TODO_ID').AsInteger:=strtoint(advStringGrid1.Cells [8, advStringGrid1.Row]);
 IBQuery14.Close;
 IBQuery14.Open;
 IBQuery14.First;

Form17.Memo1.Lines.Clear;
Form17.Memo1.Lines.Append(IBQuery14TODO_NAME.AsString);
Form17.Edit2.text:=IBQuery14TODO_COST.AsString;
Form17.Edit3.text:=IBQuery14KOL_VO.AsString;
Form17.Edit4.text:=IBQuery14TOTAL_COST.AsString;
Form17.label5.Caption:=IBQuery14ID_SHAPKA.AsString;
Form17.Label6.Caption:=IBQuery14ID_ITEM.AsString;
Form17.Edit5.Text:=IBQuery14MASTER_NAME.asString;
Form17.Label1.caption:=IBQuery14ID_MASTER.asString;
Form17.Label2.caption:=IBQuery14ID_SERVICE.asString;

Form17.Label7.Caption:=IBQuery14TODO_NAME.AsString;
Form17.Showmodal;
end;
end;

procedure TForm5.SpeedButton7Click(Sender: TObject);
begin
 // �������� ������������� � ������������ � ��������
 IBQuery16.SQL.Clear;
 //IBQuery16.SQL.Append('select * from REM_USTR WHERE ID_SHAPKA=:ID_SHAPKA AND FL_GOTOVO=:FL_GOTOVO AND FL_VIDANO=:FL_VIDANO');
 IBQuery16.SQL.Append('select * from REM_USTR WHERE ID_SHAPKA=:ID_SHAPKA');
 IBQuery16.ParamByName('ID_SHAPKA').AsInteger:=strtoint(Label15.Caption);
 //IBQuery16.ParamByName('FL_GOTOVO').AsInteger:=0; // ������ �� ���������
 //IBQuery16.ParamByName('FL_VIDANO').AsInteger:=0; // ����� �� ����� �������
 IBQuery16.Close;
 IBQuery16.Open;
 IBQuery16.First;
 While not IBQuery16.Eof do
  begin
    // �� ������� ����������� ������ ������� ������ �����

    // ��������: ��������������� ����� ������ ������
    IBQuery17.SQL.Clear;
    IBQuery17.SQL.Append('select * from TODO WHERE ID_SHAPKA=:ID_SHAPKA AND ID_ITEM=:ID_ITEM AND FL_SOGLASOVANO=:FL_SOGLASOVANO');
    IBQuery17.ParamByName('ID_SHAPKA').AsInteger:=strtoint(label15.Caption);
    IBQuery17.ParamByName('ID_ITEM').AsInteger:=IBQuery16ID.AsInteger;
    IBQuery17.ParamByName('FL_SOGLASOVANO').AsInteger:=0;
    IBQuery17.Close;
    IBQuery17.Open;
    IBQuery17.First;
    if IBQuery17.Eof then
       begin
         // 0 ��������������� ����� ������ ������ => ����� ����������

         // �� �������� ��������� ����� ������������ ������
         IBQuery29.SQL.Clear;
         IBQuery29.SQL.Append('select * from REM_USTR WHERE ID=:ID AND ID_SHAPKA=:ID_SHAPKA');
         IBQuery29.ParamByName('ID').AsInteger:=IBQuery16ID.AsInteger;
         IBQuery29.ParamByName('ID_SHAPKA').AsInteger:=strtoint (label15.Caption);
         IBQuery29.Close;
         IBQuery29.Open;
         IBQuery29.First;
         if IBQuery29DAT_SOGL.asstring='' then
          begin
           IBQuery18.SQL.Clear;
           IBQuery18.SQL.Append('UPDATE REM_USTR SET FL_SOGLASOVANO=:FL_SOGLASOVANO, DAT_SOGL=:DAT_SOGL WHERE ID=:ID AND ID_SHAPKA=:ID_SHAPKA');
           IBQuery18.ParamByName('FL_SOGLASOVANO').AsInteger:=1;
           IBQuery18.ParamByName('ID').AsInteger:=IBQuery16ID.AsInteger;
           IBQuery18.ParamByName('DAT_SOGL').AsDateTime:=now();
           IBQuery18.ParamByName('ID_SHAPKA').AsInteger:=strtoint (label15.Caption);
           IBQuery18.Close;
           IBQuery18.Open;

          end
          else
          begin
           IBQuery18.SQL.Clear;
           IBQuery18.SQL.Append('UPDATE REM_USTR SET FL_SOGLASOVANO=:FL_SOGLASOVANO WHERE ID=:ID AND ID_SHAPKA=:ID_SHAPKA');
           IBQuery18.ParamByName('FL_SOGLASOVANO').AsInteger:=1;
           IBQuery18.ParamByName('ID').AsInteger:=IBQuery16ID.AsInteger;
           IBQuery18.ParamByName('ID_SHAPKA').AsInteger:=strtoint (label15.Caption);
           IBQuery18.Close;
           IBQuery18.Open;

          end;
       end else
          begin
           // ����� ����� �� �����������
           // ���� ����������, ��������������� � ���������� ���������� � ����
           IBQuery18.SQL.Clear;
           IBQuery18.SQL.Append('UPDATE REM_USTR SET FL_SOGLASOVANO=:FL_SOGLASOVANO, DAT_SOGL=:DAT_SOGL, DAT_GOTOVO=:DAT_GOTOVO, DAT_VIDANO=:DAT_VIDANO WHERE ID=:ID AND ID_SHAPKA=:ID_SHAPKA');
           IBQuery18.ParamByName('FL_SOGLASOVANO').AsInteger:=0;
           IBQuery18.ParamByName('DAT_SOGL').Value:=NuLL;
           IBQuery18.ParamByName('DAT_GOTOVO').Value:=NuLL;
           IBQuery18.ParamByName('DAT_VIDANO').Value:=NuLL;
           IBQuery18.ParamByName('ID').AsInteger:=IBQuery16ID.AsInteger;
           IBQuery18.ParamByName('ID_SHAPKA').AsInteger:=strtoint (label15.Caption);
           IBQuery18.Close;
           IBQuery18.Open;
          end;


    // �������� ����������� ����� ������ ������
    IBQuery17.SQL.Clear;
    IBQuery17.SQL.Append('select * from TODO WHERE ID_SHAPKA=:ID_SHAPKA AND ID_ITEM=:ID_ITEM AND FL_GOTOVO=:FL_GOTOVO');
    IBQuery17.ParamByName('ID_SHAPKA').AsInteger:=strtoint(label15.Caption);
    IBQuery17.ParamByName('ID_ITEM').AsInteger:=IBQuery16ID.AsInteger;
    IBQuery17.ParamByName('FL_GOTOVO').AsInteger:=0;
    IBQuery17.Close;
    IBQuery17.Open;
    IBQuery17.First;
        if IBQuery17.Eof then
           begin
            // ��� ������ ������ ������ ������   => ����� �����
         IBQuery29.SQL.Clear;
         IBQuery29.SQL.Append('select * from REM_USTR WHERE ID=:ID AND ID_SHAPKA=:ID_SHAPKA');
         IBQuery29.ParamByName('ID').AsInteger:=IBQuery16ID.AsInteger;
         IBQuery29.ParamByName('ID_SHAPKA').AsInteger:=strtoint (label15.Caption);
         IBQuery29.Close;
         IBQuery29.Open;
         IBQuery29.First;
         if IBQuery29DAT_GOTOVO.asstring='' then
          begin

         IBQuery18.SQL.Clear;
         IBQuery18.SQL.Append('UPDATE REM_USTR SET FL_GOTOVO=:FL_GOTOVO, DAT_GOTOVO=:DAT_GOTOVO WHERE ID=:ID AND ID_SHAPKA=:ID_SHAPKA');
         IBQuery18.ParamByName('FL_GOTOVO').AsInteger:=1;
         IBQuery18.ParamByName('DAT_GOTOVO').AsDateTime:=now();
         IBQuery18.ParamByName('ID').AsInteger:=IBQuery16ID.AsInteger;
         IBQuery18.ParamByName('ID_SHAPKA').AsInteger:=strtoint (label15.Caption);
         IBQuery18.Close;
         IBQuery18.Open;

          end
          else begin
                 IBQuery18.SQL.Clear;
                 IBQuery18.SQL.Append('UPDATE REM_USTR SET FL_GOTOVO=:FL_GOTOVO WHERE ID=:ID AND ID_SHAPKA=:ID_SHAPKA');
                 IBQuery18.ParamByName('FL_GOTOVO').AsInteger:=1;
                 IBQuery18.ParamByName('ID').AsInteger:=IBQuery16ID.AsInteger;
                 IBQuery18.ParamByName('ID_SHAPKA').AsInteger:=strtoint (label15.Caption);
                 IBQuery18.Close;
                 IBQuery18.Open;
               end;

           end else
           begin
            // ��� ������ ������ ������ ������   => ����� �� �����
         IBQuery18.SQL.Clear;
         IBQuery18.SQL.Append('UPDATE REM_USTR SET FL_GOTOVO=:FL_GOTOVO, DAT_GOTOVO=:DAT_GOTOVO, DAT_VIDANO=:DAT_VIDANO WHERE ID=:ID AND ID_SHAPKA=:ID_SHAPKA');
         IBQuery18.ParamByName('FL_GOTOVO').AsInteger:=0;
         IBQuery18.ParamByName('DAT_GOTOVO').Value:=NuLL;
         IBQuery18.ParamByName('DAT_VIDANO').Value:=NuLL;
         IBQuery18.ParamByName('ID').AsInteger:=IBQuery16ID.AsInteger;
         IBQuery18.ParamByName('ID_SHAPKA').AsInteger:=strtoint (label15.Caption);
         IBQuery18.Close;
         IBQuery18.Open;
           end;


   IBQuery16.Next;
  end;
  // ����� ������������, ����������� �����


  unit2.DataModule2.IBTransaction1.CommitRetaining;
  // ������������� ��������������� �����
  IBQuery19.SQL.Clear;
  IBQuery19.SQL.Append('select * from REM_USTR WHERE ID_SHAPKA=:ID_SHAPKA AND FL_SOGLASOVANO=:FL_SOGLASOVANO');
  IBQuery19.ParamByName('ID_SHAPKA').AsInteger:=strtoint(label15.Caption);
  IBQuery19.ParamByName('FL_SOGLASOVANO').AsInteger:=0;
//  IBQuery19.ParamByName('FL_VIDANO').AsInteger:=0;
//  IBQuery19.ParamByName('FL_GOTOVO').AsInteger:=0;
  IBQuery19.Close;
  IBQuery19.Open;
  IBQuery19.First;
  if IBQuery19.Eof then begin
                           // ����� �����������
                           IBQuery30.SQL.Clear;
                           IBQuery30.SQL.Append('select * from REM_SHAPKA WHERE ID_SHAPKA=:ID_SHAPKA');
                           IBQuery30.ParamByName('ID_SHAPKA').AsInteger:=strtoint(label15.Caption);
                           IBQuery30.Close;
                           IBQuery30.Open;
                           IBQuery30.First;
                           if IBQuery30DAT_SOGL.asstring='' then
                           begin

                           IBQuery20.SQL.Clear;
                           IBQuery20.SQL.Append('UPDATE REM_SHAPKA SET FL_SOGLASOVANO=:FL_SOGLASOVANO, DAT_SOGL=:DAT_SOGL WHERE ID_SHAPKA=:ID_SHAPKA');
                           IBQuery20.ParamByName('ID_SHAPKA').AsInteger:=strtoint(label15.Caption);
                           IBQuery20.ParamByName('DAT_SOGL').AsDateTime:=now();
                           IBQuery20.ParamByName('FL_SOGLASOVANO').AsInteger:=1;
                           IBQuery20.Close;
                           IBQuery20.Open;
                           end else
                              begin
                           IBQuery20.SQL.Clear;
                           IBQuery20.SQL.Append('UPDATE REM_SHAPKA SET FL_SOGLASOVANO=:FL_SOGLASOVANO WHERE ID_SHAPKA=:ID_SHAPKA');
                           IBQuery20.ParamByName('ID_SHAPKA').AsInteger:=strtoint(label15.Caption);
                           IBQuery20.ParamByName('FL_SOGLASOVANO').AsInteger:=1;
                           IBQuery20.Close;
                           IBQuery20.Open;
                              end;

                        end
                        else
                        begin
                           // ����� �� �����������
                           IBQuery20.SQL.Clear;
                           IBQuery20.SQL.Append('UPDATE REM_SHAPKA SET FL_SOGLASOVANO=:FL_SOGLASOVANO, DAT_SOGL=:DAT_SOGL, DAT_GOTOVO=:DAT_GOTOVO, DAT_VIDANO=:DAT_VIDANO WHERE ID_SHAPKA=:ID_SHAPKA');
                           IBQuery20.ParamByName('ID_SHAPKA').AsInteger:=strtoint(label15.Caption);
                           IBQuery20.ParamByName('FL_SOGLASOVANO').AsInteger:=0;
                           IBQuery20.ParamByName('DAT_SOGL').Value:=NuLL;
                           IBQuery20.ParamByName('DAT_GOTOVO').Value:=NuLL;
                           IBQuery20.ParamByName('DAT_VIDANO').Value:=NuLL;
                           IBQuery20.Close;
                           IBQuery20.Open;
                        end;
    unit2.DataModule2.IBTransaction1.CommitRetaining;

  // ������������� ��������� ����� �����
   IBQuery19.SQL.Clear;
  IBQuery19.SQL.Append('select * from REM_USTR WHERE ID_SHAPKA=:ID_SHAPKA AND FL_GOTOVO=:FL_GOTOVO');
  IBQuery19.ParamByName('ID_SHAPKA').AsInteger:=strtoint(label15.Caption);
 // IBQuery19.ParamByName('FL_SOGLASOVANO').AsInteger:=1;
 // IBQuery19.ParamByName('FL_VIDANO').AsInteger:=0;
  IBQuery19.ParamByName('FL_GOTOVO').AsInteger:=0;
  IBQuery19.Close;
  IBQuery19.Open;
  IBQuery19.First;
  if IBQuery19.Eof then begin
                           // ����� ������
                           IBQuery30.SQL.Clear;
                           IBQuery30.SQL.Append('select * from REM_SHAPKA WHERE ID_SHAPKA=:ID_SHAPKA');
                           IBQuery30.ParamByName('ID_SHAPKA').AsInteger:=strtoint(label15.Caption);
                           IBQuery30.Close;
                           IBQuery30.Open;
                           IBQuery30.First;
                           if IBQuery30DAT_GOTOVO.asstring='' then
                           begin

                           IBQuery20.SQL.Clear;
                           IBQuery20.SQL.Append('UPDATE REM_SHAPKA SET FL_GOTOVO=:FL_GOTOVO, DAT_GOTOVO=:DAT_GOTOVO WHERE ID_SHAPKA=:ID_SHAPKA');
                           IBQuery20.ParamByName('ID_SHAPKA').AsInteger:=strtoint(label15.Caption);
                           IBQuery20.ParamByName('FL_GOTOVO').AsInteger:=1;
                           IBQuery20.ParamByName('DAT_GOTOVO').AsDateTime:=now();
                           IBQuery20.Close;
                           IBQuery20.Open;
                           end
                            else
                            begin
                           IBQuery20.SQL.Clear;
                           IBQuery20.SQL.Append('UPDATE REM_SHAPKA SET FL_GOTOVO=:FL_GOTOVO WHERE ID_SHAPKA=:ID_SHAPKA');
                           IBQuery20.ParamByName('ID_SHAPKA').AsInteger:=strtoint(label15.Caption);
                           IBQuery20.ParamByName('FL_GOTOVO').AsInteger:=1;
                           IBQuery20.Close;
                           IBQuery20.Open;
                            end;
                        end
                        else
                        begin
                           // ����� �� ������
                           IBQuery20.SQL.Clear;
                           IBQuery20.SQL.Append('UPDATE REM_SHAPKA SET FL_GOTOVO=:FL_GOTOVO, DAT_GOTOVO=:DAT_GOTOVO, DAT_VIDANO=:DAT_VIDANO WHERE ID_SHAPKA=:ID_SHAPKA');
                           IBQuery20.ParamByName('ID_SHAPKA').AsInteger:=strtoint(label15.Caption);
                           IBQuery20.ParamByName('FL_GOTOVO').AsInteger:=0;
                           IBQuery20.ParamByName('DAT_GOTOVO').Value:=NuLL;
                           IBQuery20.ParamByName('DAT_VIDANO').Value:=NuLL;
                           IBQuery20.Close;
                           IBQuery20.Open;
                        end;

// ��� �� ������ - ���������� � �����

   IBQuery19.SQL.Clear;
  IBQuery19.SQL.Append('select * from REM_USTR WHERE ID_SHAPKA=:ID_SHAPKA AND FL_VIDANO=:FL_VIDANO');
  IBQuery19.ParamByName('ID_SHAPKA').AsInteger:=strtoint(label15.Caption);
//  IBQuery19.ParamByName('FL_SOGLASOVANO').AsInteger:=1;
  IBQuery19.ParamByName('FL_VIDANO').AsInteger:=0;
//  IBQuery19.ParamByName('FL_GOTOVO').AsInteger:=1;
  IBQuery19.Close;
  IBQuery19.Open;
  IBQuery19.First;
  if IBQuery19.Eof then begin
                           // ����� ������
                           IBQuery20.SQL.Clear;
                           IBQuery20.SQL.Append('UPDATE REM_SHAPKA SET FL_VIDANO=:FL_VIDANO, DAT_VIDANO=:DAT_VIDANO WHERE ID_SHAPKA=:ID_SHAPKA');
                           IBQuery20.ParamByName('ID_SHAPKA').AsInteger:=strtoint(label15.Caption);
                           IBQuery20.ParamByName('FL_VIDANO').AsInteger:=1;
                           IBQuery20.ParamByName('DAT_VIDANO').AsDateTime:=now();
                           IBQuery20.Close;
                           IBQuery20.Open;
                        end
                        else
                        begin
                           // ����� �� ������
                           IBQuery20.SQL.Clear;
                           IBQuery20.SQL.Append('UPDATE REM_SHAPKA SET FL_VIDANO=:FL_VIDANO, DAT_VIDANO=:DAT_VIDANO WHERE ID_SHAPKA=:ID_SHAPKA');
                           IBQuery20.ParamByName('ID_SHAPKA').AsInteger:=strtoint(label15.Caption);
                           IBQuery20.ParamByName('FL_VIDANO').AsInteger:=0;
                           IBQuery20.ParamByName('DAT_VIDANO').Value:=Null;                           
                           IBQuery20.Close;
                           IBQuery20.Open;
                        end;



  unit2.DataModule2.IBTransaction1.CommitRetaining;
  // ��������� ������
  IBQuery21.SQL.Clear;
  IBQuery21.SQL.Append('select * from REM_SHAPKA WHERE ID_SHAPKA=:ID_SHAPKA');
  IBQuery21.ParamByName('ID_SHAPKA').AsInteger:=strtoint(label15.Caption);
  IBQuery21.Close;
  IBQuery21.Open;
  IBQuery21.First;
  label4.Caption:=IBQuery21FL_GOTOVO.AsString;
  label5.Caption:=IBQuery21FL_SOGLASOVANO.AsString;
  label16.Caption:=IBQuery21FL_VIDANO.AsString;
  label17.Caption:=IBQuery21FL_VRABOTA.AsString;
  label19.Caption:=IBQuery21DAT_SOGL.AsString;
  Label20.Caption:=IBQuery21DAT_GOTOVO.AsString;
  Label21.Caption:=IBQuery21DAT_VIDANO.AsString;

  if label20.Caption<>'' then begin
                                CEdit1.Visible:=true;
                                CEdit1.text:=IBQuery21DAT_GOTOVO.AsString;
                                label14.Visible:=true;

                              end else
                              begin
                                CEdit1.Visible:=false;
                                label14.Visible:=false;
                              end;
  if label21.Caption<>'' then begin
                                CEdit2.Visible:=true;
                                CEdit2.text:=IBQuery21DAT_VIDANO.AsString;
                                label6.Visible:=true;

                              end else
                              begin
                                CEdit2.Visible:=false;
                                label6.Visible:=false;
                              end;

  if label19.Caption<>'' then begin
                                CEdit3.Visible:=true;
                                CEdit3.text:=IBQuery21DAT_SOGL.AsString;
                                label22.Visible:=true;

                              end else
                              begin
                                CEdit3.Visible:=false;
                                label22.Visible:=false;
                              end;


  SpeedButton6.Click;   // ��������� ������

end;

procedure TForm5.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
// ���� � Label15 �� ���� - �� ��� ������������� �����
     // ���������� UPDATE ����� � �������
if unit1.Form1.Label2.Caption='������' then begin
         if strtoint(label15.Caption)<>0 then
          begin
     //������� ����������� ���������� ������ ���e ABOUT
     IBQuery7.SQL.Clear;
     IBQuery7.SQL.Append('UPDATE REM_SHAPKA SET ABOUT=:ABOUT WHERE ID_SHAPKA=:ID_SHAPKA');
     IBQuery7.ParamByName('ABOUT').AsString:=memo2.Text;
     IBQuery7.ParamByName('ID_SHAPKA').AsInteger:=strtoint(Label15.Caption);
     IBQuery7.Close;
     IBQuery7.Open;
     Unit2.DataModule2.IBTransaction1.CommitRetaining;
          end;



                                            end else
  if label15.Caption<>'' then if strtoint(label15.Caption)<>0 then begin

           // ���� ID ���������� �����
       IBQuery5.SQL.Clear;
       IBQuery5.SQL.Append('select * from FIRMS WHERE NAME=:NAME');
       IBQuery5.ParamByName('NAME').AsString:=ComboBox1.Text;
       IBQuery5.Close;
       IBQuery5.Open;
       IBQuery5.First;

     IBQuery7.SQL.Clear;
     IBQuery7.SQL.Append('UPDATE REM_SHAPKA SET ABOUT=:ABOUT, DATA_END=:DATA_END, DATA_GET=:DATA_GET, DATA_KRAY=:DATA_KRAY, ');
     IBQuery7.SQL.Append('F_CLIENT=:F_CLIENT, F_KORRECT=:F_KORRECT, F_REZ_C=:F_REZ_C, F_REZ_O=:F_REZ_O, F_SOGL_C=:F_SOGL_C, ');
     IBQuery7.SQL.Append('F_SOGL_T=:F_SOGL_T, F_SOGL_V=:F_SOGL_V, F_STATUS=:F_STATUS, ID_CLIENT=:ID_CLIENT, ID_MANAGER=:ID_MANAGER, ');
     IBQuery7.SQL.Append('ID_MASTER=:ID_MASTER, ID_SERVICE=:ID_SERVICE, N_1C=:N_1C, NOM_KARTA=:NOM_KARTA WHERE ID_SHAPKA=:ID_SHAPKA');
     IBQuery7.ParamByName('ABOUT').AsString:=memo2.Text;
        if DatetimePicker2.Checked=true then IBQuery4.ParamByName('DATA_END').AsDate:=Trunc(DateTimePicker2.Date)
                                        else IBQuery7.ParamByName('DATA_END').Value:=Null;                          // ���� ������ �������
       IBQuery7.ParamByName('DATA_GET').AsDate:=Trunc(DateTimePicker1.Date);  // �������� � ������
       IBQuery7.ParamByName('DATA_KRAY').AsDate:=Trunc(DateTimePicker3.Date); // �������� ��������� �������

       IBQuery7.ParamByName('F_CLIENT').AsInteger:=IBQuery5ID.AsInteger; // ID ��������� �����
       IBQuery7.ParamByName('F_KORRECT').AsInteger:=0;


      if checkBox1.Checked then IBQuery7.ParamByName('F_SOGL_C').AsInteger:=1
                           else IBQuery7.ParamByName('F_SOGL_C').AsInteger:=0;
      if checkBox2.Checked then IBQuery7.ParamByName('F_SOGL_V').AsInteger:=1
                           else IBQuery7.ParamByName('F_SOGL_V').AsInteger:=0;
      if checkBox3.Checked then IBQuery7.ParamByName('F_SOGL_T').AsInteger:=1
                           else IBQuery7.ParamByName('F_SOGL_T').AsInteger:=0;
      if checkBox4.Checked then IBQuery7.ParamByName('F_REZ_C').AsInteger:=1
                           else IBQuery7.ParamByName('F_REZ_C').AsInteger:=0;
       IBQuery7.ParamByName('F_REZ_O').AsInteger:=0;
       IBQuery7.ParamByName('F_STATUS').AsInteger:=1; // ������ �������
       IBQuery7.ParamByName('ID_CLIENT').AsInteger:=strtoint (label8.Caption);
       IBQuery7.ParamByName('ID_MANAGER').AsInteger:=id_idmanager;

       if label12.Caption='1' then begin
                                   IBQuery7.ParamByName('ID_MASTER').AsInteger:=strtoint(label9.Caption);
                                   IBQuery7.ParamByName('ID_SERVICE').AsInteger:=0;
                                 end else begin
                                            IBQuery7.ParamByName('ID_MASTER').AsInteger:=0;
                                            IBQuery7.ParamByName('ID_SERVICE').AsInteger:=strtoint(label9.Caption);
                                          end;
      IBQuery7.ParamByName('N_1C').AsString:=Edit4.Text;
      IBQuery7.ParamByName('NOM_KARTA').AsString:=Edit2.Text;
      IBQuery7.ParamByName('ID_SHAPKA').AsInteger:=strtoint(Label15.Caption);
      IBQuery7.Close;
      IBQuery7.Open;
      Unit2.DataModule2.IBTransaction1.CommitRetaining;
      end;
end;

procedure TForm5.N10Click(Sender: TObject);
begin
if (r='������') and (advStringGrid1.Cells [14, advStringGrid1.Row]<>inttostr(unit1.ID_USER)) then begin
  end else
  begin
  // ����������� ����� �� �����������
if l1=1 then
 if (label15.Caption<>'0')and(NOT IBQuery8.Eof) then
 begin
   // ���������� � ������������

   // ���� ������ ����� - ��������� ����� �������
    if advStringGrid1.Cells [1, advStringGrid1.Row]<>'' then
       begin
       //Showmessage ('��������� ���� ITEM');
        // ��������� ��� ������ ������ ������
         IBQuery22.SQL.Clear;
         IBQuery22.SQL.Append('UPDATE TODO SET FL_SOGLASOVANO=:FL_SOGLASOVANO WHERE ID_ITEM=:ID_ITEM AND ID_SHAPKA=:ID_SHAPKA AND FL_GOTOVO=:FL_GOTOVO');
         IBQuery22.ParamByName('FL_SOGLASOVANO').AsInteger:=0;
         IBQuery22.ParamByName('FL_GOTOVO').AsInteger:=0;
         IBQuery22.ParamByName('ID_ITEM').AsInteger:=strtoint(advStringGrid1.Cells [4, advStringGrid1.Row]);
         IBQuery22.ParamByName('ID_SHAPKA').AsInteger:=strtoint(label15.Caption);
         IBQuery22.Close;
         IBQuery22.Open;
         unit2.DataModule2.IBTransaction1.CommitRetaining;
         speedbutton7.Click; // ��������� ������� � ��������� ������

       end
       else
       begin
        // Showmessage ('��������� ���������� ������');
         IBQuery22.SQL.Clear;
         IBQuery22.SQL.Append('UPDATE TODO SET FL_SOGLASOVANO=:FL_SOGLASOVANO WHERE ID_ITEM=:ID_ITEM AND ID_SHAPKA=:ID_SHAPKA AND TODO_ID=:TODO_ID AND FL_GOTOVO=:FL_GOTOVO');
         IBQuery22.ParamByName('FL_SOGLASOVANO').AsInteger:=0;
         IBQuery22.ParamByName('FL_GOTOVO').AsInteger:=0;
         IBQuery22.ParamByName('ID_ITEM').AsInteger:=strtoint(advStringGrid1.Cells [7, advStringGrid1.Row]);
         IBQuery22.ParamByName('ID_SHAPKA').AsInteger:=strtoint(label15.Caption);
         IBQuery22.ParamByName('TODO_ID').AsInteger:=strtoint(advStringGrid1.Cells [8, advStringGrid1.Row]);
         IBQuery22.Close;
         IBQuery22.Open;
         unit2.DataModule2.IBTransaction1.CommitRetaining;
         speedbutton7.Click; // ��������� ������� � ��������� ������
       end;


 end;
 end;
end;

procedure TForm5.N9Click(Sender: TObject);
begin
if (r='������') and (advStringGrid1.Cells [14, advStringGrid1.Row]<>inttostr(unit1.ID_USER)) then begin
  end else
  begin
// ����������� ����� ������
if (l3=1)or(label12.Caption='2') then
 if (label15.Caption<>'0')and(NOT IBQuery8.Eof) then
 begin
   // ���������� � ������������

   // ���� ������ ����� - ��������� ����� �������
    if advStringGrid1.Cells [1, advStringGrid1.Row]<>'' then
       begin
       // Showmessage ('��������� ���� ITEM')
        // ��������� ��� ������ ������ ������
         IBQuery22.SQL.Clear;
         IBQuery22.SQL.Append('UPDATE TODO SET FL_GOTOVO=:FL_GOTOVO WHERE ID_ITEM=:ID_ITEM AND ID_SHAPKA=:ID_SHAPKA');
         IBQuery22.ParamByName('FL_GOTOVO').AsInteger:=1;
         IBQuery22.ParamByName('ID_ITEM').AsInteger:=strtoint(advStringGrid1.Cells [4, advStringGrid1.Row]);
         IBQuery22.ParamByName('ID_SHAPKA').AsInteger:=strtoint(label15.Caption);
         IBQuery22.Close;
         IBQuery22.Open;
         unit2.DataModule2.IBTransaction1.CommitRetaining;
         speedbutton7.Click; // ��������� ������� � ��������� ������

       end
       else
       begin
        // Showmessage ('��������� ���������� ������');
         IBQuery22.SQL.Clear;
         IBQuery22.SQL.Append('UPDATE TODO SET FL_GOTOVO=:FL_GOTOVO WHERE ID_ITEM=:ID_ITEM AND ID_SHAPKA=:ID_SHAPKA AND TODO_ID=:TODO_ID');
         IBQuery22.ParamByName('FL_GOTOVO').AsInteger:=1;
         IBQuery22.ParamByName('ID_ITEM').AsInteger:=strtoint(advStringGrid1.Cells [7, advStringGrid1.Row]);
         IBQuery22.ParamByName('ID_SHAPKA').AsInteger:=strtoint(label15.Caption);
         IBQuery22.ParamByName('TODO_ID').AsInteger:=strtoint(advStringGrid1.Cells [8, advStringGrid1.Row]);
         IBQuery22.Close;
         IBQuery22.Open;
         unit2.DataModule2.IBTransaction1.CommitRetaining;
         speedbutton7.Click; // ��������� ������� � ��������� ������
       end;


 end;
 end;
end;

procedure TForm5.N11Click(Sender: TObject);
begin
if (r='������') and (advStringGrid1.Cells [14, advStringGrid1.Row]<>inttostr(unit1.ID_USER)) then begin
  end else
  begin
  // ����������� ����� �� ������
if (l3=1)or(label12.Caption='2') then
 if (label15.Caption<>'0')and(NOT IBQuery8.Eof) then
 begin
   // ���������� � ������������

   // ���� ������ ����� - ��������� ����� �������
    if advStringGrid1.Cells [1, advStringGrid1.Row]<>'' then
       begin
       // Showmessage ('��������� ���� ITEM')
        // ��������� ��� ������ ������ ������
         IBQuery22.SQL.Clear;
         IBQuery22.SQL.Append('UPDATE TODO SET FL_GOTOVO=:FL_GOTOVO WHERE ID_ITEM=:ID_ITEM AND ID_SHAPKA=:ID_SHAPKA');
         IBQuery22.ParamByName('FL_GOTOVO').AsInteger:=0;
         IBQuery22.ParamByName('ID_ITEM').AsInteger:=strtoint(advStringGrid1.Cells [4, advStringGrid1.Row]);
         IBQuery22.ParamByName('ID_SHAPKA').AsInteger:=strtoint(label15.Caption);
         IBQuery22.Close;
         IBQuery22.Open;
         unit2.DataModule2.IBTransaction1.CommitRetaining;
         speedbutton7.Click; // ��������� ������� � ��������� ������

       end
       else
       begin
        // Showmessage ('��������� ���������� ������');
         IBQuery22.SQL.Clear;
         IBQuery22.SQL.Append('UPDATE TODO SET FL_GOTOVO=:FL_GOTOVO WHERE ID_ITEM=:ID_ITEM AND ID_SHAPKA=:ID_SHAPKA AND TODO_ID=:TODO_ID');
         IBQuery22.ParamByName('FL_GOTOVO').AsInteger:=0;
         IBQuery22.ParamByName('ID_ITEM').AsInteger:=strtoint(advStringGrid1.Cells [7, advStringGrid1.Row]);
         IBQuery22.ParamByName('ID_SHAPKA').AsInteger:=strtoint(label15.Caption);
         IBQuery22.ParamByName('TODO_ID').AsInteger:=strtoint(advStringGrid1.Cells [8, advStringGrid1.Row]);
         IBQuery22.Close;
         IBQuery22.Open;
         unit2.DataModule2.IBTransaction1.CommitRetaining;
         speedbutton7.Click; // ��������� ������� � ��������� ������
       end;


 end;
  end;
end;

procedure TForm5.N12Click(Sender: TObject);
begin
if (r='������') and (advStringGrid1.Cells [14, advStringGrid1.Row]<>inttostr(unit1.ID_USER)) then begin
  end else
  begin
  if l2=1 then
 if (label15.Caption<>'0')and(NOT IBQuery8.Eof) then
 begin
 // ����������� ����� ������ �������
 IBQuery23.SQL.Clear;
 IBQuery23.SQL.Append('UPDATE REM_USTR SET FL_VIDANO=:FL_VIDANO, DAT_VIDANO=:DAT_VIDANO WHERE ID_SHAPKA=:ID_SHAPKA AND ID=:ID');
 IBQuery23.ParamByName('FL_VIDANO').AsInteger:=1;
 IBQuery23.ParamByName('ID_SHAPKA').AsInteger:=strtoint (label15.Caption);
 IBQuery23.ParamByName('ID').AsInteger:=strtoint(advStringGrid1.Cells [4, advStringGrid1.Row]);
 IBQuery23.ParamByName('DAT_VIDANO').AsDateTime:=now();
 IBQuery23.Close;
 IBQuery23.Open;
 unit2.DataModule2.IBTransaction1.CommitRetaining;
 speedbutton7.Click;

end;
end;

end;

procedure TForm5.N13Click(Sender: TObject);
begin
if (r='������') and (advStringGrid1.Cells [14, advStringGrid1.Row]<>inttostr(unit1.ID_USER)) then begin
  end else
  begin
  if l2=1 then
 if (label15.Caption<>'0')and(NOT IBQuery8.Eof) then
 begin
 // ����������� ����� �� ������ �������
 IBQuery23.SQL.Clear;
 IBQuery23.SQL.Append('UPDATE REM_USTR SET FL_VIDANO=:FL_VIDANO, DAT_VIDANO=:DAT_VIDANO WHERE ID_SHAPKA=:ID_SHAPKA AND ID=:ID');
 IBQuery23.ParamByName('FL_VIDANO').AsInteger:=0;
 IBQuery23.ParamByName('ID_SHAPKA').AsInteger:=strtoint (label15.Caption);
 IBQuery23.ParamByName('ID').AsInteger:=strtoint(advStringGrid1.Cells [4, advStringGrid1.Row]);
 IBQuery23.ParamByName('DAT_VIDANO').Value:=NULL;
 IBQuery23.Close;
 IBQuery23.Open;
 unit2.DataModule2.IBTransaction1.CommitRetaining;
 speedbutton7.Click;

end;
end;
end;

procedure TForm5.AdvStringGrid1DrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
begin
 {if advStringGrid1.Cells[1, ARow] <>'' then advStringGrid1.Canvas.Brush.Color:=clGreen
    else advStringGrid1.Canvas.Brush.Color:=advStringGrid1.Color;
    }

// if ACol = 9 then
//if advStringGrid1.Cells[ACol, ARow] = '1' then ImageList1.Draw(advStringGrid1.Canvas, Rect.Left, Rect.Top, 0, true);
end;

procedure TForm5.AdvStringGrid1GetDisplText(Sender: TObject; ACol,
  ARow: Integer; var Value: String);
var  
  oldvalue: string;  
begin
{
  oldvalue := value;
  if (ACol = 8) and (ARow > 0) then
  begin
    if value = '1' then
      value := '1'
    else
      value := '0';

  end;
  }
  end;

procedure TForm5.SpeedButton8Click(Sender: TObject);
var l,l1:string;
    i:integer;
    su:real;
begin

 IBQuery28.SQL.Clear;
 IBQuery28.SQL.Append('select * from TODO WHERE ID_SHAPKA=:ID_SHAPKA');
 IBQuery28.ParamByName('ID_SHAPKA').AsInteger:=strtoint(label15.Caption);
 IBQuery28.Close;
 IBQuery28.Open;
 IBQuery28.First;
 su:=0;
 While not IBQuery28.Eof do
    begin
    su:=su+IBQuery28TOTAL_COST.AsFloat;
    IBQuery28.Next;
    end;



 IBQuery25.SQL.Clear;
 IBQuery25.SQL.Append('select * from REM_USTR WHERE ID_SHAPKA=:ID_SHAPKA ORDER BY ID');
 IBQuery25.ParamByName('ID_SHAPKA').AsInteger:=strtoint(label15.Caption);
 IBQuery25.Close;
 IBQuery25.Open;


 IBQuery27.Close;
 IBQuery27.Open;

 frxreport1.Variables.Clear;
 frxreport1.Variables['MFIRM']:=''''+IBQuery27MAINFIRM.AsString+'''';
 frxreport1.Variables['ADRESS']:=''+IBQuery27ADRESS.AsString+'';

 frxreport1.Variables['PHONE']:=''''+IBQuery27PHONE.AsString+'''';
 frxreport1.Variables['SITE']:=''''+IBQuery27SITE.AsString+'''';
 frxreport1.Variables['EMAIL']:=''''+IBQuery27EMAIL.AsString+'''';
 frxreport1.Variables['NOM']:=''''+Label15.Caption+'''';
 frxreport1.Variables['SUMM']:=''''+floattostr(su)+'''';
 frxreport1.Variables['ABOUT']:=''+Memo2.Text+'';
 frxreport1.Variables['NOMKART']:=''''+Edit2.Text+'''';
 frxreport1.PrepareReport();
 frxreport1.ShowReport;
end;



procedure TForm5.frxReport1BeforePrint(Sender: TfrxReportComponent);
 var
 Cross1, cross2: TfrxCrossView;
 Barcode1: TfrxBarCodeView;
 tcheckbox1,tcheckbox2,tcheckbox3,tcheckbox4 : TfrxCheckBoxView;
  i, j: Integer;
  l, l1:string;
begin
    if Sender is TfrxCheckBoxView then
  begin


  if TfrxCheckBoxView(Sender).Name='CheckBox8' then
   if checkbox3.Checked=true then TfrxCheckBoxView(Sender).Checked:=true
                             else TfrxCheckBoxView(Sender).Checked:=false;

  if TfrxCheckBoxView(Sender).Name='CheckBox7' then
   if checkbox2.Checked=true then TfrxCheckBoxView(Sender).Checked:=true
                             else TfrxCheckBoxView(Sender).Checked:=false;

  if TfrxCheckBoxView(Sender).Name='CheckBox6' then
   if checkbox1.Checked=true then TfrxCheckBoxView(Sender).Checked:=true
                             else TfrxCheckBoxView(Sender).Checked:=false;

  if TfrxCheckBoxView(Sender).Name='CheckBox5' then
   if checkbox4.Checked=true then TfrxCheckBoxView(Sender).Checked:=true
                             else TfrxCheckBoxView(Sender).Checked:=false;
  end;

    if Sender is TfrxBarcodeView then
  begin
   //l:=''; l1:='';
   //l1:=copy(label15.Caption, length(label15.Caption),1);

   //for i:=1 to 8-length (label15.Caption) do l:=l+'0';
  // l:=l+label15.Caption+l1;

    Barcode1 := TfrxBarcodeView(Sender);
    BarCode1.Text:=label15.Caption;

  end;

  if Sender is TfrxCrossView then
  begin

    Cross1 := TfrxCrossView(Sender);

    for i := 1 to advstringgrid1.RowCount do
      for j := 1 to advstringgrid1.ColCount do
        if (i<>5)and(i<>8)and(i<>9) then
        
        Cross1.AddValue([j], [i], [advStringGrid1.Cells[i - 1, j - 1]]);

   end;
end;

procedure TForm5.FormCreate(Sender: TObject);
begin
Randomize;
end;



procedure TForm5.N15Click(Sender: TObject);
begin
 IBQuery27.Close;
 IBQuery27.Open;
 
 IBQuery11.SQL.Clear;
 IBQuery11.SQL.Append('select * from REM_USTR WHERE ID=:ID AND ID_SHAPKA=:ID_SHAPKA');
 IBQuery11.ParamByName('ID').AsInteger:=ID_USTR_SELECT;
 IBQuery11.ParamByName('ID_SHAPKA').AsInteger:=strtoint(label15.Caption);
 IBQuery11.Close;
 IBQuery11.Open;
 IBQuery11.First;

 frxreport2.Variables.Clear;
 frxreport2.Variables['MFIRM']:=''''+IBQuery27MAINFIRM.AsString+'''';
 frxreport2.Variables['ADRESS']:=''+IBQuery27ADRESS.AsString+'';

 frxreport2.Variables['PHONE']:=''''+IBQuery27PHONE.AsString+'''';
 frxreport2.Variables['SITE']:=''''+IBQuery27SITE.AsString+'''';
 frxreport2.Variables['EMAIL']:=''''+IBQuery27EMAIL.AsString+'''';
 frxreport2.Variables['NOM']:=''''+Label15.Caption+'''';
 frxreport2.Variables['NOMKART']:=''''+Edit2.Text+'''';
 frxreport2.Variables['ITEMNAME']:=''''+IBQuery11USTR_NAME.AsString+'''';
 frxreport2.Variables['ZAKAZNAME']:=''''+Edit1.Text+'''';
 frxreport2.Variables['SNAME']:=''''+IBQuery11SERIAL.AsString+'''';
 frxreport2.PrepareReport();
 frxreport2.ShowReport;

end;

procedure TForm5.N16Click(Sender: TObject);
begin
 IBQuery27.Close;
 IBQuery27.Open;
 
 IBQuery11.SQL.Clear;
 IBQuery11.SQL.Append('select * from REM_USTR WHERE ID=:ID AND ID_SHAPKA=:ID_SHAPKA');
 IBQuery11.ParamByName('ID').AsInteger:=ID_USTR_SELECT;
 IBQuery11.ParamByName('ID_SHAPKA').AsInteger:=strtoint(label15.Caption);
 IBQuery11.Close;
 IBQuery11.Open;
 IBQuery11.First;

 frxreport3.Variables.Clear;
 frxreport3.Variables['MFIRM']:=''''+IBQuery27MAINFIRM.AsString+'''';
 frxreport3.Variables['ADRESS']:=''+IBQuery27ADRESS.AsString+'';

 frxreport3.Variables['PHONE']:=''''+IBQuery27PHONE.AsString+'''';
 frxreport3.Variables['SITE']:=''''+IBQuery27SITE.AsString+'''';
 frxreport3.Variables['EMAIL']:=''''+IBQuery27EMAIL.AsString+'''';
 frxreport3.Variables['NOM']:=''''+Label15.Caption+'''';
 frxreport3.Variables['NOMKART']:=''''+Edit2.Text+'''';
 frxreport3.Variables['ITEMNAME']:=''''+IBQuery11USTR_NAME.AsString+'''';
 frxreport3.Variables['ZAKAZNAME']:=''''+Edit1.Text+'''';
 frxreport3.Variables['SNAME']:=''''+IBQuery11SERIAL.AsString+'''';
 frxreport3.PrepareReport();
 frxreport3.ShowReport;
end;

procedure TForm5.N17Click(Sender: TObject);
begin
 IBQuery27.Close;
 IBQuery27.Open;
 
 IBQuery11.SQL.Clear;
 IBQuery11.SQL.Append('select * from REM_USTR WHERE ID=:ID AND ID_SHAPKA=:ID_SHAPKA');
 IBQuery11.ParamByName('ID').AsInteger:=ID_USTR_SELECT;
 IBQuery11.ParamByName('ID_SHAPKA').AsInteger:=strtoint(label15.Caption);
 IBQuery11.Close;
 IBQuery11.Open;
 IBQuery11.First;

 frxreport4.Variables.Clear;
 frxreport4.Variables['MFIRM']:=''''+IBQuery27MAINFIRM.AsString+'''';
 frxreport4.Variables['ADRESS']:=''+IBQuery27ADRESS.AsString+'';

 frxreport4.Variables['PHONE']:=''''+IBQuery27PHONE.AsString+'''';
 frxreport4.Variables['SITE']:=''''+IBQuery27SITE.AsString+'''';
 frxreport4.Variables['EMAIL']:=''''+IBQuery27EMAIL.AsString+'''';
 frxreport4.Variables['NOM']:=''''+Label15.Caption+'''';
 frxreport4.Variables['NOMKART']:=''''+Edit2.Text+'''';
 frxreport4.Variables['ITEMNAME']:=''''+IBQuery11USTR_NAME.AsString+'''';
 frxreport4.Variables['ZAKAZNAME']:=''''+Edit1.Text+'''';
 frxreport4.Variables['SNAME']:=''''+IBQuery11SERIAL.AsString+'''';
 frxreport4.PrepareReport();
 frxreport4.ShowReport;
end;

procedure TForm5.N18Click(Sender: TObject);
begin
 IBQuery27.Close;
 IBQuery27.Open;
 
 IBQuery11.SQL.Clear;
 IBQuery11.SQL.Append('select * from REM_USTR WHERE ID=:ID AND ID_SHAPKA=:ID_SHAPKA');
 IBQuery11.ParamByName('ID').AsInteger:=ID_USTR_SELECT;
 IBQuery11.ParamByName('ID_SHAPKA').AsInteger:=strtoint(label15.Caption);
 IBQuery11.Close;
 IBQuery11.Open;
 IBQuery11.First;

 frxreport5.Variables.Clear;
 frxreport5.Variables['MFIRM']:=''''+IBQuery27MAINFIRM.AsString+'''';
 frxreport5.Variables['ADRESS']:=''+IBQuery27ADRESS.AsString+'';

 frxreport5.Variables['PHONE']:=''''+IBQuery27PHONE.AsString+'''';
 frxreport5.Variables['SITE']:=''''+IBQuery27SITE.AsString+'''';
 frxreport5.Variables['EMAIL']:=''''+IBQuery27EMAIL.AsString+'''';
 frxreport5.Variables['NOM']:=''''+Label15.Caption+'''';
 frxreport5.Variables['NOMKART']:=''''+Edit2.Text+'''';
 frxreport5.Variables['ITEMNAME']:=''''+IBQuery11USTR_NAME.AsString+'''';
 frxreport5.Variables['ZAKAZNAME']:=''''+Edit1.Text+'''';
 frxreport5.Variables['SNAME']:=''''+IBQuery11SERIAL.AsString+'''';
 frxreport5.PrepareReport();
 frxreport5.ShowReport;
end;

procedure TForm5.AdvStringGrid1DblClick(Sender: TObject);
begin




// �� ����� ���������� �����
if  strtoint(advStringGrid1.Cells [10, advStringGrid1.Row])=1 then // ���� ����������� - ��������� ��������� ������
 begin
  // ��� ������� ������������ ����� ��������������
  if l1=1 then
             begin
              N10.Enabled:=true; // �� �����������
              N10.Visible:=true;
              N5.Visible:=false;
              N5.Enabled:=false; // �����������
             end
             else
             begin
              N10.Enabled:=false; // �� �����������
              N10.Visible:=false;
              N5.Visible:=false;
              N5.Enabled:=false; // �����������
             end;



if  (strtoint(advStringGrid1.Cells [9, advStringGrid1.Row])=0) then
                                                          begin
                                                            if (l3=1)or(label12.Caption='2') then begin
                                                                                        N9.Visible:=true; // ������
                                                                                        N11.Visible:=false; // �� ������
                                                                                        N9.Enabled:=true; // ������
                                                                                        N11.Enabled:=false; // �� ������

                                                                          end
                                                                          else
                                                                          begin
                                                                                        N9.Visible:=false; // ������
                                                                                        N11.Visible:=false; // �� ������
                                                                                        N9.Enabled:=false; // ������
                                                                                        N11.Enabled:=false; // �� ������
                                                                          end;
                                                           // ���� �� ������ - ������ ������
                                                            if l2=1 then begin

                                                                          N12.Enabled:=false; // ������
                                                                          N12.Visible:=false;
                                                                          N13.Enabled:=false; // �� ������
                                                                          N13.Visible:=false;
                                                                               end;



                                                          end else
                                                           begin
                                                            if (l3=1)or(label12.Caption='2') then begin
                                                                                        N9.Visible:=false; // ������
                                                                                        N11.Visible:=true; // �� ������
                                                                                        N11.Enabled:=true; // ������
                                                                                        N9.Enabled:=false; // �� ������

                                                                                     end else
                                                                                       begin
                                                                                        N9.Visible:=false; // ������
                                                                                        N11.Visible:=false; // �� ������
                                                                                        N11.Enabled:=false; // ������
                                                                                        N9.Enabled:=false; // �� ������
                                                                                       end;
                                                           // ���� ������ - �� ����������� ������, ����� ������
                                                           if l1=1 then begin
                                                                          N5.Enabled:=false; // �����������
                                                                          N5.Visible:=false;
                                                                          N10.Enabled:=false; // �� �����������
                                                                          N10.Visible:=false;
                                                                        end;
                                                           // ���� ������ - �� ����������� ������, ����� ������
                                                           if l2=1 then begin

                                                                         if (advStringGrid1.Cells [11, advStringGrid1.Row]='0')
                                                                            then
                                                                              begin
                                                                          N12.Enabled:=true; // ������
                                                                          N12.Visible:=true;
                                                                          N13.Enabled:=false; // �� ������
                                                                          N13.Visible:=false;
                                                                               end
                                                                               else
                                                                               begin
                                                                          N12.Enabled:=false; // ������
                                                                          N12.Visible:=false;
                                                                          N13.Enabled:=true; // �� ������
                                                                          N13.Visible:=true;
                                                                               end;
                                                                        end;
                                                           end;
              end else
              begin
               // ��������� ������ ������, ����������� ������������
                     N9.Visible:=false; // ������
                     N11.Visible:=false; // �� ������
                     N9.Enabled:=false; // ������
                     N11.Enabled:=false; // �� ������
               // ������ ������
                     N12.Enabled:=false; // ������
                     N12.Visible:=false;
                     N13.Enabled:=false; // �� ������
                     N13.Visible:=false;
               // ����� �����������
              N10.Enabled:=false; // �� �����������
              N10.Visible:=false;

         if l1=1 then
             begin
                N5.Enabled:=true; // �����������
                N5.Visible:=true;
             end
             else
             begin
                N5.Enabled:=false; // �����������
                N5.Visible:=false;
             end;

              end;

if  advStringGrid1.Cells [1, advStringGrid1.Row]='' then
           begin
            // ������ ������ ������ ������, ����� ������ ���� �����
            N12.Visible:=false;
            N13.Visible:=false;
           end;

if  advStringGrid1.Cells [4, advStringGrid1.Row]<>'' then
                                 begin
                                  ID_USTR_SELECT:=strtoint(advStringGrid1.Cells [4, advStringGrid1.Row]);
                                  N1.Visible:=true;
                                 end
                                    else begin
                                             ID_USTR_SELECT:=0;
                                             N1.Visible:=false;
                                         end;

// �� �������� �������������� ������ �������, ������ �� �������, ���� ������� ������ - �� �� �� �����
// �������� ����������, �, ��� ���������, �������� ������������ ����� ������ � ������� �������� � �����������
 IBQuery24.SQL.Clear;
 IBQuery24.SQL.Append('select * from REM_USTR WHERE ID_SHAPKA=:ID_SHAPKA AND ID=:ID');
 IBQuery24.ParamByName('ID_SHAPKA').AsInteger:=strtoint(label15.Caption);
 IBQuery24.ParamByName('ID').AsInteger:=strtoint(advStringGrid1.Cells [4, advStringGrid1.Row]);
 IBQuery24.Close;
 IBQuery24.Open;
 IBQuery24.First;
 if IBQuery24FL_VIDANO.AsInteger=1 then
                                     begin
                                       N11.Visible:=false;
                                       N11.Enabled:=false;
                                       N10.Enabled:=false;
                                       N10.Visible:=false;
                                       N5.Enabled:=false;
                                       N5.Visible:=false;
                                       N6.Visible:=false;
                                       N6.Enabled:=false;
                                       N2.Visible:=false;
                                       N2.Enabled:=false;
                                       N7.Visible:=false;
                                       N7.Enabled:=false;
                                       N3.Enabled:=false;
                                       N3.Visible:=false;
                                       N8.Visible:=false;
                                       N8.Enabled:=false;

                                     end
                                     else
                                     begin
    if r='������'  then begin

                           if advStringGrid1.Cells [1, advStringGrid1.Row]<>'' then
                                 begin
                                       N6.Visible:=true;
                                       N6.Enabled:=true;
                                       N2.Visible:=false;
                                       N2.Enabled:=false;
                                       N7.Visible:=true;
                                       N7.Enabled:=true;
                                       N3.Enabled:=false;
                                       N3.Visible:=false;
                                       N8.Visible:=false;
                                       N8.Enabled:=false;
                                       N14.Visible:=false;
                                 end
                                 else
                                 begin
                                       N6.Visible:=true;
                                       N6.Enabled:=true;
                                       N2.Visible:=true;
                                       N2.Enabled:=true;
                                       N7.Visible:=true;
                                       N7.Enabled:=true;
                                       N3.Enabled:=true;
                                       N3.Visible:=true;
                                       N8.Visible:=false;
                                       N8.Enabled:=false;
                                       N14.Visible:=false;
                                     end;
                        end
                        else
                        begin
                   if advStringGrid1.Cells [1, advStringGrid1.Row]<>'' then
                                 begin

                                       N6.Visible:=true;
                                       N6.Enabled:=true;
                                       N2.Visible:=false;
                                       N2.Enabled:=false;
                                       N7.Visible:=true;
                                       N7.Enabled:=true;
                                       N3.Enabled:=false;
                                       N3.Visible:=false;
                                       N8.Visible:=true;
                                       N8.Enabled:=true;

                                       // ��������� �������� ��������� ���������
                                       N14.Visible:=true;

                                    end
                                    else
                                    begin
                                       N6.Visible:=true;
                                       N6.Enabled:=true;
                                       N2.Visible:=true;
                                       N2.Enabled:=true;
                                       N7.Visible:=true;
                                       N7.Enabled:=true;
                                       N3.Enabled:=true;
                                       N3.Visible:=true;
                                       N8.Visible:=true;
                                       N8.Enabled:=true;
                                       N14.Visible:=false;
                                    end;
                        end;


                                     end;

if  advStringGrid1.Cells [1, advStringGrid1.Row]='' then  begin
                                                               if (r='������') and (advStringGrid1.Cells [14, advStringGrid1.Row]<>inttostr(unit1.ID_USER)) then
                                                               begin
                                                               end else N2.Click;
                                                          end
                                                    else N6.click;



end;

procedure TForm5.Edit4KeyPress(Sender: TObject; var Key: Char);
begin
case Key of
  #8,'0'..'9' :  ; // ����� � <Back Space>

     

        else   // ��������� ������� ���������
               key := Chr(0);
    end;
end;

procedure TForm5.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
case Key of
  #8,'0'..'9' :  ; // ����� � <Back Space>


        else   // ��������� ������� ���������
               key := Chr(0);
    end;
end;

procedure TForm5.SpeedButton4Click(Sender: TObject);
begin
   Form10.IBQuery2.Close;
   Form10.IBQuery2.Open;
   Form10.IBQuery2.First;
   Form10.IBQuery1.Close;
   Form10.IBQuery1.Open;
   Form10.IBQuery1.First;
   Form10.ShowModal;
end;

end.