unit hi_low;//Sebasti�n L�pez, C4A
interface
uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;
type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    procedure Label5Click(Sender: TObject);
    procedure Label1Click(Sender: TObject);
    procedure Label3Click(Sender: TObject);
    procedure Label2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
var
  Form1: TForm1;
  li,ls,a,v: integer;
implementation
{$R *.dfm}
procedure TForm1.Label1Click(Sender: TObject);
begin
  inc (v);
  ls:= a-1;
  a:= (li+ls) div 2;
  label4.Caption:= '�Ser� '+inttostr(a)+'?';
end;
procedure TForm1.Label2Click(Sender: TObject);
begin
  label4.Caption:= 'Gan� en '+inttostr(v)+' veces';
end;
procedure TForm1.Label3Click(Sender: TObject);
begin
  li:= a+1;
  a:= (li+ls) div 2;
  label4.Caption:= '�Ser� '+inttostr(a)+'?';
  inc(v);
end;
procedure TForm1.Label5Click(Sender: TObject);
begin
  label5.hide;
  label1.Show;
  label2.Show;
  label3.Show;
  v:= 1;
  li:= 0;
  ls:= 1000;
  a:= (li+ls) div 2;
  label4.Caption:= '�Ser� '+inttostr(a)+'?';
end;
end.