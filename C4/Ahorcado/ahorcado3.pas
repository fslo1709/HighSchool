unit ahorcado3;
interface
uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;
type
  TForm3 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Label1: TLabel;
    RadioGroup1: TRadioGroup;
    RadioGroup2: TRadioGroup;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Label1Click(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RadioGroup2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    a,b,c: integer;
  end;
var
  Form3: TForm3;
implementation
uses ahorcado2;
{$R *.dfm}
procedure TForm3.Button1Click(Sender: TObject);
begin
  c:= 1;
  form2.show;
  form3.Hide;
end;
procedure TForm3.Button2Click(Sender: TObject);
begin
  c:= 2;
  form2.show;
  form3.Hide;
end;
procedure TForm3.Button3Click(Sender: TObject);
begin
  c:= 3;
  form2.show;
  form3.Hide;
end;
procedure TForm3.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  application.Terminate;
end;
procedure TForm3.FormCreate(Sender: TObject);
begin
  a:= 10;
  b:= 5;
end;
procedure TForm3.Label1Click(Sender: TObject);
begin
  showmessage('F�cil: Un error remueve dos letras. Normal: Un error, una letra. Dif�cil: No se muestran las elecciones anteriores.');
end;
procedure TForm3.RadioGroup1Click(Sender: TObject);
begin
  case radiogroup1.ItemIndex of
    0: a:= 5;
    1: a:= 7;
    2: a:= 10;
    3: a:= 12;
    4: a:= 0;
  end;
end;
procedure TForm3.RadioGroup2Click(Sender: TObject);
begin
  b:= strtoint(radiogroup2.Items[radiogroup2.ItemIndex]);
end;
end.
