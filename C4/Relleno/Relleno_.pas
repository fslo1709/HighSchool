unit Relleno_;
interface
uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Math, StdCtrls, ExtCtrls, ComCtrls;
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
implementation
{$R *.dfm}
procedure TForm1.FormClick(Sender: TObject);
var
  x,y: integer;
begin
  x:= 0;
  while x<clientwidth do
    begin
      y:= 0;
      while y<clientheight do
        begin
          canvas.Pixels[x,y]:= y*x+256*y*x+256*256*x*y-256*x-256*y-x*x-y*y+trunc(10000*sin(x*y));
          y:= y+1;
        end;
      x:= x+1;
    end;
end;
end.
