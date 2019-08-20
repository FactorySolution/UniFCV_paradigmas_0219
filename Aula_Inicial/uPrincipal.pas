unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TFrmPrincipal = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    Memo1: TMemo;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

uses
  uNovaTela;

{$R *.dfm}

procedure TFrmPrincipal.Button1Click(Sender: TObject);
var
  FNovaTela: TFrmNovaTela;
begin

  //Application.CreateForm(TFrmNovaTela, FNovaTela);
  //FNovaTela.ShowModal;
  try
    FNovaTela := TFrmNovaTela.Create(nil);
    FNovaTela.MudarCaption := 'OLAAAAAAAAA';
    FNovaTela.ShowModal;
  finally
    FNovaTela.Free;
  end;
end;

procedure TFrmPrincipal.Button2Click(Sender: TObject);
begin
  if Application.MessageBox('Ola bem vindo', 'Olaaaaa', MB_YESNO) = mrYes then
    ShowMessage('Voce escolheu yes');
end;

procedure TFrmPrincipal.Button3Click(Sender: TObject);
var
  i: Integer;
begin
  //ShowMessage(IntToStr(self.ComponentCount));
  for i := 0 to self.ComponentCount -1 do
   if self.Components[i] is TButton then
      (self.Components[i] as TButton).Enabled := false;

    //Memo1.Lines.Add(self.Components[i].Name)
end;

procedure TFrmPrincipal.Edit1Change(Sender: TObject);
begin
  //TEdit(Sender).Text;
  if Sender is TEdit then
    Self.Caption := (Sender as TEdit).Text;
end;

end.
