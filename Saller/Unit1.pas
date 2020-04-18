unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls, Grids;

procedure GridCleaner(grid: TStringgrid);
procedure GridRefresh(grid: TStringgrid);
procedure BoxAdder(box: TCombobox; grid: TStringgrid);


type
  TForm1 = class(TForm)
    StatusBar1: TStatusBar;
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    Button4: TButton;
    Button5: TButton;
    OpenDialog1: TOpenDialog;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Edit1: TEdit;
    Button6: TButton;
    GroupBox2: TGroupBox;
    Button7: TButton;
    TabSheet2: TTabSheet;
    StringGrid1: TStringGrid;
    Button3: TButton;
    Button9: TButton;
    Button10: TButton;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    StringGrid2: TStringGrid;
    ComboBox1: TComboBox;
    Label2: TLabel;
    Button8: TButton;
    Label3: TLabel;
    ComboBox2: TComboBox;
    Button11: TButton;
    GroupBox3: TGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    procedure Button6Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure StringGrid1Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

type
  TSale=record
  check:string[10];
  Saler_name:string[50];
  Product_name:string[50];
  Price:integer;
  Premium:integer;
end;

var
  Sale:TSale;
  F:File of TSale;
  Form1: TForm1;



implementation

uses Unit2;

{$R *.dfm}

procedure GridCleaner(grid: TStringgrid);
var i,j:integer;
begin
  with grid do
  for i := 1 to RowCount - 1 do
  for j := 0 to ColCount - 1 do
  Cells[j, i] := '';

end;

procedure GridRefresh(grid: TStringgrid);
var i:integer;
begin
Seek(F, 0);
i := 1;
While not EOF(F) do
begin
read(F, Sale);
with grid do begin
Cells[0, i]:=Sale.check;
Cells[1, i]:=Sale.Saler_name;
Cells[2, i]:=Sale.Product_name;
Cells[3, i]:=inttostr(Sale.Price);
Cells[4, i]:=inttostr(Sale.Premium);
i := i+1;
end;
end;
end;

procedure BoxAdder(box: TCombobox; grid: TStringgrid);
var i:integer;
begin
box.Items.Clear;
for i:=1 to filesize(f) do begin
if box.Items.IndexOf(grid.Cells[1, i])=-1 then
box.Items.Add(grid.Cells[1, i]);
end;
end;

procedure TForm1.Button6Click(Sender: TObject);
var i,j:integer;
  begin
  if edit1.Text = '' then
    showmessage('введите имя файла')
  else
    begin
   GridCleaner(Stringgrid1);
   GridCleaner(Stringgrid2);
    {  with StringGRid1 do
  for i := 1 to RowCount - 1 do
for j := 0 to ColCount - 1 do
Cells[j, i] := '';

with StringGRid2 do
for i := 1 to RowCount - 1 do
for j := 0 to ColCount - 1 do
Cells[j, i] := ''; }

AssignFile(F, edit1.text + '.sale');
Rewrite(F);
StatusBar1.Panels[0].Text:='Файл открыт';
StatusBar1.Panels[1].Text:='Имя файла: ' + edit1.Text + '.sale';
StatusBar1.Panels[2].Text:='Колличество записей: 0';
Button2.Enabled:=true;
Button4.Enabled:=true;
Button5.Enabled:=true;
Edit1.Text:='';
GridCleaner(Stringgrid1);
GridCleaner(Stringgrid2);
Label4.Caption:='0';
showmessage('Файл успешно создан!')
end;

end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if StatusBar1.Panels[0].Text <> 'Файл не открыт' then
CloseFile(F);
end;

procedure TForm1.FormShow(Sender: TObject);
begin
Stringgrid1.Cells[0,0]:='№ чека';
Stringgrid1.Cells[1,0]:='Фамилия продавца';
Stringgrid1.Cells[2,0]:='Наиминование товара';
Stringgrid1.Cells[3,0]:='Цена';
Stringgrid1.Cells[4,0]:='Премия';

Stringgrid2.Cells[0,0]:='№ чека';
Stringgrid2.Cells[1,0]:='Наиминование товара';
Stringgrid2.Cells[2,0]:='Цена';
Stringgrid2.Cells[3,0]:='Премия';
end;

procedure TForm1.Button7Click(Sender: TObject);
var i,j:integer;
begin

if StatusBar1.Panels[0].Text <> 'Файл не открыт' then
CloseFile(F);

if openDialog1.Execute then begin
ShowMessage('Открыт файл '+openDialog1.FileName);

GridCleaner(Stringgrid1);
GridCleaner(Stringgrid2);

i:=1;

AssignFile(F, openDialog1.FileName);
Reset(F);
StatusBar1.Panels[0].Text:='Файл открыт';
StatusBar1.Panels[1].Text:='Имя файла: ' + openDialog1.FileName;
GridRefresh(stringgrid1);
{Seek(F, 0);
While not EOF(F) do
begin
read(F, Sale);
with stringgrid1 do begin
Cells[0, i]:=Sale.check;
Cells[1, i]:=Sale.Saler_name;
Cells[2, i]:=Sale.Product_name;
Cells[3, i]:=inttostr(Sale.Price);
Cells[4, i]:=inttostr(Sale.Premium);
end;
end; }

StatusBar1.Panels[2].Text:='Колличество записей: ' + inttostr(filesize(F));
Button2.Enabled:=true;
Button4.Enabled:=true;
Button5.Enabled:=true;
BoxAdder(Combobox1, Stringgrid1);
BoxAdder(Combobox2, Stringgrid1);
Label4.Caption:='0';

end;


end;

procedure TForm1.Button3Click(Sender: TObject);
begin
Form2.Caption:='Добавление записи';
Form2.Button8.Caption:='Добавить запись';
Form2.Edit2.Text:='';
Form2.Edit4.Text:='';
Form2.Edit5.Text:='';
Form2.Edit3.Text:='';
Form2.Label1.Caption:='0';
Form2.ShowModal;
end;

procedure TForm1.Button8Click(Sender: TObject);
var i, j :integer;
begin
if combobox1.Text= '' then
showmessage('Вы не выбрали продовца')
else
begin
j:=1;
GridCleaner(Stringgrid2);
for i:=1 to filesize(f) do begin
if Combobox1.Text = stringgrid1.Cells[1, i] then
begin
stringgrid2.Cells[0, j]:=stringgrid1.Cells[0, i];
stringgrid2.Cells[1, j]:=stringgrid1.Cells[2, i];
stringgrid2.Cells[2, j]:=stringgrid1.Cells[3, i];
stringgrid2.Cells[3, j]:=stringgrid1.Cells[4, i];
j:=1+j;
end;
end;
end;
end;



procedure TForm1.Button1Click(Sender: TObject);
begin
TabSheet1.TabVisible:=true;

TabSheet2.TabVisible:=false;
TabSheet3.TabVisible:=false;
TabSheet4.TabVisible:=false;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
TabSheet2.TabVisible:=true;

TabSheet1.TabVisible:=false;
TabSheet3.TabVisible:=false;
TabSheet4.TabVisible:=false;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
TabSheet4.TabVisible:=true;

TabSheet2.TabVisible:=false;
TabSheet3.TabVisible:=false;
TabSheet1.TabVisible:=false;
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
TabSheet3.TabVisible:=true;

TabSheet2.TabVisible:=false;
TabSheet1.TabVisible:=false;
TabSheet4.TabVisible:=false;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
TabSheet1.TabVisible:=true;

TabSheet2.TabVisible:=false;
TabSheet3.TabVisible:=false;
TabSheet4.TabVisible:=false;

Label6.Caption:='1';
end;

procedure TForm1.Button9Click(Sender: TObject);
begin
if strtoint(label6.Caption)>filesize(f) then
showmessage('Выберите заполненную запись')
else
begin
Form2.Caption:='Редактирование записи';
Form2.Button8.Caption:='Редактирование запись';
Form2.Edit2.Text:=stringgrid1.cells[0, strtoint(Label6.Caption)];
Form2.Edit4.Text:=stringgrid1.cells[1, strtoint(Label6.Caption)];
Form2.Edit5.Text:=stringgrid1.cells[2, strtoint(Label6.Caption)];
Form2.Edit3.Text:=stringgrid1.cells[3, strtoint(Label6.Caption)];
Form2.Label1.Caption:=stringgrid1.cells[4, strtoint(Label6.Caption)];
Form2.ShowModal;
end;
end;


procedure TForm1.Button11Click(Sender: TObject);
var i, Summa:integer;
begin
Summa:=0;
if combobox2.Text= '' then
showmessage('Вы не выбрали продовца')
else
begin
for i:=1 to filesize(f) do begin
if Combobox2.Text = stringgrid1.Cells[1, i] then
Summa:=Summa+strtoint(stringgrid1.Cells[4, i])
end;
Label4.Caption:=inttostr(Summa);
end;
end;

procedure TForm1.StringGrid1Click(Sender: TObject);
begin
label6.Caption:=IntToStr(StringGrid1.Row);
end;

procedure TForm1.Button10Click(Sender: TObject);
var
  buttonSelected : Integer;
begin

if strtoint(label6.Caption)>filesize(f) then
showmessage('Выберите заполненную запись')
else
begin
buttonSelected := MessageDlg('Вы точно хотите удалить запись',mtWarning,[mbOK,mbCancel], 0);
if buttonSelected = mrOK  then begin
reset(f);
seek(f,filesize(f)-1);
read(F,Sale);
seek(f,strtoint(label6.Caption)-1);
write(f,Sale);
seek(f,filesize(f)-1);
Truncate(f);

GridCleaner(Stringgrid1);
GridCleaner(Stringgrid2);
Label4.Caption:='0';
GridRefresh(Stringgrid1);
StatusBar1.Panels[2].Text:='Колличество записей: ' + inttostr(filesize(F));
BoxAdder(Combobox1, Stringgrid1);
BoxAdder(Combobox2, Stringgrid1);
end;
end;

end;

end.
