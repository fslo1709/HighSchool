unit objetos;
interface
uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, stdctrls;
type
  TForm1 = class(TForm)
    procedure FormClick(Sender: TObject);
    procedure elclic (c:tobject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
var
  Form1: TForm1;
  b: tbutton;
implementation
{$R *.dfm}
procedure tform1.elclic(c: TObject);
begin
  (c as tbutton).Caption:= 'ouch';
end;
procedure TForm1.FormClick(Sender: TObject);
begin
  b:= tbutton.Create(form1);
  b.Parent:= form1;
  b.Left:= 200;
  b.Top:= 200;
  b.Caption:= 'holi';
  b.OnClick:= elclic;
end;
end.
