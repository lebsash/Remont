unit Unit24;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AdvGlassButton, AdvSmoothLabel, CurvyControls,
  AdvMetroProgressBar, ExtCtrls;

type
  TForm24 = class(TForm)
    CurvyPanel1: TCurvyPanel;
    AdvSmoothLabel1: TAdvSmoothLabel;
    AdvGlassButton3: TAdvGlassButton;
    CurvyPanel2: TCurvyPanel;
    AdvSmoothLabel3: TAdvSmoothLabel;
    AdvSmoothLabel4: TAdvSmoothLabel;
    AdvSmoothLabel2: TAdvSmoothLabel;
    AdvSmoothLabel5: TAdvSmoothLabel;
    Timer1: TTimer;
    AdvMetroProgressBar1: TAdvMetroProgressBar;
    procedure AdvGlassButton3Click(Sender: TObject);
    procedure CurvyPanel1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure AdvSmoothLabel1MouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure AdvSmoothLabel3MouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure CurvyPanel2MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form24: TForm24;

implementation

{$R *.dfm}

procedure TForm24.AdvGlassButton3Click(Sender: TObject);
begin
 Form24.Close;
end;

procedure TForm24.CurvyPanel1MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
ReleaseCapture;
Perform (WM_SYSCOMMAND,SC_MOVE+2,0);
end;

procedure TForm24.AdvSmoothLabel1MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
ReleaseCapture;
Perform (WM_SYSCOMMAND,SC_MOVE+2,0);
end;

procedure TForm24.AdvSmoothLabel3MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
ReleaseCapture;
Perform (WM_SYSCOMMAND,SC_MOVE+2,0);
end;

procedure TForm24.CurvyPanel2MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
ReleaseCapture;
Perform (WM_SYSCOMMAND,SC_MOVE+2,0);
end;

procedure TForm24.Timer1Timer(Sender: TObject);
begin

AdvMetroProgressBar1.Position:=AdvMetroProgressBar1.Position+1;
if AdvMetroProgressBar1.Position>=AdvMetroProgressBar1.Max then begin
                                                                  Timer1.Enabled:=false;
                                                                  form24.Close;
                                                                end;
end;

end.
