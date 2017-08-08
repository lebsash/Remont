unit managers;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, unit2, DB, IBCustomDataSet, IBQuery, ComCtrls, Menus, Grids,
  DBGrids, Buttons, StdCtrls, ExtCtrls, ThemedDBGrid;

type
  TForm10 = class(TForm)
    StatusBar1: TStatusBar;
    IBQuery1: TIBQuery;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    IBQuery2: TIBQuery;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    IBQuery2ID: TIntegerField;
    IBQuery2NAME: TIBStringField;
    IBQuery2CONTACT: TIBStringField;
    IBQuery2ABOUT: TIBStringField;
    IBQuery3: TIBQuery;
    SpeedButton1: TSpeedButton;
    Panel1: TPanel;
    Edit1: TEdit;
    SpeedButton2: TSpeedButton;
    DataSource2: TDataSource;
    DBGrid2: TDBGrid;
    IBQuery1ID: TIntegerField;
    IBQuery1NAME: TIBStringField;
    IBQuery1SECOND_NAME: TIBStringField;
    IBQuery1FAMILY: TIBStringField;
    IBQuery1PASS: TIBStringField;
    IBQuery1ROLE: TIBStringField;
    IBQuery1DOLGNOST: TIBStringField;
    IBQuery1OTDEL: TIBStringField;
    IBQuery1ID_FIRM: TIntegerField;
    IBQuery1USLOGIN: TIBStringField;
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid2DblClick(Sender: TObject);
    procedure DBGrid2DrawDataCell(Sender: TObject; const Rect: TRect;
      Field: TField; State: TGridDrawState);
    procedure DBGrid1DrawDataCell(Sender: TObject; const Rect: TRect;
      Field: TField; State: TGridDrawState);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form10: TForm10;

implementation

uses Serv, Unit5, Unit1, Unit17;

{$R *.dfm}

procedure TForm10.N1Click(Sender: TObject);
begin
form11.label4.caption:='1';
form11.Edit1.Text:='';
Form11.Memo1.Lines.Clear;
Form11.Memo2.Lines.Clear;
Form11.Caption:='Форма работы с контрагентом - новый сервис';
Form11.SpeedButton1.Caption:='Добавить сервис';
Form11.showmodal;
end;

procedure TForm10.N2Click(Sender: TObject);
begin
form11.label4.caption:='2';
form11.label5.caption:=IBQuery2ID.AsString;
form11.Edit1.Text:=IBQuery2NAME.AsString;
Form11.Memo1.Lines.Clear;
Form11.Memo1.Lines.Append(IBQuery2CONTACT.AsString);
Form11.Memo2.Lines.Clear;
Form11.Memo2.Lines.Append(IBQuery2ABOUT.AsString);

Form11.Caption:='Форма работы с контрагентом - Редактирование записи';
Form11.SpeedButton1.Caption:='Редактировать сервис';
Form11.showmodal;
end;

procedure TForm10.N3Click(Sender: TObject);
var buttonSelected: integer;
begin
 // Удаляем выделенного контрагента
 buttonSelected := MessageDlg('Вы действительно желаете удалить контрагента '+IBQuery2NAME.AsString,mtError, mbOKCancel, 0);


  if buttonSelected = mrOK     then
                begin
                 IBQuery3.SQL.Clear;
                 IBQuery3.SQL.Append('DELETE FROM SERV WHERE ID=:ID');
                 IBQuery3.ParamByName('ID').AsInteger:=IBQuery2ID.AsInteger;
                 IBQuery3.Close;
                 IBQuery3.Open;
                 unit2.DataModule2.IBTransaction1.CommitRetaining;
                 IBQuery2.Close;
                 IBQuery2.Open;
                 IBQuery2.First;

                end;
  if buttonSelected = mrCancel then begin
                                    end;


end;

procedure TForm10.SpeedButton1Click(Sender: TObject);
begin
 IBQuery2.SQL.Clear;
 IBQuery2.SQL.Append('select * from SERV WHERE upper(NAME) like :NAME ORDER BY NAME');
 IBQuery2.ParamByName('NAME').AsString:='%'+AnsiUpperCase(Edit1.Text)+'%';
 IBQuery2.close;
 IBQuery2.open;
 IBQuery2.first;
end;

procedure TForm10.SpeedButton2Click(Sender: TObject);
begin
SpeedButton1.Click;
end;

procedure TForm10.Edit1Change(Sender: TObject);
begin
SpeedButton1.Click;
end;

procedure TForm10.DBGrid1DblClick(Sender: TObject);
begin
if Form17.Visible=true then
begin
 Form17.Edit5.Text:=IBQuery2NAME.AsString;
 Form17.Label2.Caption:=IBQuery2ID.AsString;
 Form17.Label1.Caption:='0';
end
else
if form5.Visible=true then
begin
Form5.Edit3.Text:=IBQuery2NAME.AsString;
Form5.Label9.Caption:=IBQuery2ID.AsString;
Form5.Label12.Caption:='2';
end else
begin
Form1.Edit2.Text:=IBQuery2NAME.AsString;
Form1.Label3.Caption:='0';
Form1.Label4.Caption:=IBQuery2ID.AsString;
form1.CheckBox8.Checked:=true;
end;
Form10.Close;

end;

procedure TForm10.DBGrid2DblClick(Sender: TObject);
begin
if Form17.Visible=true then
begin
 Form17.Edit5.Text:=IBQuery1FAMILY.AsString+' '+IBQuery1NAME.AsString;
 Form17.Label1.Caption:=IBQuery1ID.AsString;
 Form17.Label2.Caption:='0';
end
else if Form5.Visible=true then
begin
Form5.Edit3.Text:=IBQuery1FAMILY.AsString+' '+IBQuery1NAME.AsString;
Form5.Label9.Caption:=IBQuery1ID.AsString;
Form5.Label12.Caption:='1';
end else
begin
 Form1.Edit2.Text:=IBQuery1FAMILY.AsString+' '+IBQuery1NAME.AsString;
 Form1.Label3.Caption:=IBQuery1ID.AsString;
 Form1.Label4.Caption:='0';
 form1.CheckBox8.Checked:=true;
end;
Form10.Close;
end;

procedure TForm10.DBGrid2DrawDataCell(Sender: TObject; const Rect: TRect;
  Field: TField; State: TGridDrawState);
begin
If gdSelected in State Then
begin
  DBGrid2.Canvas.Brush.Color := $00FCEBDC; {синеватый оттенок}
  DBGrid2.Canvas.Font.Color := clBlack;
  dbGrid2.DefaultDrawDataCell(Rect,Field,State);
  DBGrid2.Canvas.fillRect(Rect);
  DBGrid2.Canvas.TextOut(Rect.Left, Rect.Top, Field.Asstring);
  end;
end;

procedure TForm10.DBGrid1DrawDataCell(Sender: TObject; const Rect: TRect;
  Field: TField; State: TGridDrawState);
begin
If gdSelected in State Then
begin
  DBGrid1.Canvas.Brush.Color := $00FCEBDC; {синеватый оттенок}
  DBGrid1.Canvas.Font.Color := clBlack;
  //dbGrid1.DefaultDrawDataCell(Rect,Field,State);
  DBGrid1.Canvas.fillRect(Rect);
  DBGrid1.Canvas.TextOut(Rect.Left, Rect.Top, Field.Asstring);
  end;
end;

procedure TForm10.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
If gdSelected in State Then
begin
  DBGrid1.Canvas.Brush.Color := $00FCEBDC; {синеватый оттенок}
  DBGrid1.Canvas.Font.Color := clBlack;
  //dbGrid1.DefaultDrawDataCell(Rect,Field,State);
  DBGrid1.Canvas.fillRect(Rect);
  DBGrid1.Canvas.TextOut(Rect.Left+2, Rect.Top+2, Column.Field.Asstring);
  end;
end;

procedure TForm10.DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
If gdSelected in State Then
begin
  DBGrid2.Canvas.Brush.Color := $00FCEBDC; {синеватый оттенок}
  DBGrid2.Canvas.Font.Color := clBlack;
  //dbGrid1.DefaultDrawDataCell(Rect,Field,State);
  DBGrid2.Canvas.fillRect(Rect);
  DBGrid2.Canvas.TextOut(Rect.Left+2, Rect.Top+2, Column.Field.Asstring);
  end;

end;

end.
