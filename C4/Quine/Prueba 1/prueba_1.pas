unit prueba_1;
interface
uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls;
type
  TForm1 = class(TForm)
    Memo1: TMemo;
    Button1: TButton;
    LabeledEdit1: TLabeledEdit;
    LabeledEdit2: TLabeledEdit;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
var
  Form1: TForm1;
  b,c: integer;
implementation
{$R *.dfm}
procedure TForm1.Button1Click(Sender: TObject);
var
  a,d: integer;
begin
  memo1.Clear;
  randomize;
  b:= strtoint(labelededit1.Text);
  c:= strtoint(labelededit2.Text);
  a:= 0;
  while a<c do
    begin
      d:= 1;
      while d<=b do
        begin
          memo1.Lines[a]:= memo1.Lines[a]+inttostr(random(2));
          inc(d)
        end;
      inc(a);
      memo1.Lines.Add('');
    end;
end;
procedure TForm1.Button2Click(Sender: TObject);
var
  a,d,e,cont: integer;
begin
  a:= 0;
  e:= 1;
  while a<c-1 do
    begin
      d:= 1;
      cont:= 0;
      while d<=b do
        begin
          if memo1.Lines[a][d]=memo1.Lines[e][d] then
            inc(cont);
        end;


      inc (a);
      e:= a+1;
    end;
end;
end.