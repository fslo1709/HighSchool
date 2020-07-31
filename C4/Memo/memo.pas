unit memo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    Edit1: TEdit;
    Button1: TButton;
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

implementation

{$R *.dfm}
procedure TForm1.Button1Click(Sender: TObject);
var
  n,i: integer;
begin
  n:= strtoint(edit1.Text);
  memo1.Lines.clear;
  for i := 1 to n do
    memo1.Lines.Add(inttostr(random(100)));
  edit1.Text:= '';
end;
procedure TForm1.Button2Click(Sender: TObject);
var
  i,n: integer;
  a: real;
begin
  n:= memo1.Lines.Count-1;
  a:= 0;
  for i := 0 to n do
    a:= strtoint(memo1.Lines[i])+a;
  a:= a/(n+1);
  showmessage(floattostr(a));
end;
end.