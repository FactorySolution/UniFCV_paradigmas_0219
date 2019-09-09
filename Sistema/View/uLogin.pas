unit uLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, uBase;

type
  TFrmLogin = class(TFrmBase)
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
  if SessaoUsuario.Autenticar(edtLogin.Text,EdtSenha.Text) then
  begin
    ModalResult := mrOk;
  end;




end;

end.
