program saludos;
{$APPTYPE CONSOLE}
uses
  SysUtils;
procedure saludo (n: string);
begin
  writeln ('Hola ', n, ', espero que est�is bien t�o');
end;
begin
  Writeln ('Sebasti�n L�pez');
  Saludo ('Chipi Pro lml');
  readln
end.
