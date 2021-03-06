unit price;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, unit2, DB, IBCustomDataSet, IBQuery, Grids, DBGrids, Buttons,
  StdCtrls, ComCtrls, ExtCtrls, ThemedDBGrid;

type
  TForm16 = class(TForm)
    Panel1: TPanel;
    StatusBar1: TStatusBar;
    Edit1: TEdit;
    SpeedButton1: TSpeedButton;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    IBQuery1: TIBQuery;
    IBQuery2: TIBQuery;
    SpeedButton2: TSpeedButton;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    IBQuery1ID: TIntegerField;
    IBQuery1RAZDEL: TIBStringField;
    IBQuery1ABOUT: TIBStringField;
    Label1: TLabel;
    IBQuery2ID: TIntegerField;
    IBQuery2ID_RAZDEL: TIntegerField;
    IBQuery2ARTICUL: TIBStringField;
    IBQuery2NAME: TIBStringField;
    IBQuery2COST: TFloatField;
    IBQuery2ABOUT: TIBStringField;
    IBQuery2LONG_TIME: TIBStringField;
    IBQuery2US_MASTER_ID: TIntegerField;
    procedure SpeedButton2Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure SpeedButton1Click(Sender: TObject);
    procedure DBGrid2MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid2DblClick(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure FormMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure DBGrid2MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure DBGrid1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Panel1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
    procedure Decoding(F:string; fr: integer; fk1:string; var newstr:string);
  public
    { Public declarations }
  end;

var
  Form16: TForm16;

implementation

uses newitem, unit1, Unit5;

{$R *.dfm}
procedure TForm16.decoding(F:string;fr: integer; fk1:string; var newstr:string);
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


procedure TForm16.SpeedButton2Click(Sender: TObject);
begin
 IBQuery1.SQL.Clear;
 IBQuery1.SQL.Append('select * from PRICE_RAZD ORDER BY RAZDEL');
 IBQuery1.Close;
 IBQuery1.Open;
 IBQuery1.First;
 SpeedButton1.Click;
end;

procedure TForm16.DBGrid1CellClick(Column: TColumn);
begin
  IBQuery2.SQL.Clear;
  IBQuery2.SQL.Append('select * from PRICE WHERE ID_RAZDEL=:ID_RAZDEL AND NAME like :NAME ORDER BY NAME');
  IBQuery2.ParamByName('ID_RAZDEL').AsInteger:=IBQuery1ID.AsInteger;
  IBQuery2.ParamByName('NAME').AsString:='%'+Edit1.Text+'%';
  IBQuery2.Close;
  IBQuery2.Open;
  IBQuery2.First;
end;

procedure TForm16.SpeedButton1Click(Sender: TObject);
begin

  IBQuery2.SQL.Clear;
  IBQuery2.SQL.Append('select * from PRICE WHERE ID_RAZDEL=:ID_RAZDEL AND Upper(NAME) like :NAME ORDER BY NAME');
  IBQuery2.ParamByName('ID_RAZDEL').AsInteger:=IBQuery1ID.AsInteger;
  IBQuery2.ParamByName('NAME').AsString:='%'+AnsiUpperCase(Edit1.Text)+'%';
  IBQuery2.Close;
  IBQuery2.Open;
  IBQuery2.First;
end;

procedure TForm16.DBGrid2MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
if ssRight in Shift then DBGrid2.BeginDrag(true);
end;

procedure TForm16.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (Key = VK_RETURN) then SpeedButton1.Click;
end;

procedure TForm16.DBGrid2DblClick(Sender: TObject);
begin
// ��������� �� ���������, �� ���� ������� ������ ������ 2 ���������� ������
  Form12.IBQuery11.SQL.Clear;
  Form12.IBQuery11.SQL.Append('select * from TODO WHERE ID_SHAPKA=:ID_SHAPKA AND ID_ITEM=:ID_ITEM AND TODO_ID=:TODO_ID');
  Form12.IBQuery11.ParamByName('ID_SHAPKA').AsInteger:=strtoint(Form12.label8.Caption);
  Form12.IBQuery11.ParamByName('ID_ITEM').AsInteger:=strtoint (Form12.label10.Caption);
  Form12.IBQuery11.ParamByName('TODO_ID').AsInteger:=Form16.IBQuery2ID.AsInteger;
  Form12.IBQuery11.Close;
 Form12.IBQuery11.Open;
  Form12.IBQuery11.First;

  if NOT Form12.IBQuery11.Eof then begin

                         Form12.IBQuery12.SQL.Clear;
                         Form12.IBQuery12.SQL.Append('UPDATE TODO SET FL_GOTOVO=:FL_GOTOVO, FL_SOGLASOVANO=:FL_SOGLASOVANO, KOL_VO=:KOL_VO, ');
                         Form12.IBQuery12.SQL.Append('TODO_COST=:TODO_COST, TOTAL_COST=:TOTAL_COST WHERE TODO_ID=:TODO_ID AND ID_ITEM=:ID_ITEM AND ID_SHAPKA=:ID_SHAPKA');

                          if r='������' then Form12.IBQuery12.ParamByName('FL_SOGLASOVANO').AsInteger:=0
                                        else Form12.IBQuery12.ParamByName('FL_SOGLASOVANO').AsInteger:=1;
                           Form12.IBQuery12.ParamByName('KOL_VO').AsInteger:=Form12.IBQuery11KOL_VO.AsInteger+1;
                           Form12.IBQuery12.ParamByName('TODO_COST').VALUE:=FORM16.IBQuery2COST.AsVariant;
                           Form12.IBQuery12.ParamByName('TOTAL_COST').VALUE:=FORM16.IBQuery2COST.AsVariant*(Form12.IBQuery11KOL_VO.AsInteger+1);
                           Form12.IBQuery12.ParamByName('FL_GOTOVO').AsInteger:=0;
                           Form12.IBQuery12.ParamByName('ID_SHAPKA').AsInteger:=strtoint(Form12.label8.Caption);
                           Form12.IBQuery12.ParamByName('ID_ITEM').AsInteger:=strtoint (Form12.label10.Caption);
                           Form12.IBQuery12.ParamByName('TODO_ID').AsInteger:=Form16.IBQuery2ID.AsInteger;
                           Form12.IBQuery12.Close;
                           Form12.IBQuery12.Open;
                           unit2.DataModule2.IBTransaction1.CommitRetaining;

                          // ������������ ���������������
                          Form12.speedbutton6.Click;

                          // ��������� ���� ������
                            Form12.speedbutton5.Click;
                            Form16.close;
                        end else begin


// ��������� ����� ������
Form12.IBQuery7.SQL.Clear;
Form12.IBQuery7.SQL.Append('INSERT INTO TODO (ID_ITEM, ID_SHAPKA, TODO_COST, TODO_ID, TODO_NAME, KOL_VO, TOTAL_COST, FL_GOTOVO, FL_SOGLASOVANO, ID_MASTER, ID_SERVICE, MASTER_NAME) VALUES ');
Form12.IBQuery7.SQL.Append('(:ID_ITEM, :ID_SHAPKA, :TODO_COST, :TODO_ID, :TODO_NAME, :KOL_VO, :TOTAL_COST, :FL_GOTOVO, :FL_SOGLASOVANO, :ID_MASTER, :ID_SERVICE, :MASTER_NAME)');
Form12.IBQuery7.ParamByName('ID_ITEM').AsInteger:=strtoint (Form12.label10.Caption);
Form12.IBQuery7.ParamByName('ID_SHAPKA').AsInteger:=strtoint(Form12.label8.Caption);
Form12.IBQuery7.ParamByName('TODO_COST').VALUE:=FORM16.IBQuery2COST.AsVariant;
Form12.IBQuery7.ParamByName('TODO_ID').AsInteger:=Form16.IBQuery2ID.AsInteger;
Form12.IBQuery7.ParamByName('TODO_NAME').AsString:=Form16.IBQuery2NAME.AsString;
Form12.IBQuery7.ParamByName('KOL_VO').AsInteger:=1;
Form12.IBQuery7.ParamByName('FL_GOTOVO').AsInteger:=0;
// ���� ������ ������� ������ - ���� ������ ������ "�� �����������"
      Decoding(unit1.ROLE_USER,unit1.ID_USER, unit1.NAME_USER, r);
if Form5.Label12.Caption='2' then begin
                                    if r='������' then begin
                                                       Form12.IBQuery7.ParamByName('ID_MASTER').AsInteger:=unit1.ID_USER;
                                                       Form12.IBQuery7.ParamByName('ID_SERVICE').AsInteger:=0;
                                                       Form12.IBQuery7.ParamByName('MASTER_NAME').AsString:=Unit1.FAMILY_USER+' '+unit1.NAME_USER;
                                                       end
                                                       else
                                                       begin
                                                       Form12.IBQuery7.ParamByName('ID_MASTER').AsInteger:=0;
                                                       Form12.IBQuery7.ParamByName('ID_SERVICE').AsInteger:=strtoint (Form5.Label9.Caption);
                                                       Form12.IBQuery7.ParamByName('MASTER_NAME').AsString:=Form5.Edit3.Text;
                                                       end;
                                   // �������� �������� ��������� �����
                                  end;

if Form5.Label12.Caption='1' then begin
                                     // �������� - ������
                                    if r='������' then begin
                                                       Form12.IBQuery7.ParamByName('ID_MASTER').AsInteger:=unit1.ID_USER;
                                                       Form12.IBQuery7.ParamByName('ID_SERVICE').AsInteger:=0;
                                                       Form12.IBQuery7.ParamByName('MASTER_NAME').AsString:=Unit1.FAMILY_USER+' '+unit1.NAME_USER;
                                                       end
                                                       else
                                                       begin
                                                       Form12.IBQuery7.ParamByName('ID_MASTER').AsInteger:=strtoint (Form5.Label9.Caption);;
                                                       Form12.IBQuery7.ParamByName('ID_SERVICE').AsInteger:=0;
                                                       Form12.IBQuery7.ParamByName('MASTER_NAME').AsString:=Form5.Edit3.Text;
                                                       end;
                                  end;


     if r='������' then Form12.IBQuery7.ParamByName('FL_SOGLASOVANO').AsInteger:=0
                   else Form12.IBQuery7.ParamByName('FL_SOGLASOVANO').AsInteger:=1;


Form12.IBQuery7.ParamByName('TOTAL_COST').VALUE:=FORM16.IBQuery2COST.AsVariant;
Form12.IBQuery7.Close;
Form12.IBQuery7.Open;
unit2.DataModule2.IBTransaction1.CommitRetaining;

// ������������ ���������������
Form12.speedbutton6.Click;

// ��������� ���� ������
Form12.speedbutton5.Click;
Form16.Edit1.text:='';
Form16.close;
end;

end;

procedure TForm16.Edit1Change(Sender: TObject);
begin
speedbutton1.Click;
end;

procedure TForm16.FormMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin

if Button = mbRight then
Edit1.text:='';

end;

procedure TForm16.DBGrid2MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
   if Button = mbRight then
Edit1.text:='';
end;

procedure TForm16.DBGrid1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
if Button = mbRight then
Edit1.text:='';
end;

procedure TForm16.Panel1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
if Button = mbRight then
Edit1.text:='';
end;

end.
