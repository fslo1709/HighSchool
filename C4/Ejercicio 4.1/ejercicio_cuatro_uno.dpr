program ejercicio_cuatro_uno;//Sebasti�n L�pez, C4A
{$APPTYPE CONSOLE}
uses
  SysUtils;

var
  a,b,c,d,e,sp,sn: real;
  op: char;
begin
  sp:= 0;
  sn:= 0;
  a:= 0;
  b:= 0;
  c:= 0;
  d:= 0;
  e:= 0;
  Writeln ('Sebasti�n L�pez, C4A');
  Writeln ('****************************************');
  Writeln ('           Ingrese una opci�n           ');
  Writeln ('a) Ingrese un �ngulo');
  Writeln ('b) Ingrese una temperatura');
  Writeln ('c) Ingrese cinco n�meros enteros');
  Writeln ('d) Ingrese tres n�meros');
  Writeln ('e) Ingrese una distancia');
  Writeln ('****************************************');
  Writeln ('');
  Write ('Su opci�n: ');
  Readln (op);
  if op='a' then
    begin
      Writeln ('Ingrese un �ngulo');
      Readln (a);
      if a=90 then
        Writeln ('Es un �ngulo recto')
      else
        Writeln ('El �ngulo no es un �ngulo recto');
    end
  else
    if op='b' then
      begin
        Writeln ('Ingrese una temperatura en Celsius');
        Readln (a);
        if a>100 then
          Writeln('Por encima del punto de ebullici�n del agua')
        else
          Writeln('Por debajo del punto de ebullici�n del agua');
      end
    else
      if op='c' then
        begin
          Writeln ('Ingrese cinco n�meros');
          Readln (a);
          Readln (b);
          Readln (c);
          Readln (d);
          Readln (e);
          if a>0 then
            sp:= a
          else
            sn:= a;
          if b>0 then
            sp:= b+sp
          else
            sn:= b+sn;
          if c>0 then
            sp:= sp+c
          else
            sn:= sn+c;
          if d>0 then
            sp:= sp+d
          else
            sn:= sn+d;
          if e>0 then
            sp:= sp+e
          else
            sn:= sn+e;
          Writeln ('Los negativos suman ',sn);
          Writeln ('Los positivos suman ',sp);
        end
      else
        if op='d' then
          begin
            Writeln ('Ingrese tres n�meros');
            Readln (a);
            Readln (b);
            Readln (c);
            if (a>b) and (c<20) then
              begin
                Writeln ('Ingrese otro n�mero');
                Readln (d);
              end;
          end
        else
          if op='e' then
            begin
              Writeln('Ingrese la distancia');
              Readln(a);
              if (a>20) and (a<35) then
                begin
                  Writeln ('Ingrese un tiempo');
                  Readln (b);
                end;
            end
          else
            Writeln ('Lo siento, ',op,' no es un valor v�lido');
  Readln
end.
