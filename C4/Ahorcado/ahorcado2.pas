unit ahorcado2;
interface
uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ShellApi;
type
  TForm2 = class(TForm)
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Timer1: TTimer;
    procedure FormShow(Sender: TObject);
    procedure miau(p: TObject);
    procedure easy(p: TObject);
    procedure hard(p: TObject);
    procedure Label5Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Label6MouseLeave(Sender: TObject);
    procedure Label6MouseEnter(Sender: TObject);
    procedure holi(p: TObject);
    procedure adiosi(p: TObject);
    procedure Label5MouseEnter(Sender: TObject);
    procedure Label5MouseLeave(Sender: TObject);
    procedure Label1MouseEnter(Sender: TObject);
    procedure Label1MouseLeave(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
var
  Form2: TForm2;
  correctas,incorrectas: textfile;
  errores,correctos: array[1..26] of char;
  disponibles: string;
  letras: array[1..26] of tlabel;
  largo,g,poslistay,posmalay,p1,p2,s,ms:  integer;
implementation
uses ahorcado, ahorcado3;
{$R *.dfm}
procedure tform2.holi(p: TObject);
begin
  (p as TLabel).Font.Color:= clred;
end;
procedure tform2.adiosi(p: TObject);
begin
  (p as TLabel).Font.Color:= clblack;
end;
procedure tform2.easy(p: TObject);
var
  a,i,l: integer;
  c,e: string;
  d,t: char;
  y: boolean;
begin
  a:= 1;
  c:= (p as tlabel).Caption;
  d:= c[1];
  (p as tlabel).enabled:= false;
  e:= label6.Caption;
  if pos(char(ord(d)+32),form1.palabras[form1.r])>0 then
    begin
      while a<=length(form1.palabras[form1.r]) do
        begin
            if form1.palabras[form1.r][a]=char(ord(d)+32) then
              begin
                delete(e,((a-1)*2)+1,1);
                e:= copy(e,1,((a-1)*2))+d+copy(e,((a-1)*2)+1,length(e)-((a-1)*2)+1);
                correctos[p1]:= d;
                inc(p1);
                delete(disponibles,pos(d,disponibles),1);
                inc (g);
                s:= form3.a;
                ms:= 0;
                label10.Caption:= inttostr(s)+'.'+inttostr(ms);
              end;
            inc (a);
        end;
      label2.Hide;
      correctos[p1]:= d;
      inc(p1);
      (p as tlabel).Top:= poslistay;
      (p as tlabel).Left:= 346;
      poslistay:= poslistay+22;
    end
  else
    begin
      label2.Show;
      dec(form3.b);
      label1.Caption:= inttostr(form3.b);
      errores[p2]:= d;
      inc(p2);
      delete(disponibles,pos(d,disponibles),1);
      if label1.Caption='0' then
        begin
          image1.Picture.LoadFromFile('muerto.bmp');
          assignfile(correctas,'correctas.txt');
          assignfile(incorrectas,'incorrectas.txt');
          rewrite(correctas);
          rewrite(incorrectas);
          i:= 1;
          while not(correctos[i]='') and (i<=26) do
            begin
              write(correctas,correctos[i]+' ');
              inc(i);
            end;
          i:= 1;
          while not(errores[i]='') and (i<=26) do
            begin
              write(incorrectas,errores[i]+' ');
              inc(i);
            end;
          closefile(incorrectas);
          closefile(correctas);
          label3.Show;
          label1.Hide;
          label2.Hide;
          label5.Show;
          label9.Hide;
          label8.hide;
          for i := 1 to 26 do
            letras[i].hide;
          label7.show;
          label6.Hide;
          timer1.Enabled:= false;
          label10.Hide;
        end
      else
        begin
          image1.Picture.LoadFromFile('fase'+label1.Caption+'.bmp');
          (p as tlabel).Top:= posmalay;
          (p as tlabel).Left:= 452;
          posmalay:= posmalay+22;
          t:= char(random(26)+97);
          errores[p2]:= d;
          inc(p2);
          l:= 1;
          while (pos(t,disponibles)<>0) and (y=false) do
            begin
              if l<100 then
                begin
                  t:= char(random(26)+97);
                  inc(l);
                end
              else
                y:= true;
            end;
          if y=false then
            begin
              delete(disponibles,pos(t,disponibles),1);
              letras[ord(t)-96].Enabled:= false;
              letras[ord(t)-96].Top:= posmalay;
              letras[ord(t)-96].Left:= 452;
              posmalay:= posmalay+22;
            end;
        end;
    end;
  label6.Caption:= e;
  if g=largo then
    begin
      label1.Hide;
      label2.Hide;
      label4.Show;
      label5.Show;
      label9.Hide;
      label8.hide;
      for i := 1 to 26 do
        letras[i].hide;
      image1.Picture.LoadFromFile('salvado.bmp');
      assignfile(correctas,'correctas.txt');
      assignfile(incorrectas,'incorrectas.txt');
      rewrite(correctas);
      rewrite(incorrectas);
      i:= 1;
      while not(correctos[i]='') and (i<=26) do
        begin
          write(correctas,correctos[i]+' ');
          inc(i);
        end;
      i:= 1;
      while not(errores[i]='') and (i<=26) do
        begin
          write(incorrectas,errores[i]+' ');
          inc(i);
        end;
      closefile(incorrectas);
      closefile(correctas);
    end;
end;
procedure tform2.hard(p: TObject);
var
  a,i: integer;
  c,e: string;
  d: char;
begin
  a:= 1;
  c:= (p as tlabel).Caption;
  d:= c[1];
  e:= label6.Caption;
  if pos(char(ord(d)+32),form1.palabras[form1.r])>0 then
    begin
      while a<=length(form1.palabras[form1.r]) do
        begin
            if form1.palabras[form1.r][a]=char(ord(d)+32) then
              begin
                delete(e,((a-1)*2)+1,1);
                e:= copy(e,1,((a-1)*2))+d+copy(e,((a-1)*2)+1,length(e)-((a-1)*2)+1);
                correctos[p1]:= d;
                inc(p1);
                inc (g);
                s:= form3.a;
                ms:= 0;
                label10.Caption:= inttostr(s)+'.'+inttostr(ms);
              end;
            inc (a);
        end;
      label2.Hide;
      correctos[p1]:= d;
      inc(p1);
      (p as tlabel).Top:= poslistay;
      (p as tlabel).Left:= 346;
      poslistay:= poslistay+22;
      (p as tlabel).Enabled:= false;
    end
  else
    begin
      label2.Show;
      dec(form3.b);
      label1.Caption:= inttostr(form3.b);
      errores[p2]:= d;
      inc(p2);
      if label1.Caption='0' then
        begin
          image1.Picture.LoadFromFile('muerto.bmp');
          assignfile(correctas,'correctas.txt');
          assignfile(incorrectas,'incorrectas.txt');
          rewrite(correctas);
          rewrite(incorrectas);
          i:= 1;
          while not(correctos[i]='') and (i<=26) do
            begin
              write(correctas,correctos[i]+' ');
              inc(i);
            end;
          i:= 1;
          while not(errores[i]='') and (i<=26) do
            begin
              write(incorrectas,errores[i]+' ');
              inc(i);
            end;
          closefile(incorrectas);
          closefile(correctas);
          label3.Show;
          label1.Hide;
          label2.Hide;
          label5.Show;
          for i := 1 to 26 do
            letras[i].hide;
          label7.show;
          label6.Hide;
          label9.Hide;
          label8.hide;
          timer1.Enabled:= false;
          label10.Hide;
        end
      else
        image1.Picture.LoadFromFile('fase'+label1.Caption+'.bmp');
    end;
  label6.Caption:= e;
  if g=largo then
    begin
      label1.Hide;
      label2.Hide;
      label4.Show;
      label5.Show;
      label9.Hide;
      label8.hide;
      for i := 1 to 26 do
        letras[i].hide;
      image1.Picture.LoadFromFile('salvado.bmp');
      assignfile(correctas,'correctas.txt');
      assignfile(incorrectas,'incorrectas.txt');
      rewrite(correctas);
      rewrite(incorrectas);
      i:= 1;
      while not(correctos[i]='') and (i<=26) do
        begin
          write(correctas,correctos[i]+' ');
          inc(i);
        end;
      i:= 1;
      while not(errores[i]='') and (i<=26) do
        begin
          write(incorrectas,errores[i]+' ');
          inc(i);
        end;
      closefile(incorrectas);
      closefile(correctas);
    end;
end;
procedure tform2.miau(p: TObject);
var
  a,i: integer;
  c,e: string;
  d: char;
begin
  a:= 1;
  c:= (p as tlabel).Caption;
  d:= c[1];
  (p as tlabel).enabled:= false;
  e:= label6.Caption;
  if pos(char(ord(d)+32),form1.palabras[form1.r])>0 then
    begin
      while a<=length(form1.palabras[form1.r]) do
        begin
            if form1.palabras[form1.r][a]=char(ord(d)+32) then
              begin
                delete(e,((a-1)*2)+1,1);
                e:= copy(e,1,((a-1)*2))+d+copy(e,((a-1)*2)+1,length(e)-((a-1)*2)+1);
                inc (g);
                s:= form3.a;
                ms:= 0;
                label10.Caption:= inttostr(s)+'.'+inttostr(ms);
              end;
            inc (a);
        end;
      correctos[p1]:= d;
      inc(p1);
      label2.Hide;
      (p as tlabel).Top:= poslistay;
      (p as tlabel).Left:= 346;
      poslistay:= poslistay+22;
    end
  else
    begin
      label2.Show;
      dec(form3.b);
      label1.Caption:= inttostr(form3.b);
      errores[p2]:= d;
      inc(p2);
      s:= form3.a;
      ms:= 0;
      label10.Caption:= inttostr(s)+'.'+inttostr(ms);
      if label1.Caption='0' then
        begin
          image1.Picture.LoadFromFile('muerto.bmp');
          assignfile(correctas,'correctas.txt');
          assignfile(incorrectas,'incorrectas.txt');
          rewrite(correctas);
          rewrite(incorrectas);
          i:= 1;
          while not(correctos[i]='') and (i<=26) do
            begin
              write(correctas,correctos[i]+' ');
              inc(i);
            end;
          i:= 1;
          while not(errores[i]='') and (i<=26) do
            begin
              write(incorrectas,errores[i]+' ');
              inc(i);
            end;
          closefile(incorrectas);
          closefile(correctas);
          label3.Show;
          label1.Hide;
          label2.Hide;
          label5.Show;
          label9.Hide;
          label8.hide;
          for i := 1 to 26 do
            letras[i].hide;
          label7.show;
          label6.Hide;
          timer1.Enabled:= false;
          label10.Hide;
        end
      else
        begin
          image1.Picture.LoadFromFile('fase'+label1.Caption+'.bmp');
          (p as tlabel).Top:= posmalay;
          (p as tlabel).Left:= 452;
          posmalay:= posmalay+22;
        end;
    end;
  label6.Caption:= e;
  if g=largo then
    begin
      label1.Hide;
      label2.Hide;
      label4.Show;
      label5.Show;
      label9.Hide;
      label8.hide;
      for i := 1 to 26 do
        letras[i].hide;
      image1.Picture.LoadFromFile('salvado.bmp');
      assignfile(correctas,'correctas.txt');
      assignfile(incorrectas,'incorrectas.txt');
      rewrite(correctas);
      rewrite(incorrectas);
      i:= 1;
      while not(correctos[i]='') and (i<=26) do
        begin
          write(correctas,correctos[i]+' ');
          inc(i);
        end;
      i:= 1;
      while not(errores[i]='') and (i<=26) do
        begin
          write(incorrectas,errores[i]+' ');
          inc(i);
        end;
      closefile(incorrectas);
      closefile(correctas);
    end;
end;
procedure TForm2.Timer1Timer(Sender: TObject);
var
  i: integer;
begin
  ms:= trunc((strtofloat(label10.Caption)*10)-1) mod 10;
  s:= trunc((strtofloat(label10.Caption)*10)-1) div 10;
  if (s=0) and (ms=0) then
    begin
      s:= form3.a;
      dec(form3.b);
      label1.Caption:= inttostr(form3.b);
      if form3.b=0 then
        begin
          image1.Picture.LoadFromFile('muerto.bmp');
          assignfile(correctas,'correctas.txt');
          assignfile(incorrectas,'incorrectas.txt');
          rewrite(correctas);
          rewrite(incorrectas);
          i:= 1;
          while not(correctos[i]='') and (i<=26) do
            begin
              write(correctas,correctos[i]+' ');
              inc(i);
            end;
          i:= 1;
          while not(errores[i]='') and (i<=26) do
            begin
              write(incorrectas,errores[i]+' ');
              inc(i);
            end;
          closefile(incorrectas);
          closefile(correctas);
          label3.Show;
          label1.Hide;
          label2.Hide;
          label5.Show;
          label9.Hide;
          label8.hide;
          for i := 1 to 26 do
            letras[i].hide;
          label7.show;
          label6.Hide;
        end
      else
        image1.Picture.LoadFromFile('fase'+label1.Caption+'.bmp');
    end;
  label10.Caption:= inttostr(s)+'.'+inttostr(ms);
end;
procedure TForm2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  application.Terminate;
end;
procedure TForm2.FormCreate(Sender: TObject);
begin
  randomize;
end;
procedure TForm2.FormShow(Sender: TObject);
var
  n: integer;
begin
  if not(form3.a=0) then
    begin
      label10.Caption:= inttostr(form3.a)+'.0';
      label10.Show;
      timer1.Enabled:= true;
    end;
  p1:= 1;
  p2:= 1;
  posmalay:= 160;
  poslistay:= 160;
  g:= 0;
  largo:= length(form1.palabras[form1.r]);
  label6.Caption:= '';
  n:= 1;
  while n<=largo do
    begin
      label6.Caption:= label6.Caption+'_ ';
      inc(n);
    end;
  label7.Caption:= form1.palabras[form1.r];
  label1.Show;
  label2.Hide;
  label3.Hide;
  label4.Hide;
  label5.Hide;
  label1.Caption:= inttostr(form3.b);
  image1.Picture.LoadFromFile('fase'+label1.Caption+'.bmp');
  n:= 1;
  while n<=26 do
    begin
      disponibles:= disponibles+chr(64+n);
      letras[n]:= tlabel.Create(form2);
      letras[n].Parent:= form2;
      letras[n].Left:= 20+20*(n-1);
      letras[n].Top:= 450;
      letras[n].Font.Style:= [fsbold];
      letras[n].Font.Size:= 12;
      letras[n].Caption:= chr(64+n);
      letras[n].Width:= 20;
      case form3.c of
        1: letras[n].OnClick:= easy;
        2: letras[n].OnClick:= miau;
        3: letras[n].OnClick:= hard;
      end;
      letras[n].OnMouseEnter:= holi;
      letras[n].OnMouseLeave:= adiosi;
      inc(n);
    end;
end;
procedure TForm2.Label1MouseEnter(Sender: TObject);
begin
  label1.font.style:= [fsbold];
end;
procedure TForm2.Label1MouseLeave(Sender: TObject);
begin
  label1.font.style:= [];
end;
procedure TForm2.Label5Click(Sender: TObject);
var
  n: integer;
begin
  shellexecute(Handle,'open','ahorcado_.exe',nil,nil,SW_SHOWNORMAL);
  application.Terminate;
end;
procedure TForm2.Label5MouseEnter(Sender: TObject);
begin
  label5.Font.Color:= clgreen;
end;
procedure TForm2.Label5MouseLeave(Sender: TObject);
begin
  label5.Font.Color:= clblack;
end;
procedure TForm2.Label6MouseEnter(Sender: TObject);
begin
  label6.Font.Color:= clgreen;
end;
procedure TForm2.Label6MouseLeave(Sender: TObject);
begin
  label6.Font.Color:= clblack;
end;
end.