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
    unit3.DataModule3.IBDatabase1.Connected := True // ������� ������������
     else begin
           main.Form1.StatusBar1.Panels[0].Text:='����� � �� �����������';
          end;
  except
  {$I+}
      // ���� ��������� ������ - ������������ �� � ����� ������� ������������


  on   EIBInterBaseError do
  begin

          main.Form1.StatusBar1.Panels[0].Text:='����� � �� �����������';
   end;



  end;

   try
   if unit3.DataModule3.IBDatabase2.DatabaseName<>'' then
   unit3.DataModule3.IBDatabase2.Connected := True // ������� ������������
   else begin
         main.Form1.StatusBar1.Panels[0].Text:='����� � �� �����������';
        end;
  except
  {$I+}
      // ���� ��������� ������ - ������������ �� � ����� ������� ������������
  on   EIBInterBaseError do
  begin
         main.Form1.StatusBar1.Panels[0].Text:='����� � �� �����������';
   end;



  end;

   // ������������, ���������� �����
   if unit3.FLAG_DB_CONNECT=1 then begin
                                     main.Form1.StatusBar1.Panels[0].Text:='����������� � ��';


                             end
                             else begin
                                    main.Form1.StatusBar1.Panels[0].Text:=('����� � �� �����������');

                                  end;





   main.Flag_WORK_thrd:=0;

end;

end.
 