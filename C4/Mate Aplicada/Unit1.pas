unit Unit1;
interface
uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Math;
type
  TForm1 = class(TForm)
    Image1: TImage;
    LabeledEdit1: TLabeledEdit;
    Button1: TButton;
    Label1: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Button2: TButton;
    Edit3: TEdit;
    Edit4: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Edit5: TEdit;
    Button3: TButton;
    Button4: TButton;
    Label4: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
  pnodo = ^nodo;
  nodo = record
    ele: string;
    de,iz: pnodo;
    sig: pnodo;
  end;
  type
    TPostfix=class
    public
      postfix: string;
      infix: string;
      error: string;
      errorgra: string;
      raiz: pnodo;
      bandraiz: boolean;
      function calcular(px,py,pz: double): double;
      constructor create (s: string);
    private
      num: array[1..500] of real;
  end;
const euler=2.718281828;
var
  Form1: TForm1;
  f: tpostfix;
  li,ls,liy,lsy: double;
implementation
{$R *.dfm}
constructor tpostfix.create(s: string);
var
  st: array[1..500] of char;
  sp,i,c: integer;
  ts: boolean;
  t: string;
  n: real;
function jer(m:char):integer;
  begin
    case m of
      '(': jer:= 0;
      '^': jer:= 3;
      '*','/': jer:= 2;
      '+','-': jer:= 1;
      '~': jer:= 4;
      's','c','t','r','a','o','e','l','q','w','h': jer:= 5;
    end;
  end;
  procedure push (e: char);
    begin
      inc(sp);
      st[sp]:= e;
    end;
  function pop: char;
    begin
      if sp > 0 then
        begin
          pop:= st[sp];
          dec(sp);
        end
      else
        showmessage ('Stack underflow');
    end;
  function empty: boolean;
    begin
      if sp = 0 then
        empty:= true
      else
        empty:= false;
    end;
  function top: char;
    begin
      top:= st[sp];
    end;
  procedure signo (c:char);
    begin
      while (not empty) and (jer(c) <= jer(top)) do
        postfix:= postfix + pop;
      push(c);
      ts:= false;
    end;
begin
  sp:= 0;
  i:= 1;
  error:= '';
  postfix:= '';
  infix:= s;
  ts:= false;
  bandraiz:=false;
  errorgra:='';
  while (error = '') and (i <= length(s)) do
    begin
      case s[i] of
        ' ': inc (i);
        's':if ((s[i+1]='i')or(s[i+1]='e'))and(s[i+2]='n') then
              begin
                if ts then
                  signo('*');
                signo('s');
                i:=i+3;
              end
            else
              if ((s[i+1]='q')and(s[i+2]='r')and(s[i+3]='t')) then
                begin
                  if ts then
                    signo('*');
                  signo('r');
                  i:=i+4;
                  bandraiz:=true;
                end
              else
                if (s[i+1]='e')and(s[i+2]='c') then
                  begin
                    if ts then
                      signo('*');
                    signo('a');
                    i:=i+3;
                  end
                else
                  error:='Ingres� un caracter inv�lido';
      'c':if (s[i+1]='o')and(s[i+2]='s') then
            begin
              if ts then
                signo('*');
              signo('c');
              i:=i+3;
            end
          else
            if (s[i+1]='s')and(s[i+2]='c') then
              begin
                if ts then
                  signo('*');
                signo('o');
                i:=i+3;
              end
            else
              error:='Ingres� un caracter inv�lido';
      'a':if (s[i+1]='s')and((s[i+2]='i')or(s[i+2]='e'))and(s[i+3]='n')then
            begin
              if ts then
                signo('*');
              signo('w');
              i:=i+4;
            end
          else
            if (s[i+1]='c')and(s[i+2]='o')and(s[i+3]='s') then
              begin
                if ts then
                  signo('*');
                signo('h');
                i:=i+4;
              end
            else
              if (s[i+1]='t')and(s[i+2]='a')and(s[i+3]='n') then
                begin
                  if ts then
                    signo('*');
                  signo('q');
                  i:=i+4;
                end
              else
                error:='Ingres� un caracter inv�lido';
      't':if (s[i+1]='a')and(s[i+2]='n') then
            begin
              if ts then
                signo('*');
              signo('t');
              i:=i+3;
            end
          else
            error:='Ingres� un caracter inv�lido';
      'r':if ((s[i+1]='a')and((s[i+2]='i')or(s[i+2]='�'))and(s[i+3]='z')) then
            begin
              if ts then
                signo('*');
              signo('r');
              i:=i+4;
              bandraiz:=true;
            end
          else
            error:='Ingres� un caracter inv�lido';
      'l':if (s[i+1]='n') then
            begin
              if ts then
                signo('*');
              signo('l');
              i:=i+2;
            end
          else
            error:='Ingres� un caracter inv�lido';
      'x','y','z':begin
                    if ts then
                      signo('*');
                    postfix:= postfix + s[i];
                    inc(i);
                    ts:= true;
                  end;
      'p':if (s[i+1]='i') then
            begin
              if ts then
                signo('*');
              postfix:= postfix + s[i];
              i:=i+2;
              ts:= true;
            end
          else
            error:='Ingres� un caracter inv�lido';
      'e': begin
            if (s[i+1]='^') then
              begin
                if ts then
                  signo('*');
                postfix:= postfix + s[i];
                inc(i);
                ts:= true;
              end
            else
              error:='Ingres� un caracter inv�lido';
          end;
      '(':begin
            if ts then
              signo('*');
            push('(');
            inc(i);
          end;
      ')':begin
            while (not empty) and (top <> '(') do
              postfix:= postfix + pop;
            if (not empty) then
              pop;
            inc(i);
          end;
      '+','-','*','/','^':begin
                            if (not ts) then
                              if s[i] = '-' then
                                signo('~')
                              else
                                error:= 'hay signos juntos' else
                              signo(s[i]);
                              inc(i);
                          end;
      '0'..'9': begin
                  if ts then
                    signo('*');
                  t:= copy(s,i,length(s));
                  val (t,n,c);
                  if c = 0 then
                    i:= length(s) + 1
                  else
                    begin
                      t:= copy(t,1,c-1);
                      i:= i + c - 1;
                      val (t,n,c);
                    end;
                  postfix:= postfix + '#';
                  num[length(postfix)]:= n;
                  ts:= true;
                end;
      else
        error:= 'Ingreso un caracter inv�lido';
    end;
  end;
  while (not empty) do
    postfix:= postfix + pop;
end;
function tpostfix.calcular(px,py,pz: double):double;
var
  st: array [1..50] of real;
  i,sp: integer;
  a,b: real;
  procedure push (e: real);
    begin
      inc(sp);
      st[sp]:= e;
    end;
  function pop: real;
    begin
      if sp > 0 then
        begin
          pop:= st[sp];
          dec(sp);
        end
      else
        showmessage ('Stack underflow');
    end;
  function top: real;
    begin
      top:= st[sp];
    end;
begin
  sp:= 0;
  for i:= 1 to length(postfix) do
    case postfix[i] of
      '#': push(num[i]);
      'x': push(px);
      'y': push(py);
      'z': push(pz);
      '+': push(pop + pop);
      '-': push(-pop + pop);
      '*': push(pop * pop);
      'p': push(pi);
      's': push(sin(pop));
      'c': push(cos(pop));
      't': push(tan(pop));
      'r':if (bandraiz=false)then
            begin
              if (top>=0)then
                begin
                  push(-sqrt(pop));
                  errorgra:='';
                end
              else
                begin
                  push(0*pop);
                  errorgra:='No se puede';
                end;
            end
          else
            if (top>=0)then
              begin
                push(sqrt(pop));
                errorgra:='';
              end
            else
              begin
                push(0*pop);
                errorgra:='No se puede';
              end;
      'a':if (cos(top)<>0) then
            push(1/cos(pop));
      'o':if (sin(top)<>0) then
            push(1/sin(pop));
      'w':if (top<=1)and(top>=-1) then
            push(arcsin(pop));
      'h':if (top<=1)and(top>=-1) then
            push(arccos(pop));
      'q':push(arctan(pop));
      'l':if (top>0)then
            begin
              push(ln(pop));
              errorgra:='';
            end
          else
            begin
              push(0*pop);
              errorgra:='No se puede';
            end;
      'e':push (euler);
      '/':if top = 0 then
            error:= 'No se puede divir dentro de 0'
          else
            push(1/pop*pop);
      '^':begin
            b:= pop;
            a:= pop;
            push(power(a,b));
          end;
      '~':push(-pop);
    end;
  calcular:= st[1];
end;
procedure graficar(ex,ey: integer);
begin
  with form1.image1.Canvas do
    begin
      Pen.Color:= clblack;
      Rectangle(0,0,form1.image1.Width,form1.image1.Height);
      moveto(ey,0);
      lineto(ey,form1.image1.Height);
      moveto(0,ex);
      lineto(form1.Width,ex);
    end;
end;
procedure meow(lix,lsx: double; t: boolean);
var
  y: double;
  vx,i,ejex,ejey: integer;
  er: boolean;
begin
  with form1 do begin
  y:= 0;
  er:= true;
  f:= tpostfix.create(labelededit1.Text);
  liy:= f.calcular(lix,0,0);
  lsy:= liy;
  vx:= 0;
  while (vx<=image1.Width) and er do
    begin
      y:= f.calcular(lix+(lsx-lix)*(vx*1.0)/(image1.Width*1.0),0,0);
      if f.error<>'' then
        begin
          showmessage(f.error);
          er:= false;
        end;
      if y>lsy then
        lsy:= y;
      if y<liy then
        liy:= y;
      inc(vx);
    end;
  ejey:= round((0-lix)*(image1.Width*1.0)/(lsx-lix));
  ejex:= image1.height-round((0-liy)*(image1.Height*1.0)/(lsy-liy));
  graficar(ejex,ejey);
  vx:= 0;
  y:= f.calcular(lix,0,0);
  image1.Canvas.MoveTo(vx,round(ejex-(image1.Height*y/(lsy-liy))));
  while (vx<image1.Width) and er do
    begin
      inc(vx);
      y:= f.calcular(lix+(lsx-lix)*(vx*1.0)/(image1.Width*1.0),0,0);
      image1.Canvas.LineTo(vx,round(ejex-(image1.Height*y/(lsy-liy))));
      if f.error<>'' then
        begin
          showmessage(f.error);
          er:= false;
        end;
    end;
  end;
end;
procedure TForm1.Button1Click(Sender: TObject);
begin
  image1.Picture:= nil;
  li:= strtofloat(edit1.Text);
  ls:= strtofloat(edit2.Text);
  meow(li,ls,true);
  button2.Enabled:= true;
end;
procedure TForm1.Button2Click(Sender: TObject);
var
  li,ls,pc,t,pa: real;
  m: boolean;
begin
  li:= strtofloat(edit3.Text);
  ls:= strtofloat(edit4.Text);
  pc:= (ls+li)/2;
  t:= f.calcular(pc,0,0);
  m:= true;
  while m do
    begin
      if (t*f.calcular(ls,0,0))>0 then
        ls:= pc
      else
        li:= pc;
      pa:= pc;
      pc:= (ls+li)/2;
      t:= f.calcular(pc,0,0);
      if (abs(pc-pa)<(strtofloat(edit5.Text))) then
        m:= false;
    end;
  showmessage(floattostrf(pc,fffixed,5,10));
end;
procedure TForm1.Button3Click(Sender: TObject);
begin
  li:= li/10;
  ls:= ls/10;
  meow(li,ls,false);
end;
procedure TForm1.Button4Click(Sender: TObject);
begin
  li:= li*10;
  ls:= ls*10;
  meow(li,ls,false);
end;
procedure TForm1.Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  label4.Caption:= '('+floattostr(x*(ls-li)/500-ls)+','+floattostr(lsy-(y)*(lsy-liy)/500)+')';
end;
end.
