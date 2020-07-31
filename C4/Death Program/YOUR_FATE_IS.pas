unit YOUR_FATE_IS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm2 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Image1: TImage;
    ListBox1: TListBox;
    ListBox2: TListBox;
    ListBox3: TListBox;
    Image2: TImage;
    Image3: TImage;
    ListBox4: TListBox;
    Image4: TImage;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;
  assa,met,pl,re,d,m,y: integer;
  er: boolean;
implementation

uses Button;

{$R *.dfm}

procedure TForm2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  showmessage('YOU WILL DIE SOMEDAY!!!');
  application.Terminate;
end;
procedure TForm2.FormShow(Sender: TObject);
begin
  case form1.ComboBox2.ItemIndex of
    -1: begin
          showmessage('PLEASE SELECT A MONTH');
          er:= true;
        end;
    0: m:= 1;
    1: m:= 2;
    2: m:= 3;
    3: m:= 4;
    4: m:= 5;
    5: m:= 6;
    6: m:= 7;
    7: m:= 8;
    8: m:= 9;
    9: m:= 10;
    10: m:= 11;
    11: m:= 12;
  end;
  if er=false then
  case form1.combobox1.ItemIndex of
    -1: begin
          showmessage('PLEASE SELECT A DAY');
          er:= true;
        end;
    0: d:= 1;
    1: d:= 2;
    2: d:= 3;
    3: d:= 4;
    4: d:= 5;
    5: d:= 6;
    6: d:= 7;
    7: d:= 8;
    8: d:= 9;
    9: d:= 10;
    10: d:= 11;
    11: d:= 12;
    12: d:= 13;
    13: d:= 14;
    14: d:= 15;
    15: d:= 16;
    16: d:= 17;
    17: d:= 18;
    18: d:= 19;
    19: d:= 20;
    20: d:= 21;
    21: d:= 22;
    22: d:= 23;
    23: d:= 24;
    24: d:= 25;
    25: d:= 26;
    26: d:= 27;
    27: d:= 28;
    28: begin
          if m=2 then
            begin
              showmessage('YOU WERE BORN ON THE 29TH, LOSER');
              er:= true;
            end;
          d:= 29;
        end;
    29: begin
          if m=2 then
            begin
              showmessage('THERE IS NO FEBRUARY 30TH, DUMBASS!');
              er:= true;
            end
          else
            d:= 30;
        end;
    30: begin
          if m=2 then
            begin
              showmessage('THERE IS NO FEBRUARY 30TH, DUMBASS!');
              er:= true;
            end
          else
            if (m=4) or (m=6) or (m=9) or (m=11) then
              begin
                showmessage('THIS MONTH HAS NO 31ST, LEARN TO READ A CALENDAR, ANALPHABET!');
                er:= true;
              end
            else
              d:= 31;
        end;
  end;
  randomize;
  d:= (d+10*random(31)+5*random(31)) mod 31 + 1;
  m:= (d+18*random(12)+13*random(12)) mod 12 + 1;
  y:= 2014+random(60);
  label1.Caption:= 'Expiration date: '+inttostr(d)+'/'+inttostr(m)+'/'+inttostr(y);
  assa:= random(13);
  case assa of
    0: begin image1.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'\Destiny\'+'1.bmp'); label2.Caption:= ('Assassin: '+listbox1.Items[assa]); end;
    1: begin image1.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'\Destiny\'+'2.bmp'); label2.Caption:= ('Assassin: '+listbox1.Items[assa]); end;
    2: begin image1.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'\Destiny\'+'3.bmp'); label2.Caption:= ('Assassin: '+listbox1.Items[assa]); end;
    3: begin image1.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'\Destiny\'+'4.bmp'); label2.Caption:= ('Assassin: '+listbox1.Items[assa]); end;
    4: begin image1.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'\Destiny\'+'5.bmp'); label2.Caption:= ('Assassin: '+listbox1.Items[assa]); end;
    5: begin image1.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'\Destiny\'+'6.bmp'); label2.Caption:= ('Assassin: '+listbox1.Items[assa]); end;
    6: begin image1.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'\Destiny\'+'7.bmp'); label2.Caption:= ('Assassin: '+listbox1.Items[assa]); end;
    7: begin image1.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'\Destiny\'+'8.bmp'); label2.Caption:= ('Assassin: '+listbox1.Items[assa]); end;
    8: begin image1.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'\Destiny\'+'9.bmp'); label2.Caption:= ('Assassin: '+listbox1.Items[assa]); end;
    9: begin image1.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'\Destiny\'+'10.bmp'); label2.Caption:= ('Assassin: '+listbox1.Items[assa]); end;
    10: begin image1.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'\Destiny\'+'11.bmp'); label2.Caption:= ('Assassin: '+listbox1.Items[assa]); end;
    11: begin image1.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'\Destiny\'+'12.bmp'); label2.Caption:= ('Assassin: '+listbox1.Items[assa]); end;
    12: begin image1.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'\Destiny\'+'13.bmp'); label2.Caption:= ('Assassin: '+listbox1.Items[assa]); end;
  end;
  met:= random(7);
  case met of
    0: begin image2.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'\Destiny\'+'14.bmp'); label3.Caption:= ('Assassination Method: '+listbox2.Items[met]); end;
    1: begin image2.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'\Destiny\'+'15.bmp'); label3.Caption:= ('Assassination Method: '+listbox2.Items[met]); end;
    2: begin image2.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'\Destiny\'+'16.bmp'); label3.Caption:= ('Assassination Method: '+listbox2.Items[met]); end;
    3: begin image2.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'\Destiny\'+'17.bmp'); label3.Caption:= ('Assassination Method: '+listbox2.Items[met]); end;
    4: begin image2.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'\Destiny\'+'18.bmp'); label3.Caption:= ('Assassination Method: '+listbox2.Items[met]); end;
    5: begin image2.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'\Destiny\'+'19.bmp'); label3.Caption:= ('Assassination Method: '+listbox2.Items[met]); end;
    6: begin image2.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'\Destiny\'+'20.bmp'); label3.Caption:= ('Assassination Method: '+listbox2.Items[met]); end;
  end;
  pl:= random(5);
  case pl of
    0: begin image3.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'\Destiny\'+'21.bmp'); label4.Caption:= ('Place of death: '+listbox3.Items[pl]); end;
    1: begin image3.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'\Destiny\'+'22.bmp'); label4.Caption:= ('Place of death: '+listbox3.Items[pl]); end;
    2: begin image3.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'\Destiny\'+'23.bmp'); label4.Caption:= ('Place of death: '+listbox3.Items[pl]); end;
    3: begin image3.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'\Destiny\'+'24.bmp'); label4.Caption:= ('Place of death: '+listbox3.Items[pl]); end;
    4: begin image3.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'\Destiny\'+'25.bmp'); label4.Caption:= ('Place of death: '+listbox3.Items[pl]); end;
  end;
  image4.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'\Destiny\'+'26.bmp');
  re:= random(5);
  label5.Caption:= ('Reason: '+listbox4.Items[re]);
end;
end.
