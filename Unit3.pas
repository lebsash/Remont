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

    unit2.DataModule2.IBDatabase1.Connected := True; // ������� ������������
  except
  {$I+}
      // ���� ��������� ������ - ������������ �� � ����� ������� ������������


  on   EIBInterBaseError do
  begin
         login.Form3.StatusBar1.Panels[0].Text:='����� � �� �����������';
   end;



  end;

   try
   unit2.DataModule2.IBDatabase2.Connected := True; // ������� ������������
  except
  {$I+}
      // ���� ��������� ������ - ������������ �� � ����� ������� ������������
  on   EIBInterBaseError do
  begin
         login.Form3.StatusBar1.Panels[0].Text:='����� � �� �����������';
   end;



  end;

   // ������������, ���������� �����
   if unit2.FLAG_DB_CONNECT=1 then begin
                                     login.Form3.StatusBar1.Panels[0].Text:='����������� � ��';


                             end
                             else begin
                                    login.Form3.StatusBar1.Panels[0].Text:=('����� � �� �����������');

                                  end;





   login.Flag_WORK_thrd:=0;

end;

end.
 