unit guitar_hero; //Sebasti�n L�pez, C5A
interface
uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, mmsystem;
type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    procedure Label6Click(Sender: TObject);
    procedure Label5Click(Sender: TObject);
    procedure Label7Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Label3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
var
  Form1: TForm1;
implementation

uses compositor, play;
{$R *.dfm}
procedure TForm1.FormCreate(Sender: TObject);
begin
  form1.Top:= 50;
  form1.Left:= 100;
end;
procedure TForm1.Label3Click(Sender: TObject);
begin
  form3.show;
  form1.Hide;
end;
procedure TForm1.Label5Click(Sender: TObject);
begin
  form2.show;
  form1.Hide;
end;
procedure TForm1.Label6Click(Sender: TObject);
begin
  application.Terminate;
end;
procedure TForm1.Label7Click(Sender: TObject);
begin
  showmessage('Player 1: Q,W,E,R,T          Player 2: Y,U,I,O,P                                  Riff: Space Bar(1 Player Only)');
end;
end.
