unit Unit1;
interface
uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;
type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Label1: TLabel;
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
function meow(x,y: integer): integer;
begin
  if y=0 then
    meow:= 1
  else
    if y mod 2=0 then
      meow:= sqr(meow(x,y div 2))
    else
      meow:= sqr(meow(x,y div 2))*x;
end;
procedure TForm1.Button1Click(Sender: TObject);
var
  a,b: integer;
begin
  a:= strtoint(edit1.Text);
  b:= strtoint(edit2.Text);
  label1.Caption:= inttostr(meow(a,b));
end;
end.