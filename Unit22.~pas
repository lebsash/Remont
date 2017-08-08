unit Unit22;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, frxBarcode, frxClass, frxDesgn, frxExportRTF,
  frxExportXLS;

type
  TForm22 = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Edit1: TEdit;
    frxReport1: TfrxReport;
    frxBarCodeObject1: TfrxBarCodeObject;
    SpeedButton1: TSpeedButton;
    frxDesigner1: TfrxDesigner;
    frxXLSExport1: TfrxXLSExport;
    frxRTFExport1: TfrxRTFExport;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure frxReport1BeforePrint(Sender: TfrxReportComponent);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form22: TForm22;

implementation

var ap: array[1..100] of string;

{$R *.dfm}


procedure TForm22.Edit1KeyPress(Sender: TObject; var Key: Char);
begin

case Key of
  #8,'0'..'9' :  ; // цифры и <Back Space>
    else   // остальные символы запрещены
               key := Chr(0);
    end;
end;

procedure TForm22.frxReport1BeforePrint(Sender: TfrxReportComponent);
var i: integer;
 Barcode1: TfrxBarCodeView;
  Barcode2: TfrxBarCodeView;
   Barcode3: TfrxBarCodeView;
   s:string;
begin


    if Sender is TfrxBarcodeView then
  begin

 for i:=1 to 65 do
   begin

      if TfrxBarcodeView(Sender).Name='BarCode'+inttostr(i) then TfrxBarcodeView(Sender).Text := ap[i];

   end;

  end
end;

procedure TForm22.SpeedButton1Click(Sender: TObject);
var i,j,p, s1,s2,s3, k: integer;
    ns: string;
begin
 i:=strtoint(Edit1.Text);
 For j:=1 to 65 do
   begin
    // 10000000
    p:=10000000;
    ns:='';
    s1:=length(inttostr(p));
    s2:=length(inttostr(i));
    if s1<s2 then begin
                   i:=1;
                   Edit1.Text:='1';
                       ns:='';
                       s1:=length(inttostr(p));
                       s2:=length(inttostr(i));
                       s3:=s1-s2;
                       for k:=1 to s3 do ns:=ns+'0';
                       ns:=ns+inttostr(i);
                  end
                  else
                  begin
                    s3:=s1-s2;
                    for k:=1 to s3 do ns:=ns+'0';
                    ns:=ns+inttostr(i);
                  end;

    ap[j]:=ns;
    i:=i+1;
   end;
  frxreport1.PrepareReport();
 frxreport1.ShowReport;
end;

procedure TForm22.SpeedButton2Click(Sender: TObject);
begin
frxReport1.PrepareReport;

frxReport1.Export(frxXLSExport1);
end;

procedure TForm22.SpeedButton3Click(Sender: TObject);
begin
frxReport1.PrepareReport;

frxReport1.Export(frxRTFExport1);
end;

end.
