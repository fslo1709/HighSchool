unit cuadricula;//Sebasti�n L�pez, C4A
interface
uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls;
type
  TForm1 = class(TForm)
    Image1: TImage;
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
var
  Form1: TForm1;
implementation
{$R *.dfm}
procedure TForm1.Button1Click(Sender: TObject);
var
  a: integer;
begin
  a:= 0;
  while a<=image1.Width do
    begin
      image1.Canvas.MoveTo(a,0);
      image1.Canvas.LineTo(a,image1.Height);
      image1.Canvas.MoveTo(0,a);
      image1.Canvas.LineTo(image1.Width,a);
      a:= a+20;
    end;
end;
procedure TForm1.Button2Click(Sender: TObject);
var
  x,y: integer;
begin
  x:= 1;
  while x<=10 do
    begin
      y:= 1;
      while y<=10 do
        begin
          image1.Canvas.TextOut(6+40*(x-1),6+40*(y-1),'*');
          inc(y);
        end;
      inc(x);
    end;
end;
end.
