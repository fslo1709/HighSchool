unit Desea_continuar;//Sebasti�n L�pez, C4A
interface
uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;
type
  TForm1 = class(TForm)
    Edit1: TEdit;
    procedure Edit1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
var
  Form1: TForm1;
implementation
{$R *.dfm}
procedure TForm1.Edit1Change(Sender: TObject);
begin
  if (edit1.Text='S') or (edit1.Text='N') then
    if edit1.Text='N' then
      begin
        application.ProcessMessages;
        sleep (1000);
        application.Terminate;
      end
    else
      begin
        form1.Hide;
        application.ProcessMessages;
        sleep (100);
        edit1.Text:= '';
        form1.Show;
      end
  else
    edit1.Text:= '';
end;
end.
