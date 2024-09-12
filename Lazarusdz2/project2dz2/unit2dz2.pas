unit unit2dz2;

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
    Label1: TLabel;
    Memo1: TMemo;
    StaticText1: TStaticText;
    procedure BitBtn1Click(Sender: TObject);
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
var square_area, side, diagonal, circle_area, circle_radius: real;
begin
  square_area:= strtoint(edit1.Text);
  side := sqrt(square_area);
  diagonal := side * sqrt(2);
  circle_radius := diagonal / 2;
  circle_area := Pi * sqr(circle_radius);
  Memo1.lines.add(FloatToStr(side)+' = a; ' + FloatToStr(diagonal)+' = b; '+ FloatToStr(circle_area)+' = S1;');

end;

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
  close;
end;

end.

