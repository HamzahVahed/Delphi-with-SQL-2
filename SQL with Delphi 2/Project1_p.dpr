program Project1_p;

uses
  Forms,
  Unit1_u in 'Unit1_u.pas' {Form1},
  Unit2_u in 'Unit2_u.pas' {DataModule2: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TDataModule2, DataModule2);
  Application.Run;
end.
