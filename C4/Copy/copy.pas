unit copy;//Sebasti�n L�pez, C4A
interface
uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;
type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Label1: TLabel;
    Edit2: TEdit;
    Edit3: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Button1: TButton;
    Label5: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
var
  Form1: TForm1;
implementation
{$R *.dfm}
function largo(s:string):integer;
var
  i: integer;
begin
  i:= 1;
  while s[i]<>#0 do
    i:= i+1;
  largo:= i-1;
end;
procedure TForm1.Button1Click(Sender: TObject);
var
  a,b,i,c1,c2: integer;
  s,r: string;
begin
  r:= edit1.Text;
  s:= '';
  if edit1.Text='' then
    showmessage('Error')
  else
    begin
      val(edit2.Text,a,c1);
      val(edit3.Text,b,c2);
      if (largo(edit1.Text)<=a+b) or (largo(edit1.Text)<=a) or (a<=0) or (b<=0) then
        showmessage('Error')
      else
        for i := a to b+a-1 do
          s:= s+r[i];
        label5.Caption:= s;
    end;
end;
end.