unit uBaseCadastro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uBase, Vcl.ComCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.ExtCtrls, Vcl.ToolWin, Vcl.ActnMan, Vcl.ActnCtrls,
  Vcl.ActnMenus, Vcl.StdCtrls, System.Actions, Vcl.ActnList, Vcl.Buttons,
  System.ImageList, Vcl.ImgList, Vcl.Menus;

type
  TFrmBaseCadastro = class(TFrmBase)
    pgDados: TPageControl;
    tsPesquisa: TTabSheet;
    tsDados: TTabSheet;
    dbGridPesquisa: TDBGrid;
    DSPesquisa: TDataSource;
    ActionListBase: TActionList;
    ImagensCadastros: TImageList;
    ImagensCadastrosD: TImageList;
    PanelToolBar: TPanel;
    BotaoSair: TSpeedButton;
    BotaoSeparador1: TSpeedButton;
    BotaoSeparador3: TSpeedButton;
    BotaoInserir: TSpeedButton;
    BotaoAlterar: TSpeedButton;
    BotaoExcluir: TSpeedButton;
    BotaoCancelar: TSpeedButton;
    BotaoSalvar: TSpeedButton;
    PanelNavegacao: TPanel;
    BotaoPaginaAnterior: TSpeedButton;
    BotaoPrimeiroRegistro: TSpeedButton;
    BotaoRegistroAnterior: TSpeedButton;
    BotaoProximoRegistro: TSpeedButton;
    BotaoUltimoRegistro: TSpeedButton;
    BotaoProximaPagina: TSpeedButton;
    pnlPesquisa: TPanel;
    edtPesquisa: TLabeledEdit;
    btnPesquisa: TButton;
    PopUpAtalhosMenu: TPopupMenu;
    menuInserir: TMenuItem;
    menuAlterar: TMenuItem;
    menuExcluir: TMenuItem;
    menuFiltrar: TMenuItem;
    menuExportarCompleto: TMenuItem;
    menuImprimirCompleto: TMenuItem;
    menuSairCompleto: TMenuItem;
    menuConsultar: TMenuItem;
    menuCancelar: TMenuItem;
    menuSalvar: TMenuItem;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmBaseCadastro: TFrmBaseCadastro;

implementation

{$R *.dfm}

end.
