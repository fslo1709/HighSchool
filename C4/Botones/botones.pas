unit botones;//Sebasti�n L�pez, C4
interface
uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;
type
  TForm1 = class(TForm)
    procedure FormCreate(Sender: TObject);
    procedure klik (s:tobject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
var
  Form1: TForm1;
  b: array [1..10,1..10] of tbutton;
  m: array [1..10,1..10] of char;
implementation
{$R *.dfm}
procedure rev(x,y: integer);
begin
  if m[x,y]='*' then
  
end;
procedure tform1.klik (s:tobject);
var
  x,y: integer;
begin
  x:= ord((s as tbutton).Name[1])-64;
  y:= ord((s as tbutton).Name[2])-64;
  if m[x,y]='*' then
    showmessage('Perdio');
end;
procedure TForm1.FormCreate(Sender: TObject);
var
  x,y,nmc: integer;
begin
  randomize;
  for x := 1 to 10 do
    for y := 1 to 10 do
      begin
        b[x,y]:= Tbutton.Create(form1);
        b[x,y].Parent:= form1;
        b[x,y].Left:= x*30-30;
        b[x,y].Top:= y*30-30;
        b[x,y].Width:= 30;
        b[x,y].Height:= 30;
        b[x,y].Name:= chr(x+64)+chr(y+64);
        b[x,y].Caption:= '';
        b[x,y].OnClick:= klik;
      end;
  while nmc<10 do
    begin
      x:= random(10)+1;
      y:= random(10)+1;
      if m[x,y]<>'m' then
        begin
          m[x,y]:='m';
          nmc:= inc(nmc);
        end;
      b[x,y].Caption:= 'm';
    end;
end;
end.
