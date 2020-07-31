unit sorts_; //Sebasti�n L�pez, C5A
interface
uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, StdCtrls, Spin, DateUtils;
type
  TForm1 = class(TForm)
    StringGrid1: TStringGrid;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    SpinEdit1: TSpinEdit;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure SpinEdit1Change(Sender: TObject);
    procedure Button3Click(Sender: TObject);
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
  i,j,a: integer;
  t: tdatetime;
begin
  t:= Now;
  i:= 0;
  while i<stringgrid1.ColCount do
    begin
      j:= i+1;
      a:= strtoint(stringgrid1.Cells[i,0]);
      while j<stringgrid1.ColCount do
        begin
          if strtoint(stringgrid1.Cells[j,0])<a then
            begin
              a:= strtoint(stringgrid1.Cells[j,0]);
              stringgrid1.Cells[j,0]:= stringgrid1.Cells[i,0];
              stringgrid1.Cells[i,0]:= inttostr(a);
            end;
          inc(j);
        end;
      inc(i);
    end;
  button1.Hide;
  button2.Hide;
  button3.Hide;
  button4.Show;
  label1.Caption:= inttostr(Millisecondsbetween(t,now));
end;
procedure TForm1.Button2Click(Sender: TObject);
var
  i,j,a: integer;
  t: tdatetime;
begin
  t:= now;
  i:=1;
  while i<stringgrid1.ColCount do
    begin
      j:= i;
      while j>0 do
        begin
          if strtoint(stringgrid1.Cells[j,0])<strtoint(stringgrid1.Cells[j-1,0]) then
            begin
              a:= strtoint(stringgrid1.Cells[j,0]);
              stringgrid1.Cells[j,0]:= stringgrid1.Cells[j-1,0];
              stringgrid1.Cells[j-1,0]:= inttostr(a);
            end;
          dec(j);
        end;
      inc(i);
    end;
  button1.Hide;
  button2.Hide;
  button3.Hide;
  button4.Show;
  label1.Caption:= inttostr(Millisecondsbetween(t,now));
end;
procedure TForm1.Button3Click(Sender: TObject);
var
  i,j,a: integer;
  t: tdatetime;
  m: array[0..99] of integer;
begin
  t:= now;
  i:= 0;
  while i<stringgrid1.ColCount do
    begin
      m[i]:= -1;
      inc(i);
    end;
  i:= 0;
  while i<stringgrid1.ColCount do
    begin
      j:= 0;
      a:= 0;
      while j<stringgrid1.ColCount do
        begin
          if strtoint(stringgrid1.Cells[i,0])>strtoint(stringgrid1.Cells[j,0]) then
            inc(a);
          inc(j);
        end;
      m[a]:= strtoint(stringgrid1.Cells[i,0]);
      inc(i);
    end;
  i:= 0;
  while i<stringgrid1.ColCount do
    begin
      if m[i]=-1 then
        m[i]:= m[i-1];
      inc(i);
    end;
  i:= 0;
  while i<stringgrid1.ColCount do
    begin
      stringgrid1.Cells[i,0]:= inttostr(m[i]);
      inc(i);
    end;
  button1.Hide;
  button2.Hide;
  button3.Hide;
  button4.Show;
  label1.Caption:= inttostr(Millisecondsbetween(t,now));
end;
procedure TForm1.Button4Click(Sender: TObject);
var
  i: integer;
begin
  for i := 0 to stringgrid1.ColCount-1 do
    stringgrid1.Cells[i,0]:= inttostr(random(200)+1);
  button2.Show;
  button3.Show;
  button1.Show;
  button4.Hide;
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