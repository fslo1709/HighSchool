program segundo_extra;//Sebasti�n L�pez, C4A
{$APPTYPE CONSOLE}
uses
  SysUtils;

var
  h,m,s: integer;
begin
  Writeln ('Sebasti�n L�pez, C4A');
  Writeln ('Ingrese una hora en formato horas, minutos y segundos');
  Write ('Horas: ');
  Read (h);
  Write ('Minutos: ');
  Read (m);
  Write ('Segundos: ');
  Read (s);
  if s=59 then
    begin
      s:= 0;
      m:= m+1;
    end
  else
    s:= s+1;
  if m=60 then
    begin
      m:= 0;
      h:= h+1;
    end;
  Writeln (h,':',m,':',s);
  Readln;
  Readln
end.