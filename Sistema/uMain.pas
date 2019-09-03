unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.ImageList, Vcl.ImgList, Vcl.Menus,
  Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.Buttons, System.Actions, Vcl.ActnList;

type
  TFrmMain = class(TForm)
    MainMenu: TMainMenu;
    Cadastros1: TMenuItem;
    Cliente1: TMenuItem;
    StatusBar1: TStatusBar;
    pnlMenu: TPanel;
    pnlDados: TPanel;
    btnCliente: TSpeedButton;
    ActionList: TActionList;
    actCliente: TAction;
    Image16: TImageList;
    Image48: TImageList;
    Image32: TImageList;
    procedure actClienteExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMain: TFrmMain;

implementation

uses
  uBaseCadastro, uLogin;

{$R *.dfm}

procedure TFrmMain.actClienteExecute(Sender: TObject);
var
  FFormBaseCadastro: TFrmBaseCadastro;
begin
  FFormBaseCadastro := TFrmBaseCadastro.Create(self);
  try
    FFormBaseCadastro.ShowModal;
  finally
    FFormBaseCadastro.Free;
  end;
end;

procedure TFrmMain.FormShow(Sender: TObject);
var
  FLogin: TFrmLogin;
begin
  FLogin := TFrmLogin.Create(Self);
  if FLogin.ShowModal = mrOk then
  begin
    ShowMessage('eeeeeeeeeeeeeeeeeeeeee');
  end else
    Halt(0);
end;

end.
