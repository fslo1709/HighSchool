unit pantalla;//Sebasti�n L�pez, C4A
interface
uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, jpeg;
type
  TForm1 = class(TForm)
    Indicador: TImage;
    Puerta_1: TShape;
    Puerta_2: TShape;
    ComboBox1: TComboBox;
    Button1: TButton;
    Button2: TButton;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
var
  Form1: TForm1;
  r,a,b,cx,cy: integer;
implementation
{$R *.dfm}
procedure TForm1.Button1Click(Sender: TObject);
var
  paso,an: real;
  i: integer;
begin
  randomize;
  b:= combobox1.ItemIndex+1;
  a:= random (9);
  while a=b do
    a:= random (9);
  a:= a+1;
  label1.Caption:= 'Su piso: '+inttostr(b);
  indicador.Show;
  button2.Show;
  button1.Hide;
  combobox1.Hide;
  puerta_1.Show;
  puerta_2.Show;
  label1.Show;
  an:= -pi;
  paso:= pi/11;
  for i := 1 to 10 do
    begin
      an:= an+paso;
      form1.indicador.canvas.TextOut(trunc(r*cos(an)+cx),trunc(r*sin(an)+cy+12),inttostr(i));
    end;
end;
procedure TForm1.Button2Click(Sender: TObject);
var
  an,af,an1,paso,paso1: real;
  i: integer;
begin
  paso:= 0.01;
  case a of
    1: an1:= -pi;
    2: an1:= -pi+(pi/9);
    3: an1:= -pi+(2*pi/9);
    4: an1:= -pi+(3*pi/9);
    5: an1:= -pi+(4*pi/9);
    6: an1:= -pi+(5*pi/9);
    7: an1:= -pi+(6*pi/9);
    8: an1:= -pi+(7*pi/9);
    9: an1:= -pi+(8*pi/9);
    10: an1:= 0;
  end;
  case b of
    1: af:= -pi;
    2: af:= -pi+(pi/9);
    3: af:= -pi+(2*pi/9);
    4: af:= -pi+(3*pi/9);
    5: af:= -pi+(4*pi/9);
    6: af:= -pi+(5*pi/9);
    7: af:= -pi+(6*pi/9);
    8: af:= -pi+(7*pi/9);
    9: af:= -pi+(8*pi/9);
    10: af:= 0;
  end;
  if a>b then
    while an1>af do
      begin
        an1:= an1-paso;
        indicador.Picture:= nil;
        r:= 100;
        an:= -pi;
        paso1:= pi/11;
        for i := 1 to 10 do
          begin
            an:= an+paso1;
            form1.indicador.canvas.TextOut(trunc(r*cos(an)+cx),trunc(r*sin(an)+cy+12),inttostr(i));
          end;
        r:= 70;
        indicador.Canvas.MoveTo(cx,cy);
        indicador.Canvas.LineTo(trunc(r*cos(an1)+cx),trunc(r*sin(an1)+cy));
        application.ProcessMessages;
        sleep(40);
      end
  else
    while an1<af do
      begin
        an1:= an1+paso;
        indicador.Picture:= nil;
        r:= 100;
        an:= -pi;
        paso1:= pi/11;
        for i := 1 to 10 do
          begin
            an:= an+paso1;
            form1.indicador.canvas.TextOut(trunc(r*cos(an)+cx),trunc(r*sin(an)+cy+12),inttostr(i));
          end;
        r:= 70;
        indicador.Canvas.MoveTo(cx,cy);
        indicador.Canvas.LineTo(trunc(r*cos(an1)+cx),trunc(r*sin(an1)+cy));
        application.ProcessMessages;
        sleep(40);
      end;
  for i := 1 to 158 do
    begin
      puerta_1.Width:= puerta_1.Width-1;
      puerta_2.Width:= puerta_2.Width-1;
      puerta_2.Left:= puerta_2.Left+1;
      sleep(25);
      application.ProcessMessages;
    end;
  puerta_1.Destroy;
  puerta_2.Destroy;
end;
procedure TForm1.FormCreate(Sender: TObject);
begin
  r:= 100;
  cx:= indicador.width div 2;
  cy:= indicador.Height-1;
end;
end.
