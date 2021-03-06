unit Unit1;
interface
uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Data.DB, MemDS, DBAccess,
  MyAccess, Vcl.StdCtrls, Vcl.ExtCtrls;
type
  TForm1 = class(TForm)
    MyConnection1: TMyConnection;
    MyQuery1: TMyQuery;
    StringGrid1: TStringGrid;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    LabeledEdit1: TLabeledEdit;
    LabeledEdit2: TLabeledEdit;
    LabeledEdit3: TLabeledEdit;
    LabeledEdit4: TLabeledEdit;
    LabeledEdit5: TLabeledEdit;
    Button4: TButton;
    Button5: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure mostrar;
  end;
var
  Form1: TForm1;
  baja: boolean;
implementation
{$R *.dfm}
procedure tform1.mostrar;
var
  i: integer;
begin
  myquery1.SQL.Text:='SELECT * FROM tabla';
  myquery1.Execute;
  myquery1.Open;
  stringgrid1.RowCount:=myquery1.RecordCount+1;
  for i := 1 to myquery1.RecordCount do
    begin
      stringgrid1.Cells[0,i]:=IntToStr(myquery1.FieldByName('id').AsInteger);
      stringgrid1.Cells[1,i]:=(myquery1.FieldByName('nombre').AsString);
      stringgrid1.Cells[2,i]:=FloatToStr(myquery1.FieldByName('altura').AsFloat);
      stringgrid1.Cells[3,i]:=(myquery1.FieldByName('direccion').AsString);
      stringgrid1.Cells[4,i]:=IntToStr(myquery1.FieldByName('edad').Asinteger);
      myquery1.Next;
    end;
end;
procedure TForm1.Button1Click(Sender: TObject);
begin
  stringgrid1.Hide;
  labelededit1.Show;
  labelededit2.Show;
  labelededit3.Show;
  labelededit4.Show;
  labelededit1.Text:= '';
  labelededit2.Text:= '';
  labelededit3.Text:= '';
  labelededit4.Text:= '';
  labelededit5.Hide;
  button1.Hide;
  button2.Hide;
  button3.Hide;
  button4.Show;
  button4.Caption:= 'Agregar';
  button5.Show;
  labelededit1.Enabled:= true;
  labelededit2.Enabled:= true;
  labelededit3.Enabled:= true;
  labelededit4.Enabled:= true;
end;
procedure TForm1.Button2Click(Sender: TObject);
begin
  stringgrid1.Hide;
  labelededit1.Hide;
  labelededit2.Hide;
  labelededit3.Hide;
  labelededit4.Hide;
  labelededit5.Show;
  labelededit5.Text:= '';
  button1.Hide;
  button2.Hide;
  button3.Hide;
  button4.Show;
  button4.Caption:= 'Buscar';
  button5.Show;
  baja:= true;
end;
procedure TForm1.Button3Click(Sender: TObject);
begin
  stringgrid1.Hide;
  labelededit1.Hide;
  labelededit2.Hide;
  labelededit3.Hide;
  labelededit4.Hide;
  labelededit5.Show;
  labelededit1.Enabled:= true;
  labelededit2.Enabled:= true;
  labelededit3.Enabled:= true;
  labelededit4.Enabled:= true;
  labelededit5.Text:= '';
  button1.Hide;
  button2.Hide;
  button3.Hide;
  button4.Show;
  button4.Caption:= 'Buscar';
  button5.Show;
  baja:= false;
end;
procedure TForm1.Button4Click(Sender: TObject);
begin
  if button4.caption='Agregar' then
    begin
      myquery1.SQL.Text:= 'INSERT INTO tabla (id,nombre,altura,edad,direccion) VALUES (NULL,"'+labelededit1.Text+'",'+labelededit2.Text+','+labelededit3.Text+',"'+labelededit4.Text+'")';
      myquery1.Execute;
      stringgrid1.Show;
      labelededit1.Hide;
      labelededit2.Hide;
      labelededit3.Hide;
      labelededit4.Hide;
      labelededit5.Hide;
      button1.Show;
      button2.Show;
      button3.Show;
      button4.Hide;
      button5.Hide;
      mostrar;
    end
  else
    if button4.Caption='Buscar' then
      begin
        if labelededit5.Text<>'' then
          begin
            try
              myquery1.SQL.Text:= 'SELECT * FROM tabla WHERE id='+labelededit5.Text;
              myquery1.Execute;
              if myquery1.RecordCount>0 then
                begin
                  myquery1.Open;
                  labelededit1.Show;
                  labelededit2.Show;
                  labelededit3.Show;
                  labelededit4.Show;
                  labelededit1.Text:= (myquery1.FieldByName('nombre').AsString);
                  labelededit2.Text:= (myquery1.FieldByName('altura').AsString);
                  labelededit3.Text:= (myquery1.FieldByName('edad').AsString);
                  labelededit4.Text:= (myquery1.FieldByName('direccion').AsString);
                  labelededit5.Hide;
                  if baja then
                    begin
                      button4.Caption:= 'Borrar';
                      labelededit1.Enabled:= false;
                      labelededit2.Enabled:= false;
                      labelededit3.Enabled:= false;
                      labelededit4.Enabled:= false;
                    end
                  else
                    button4.Caption:= 'Modificar';
                end
              else
                showmessage('No existe el registro');
            except
              showmessage('Syntax error');
            end;
          end
        else
          showmessage('Ingrese un elemento');
      end
    else
      if button4.Caption='Borrar' then
        begin
          myquery1.SQL.Text:= 'DELETE FROM tabla WHERE nombre="'+labelededit1.Text+'"';
          myquery1.Execute;
          stringgrid1.Show;
          labelededit1.Hide;
          labelededit2.Hide;
          labelededit3.Hide;
          labelededit4.Hide;
          labelededit5.Hide;
          button1.Show;
          button2.Show;
          button3.Show;
          button4.Hide;
          button5.Hide;
          mostrar;
        end
      else
        if button4.Caption='Modificar' then
          begin
            myquery1.SQL.Text:= 'UPDATE tabla SET nombre="'+labelededit1.Text+'", altura='+labelededit2.Text+', edad='+labelededit3.Text+', direccion="'+labelededit4.Text+'" WHERE id='+labelededit5.Text;
            myquery1.Execute;
            stringgrid1.Show;
            labelededit1.Hide;
            labelededit2.Hide;
            labelededit3.Hide;
            labelededit4.Hide;
            labelededit5.Hide;
            button1.Show;
            button2.Show;
            button3.Show;
            button4.Hide;
            button5.Hide;
            mostrar;
          end;
end;
procedure TForm1.Button5Click(Sender: TObject);
begin
  button4.Hide;
  button1.Show;
  button2.Show;
  button3.Show;
  button5.Hide;
  labelededit1.hide;
  labelededit2.hide;
  labelededit3.hide;
  labelededit4.hide;
  labelededit5.hide;
  stringgrid1.Show;
end;
procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  myquery1.Free;
end;
procedure TForm1.FormCreate(Sender: TObject);
begin
  try
    myconnection1.Database:= 'database1';
    myconnection1.Server:= '172.21.2.210';
    myconnection1.Username:= 'c5';
    myconnection1.Password:= 'c5rules';
    myquery1.Connection:=myconnection1;
    mostrar;
  finally
    stringgrid1.Cells[0,0]:='ID';
    stringgrid1.Cells[1,0]:='Nombre';
    stringgrid1.Cells[2,0]:='Altura';
    stringgrid1.Cells[3,0]:='Direccion';
    stringgrid1.Cells[4,0]:='Edad';
  end;
end;
end.
