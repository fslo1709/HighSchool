unit paint;//Fernando L�pez, C4A
interface
uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Buttons, ColorGrd, ActnMan, ActnColorMaps, StdCtrls;
type
  TForm1 = class(TForm)
    ScrollBox1: TScrollBox;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    OpenDialog1: TOpenDialog;
    LabeledEdit1: TLabeledEdit;
    Button4: TButton;
    Image5: TImage;
    Image6: TImage;
    Image7: TImage;
    Button5: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure Image4Click(Sender: TObject);
    procedure Image1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Image1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Image5Click(Sender: TObject);
    procedure Image6Click(Sender: TObject);
    procedure Image7Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
var
  Form1: TForm1;
  ac: string;
  lapiz: boolean;
  el: integer;
implementation
{$R *.dfm}
procedure TForm1.Button1Click(Sender: TObject);
var
  col: tcolordialog;
begin
  col:= tcolordialog.Create(form1);
  col.CustomColors.Add('ColorA=808022');
  col.CustomColors.Add('ColorB=279371');
  col.CustomColors.Add('ColorC=192830');
  col.CustomColors.Add('ColorD=593840');
  col.CustomColors.Add('ColorE=423312');
  col.CustomColors.Add('ColorF=869475');
  col.CustomColors.Add('ColorG=902830');
  col.CustomColors.Add('ColorH=501825');
  col.CustomColors.Add('ColorI=202083');
  col.CustomColors.Add('ColorJ=812690');
  col.CustomColors.Add('ColorK=759847');
  col.CustomColors.Add('ColorL=695784');
  col.CustomColors.Add('ColorM=675932');
  col.CustomColors.Add('ColorN=102840');
  col.CustomColors.Add('ColorO=030028');
  col.CustomColors.Add('ColorP=284826');
  if col.Execute() then
    el:= col.Color;
  image1.Canvas.Pen.Color:= el;
  col.Free;
end;
procedure TForm1.Button2Click(Sender: TObject);
begin
  image1.Picture.SaveToFile(labelededit1.text+'.bmp');
end;
procedure TForm1.Button3Click(Sender: TObject);
begin
  if opendialog1.Execute then
    begin
      image1.Picture.LoadFromFile(opendialog1.FileName);
    end
  else
    showmessage('No hay archivo que abrir');
end;
procedure TForm1.Button4Click(Sender: TObject);
begin
  image1.Picture:= nil;
end;
procedure TForm1.Button5Click(Sender: TObject);
begin
ac:= 'zoom';
end;
procedure TForm1.FormCreate(Sender: TObject);
begin
  image1.picture:= nil;
  ac:= 'pintar';
  lapiz:= false;
  image1.Canvas.Pen.Width:= 1;
  el:= 0;
end;
procedure TForm1.Image1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var
  i,j: integer;
  propx,propy:real;
begin
  lapiz:= true;
  if (ac='pintar') or (ac='borrar') then
    image1.Canvas.MoveTo(x,y)
  else
    if (ac='zoom') then
      begin
        propx:= (x*1.0)/(image1.Width*1.0);
        propy:= (y*1.0)/(image1.Height*1.0);
        image5.Width:= image1.Width*2;
        image5.Height:= image1.Height*2;
        for i := 0 to image5.Width do
          for j := 0 to image5.height do
            image5.Canvas.Pixels[i,j]:= image1.Canvas.Pixels[i div 2,j div 2];
        image5.Show;
        image1.Hide;
        image6.Enabled:= false;
        image7.Enabled:= false;
        button5.Enabled:= false;
        button1.Enabled:= false;
        button2.Enabled:= false;
        button3.Enabled:= false;
        button4.Enabled:= false;
        labelededit1.Enabled:= false;
        scrollbox1.HorzScrollBar.Position:= trunc(propx*517);
        scrollbox1.VertScrollBar.Position:= trunc(propy*517);
      end;
end;
procedure TForm1.Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  if ((ac='pintar') and (lapiz=true)) or ((ac='borrar') and (lapiz=true)) then
    image1.Canvas.LineTo(x,y);
end;
procedure TForm1.Image1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  lapiz:= false;
end;
procedure TForm1.Image2Click(Sender: TObject);
begin
  image1.Canvas.Pen.Width:= 1;
end;
procedure TForm1.Image3Click(Sender: TObject);
begin
  image1.Canvas.Pen.Width:= 3;
end;
procedure TForm1.Image4Click(Sender: TObject);
begin
  image1.Canvas.Pen.Width:= 5;
end;
procedure TForm1.Image5Click(Sender: TObject);
begin
  image5.Hide;
  image1.Show;
  image6.Enabled:= true;
  image7.Enabled:= true;
  button5.Enabled:= true;
  button1.Enabled:= true;
  button2.Enabled:= true;
  button3.Enabled:= true;
  button4.Enabled:= true;
  labelededit1.Enabled:= true;
end;
procedure TForm1.Image6Click(Sender: TObject);
begin
  ac:= 'borrar';
  image1.canvas.Pen.Color:= clwhite;
end;
procedure TForm1.Image7Click(Sender: TObject);
begin
  ac:= 'pintar';
  image1.Canvas.Pen.Color:= el;
end;
end.