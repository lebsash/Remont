unit Unit2;

interface

uses
  SysUtils, Classes, IBDatabase, DB;

type
  TDataModule2 = class(TDataModule)
    IBDatabase1: TIBDatabase;
    IBTransaction1: TIBTransaction;
    IBDatabase2: TIBDatabase;
    IBTransaction2: TIBTransaction;
    procedure DataModuleCreate(Sender: TObject);
    procedure IBDatabase2AfterConnect(Sender: TObject);
    procedure IBDatabase2AfterDisconnect(Sender: TObject);
    procedure IBDatabase1AfterConnect(Sender: TObject);
    procedure IBDatabase1AfterDisconnect(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule2: TDataModule2;
  FLAG_DB_CONNECT: integer;
implementation

{$R *.dfm}

procedure TDataModule2.DataModuleCreate(Sender: TObject);
var f: textFile;
    z, z1: string;
begin
 IBDataBase1.Connected:=false;
 IBDataBase2.Connected:=false;
 // ������ �� ����� ��������� �������
 AssignFile (f,'dbconnect.ini');
 Reset (f);
 Readln(f,z);
 IBDataBase2.DatabaseName:=z;  // Users.fdb
 Readln(f,z);
 IBDataBase1.DatabaseName:=z;  // remont.fdb
 CloseFile (f);

   {try
      IBDataBase2.Connected:=True;
    except

   //   Showmessage('������ ���������� � ��');

    end; // try
    }

end;

procedure TDataModule2.IBDatabase2AfterConnect(Sender: TObject);
begin
FLAG_DB_CONNECT:=1;
end;

procedure TDataModule2.IBDatabase2AfterDisconnect(Sender: TObject);
begin
FLAG_DB_CONNECT:=0;
end;

procedure TDataModule2.IBDatabase1AfterConnect(Sender: TObject);
begin
FLAG_DB_CONNECT:=1;
end;

procedure TDataModule2.IBDatabase1AfterDisconnect(Sender: TObject);
begin
FLAG_DB_CONNECT:=0;
end;

end.
