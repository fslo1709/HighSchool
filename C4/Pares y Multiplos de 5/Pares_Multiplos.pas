unit Pares_Multiplos;//Sebasti�n L�pez, C4A
interface
uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls;
type
  TForm1 = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Memo1: TMemo;
    Button1: TButton;
    Memo2: TMemo;
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
  a:= 2;
  while a < 25 do
    begin
      if a mod 2=0 then
        memo1.Lines.Add(inttostr(a));
      inc (a);
    end;
end;
procedure TForm1.Button2Click(Sender: TObject);
var
  a: integer;
begin
  a:= 2;
  while a<100 do
    begin
      if a mod 5=0 then
        memo2.Lines.Add(inttostr(a));
      inc (a);
    end;
end;
end.