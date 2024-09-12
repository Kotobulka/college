unit edit;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Buttons;

type

  { TfEdit }

  TfEdit = class(TForm)
    bSave: TBitBtn;
    bCancel: TBitBtn;
    CBNote: TComboBox;
    CheckBox1: TCheckBox;
    eName: TEdit;
    eTelephone: TEdit;
    eYear: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    procedure bCancelClick(Sender: TObject);
    procedure bSaveClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Label3Click(Sender: TObject);
    procedure Label4Click(Sender: TObject);
  private

  public

  end;

var
  fEdit: TfEdit;

implementation

{$R *.lfm}

{ TfEdit }

procedure TfEdit.FormCreate(Sender: TObject);
begin

end;

procedure TfEdit.bSaveClick(Sender: TObject);
begin

end;

procedure TfEdit.bCancelClick(Sender: TObject);
begin

end;

procedure TfEdit.FormShow(Sender: TObject);
begin
  eName.SetFocus;
end;

procedure TfEdit.Label3Click(Sender: TObject);
begin

end;

procedure TfEdit.Label4Click(Sender: TObject);
begin

end;

end.

