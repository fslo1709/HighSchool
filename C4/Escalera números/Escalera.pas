unit Escalera;//Sebasti�n L�pez, C4
interface
uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;
type
  TForm1 = class(TForm)
    ListBox1: TListBox;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
var
  Form1: TForm1;
implementation
{$R *.dfm}
procedure TForm1.FormCreate(Sender: TObject);
var
  linea,cont,num: integer;
begin
  cont:= 10;
  linea:= 0;
  num:= 1;
  repeat
    while (num<=cont-linea) do
      begin
        listbox1.Items[linea]:= listbox1.Items[linea]+' '+inttostr(num);
        inc(num);
      end;
    num:= 1;
    inc(linea);
  until (linea=cont);
end;
end.
