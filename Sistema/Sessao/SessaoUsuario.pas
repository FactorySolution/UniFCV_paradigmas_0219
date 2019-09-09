unit SessaoUsuario;

interface

type
  TSessaoUsuario = class
  private
    FNome: String;
    FEmpresa: String;
    FSenha: String;
    class var FInstance: TSessaoUsuario;
  public
    property Nome: String read FNome write FNome;
    property Senha: String read FSenha write FSenha;
    property Empresa: String read FEmpresa write FEmpresa;

    class function GetInstance: TSessaoUsuario;

    function Autenticar(Login, Senha: String): boolean;

  end;

implementation

{ TSessaoUsuario }

function TSessaoUsuario.Autenticar(Login, Senha: String): boolean;
const
  cLogin = 'admin';
  cSenha = '123mudar';
begin
  Result := false;
  if (Login = cLogin) and (Senha = cSenha) then
  begin
    Result := True;
    FInstance.Nome := Login;
    FInstance.Empresa := 'Empresa ACME';
  end;
end;

class function TSessaoUsuario.GetInstance: TSessaoUsuario;
begin
  if not Assigned(FInstance) then
    FInstance := TSessaoUsuario.Create;
  Result := FInstance;
end;

end.
