unit uBase;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.ComCtrls,
  SessaoUsuario;

type
  TFrmBase = class(TForm)
  private
    function GetSessaoUsuario: TSessaoUsuario;
    { Private declarations }
  public
    { Public declarations }
    destructor Destroy;

    property SessaoUsuario: TSessaoUsuario read GetSessaoUsuario;


  end;

var
  FrmBase: TFrmBase;

implementation

{$R *.dfm}

{ TFrmBase }

destructor TFrmBase.Destroy;
begin

end;

function TFrmBase.GetSessaoUsuario: TSessaoUsuario;
begin
  Result := TSessaoUsuario.GetInstance;
end;

end.
