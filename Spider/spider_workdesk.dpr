program spider_workdesk;

uses
  Forms,
  main in 'main.pas' {Form1},
  Uni5 in 'Uni5.pas' {Form2},
  Unit4 in 'Unit4.pas',
  Unit3 in 'Unit3.pas' {DataModule3: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'WorkDESK - SPIDER';
  Application.CreateForm(TDataModule3, DataModule3);
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.