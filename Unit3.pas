unit Unit3;

interface

uses
  Classes, unit2, unit1,Windows, Messages, SysUtils, DB, IB;

type
  TSimpleThread = class(TThread)
  private
    { Private declarations }
  protected
    procedure Execute; override;
  end;

implementation
 uses login;


procedure TSimpleThread.Execute;
begin
  { Place thread code here }
   try

    unit2.DataModule2.IBDatabase1.Connected := True; // Пробуем подключиться
  except
  {$I+}
      // Если возникает ошибка - обрабатываем ее и снова пробуем подключиться


  on   EIBInterBaseError do
  begin
         login.Form3.StatusBar1.Panels[0].Text:='Связь с БД отсутствует';
   end;



  end;

   try
   unit2.DataModule2.IBDatabase2.Connected := True; // Пробуем подключиться
  except
  {$I+}
      // Если возникает ошибка - обрабатываем ее и снова пробуем подключиться
  on   EIBInterBaseError do
  begin
         login.Form3.StatusBar1.Panels[0].Text:='Связь с БД отсутствует';
   end;



  end;

   // Подключились, выставляем флаги
   if unit2.FLAG_DB_CONNECT=1 then begin
                                     login.Form3.StatusBar1.Panels[0].Text:='Соединились с БД';


                             end
                             else begin
                                    login.Form3.StatusBar1.Panels[0].Text:=('Связь с БД отсутствует');

                                  end;





   login.Flag_WORK_thrd:=0;

end;

end.
 