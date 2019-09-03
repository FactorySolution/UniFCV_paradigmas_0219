unit uLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TFrmLogin = class(TForm)
    Panel1: TPanel;
    edtLogin: TLabeledEdit;
    EdtSenha: TLabeledEdit;
    btnLogar: TButton;
    btnCancelar: TButton;
    Image1: TImage;
    procedure btnLogarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmLogin: TFrmLogin;

implementation

{$R *.dfm}

procedure TFrmLogin.btnLogarClick(Sender: TObject);
begin
  // Login: admin
  // Senha: 123mudar;
  if SameText(edtLogin.Text,'admin') and
     SameText(EdtSenha.Text,'123mudar') then
  begin
    ShowMessage('Bem vindo ao melhor sistema do Mundo!!!!!');
  end;

end;

end.
