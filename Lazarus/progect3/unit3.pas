unit unit3;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Buttons;

type

  { TForm1 }

  TForm1 = class(TForm)
    BitBtn1: TBitBtn;
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
var i,t,k,k1:integer;
begin
k:=strtoint(Edit1.text);//Число
k1:=strtoint(Edit2.text);//Степень
i:=1; t:=1;
while i<=k1 do
begin
  t:=t*k;
  i:=i+1;
end;
Memo1.Lines.add('Число' +Edit1.text+' в степени '+Edit2.text+'равно: '+intToStr(t));

end;

end.

