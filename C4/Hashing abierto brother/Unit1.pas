unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Label1: TLabel;
    Button1: TButton;
    Memo1: TMemo;
    Memo2: TMemo;
    Label2: TLabel;
    Label3: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  type treg=record
  palabra:string[255];
  significado:string[255];
  end;

  type pnodo=^nodo;
      nodo=record
      ele:string;
      sig:pnodo;
     end;



var
  Form1: TForm1;
  archivo:file of treg;
  palabras:textfile;
  salida:textfile;
  vec:array[0..100] of pnodo;
  registro:treg;
  actual:integer;
  contcol:integer;
  contpal,contt:integer;
  pun:pnodo;

implementation

{$R *.dfm}


function Hash(s:string):integer;
var i,r:integer;
begin
r:=0;
  for i := 1 to length(s) do
    r:=r+ord(s[i]);
    hash:=r mod 100;
end;


procedure guardarpal(palabra:string);
begin
 reset(palabras);
 write(palabras,palabra);
 closefile(palabras);
end;

procedure guardarpal1(palabra:string);
begin
  reset(salida);
  writeln(salida,palabra);
  closefile(salida);
end;
procedure guardar(var lista:array of pnodo; str:string);
var
rt,temp:pnodo;
p:integer;
begin

  p:=hash(str);

  if lista[p].ele='' then
    lista[p].ele:=str
    else
    begin
      new(rt);
      rt:=lista[p];
      while rt.sig<>nil do
        rt:=rt.sig;
        new(temp);
        temp.ele:=str;
        temp.sig:=nil;
        rt.sig:=temp;


    end;



end;

procedure Leer;
var i,j:integer;
begin

for i := 0 to 100 do
  begin
    new(vec[i]);
  end;

  reset(archivo);
  j:=filesize(archivo)-1;
  i:=0;
  while ((i<>j) and (j>-1))do
  begin
    seek(archivo,i);
    read(archivo,registro);
    guardar(vec,registro.palabra);
    inc(i);
  end;
closefile(archivo);
end;


procedure contarcol(obj:array of pnodo);
var i:integer; temp:pnodo;
begin

for i := 0 to 100 do
  begin
    temp:=obj[i];
    while temp.sig<>nil do
    begin
     inc(contcol);
     temp:=temp.sig;
    end;

  end;
end;


procedure escribir(obj:array of pnodo);
var i,j:integer; temp:treg; tempp:pnodo;
begin
contarcol(obj);
rewrite(archivo);
i:=0;
while i<(100) do
  begin
    tempp:=obj[i];
    if tempp.ele<>'' then
    form1.Memo1.Lines.Add(tempp.ele);
    while tempp<>nil do
      begin
      temp.palabra:=tempp.ele;
      if tempp.ele<>'' then
      form1.Memo2.Lines.Add(temp.palabra);
      seek(archivo,i);
      write(archivo,temp);
      tempp:=tempp.sig;
      inc(i);
      end;
  end;




end;





procedure TForm1.Button1Click(Sender: TObject);
var i:integer; temp:string;
begin
leer;
guardar(vec,edit1.Text);
memo1.Lines.Clear;
memo2.Lines.Clear;
rewrite(palabras);
rewrite(salida);
escribir(vec);
end;

procedure TForm1.FormCreate(Sender: TObject);
var i:integer;
begin
  assignfile(archivo,'palabras.c5e');
  assignfile(palabras,'palabras.txt');
  assignfile(salida,'salida.txt');


for i := 0 to 100 do
  begin
    new(vec[i]);
  end;
 contcol:=0;
 actual:=0;
 contpal:=0;
 contt:=0;
end;

end.