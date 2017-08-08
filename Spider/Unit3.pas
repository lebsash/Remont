unit Unit3;

interface

uses
  SysUtils, Classes, IBDatabase, DB;

type
    TDataModule3 = class(TDataModule)
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
  DataModule3: TDataModule3;
  FLAG_DB_CONNECT: integer;
implementation

{$R *.dfm}

procedure TDataModule3.DataModuleCreate(Sender: TObject);
var f: textFile;
    z, z1: string;
    res: integer;
begin
 IBDataBase1.Connected:=false;
 IBDataBase2.Connected:=false;
 // Читаем из файла настройки системы

  AssignFile (f,'dbconnect.ini');
 {$I-}
  Reset(f); // открыть файл для чтения
  {$I+}
  res := IOResult;

  if res <> 0 then
   begin
     Rewrite(F);
     CloseFile(F);
   end;

      {$I-}
  Reset(f); // открыть файл для чтения
  {$I+}
  res := IOResult;
  if res <> 0 then
   begin
     IBDataBase1.Connected:=false;
     IBDataBase2.Connected:=false;
     IBDataBase1.DatabaseName:='';
     IBDataBase2.DatabaseName:='';
   end
   else begin
         Readln(F,z);
         IBDataBase1.DatabaseName:=z;
         Readln(F,z);
         IBDataBase2.DatabaseName:=z;
         CloseFile(F);

        end;



end;

procedure TDataModule3.IBDatabase2AfterConnect(Sender: TObject);
begin
FLAG_DB_CONNECT:=1;
end;

procedure TDataModule3.IBDatabase2AfterDisconnect(Sender: TObject);
begin
FLAG_DB_CONNECT:=0;
end;

procedure TDataModule3.IBDatabase1AfterConnect(Sender: TObject);
begin
FLAG_DB_CONNECT:=1;
end;

procedure TDataModule3.IBDatabase1AfterDisconnect(Sender: TObject);
begin
FLAG_DB_CONNECT:=0;
end;

end.
