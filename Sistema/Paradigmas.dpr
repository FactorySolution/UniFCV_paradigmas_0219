program Paradigmas;

uses
  Vcl.Forms,
  uMain in 'uMain.pas' {FrmMain},
  uBase in 'View\uBase.pas' {FrmBase},
  uBaseCadastro in 'View\uBaseCadastro.pas' {FrmBaseCadastro},
  uLogin in 'View\uLogin.pas' {FrmLogin};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmMain, FrmMain);
  Application.Run;
end.
