unit binaria;
interface
uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Spin, Grids;
type
  TForm1 = class(TForm)
    StringGrid1: TStringGrid;
    SpinEdit1: TSpinEdit;
    Button1: TButton;
    Edit1: TEdit;
    Button2: TButton;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpinEdit1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
var
  Form1: TForm1;
  m: array [1..10] of integer;
implementation
{$R *.dfm}
procedure TForm1.Button1Click(Sender: TObject);
var
  i,j: integer;
begin
  j:= 0;
  for i := 0 to stringgrid1.ColCount-1 do
    begin
      j:= random(10)+j+1;
      stringgrid1.Cells[i,0]:= inttostr(j);
      m[i+1]:= j;
    end;
end;
procedure TForm1.Button2Click(Sender: TObject);
var
  a,d,c,ls,li: integer;
  b: boolean;
begin
  ls:= stringgrid1.ColCount;
  li:= 1;
  c:= (ls+li) div 2;
  a:= strtoint(edit1.Text);
  b:= false;
  d:= 0;
  repeat
    if ls=li then
      inc(d);
    if a=m[c] then
      b:= true
    else
      if a<m[c] then
        begin
          ls:= c;
          c:= (ls+li) div 2;
        end
      else
        begin
          li:= c+1;
          c:= (ls+li) div 2;
        end;
  until (b=true) or (d=2);
  if b=true then
    showmessage('Est� en la posici�n '+inttostr(c));
  if d=2 then
    showmessage('No se encuentra en el string');
end;
procedure TForm1.FormCreate(Sender: TObject);
begin
  randomize;
end;
procedure TForm1.SpinEdit1Change(Sender: TObject);
begin
  stringgrid1.ColCount:= spinedit1.Value;
end;
end.
