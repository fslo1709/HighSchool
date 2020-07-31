unit Primos;
interface
uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls,DateUtils;
type
  TForm1 = class(TForm)
    Memo1: TMemo;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
var
  Form1: TForm1;
  t1,t2: tdatetime;
implementation
{$R *.dfm}
procedure TForm1.Button1Click(Sender: TObject);
var
  prueba: array[1..200000] of integer;
  cont,primo,pos,posm: integer;
  es: boolean;
begin
  posm:= 1;
  t1:= now;
  cont:= 1;
  primo:= 2;
  memo1.Lines.Add(inttostr(cont)+' '+inttostr(primo));
  prueba[posm]:= primo;
  inc(posm);
  cont:= 2;
  primo:= 3;
  memo1.Lines.Add(inttostr(cont)+' '+inttostr(primo));
  prueba[posm]:= primo;
  inc(posm);
  repeat
    begin
      es:= false;
      inc(primo);
      inc(primo);
      pos:= 1;
      while ((prueba[pos]<(trunc(sqrt(primo*1.0))+1)) and (es=false)) do
        begin
          if ((primo mod prueba[pos])=0) then
            es:= true;
          inc(pos);
        end;
      if es=false then
        begin
          inc(cont);
          memo1.Lines.Add(inttostr(cont)+' '+inttostr(primo));
          prueba[posm]:= primo;
          inc(posm);
        end;
      t2:= now;
    end;
  until millisecondsbetween(t1,t2)>15000;
  memo1.Show;
  memo1.Lines.add('');
end;
end.