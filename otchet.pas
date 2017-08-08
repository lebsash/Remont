unit otchet;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, unit2, ExtCtrls, frxClass, frxCross, ComCtrls, DB, IBCustomDataSet, IBQuery, Grids,
  AdvObj, BaseGrid, AdvGrid, DBAdvGrid, Buttons, StdCtrls, rtflabel,
  CurvyControls, frxChBox;

type
  TForm20 = class(TForm)
    IBQuery1: TIBQuery;
    StatusBar1: TStatusBar;
    Panel1: TPanel;
    DataSource1: TDataSource;
    DBAdvGrid1: TDBAdvGrid;
    IBQuery1ID: TIntegerField;
    IBQuery1RAZDEL: TIBStringField;
    IBQuery1ABOUT: TIBStringField;
    CurvyEdit1: TCurvyEdit;
    CurvyMemo1: TCurvyMemo;
    CurvyEdit2: TCurvyEdit;
    RTFLabel1: TRTFLabel;
    RTFLabel2: TRTFLabel;
    RTFLabel3: TRTFLabel;
    SpeedButton1: TSpeedButton;
    IBQuery2: TIBQuery;
    IBQuery2ID_RAZDEL: TIntegerField;
    IBQuery2PROCENT: TFloatField;
    IBQuery3: TIBQuery;
    IBQuery4: TIBQuery;
    SpeedButton2: TSpeedButton;
    Label1: TLabel;
    IBQuery5: TIBQuery;
    Panel2: TPanel;
    DateTimePicker1: TDateTimePicker;
    CheckBox9: TCheckBox;
    DateTimePicker2: TDateTimePicker;
    CheckBox10: TCheckBox;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox4: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox5: TCheckBox;
    CheckBox6: TCheckBox;
    Edit2: TCurvyEdit;
    Edit1: TCurvyEdit;
    CheckBox7: TCheckBox;
    CheckBox8: TCheckBox;
    AdvStringGrid1: TAdvStringGrid;
    RTFLabel4: TRTFLabel;
    RTFLabel5: TRTFLabel;
    SpeedButton3: TSpeedButton;
    IBQuery6: TIBQuery;
    IBQuery6ID_ITEM: TIntegerField;
    IBQuery6ID_SHAPKA: TIntegerField;
    IBQuery6TODO_NAME: TIBStringField;
    IBQuery6TODO_ID: TIntegerField;
    IBQuery6TODO_COST: TFloatField;
    IBQuery6KOL_VO: TIntegerField;
    IBQuery6TOTAL_COST: TFloatField;
    IBQuery6FL_GOTOVO: TIntegerField;
    IBQuery6FL_SOGLASOVANO: TIntegerField;
    IBQuery6ID: TIntegerField;
    IBQuery6ID_RAZDEL: TIntegerField;
    IBQuery6ARTICUL: TIBStringField;
    IBQuery6NAME: TIBStringField;
    IBQuery6COST: TFloatField;
    IBQuery6ABOUT: TIBStringField;
    IBQuery6LONG_TIME: TIBStringField;
    IBQuery6US_MASTER_ID: TIntegerField;
    IBQuery6ID1: TIntegerField;
    IBQuery6RAZDEL: TIBStringField;
    IBQuery6ABOUT1: TIBStringField;
    IBQuery6ID_RAZDEL1: TIntegerField;
    IBQuery6PROCENT: TFloatField;
    SpeedButton4: TSpeedButton;
    frxCrossObject1: TfrxCrossObject;
    frxReport1: TfrxReport;
    frxUserDataSet1: TfrxUserDataSet;
    frxCheckBoxObject1: TfrxCheckBoxObject;
    SpeedButton5: TSpeedButton;
    IBQuery6ID_MASTER: TIntegerField;
    IBQuery6ID_SERVICE: TIntegerField;
    IBQuery6MASTER_NAME: TIBStringField;
    procedure DBAdvGrid1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure frxReport1BeforePrint(Sender: TfrxReportComponent);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form20: TForm20;

implementation
uses unit1;

{$R *.dfm}

procedure TForm20.DBAdvGrid1Click(Sender: TObject);
begin

if CurvyEdit1.Text<>'' then speedbutton2.Click;
label1.Caption:=IBQuery1ID.AsString;
CurvyEdit2.Text:=IBQuery1RAZDEL.AsString;
CurvyMemo1.Lines.Clear;
CurvyMemo1.Lines.Append(IBQuery1ABOUT.AsString);
IBQuery2.SQL.Clear;
IBQuery2.SQL.Append('select * from PROC WHERE ID_RAZDEL=:ID_RAZDEL');
IBQuery2.ParamByName('ID_RAZDEL').AsInteger:=IBQuery1ID.AsInteger;
IBQuery2.Close;
IBQuery2.Open;
IBQuery2.First;
if IBQuery2.Eof then CurvyEdit1.Text:='15'
                else CurvyEdit1.Text:=IBQuery2PROCENT.AsString;
end;

procedure TForm20.SpeedButton1Click(Sender: TObject);
var SavePlace: TBookmark;
begin
IBQuery2.SQL.Clear;
IBQuery2.SQL.Append('select * from PROC WHERE ID_RAZDEL=:ID_RAZDEL');
IBQuery2.ParamByName('ID_RAZDEL').AsInteger:=IBQuery1ID.AsInteger;
IBQuery2.Close;
IBQuery2.Open;
IBQuery2.First;
if IBQuery2.Eof then
begin

IBQuery3.SQL.Clear;
IBQuery3.SQL.Append('INSERT INTO PROC (PROCENT, ID_RAZDEL) VALUES (:PROCENT, :ID_RAZDEL)');
IBQuery3.ParamByName('PROCENT').AsFloat:=strtofloat(CurvyEdit1.Text);
IBQuery3.ParamByName('ID_RAZDEL').AsInteger:=IBQuery1ID.AsInteger;
IBQuery3.Close;
IBQuery3.Open;
 unit2.DataModule2.IBTransaction1.CommitRetaining;


end else
if IBQuery2PROCENT.AsString<>CurvyEdit1.Text then
 begin

   IBQuery4.SQL.Clear;
   IBQuery4.SQL.Append('UPDATE PROC SET PROCENT=:PROCENT WHERE ID_RAZDEL=:ID_RAZDEL');
   IBQuery4.ParamByName('PROCENT').AsFloat:=strtofloat(CurvyEdit1.Text);
   IBQuery4.ParamByName('ID_RAZDEL').AsInteger:=IBQuery1ID.AsInteger;
   IBQuery4.Close;
   IBQuery4.Open;
    unit2.DataModule2.IBTransaction1.CommitRetaining;



 end;

end;

procedure TForm20.SpeedButton2Click(Sender: TObject);
var SavePlace: TBookmark;
begin
if unit1.Form1.Label2.Caption='������' then
    begin
    end else
    begin
IBQuery2.SQL.Clear;
IBQuery2.SQL.Append('select * from PROC WHERE ID_RAZDEL=:ID_RAZDEL');
IBQuery2.ParamByName('ID_RAZDEL').AsInteger:=strtoint(label1.Caption);
IBQuery2.Close;
IBQuery2.Open;
IBQuery2.First;
if IBQuery2.Eof then
begin

IBQuery3.SQL.Clear;
IBQuery3.SQL.Append('INSERT INTO PROC (PROCENT, ID_RAZDEL) VALUES (:PROCENT, :ID_RAZDEL)');
IBQuery3.ParamByName('PROCENT').AsFloat:=strtofloat(CurvyEdit1.Text);
IBQuery3.ParamByName('ID_RAZDEL').AsInteger:=strtoint(label1.Caption);
IBQuery3.Close;
IBQuery3.Open;
  unit2.DataModule2.IBTransaction1.CommitRetaining;


end else
if IBQuery2PROCENT.AsString<>CurvyEdit1.Text then
 begin
   SavePlace := IBQuery1.GetBookmark;
   IBQuery4.SQL.Clear;
   IBQuery4.SQL.Append('UPDATE PROC SET PROCENT=:PROCENT WHERE ID_RAZDEL=:ID_RAZDEL');
   IBQuery4.ParamByName('PROCENT').AsFloat:=strtofloat(CurvyEdit1.Text);
   IBQuery4.ParamByName('ID_RAZDEL').AsInteger:=strtoint(label1.Caption);
   IBQuery4.Close;
   IBQuery4.Open;
    unit2.DataModule2.IBTransaction1.CommitRetaining;


 end;
 end;
end;

procedure TForm20.SpeedButton3Click(Sender: TObject);
var rabot, i, j, col, pl : integer;
    summa_razdel_proc,summa_razdel :array [1..1000] of real;
    razdel,rp: array [1..1000] of string;
    summa, procentov: real;
begin
 advStringGrid1.Clear;
 advStringGrid1.Multilinecells:=true;
 advStringGrid1.WordWrap:=true;
 for i:=1 to 1000 do
 begin
  summa_razdel_proc[i]:=0;
  summa_razdel[i]:=0;
  razdel[i]:='';
  rp[i]:='';
 end;
 col:=0;
 rabot:=0;
 summa:=0;
 procentov:=0;
 pl:=0;
 // �������� ������� �� ������� �� ������ ����� IBQuery1
 form1.IBQuery1.First;
 WHile not form1.IBQuery1.Eof do
 begin

 IBQuery6.SQL.Clear;
 IBQuery6.SQL.Append('select * from TODO ');
 IBQuery6.SQL.Append('LEFT JOIN PRICE ON TODO.TODO_ID=PRICE.ID LEFT JOIN PRICE_RAZD ON PRICE.ID_RAZDEL=PRICE_RAZD.ID LEFT JOIN PROC ON PRICE_RAZD.ID=PROC.ID_RAZDEL WHERE TODO.ID_SHAPKA=:ID_SHAPKA ');
 if CheckBox8.Checked=true then begin
                                  IBQuery6.SQL.Append('AND TODO.MASTER_NAME LIKE :MASTER ');
                                  IBQuery6.ParamByName('MASTER').AsString:=Edit2.Text
                                 end;



 IBQuery6.ParamByName('ID_SHAPKA').AsInteger:=Form1.IBQuery1ID_SHAPKA.AsInteger;
 IBQuery6.Close;
 IBQuery6.Open;
 IBQuery6.First;
 while not IBQuery6.Eof do
 begin
  rabot:=rabot+IBQuery6KOL_VO.asInteger;
  summa:=summa+IBQuery6TOTAL_COST.AsVariant;
  procentov:=procentov+(IBQuery6TOTAL_COST.AsVariant*IBQuery6PROCENT.AsVariant/100);
  // ���� ������������ �������
  pl:=0;
  for i:=1 to col do
  begin
    if razdel[i]=IBQuery6RAZDEL.AsString then
         begin
          summa_razdel[i]:=summa_razdel[i]+IBQuery6TOTAL_COST.AsVariant;
          summa_razdel_proc[i]:=summa_razdel_proc[i]+(IBQuery6TOTAL_COST.AsVariant*IBQuery6PROCENT.AsVariant/100);
         pl:=1;
         end;
  end;
  if pl=0 then begin
                i:=1;
                while razdel[i]<>'' do i:=i+1;
                razdel[i]:=IBQuery6RAZDEL.AsString;
                rp[i]:=IBQuery6PROCENT.Asstring;
                summa_razdel[i]:=summa_razdel[i]+IBQuery6TOTAL_COST.AsVariant;
                summa_razdel_proc[i]:=summa_razdel_proc[i]+(IBQuery6TOTAL_COST.AsVariant*IBQuery6PROCENT.AsVariant/100);
                pl:=1;
               end;

  col:=col+1;
  IBQuery6.Next;
 end;

 form1.IBQuery1.Next;
 end;

 i:=1;
 while razdel[i]<>'' do i:=i+1;
 col:=i-1;
 advStringGrid1.RowCount:=col+3;
 advStringGrid1.ColCount:=4;
 advStringGrid1.ColWidths[0]:=135;
 advStringGrid1.ColWidths[1]:=135;
 advStringGrid1.ColWidths[2]:=135;
 advStringGrid1.ColWidths[3]:=135;
 advStringGrid1.Cells[1,0]:='�����';
 advStringGrid1.Cells[2,0]:='�������';
 advStringGrid1.Cells[3,0]:='%';
 For i:=1 to col do
  begin
   advStringGrid1.Cells[0,i]:=(razdel[i]);
   advStringGrid1.Cells[1,i]:=floattostr(summa_razdel[i]);
   advStringGrid1.Cells[2,i]:=floattostr(summa_razdel_proc[i]);
   advStringGrid1.Cells[3,i]:=(rp[i]);
 end;

   advStringGrid1.Cells[0,col+1]:='�����';
   advStringGrid1.Cells[1,col+1]:=floattostr(summa);
   advStringGrid1.Cells[2,col+1]:=floattostr(procentov);
   advStringGrid1.Cells[3,col+1]:=(rp[i]);
   advStringGrid1.Cells[0,col+2]:='�����';
   advStringGrid1.Cells[1,col+2]:=floattostr(rabot);

end;

procedure TForm20.frxReport1BeforePrint(Sender: TfrxReportComponent);
var
 Cross1, cross2: TfrxCrossView;
  tcheckbox1,tcheckbox2,tcheckbox3,tcheckbox4 : TfrxCheckBoxView;

  i, j: Integer;
  l, l1:string;
begin

   if Sender is TfrxCheckBoxView then
  begin


  if TfrxCheckBoxView(Sender).Name='CheckBox5' then
   if checkbox5.Checked=true then TfrxCheckBoxView(Sender).Checked:=true
                             else TfrxCheckBoxView(Sender).Checked:=false;

  if TfrxCheckBoxView(Sender).Name='CheckBox1' then
   if checkbox1.Checked=true then TfrxCheckBoxView(Sender).Checked:=true
                             else TfrxCheckBoxView(Sender).Checked:=false;

  if TfrxCheckBoxView(Sender).Name='CheckBox3' then
   if checkbox3.Checked=true then TfrxCheckBoxView(Sender).Checked:=true
                             else TfrxCheckBoxView(Sender).Checked:=false;

  if TfrxCheckBoxView(Sender).Name='CheckBox4' then
   if checkbox4.Checked=true then TfrxCheckBoxView(Sender).Checked:=true
                             else TfrxCheckBoxView(Sender).Checked:=false;
    if TfrxCheckBoxView(Sender).Name='CheckBox2' then
   if checkbox2.Checked=true then TfrxCheckBoxView(Sender).Checked:=true
                             else TfrxCheckBoxView(Sender).Checked:=false;

  if TfrxCheckBoxView(Sender).Name='CheckBox6' then
   if checkbox6.Checked=true then TfrxCheckBoxView(Sender).Checked:=true
                             else TfrxCheckBoxView(Sender).Checked:=false;

  if TfrxCheckBoxView(Sender).Name='CheckBox7' then
   if checkbox9.Checked=true then TfrxCheckBoxView(Sender).Checked:=true
                             else TfrxCheckBoxView(Sender).Checked:=false;
  if TfrxCheckBoxView(Sender).Name='CheckBox8' then
   if checkbox10.Checked=true then TfrxCheckBoxView(Sender).Checked:=true
                              else TfrxCheckBoxView(Sender).Checked:=false;

  end;




     if Sender is TfrxCrossView then
  begin

      Cross1 := TfrxCrossView(Sender);

    for i := 1 to advstringgrid1.ColCount  do
     for j := 1 to advstringgrid1.RowCount do
       Cross1.AddValue([j], [i], [advStringGrid1.Cells[i - 1, j - 1]]);

   end;


 //frxreport1.Variables.Clear;
 if checkbox9.Checked=true then
 begin
 frxreport1.Variables['NV']:=''''+'������ �������'+'''';
 frxreport1.Variables['DAT1']:=''''+datetostr(DateTimePicker1.Date)+'''';
 end
 else
    begin
    frxreport1.Variables['NV']:=''''+''+'''';
    frxreport1.Variables['DAT1']:=''''+''+'''';
    end;
  if checkbox10.Checked=true then
  begin
 frxreport1.Variables['DAT2']:=''''+datetostr(DateTimePicker2.Date)+'''';
 frxreport1.Variables['OV']:=''''+'��������� �������'+'''';
 end
 else
 begin
 frxreport1.Variables['DAT2']:=''''+''+'''';
 frxreport1.Variables['OV']:=''''+''+'''';
 end;
 if length (Edit1.text)>0 then  frxreport1.Variables['ZAK']:=''''+'��������:'+Edit1.text+''''
                          else  frxreport1.Variables['ZAK']:=''''+''+'''';
 if length (Edit2.text)>0 then  frxreport1.Variables['ISP']:=''''+'�����������:'+Edit2.text+''''
                          else  frxreport1.Variables['ISP']:=''''+''+'''';


 end;

procedure TForm20.SpeedButton4Click(Sender: TObject);
begin
// frxreport1.PrepareReport();
 frxreport1.ShowReport;
end;

procedure TForm20.SpeedButton5Click(Sender: TObject);
begin
if unit1.Form1.Label2.Caption='������' then
    begin
    CurvyEdit2.ReadOnly:=true;
    CurvyMemo1.ReadOnly:=true;
    CurvyEdit1.ReadOnly:=true;
    SpeedButton1.Enabled:=false;
    SpeedButton1.Visible:=false;
    end;
end;

end.
