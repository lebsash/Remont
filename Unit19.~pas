unit Unit19;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, CurvyControls;

type
  TForm19 = class(TForm)
    Edit4: TCurvyEdit;
    Label1: TLabel;
    SpeedButton1: TSpeedButton;
    Label2: TLabel;
    procedure SpeedButton1Click(Sender: TObject);
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
    procedure Edit4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form19: TForm19;

implementation
uses unit1;
{$R *.dfm}

procedure TForm19.SpeedButton1Click(Sender: TObject);
begin
if label2.Caption='2' then Form1.Edit4.Text:=Edit4.Text;
if label2.Caption='1' then Form1.Edit3.Text:=Edit4.Text;
if label2.Caption='3' then Form1.Edit5.Text:=Edit4.Text;
if label2.Caption='4' then Form1.Edit6.Text:=Edit4.Text;
Form1.SpeedButton6.Click;
Form19.Close;
end;

procedure TForm19.Edit4KeyPress(Sender: TObject; var Key: Char);
begin
case Key of
  #8,'0'..'9' :  ; // цифры и <Back Space>


        else   // остальные символы запрещены
               key := Chr(0);
    end;
    
end;

procedure TForm19.Edit4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (Key = VK_RETURN) then SpeedButton1.Click;
end;

end.
