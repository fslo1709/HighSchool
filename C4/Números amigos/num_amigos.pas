unit num_amigos;//Sebasti�n L�pez, C4A
interface
uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;
type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
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
  a,b,c,d,e,f: integer;
begin
  a:= strtoint(edit1.Text);
  b:= strtoint(edit2.Text);
  c:= 1;
  d:= 1;
  e:= 0;
  f:= 0;
  while c<a do
    begin
      if a mod c=0 then
        e:= e+c;
      inc (c);
    end;
  while d<b do
    begin
      if b mod d=0 then
        f:= f+d;
      inc (d);
    end;
  if (f=a) or (e=b) then
    showmessage ('Son amigos')
  else
    showmessage ('No son amigos');
end;
end.
