unit Sumatoria; //Sebasti�n L�pez, C4A
interface
uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;
type
  TForm1 = class(TForm)
    LabeledEdit1: TLabeledEdit;
    Button1: TButton;
    LabeledEdit2: TLabeledEdit;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
var
  Form1: TForm1;
  a: integer;
implementation
{$R *.dfm}
procedure TForm1.Button1Click(Sender: TObject);
var
  c: integer;
begin
  c:= 0;
  a:= strtoint(labelededit1.Text);
  labelededit2.text:= '0';
  if a>0 then
    while c<=a do
      begin
        labelededit2.Text:= inttostr(c+strtoint(labelededit2.Text));
        c:= c+1;
      end
  else
    if a<0 then
      while c>=a do
        begin
          labelededit2.Text:= inttostr(c+strtoint(labelededit2.Text));
          c:= c-1;
        end;
end;
end.
