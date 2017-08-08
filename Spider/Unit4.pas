unit Unit4;

interface

uses
  Classes, unit3, Windows, Messages, SysUtils, DB, IB;

type
  TSimpleThread = class(TThread)
  private
    { Private declarations }
  protected
    procedure Execute; override;
  end;

implementation
 uses main;


procedure TSimpleThread.Execute;
begin
  { Place thread code here }

   try
    if unit3.DataModule3.IBDatabase1.DatabaseName<>'' then
    unit3.DataModule3.IBDatabase1.Connected := True // Пробуем подключиться
     else begin
           main.Form1.StatusBar1.Panels[0].Text:='Связь с БД отсутствует';
          end;
  except
  {$I+}
      // Если возникает ошибка - обрабатываем ее и снова пробуем подключиться


  on   EIBInterBaseError do
  begin

          main.Form1.StatusBar1.Panels[0].Text:='Связь с БД отсутствует';
   end;



  end;

   try
   if unit3.DataModule3.IBDatabase2.DatabaseName<>'' then
   unit3.DataModule3.IBDatabase2.Connected := True // Пробуем подключиться
   else begin
         main.Form1.StatusBar1.Panels[0].Text:='Связь с БД отсутствует';
        end;
  except
  {$I+}
      // Если возникает ошибка - обрабатываем ее и снова пробуем подключиться
  on   EIBInterBaseError do
  begin
         main.Form1.StatusBar1.Panels[0].Text:='Связь с БД отсутствует';
   end;



  end;

   // Подключились, выставляем флаги
   if unit3.FLAG_DB_CONNECT=1 then begin
                                     main.Form1.StatusBar1.Panels[0].Text:='Соединились с БД';


                             end
                             else begin
                                    main.Form1.StatusBar1.Panels[0].Text:=('Связь с БД отсутствует');

                                  end;





   main.Flag_WORK_thrd:=0;

end;

end.
 