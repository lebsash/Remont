unit Unit18;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, unit2, CurvyControls, StdCtrls, rtflabel, AdvSmoothButton, DB,
  IBCustomDataSet, IBQuery, Buttons, AdvGlassButton, W7Classes, W7Bars;

type
  TForm18 = class(TForm)
    GroupBox1: TGroupBox;
    RTFLabel1: TRTFLabel;
    Edit1: TCurvyEdit;
    Memo1: TCurvyMemo;
    RTFLabel2: TRTFLabel;
    Edit2: TCurvyEdit;
    RTFLabel3: TRTFLabel;
    Edit3: TCurvyEdit;
    RTFLabel4: TRTFLabel;
    Edit4: TCurvyEdit;
    RTFLabel5: TRTFLabel;
    AdvGlassButton1: TAdvGlassButton;
    SpeedButton1: TSpeedButton;
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
    IBQuery2: TIBQuery;
    W7InformationBar1: TW7InformationBar;
    procedure SpeedButton1Click(Sender: TObject);
    procedure AdvGlassButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form18: TForm18;

implementation

{$R *.dfm}

procedure TForm18.SpeedButton1Click(Sender: TObject);
begin
// Подгружаем начальные данные
 IBQuery1.SQL.Clear;
 IBQuery1.SQL.Append('select * from SERV1');
 IBQuery1.Close;
 IBQuery1.Open;
 IBQuery1.First;
 Edit1.Text:=IBQuery1MAINFIRM.AsString;
 Memo1.Lines.Clear;
 Memo1.Lines.Append(IBQuery1ADRESS.AsString);
 Edit2.Text:=IBQuery1PHONE.AsString;
 Edit3.Text:=IBQuery1SITE.AsString;
 Edit4.Text:=IBQuery1EMAIL.AsString;

end;

procedure TForm18.AdvGlassButton1Click(Sender: TObject);
begin

   IBQuery2.SQL.Clear;
   IBQuery2.SQL.Append('UPDATE SERV1 SET ADRESS=:ADRESS, EMAIL=:EMAIL, MAINFIRM=:MAINFIRM, PHONE=:PHONE, SITE=:SITE WHERE OTHER=:OTHER');
   IBQuery2.ParamByName('ADRESS').AsString:=Memo1.Lines.Text;
   IBQuery2.ParamByName('EMAIL').AsString:=Edit4.Text;
   IBQuery2.ParamByName('MAINFIRM').AsString:=Edit1.Text;
   IBQuery2.ParamByName('PHONE').AsString:=Edit2.Text;
   IBQuery2.ParamByName('SITE').AsString:=Edit3.Text;
   IBQuery2.ParamByName('OTHER').AsString:='1';
   IBQuery2.Close;
   IBQuery2.Open;
   Unit2.DataModule2.IBTransaction1.CommitRetaining;
   Form18.Close;
end;

end.
