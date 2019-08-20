unit uNovaTela;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs;

type
  TFrmNovaTela = class(TForm)
  private
    FMudarCaption: string;
    function GetMudarCaption: string;
    procedure SetMudarCaption(const Value: string);
    { Private declarations }
  public
    { Public declarations }
    property MudarCaption: string read GetMudarCaption write SetMudarCaption;
  end;

var
  FrmNovaTela: TFrmNovaTela;

implementation

{$R *.dfm}

{ TFrmNovaTela }

function TFrmNovaTela.GetMudarCaption: string;
begin
  Result := FMudarCaption;
end;

procedure TFrmNovaTela.SetMudarCaption(const Value: string);
begin
  FMudarCaption := Value;
  Self.Caption := FMudarCaption;
end;

end.
