unit Linea;//Sebasti�n L�pez, C4A
interface
uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs;
type
  TForm1 = class(TForm)
    procedure FormClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
var
  Form1: TForm1;
  a,b,c,d,e,f: integer;
implementation
{$R *.dfm}
procedure azul;
begin
  b:= b-5;
  with form1 do
  begin
  canvas.Pen.Color:= rgb(0,0,b);
  canvas.MoveTo(a,0);
  canvas.LineTo(clientwidth,a);
  a:= a+c;
  end;
end;
procedure negro;
begin
  f:= f-5;
  with form1 do
  begin
  canvas.Pen.Color:= rgb(f,f,f);
  canvas.MoveTo(clientwidth-a,clientheight);
  canvas.LineTo(clientwidth,a);
  end;
end;
procedure rojo;
begin
  d:= d-5;
  with form1 do
  begin
  canvas.Pen.Color:= rgb(d,0,0);
  canvas.MoveTo(clientwidth-a,0);
  canvas.LineTo(0,a);
  end;
end;
procedure verde;
begin
  e:= e-5;
  with form1 do
  begin
  canvas.Pen.Color:= rgb(0,e,0);
  canvas.MoveTo(0,a);
  canvas.LineTo(a,clientheight);
  end;
end;
procedure TForm1.FormClick(Sender: TObject);
begin
  c:= 10;
  a:= c;
  canvas.pen.color:= rgb(255,255,255);
  b:= 255;
  d:= 255;
  e:= 255;
  f:= 255;
  while a<clientheight do
    begin
      application.ProcessMessages;
      sleep(50);
      azul;
      rojo;
      verde;
      negro;
    end;
end;
end.