unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm2 = class(TForm)
    Label2: TLabel;
    Edit2: TEdit;
    Label4: TLabel;
    Edit4: TEdit;
    Label5: TLabel;
    Edit5: TEdit;
    Label3: TLabel;
    Edit3: TEdit;
    GroupBox3: TGroupBox;
    Button8: TButton;
    Button1: TButton;
    Label1: TLabel;
    Label6: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
    procedure Edit5KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Button8Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
begin
Edit2.Text:='';
Edit3.Text:='';
Edit4.Text:='';
Edit5.Text:='';
Form2.Close;
end;

procedure TForm2.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
if not (Key in ['0'..'9', #8])then Key:=#0; 
end;

procedure TForm2.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
if not (Key in ['0'..'9', #8])then Key:=#0;

end;

procedure TForm2.Edit4KeyPress(Sender: TObject; var Key: Char);
begin
if not (key in ['а'..'я', 'А'..'Я', #8])then Key:=#0;
end;

procedure TForm2.Edit5KeyPress(Sender: TObject; var Key: Char);
begin
if not (key in ['а'..'я', 'А'..'Я', #32, #8])then Key:=#0;
end;

procedure TForm2.Edit3KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if edit3.Text=''  then
label1.Caption:='0'
else if 1000 < strtoint(edit3.Text)  then
label1.Caption:='200'
else if  200 < strtoint(edit3.Text)  then
label1.Caption:='100'
else
label1.Caption:='0'
end;

procedure TForm2.Button8Click(Sender: TObject);
var i, j:integer;
begin
if (edit2.Text='') or (edit3.Text='') or (edit4.Text='') or (edit5.Text='') then
showmessage('не все поля введены')

/// добавление записи начало
else if Form2.Caption='Добавление записи' then
begin
j:=0;
for i:=0 to filesize(f) do begin
if  edit2.Text = Form1.StringGrid1.Cells[0, i] then
j:=j+1
end;

if  j>0 then
showmessage('Такой номер чека уже существует')
else begin
Seek(F, filesize(f));
Sale.check:=edit2.Text;
Sale.Saler_name:=edit4.Text;
Sale.Product_name:=edit5.Text;
Sale.Price:=strtoint(edit3.Text);
Sale.Premium:=strtoint(Label1.Caption);
Write(F,Sale);

GridCleaner(Form1.Stringgrid1);
GridCleaner(Form1.Stringgrid2);
Form1.Label4.Caption:='0';
GridRefresh(Form1.Stringgrid1);
Form1.StatusBar1.Panels[2].Text:='Колличество записей: ' + inttostr(filesize(F));
BoxAdder(Form1.Combobox1, Form1.Stringgrid1);
BoxAdder(Form1.Combobox2, Form1.Stringgrid1);
Form2.Close;
end;
end
/// добавление записи конец

/// редактирование записи начало
else if Form2.Caption='Редактирование записи' then
begin
j:=0;
for i:=0 to filesize(f) do begin
if  edit2.Text = Form1.StringGrid1.Cells[0, i] then
j:=j+1
end;

if  (j>0) and (edit2.Text <> Form1.stringgrid1.cells[0, strtoint(Form1.Label6.Caption)])  then
showmessage('Такой номер чека уже существует')
else begin
Seek(F, strtoint(form1.Label6.Caption)-1);
Sale.check:=edit2.Text;
Sale.Saler_name:=edit4.Text;
Sale.Product_name:=edit5.Text;
Sale.Price:=strtoint(edit3.Text);
Sale.Premium:=strtoint(Label1.Caption);
Write(F,Sale);

GridCleaner(Form1.Stringgrid1);
GridCleaner(Form1.Stringgrid2);
Form1.Label4.Caption:='0';
GridRefresh(Form1.Stringgrid1);
Form1.StatusBar1.Panels[2].Text:='Колличество записей: ' + inttostr(filesize(F));
BoxAdder(Form1.Combobox1, Form1.Stringgrid1);
BoxAdder(Form1.Combobox2, Form1.Stringgrid1);
Form2.Close;
end;
end;
/// редактирование записи конец

end;

end.
