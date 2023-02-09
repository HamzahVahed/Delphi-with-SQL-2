unit Unit1_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, unit2_u, Grids, DBGrids, StdCtrls, ExtCtrls, Spin;

type
  TForm1 = class(TForm)
    DBGrid1: TDBGrid;
    CheckBox1: TCheckBox;
    SpinEdit1: TSpinEdit;
    RadioGroup1: TRadioGroup;
    Button1: TButton;
    ComboBox1: TComboBox;
    Edit1: TEdit;
    Edit2: TEdit;
    Button2: TButton;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  Result: integer;
  iLarge:integer;
implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  ino: integer;
begin
    unit2_u.DataModule2.ADOTable1.last;
    ino := DataModule2.ADOTable1['LearnerNo'];
    unit2_u.DataModule2.ADOTable1.Insert;
    unit2_u.DataModule2.ADOTable1['LearnerNo'] := ino;
    unit2_u.DataModule2.ADOTable1['MixedChoir'] := CheckBox1.Checked;
    unit2_u.DataModule2.ADOTable1['Grade'] := SpinEdit1.Value;
    unit2_u.DataModule2.ADOTable1['Participation'] := ComboBox1.Items
      [ComboBox1.ItemIndex];
    unit2_u.DataModule2.ADOTable1['Gender'] := RadioGroup1.Items
      [RadioGroup1.ItemIndex];
    unit2_u.DataModule2.ADOTable1['LearnerName'] := Edit1.Text;
    unit2_u.DataModule2.ADOTable1['Surname'] := Edit2.Text;

end;

procedure TForm1.Button2Click(Sender: TObject);
var
  sNo, sSurname, sName: string;
begin
  with DataModule2 do
    begin
      sSurname := ADOTable1['Surname'];
      sName := ADOTable1['LearnerName'];
      if messageDlg('Are you sure you want to delete the record for'
        + sName + ' ' + sSurname + '?', mtWarning,[mbOK, mbCancel],
        0) = mrOk then DataModule2.ADOTable1.Delete;
        end;
        end;


    procedure TForm1.Button3Click(Sender: TObject); var iLarge: integer;
    begin
    with DataModule2 do
    begin
    DataModule2.ADOTable1.First; iLarge := -1;
    while NOT DataModule2.ADOTable1.Eof do begin if DataModule2.ADOTable1
      ['LearnersName'] > iLarge then iLarge := DataModule2.ADOTable1
      ['LearnerNo']; DataModule2.ADOTable1.Next;
      end;
      end;
    Result := iLarge + 1;
    end;

    end.
