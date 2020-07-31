unit Unit1;
interface
uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Grids;
type
  TForm1 = class(TForm)
    Button1: TButton;
    Memo1: TMemo;
    Button2: TButton;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Button3: TButton;
    Button4: TButton;
    Edit1: TEdit;
    Button5: TButton;
    Memo2: TMemo;
    Edit2: TEdit;
    Button6: TButton;
    Memo3: TMemo;
    StringGrid1: TStringGrid;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Button10: TButton;
    Edit3: TEdit;
    Label1: TLabel;
    Memo4: TMemo;
    Button11: TButton;
    Edit4: TEdit;
    Button13: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    x: integer;
    amp: real;
    total: integer;
  end;
var
  Form1: TForm1;
implementation
uses Unit2, Unit3;
{$R *.dfm}
procedure TForm1.Button2Click(Sender: TObject);
var
  i: integer;
begin
  memo1.Hide;
  memo1.Lines.Clear;
  if edit1.Text<>'' then
    for i := 1 to strtoint(edit1.Text) do
      memo1.Lines.Add(inttostr(random(1000)+1));
  memo1.Show;
end;
procedure TForm1.Button3Click(Sender: TObject);
begin
  memo1.Lines.Clear;
end;
procedure TForm1.Button4Click(Sender: TObject);
begin
  memo1.Lines.Delete(memo1.Lines.Count-1);
end;
procedure TForm1.Button5Click(Sender: TObject);
var
  suma,meow,c1,c2,suma2,suma3: real;
  i,j,cmay,cmay2: integer;
  tutu: array [1..5000] of real;
begin
  memo2.Lines.Clear;
  suma:= 0;
  for i := 1 to memo1.Lines.Count do
    tutu[i]:= strtofloat(memo1.Lines[i-1]);
  for i := 1 to memo1.Lines.Count do
    suma:= suma+tutu[i];
  i:= 1;
  while (i<=memo1.Lines.Count) do
    begin
      j:= i+1;
      while (j<=memo1.Lines.Count) do
        begin
          if tutu[j]<=tutu[i] then
            begin
              meow:= tutu[i];
              tutu[i]:= tutu[j];
              tutu[j]:= meow;
            end;
          inc(j);
        end;
      inc(i);
    end;
  i:= 1;
  cmay2:= 0;
  c2:= 0;
  while i<=memo1.Lines.Count do
    begin
      j:= 1;
      c1:= tutu[i];
      cmay:= 0;
      while j<=memo1.Lines.Count do
        begin
          if c1=tutu[j] then
            inc(cmay);
          inc(j);
        end;
      if cmay>cmay2 then
        begin
          cmay2:= cmay;
          c2:= c1;
        end;
      inc(i);
    end;
  i:= 1;
  suma2:= 0;
  while i<= memo1.Lines.Count do
    begin
      suma2:= suma2+abs(tutu[i]-(suma/memo1.Lines.Count));
      inc(i);
    end;
  suma2:= suma2/memo1.Lines.Count;
  suma3:= 0;
  i:= 1;
  while i<=memo1.Lines.Count do
    begin
      suma3:= suma3+abs(tutu[i]-(suma/memo1.Lines.Count));
      inc(i);
    end;
  suma3:= sqrt(sqr(suma3)/memo1.Lines.Count);
  memo2.Lines.Add('Promedio: '+floattostrf((suma/memo1.Lines.Count),fffixed,8,3));
  if memo1.Lines.Count mod 2=0 then
    memo2.Lines.Add('Mediana: '+floattostrf((tutu[memo1.Lines.Count div 2]),fffixed,8,3))
  else
    memo2.Lines.Add('Mediana: '+floattostrf(((tutu[memo1.Lines.Count div 2]+tutu[memo1.Lines.Count div 2 +1])/2),fffixed,8,3));
  memo2.Lines.Add('Moda: '+floattostrf((c2),fffixed,8,3));
  memo2.Lines.Add('Desviación media: '+floattostrf((suma2),fffixed,8,3));
  memo2.Lines.Add('Desviación estándar: '+floattostrf((suma3),fffixed,8,3));
end;
procedure TForm1.Button6Click(Sender: TObject);
begin
  if edit2.Text<>'' then
    begin
      memo3.Lines.Add(edit2.Text);
      edit2.Text:='';
    end;
end;
procedure TForm1.Button7Click(Sender: TObject);
var
  i: integer;
begin
  memo3.Hide;
  memo3.Lines.Clear;
  if edit2.Text<>'' then
    for i := 1 to strtoint(edit2.Text) do
      memo3.Lines.Add(floattostr(random(trunc(strtofloat(edit2.Text)*1.5))+1));
  edit2.Text:= '';
  memo3.Show;
end;
procedure TForm1.Button8Click(Sender: TObject);
begin
  memo3.Lines.Delete(memo1.Lines.Count-1);
end;
procedure TForm1.Button9Click(Sender: TObject);
var
  i,j: integer;
begin
  memo3.Lines.Clear;
  memo4.Lines.Clear;
  for i := 0 to stringgrid1.ColCount do
    for j := 1 to stringgrid1.RowCount do
      stringgrid1.Cells[i,j]:= '';
  stringgrid1.RowCount:= 2;
  edit3.Text:= '';
  button13.Enabled:= false;
end;
procedure TForm1.FormCreate(Sender: TObject);
begin
  randomize;
  stringgrid1.Cells[0,0]:= 'Clases';
  stringgrid1.Cells[2,0]:= 'M. Clase';
  stringgrid1.Cells[3,0]:= 'Frec.';
  stringgrid1.ColWidths[3]:= 60;
  stringgrid1.Cells[4,0]:= 'Frec. Acum.';
  stringgrid1.ColWidths[4]:= 100;
  stringgrid1.Cells[5,0]:= 'F. Relativa';
end;
procedure TForm1.Button10Click(Sender: TObject);
var
  numclas,i,j,frec,fa,fmayor,rfm,rfmitad: integer;
  meow,rango,ls,li,summed,moda,mediana,sumdevm,sumdevs: real;
  datos: array [1..10000] of real;
  t: boolean;
begin
  button13.Enabled:= true;
  if edit3.Text<>'' then
    begin
      numclas:= strtoint(edit3.Text);
      if numclas>0 then
        begin
          stringgrid1.RowCount:= numclas+1;
          for i := 1 to memo3.Lines.Count do
            datos[i]:= strtofloat(memo3.Lines[i-1]);
          i:= 1;
          while (i<=memo3.Lines.Count) do
            begin
              j:= i+1;
              while (j<=memo3.Lines.Count) do
                begin
                  if datos[j]<=datos[i] then
                    begin
                      meow:= datos[i];
                      datos[i]:= datos[j];
                      datos[j]:= meow;
                    end;
                  inc(j);
                end;
              inc(i);
            end;
          rango:= datos[memo3.Lines.Count]-datos[1];
          ls:= datos[1];
          fa:= 0;
          summed:= 0;
          fmayor:= 0;
          rfm:= 0;
          rfmitad:= 0;
          t:= true;
          sumdevm:= 0;
          sumdevs:= 0;
          amp:= rango/numclas;
          for i := 1 to numclas do
            begin
              li:= ls;
              ls:= li+rango/numclas;
              stringgrid1.Cells[0,i]:= floattostrf(li,fffixed,8,2);
              stringgrid1.Cells[1,i]:= floattostrf(ls,fffixed,8,2);
              stringgrid1.Cells[2,i]:= floattostrf((li+ls)/2,fffixed,8,2);
              frec:= 0;
              for j := 1 to memo3.Lines.Count do
                if i<>numclas then
                  begin
                    if (datos[j]<ls) and (datos[j]>=li) then
                      inc(frec);
                  end
                else
                  if (datos[j]<=ls) and (datos[j]>=li) then
                    inc(frec);
              if frec>fmayor then
                begin
                  fmayor:= frec;
                  rfm:= i;
                end;
              fa:= fa+frec;
              stringgrid1.Cells[3,i]:= inttostr(frec);
              stringgrid1.Cells[4,i]:= inttostr(fa);
              stringgrid1.Cells[5,i]:= floattostrf((frec*1.0)/(memo3.Lines.Count*1.0),fffixed,1,3);
              summed:= summed+((li+ls)/2)*frec;
              if (((memo3.Lines.Count div 2)<=fa) and t) then
                begin
                  rfmitad:= i;
                  t:= false;
                end;
            end;
          total:= fa;
          moda:= strtofloat(stringgrid1.cells[3,rfm]);
          if rfmitad>1 then
            mediana:= strtofloat(stringgrid1.Cells[0,rfmitad])+(((memo3.Lines.Count div 2)-strtofloat(stringgrid1.Cells[0,rfmitad-1]))/strtofloat(stringgrid1.Cells[0,rfmitad]))*(rango/memo3.Lines.Count)
          else
            mediana:= strtofloat(stringgrid1.Cells[0,rfmitad])+(((memo3.Lines.Count div 2))/strtofloat(stringgrid1.Cells[0,rfmitad]))*(rango/memo3.Lines.Count);
          summed:= summed/memo3.Lines.Count;
          for i := 1 to numclas do
            begin
              sumdevm:= sumdevm+abs(strtofloat(stringgrid1.Cells[2,i])-summed)*strtofloat(stringgrid1.Cells[3,i]);
              sumdevs:= sumdevs+sqr(strtofloat(stringgrid1.Cells[2,i])-summed)*strtofloat(stringgrid1.Cells[3,i]);
            end;
          sumdevm:= sumdevm/memo3.Lines.Count;
          sumdevs:= sqrt(sumdevs/memo3.Lines.Count);
          memo4.Lines.Clear;
          memo4.Lines.Add('Media: '+floattostrf(summed,fffixed,8,2));
          memo4.Lines.Add('Moda: '+floattostrf(moda,fffixed,8,2));
          memo4.Lines.Add('Mediana: '+floattostrf(mediana,fffixed,8,2));
          memo4.Lines.Add('Desv. media: '+floattostrf(sumdevm,fffixed,8,2));
          memo4.Lines.Add('Desv. estándar: '+floattostrf(sumdevs,fffixed,8,2));
        end;
    end;
end;
procedure TForm1.Button11Click(Sender: TObject);
begin
  form3.show;
end;
procedure TForm1.Button13Click(Sender: TObject);
begin
  if (edit4.Text<>'') then
    begin
      x:= memo3.Lines.Count;
      form2.show;
      form1.Hide;
    end;
end;
procedure TForm1.Button1Click(Sender: TObject);
begin
  if edit1.Text<>'' then
    begin
      memo1.Lines.Add(edit1.Text);
      edit1.Text:= '';
    end;
end;
end.
