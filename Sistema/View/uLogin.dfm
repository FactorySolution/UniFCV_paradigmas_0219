object FrmLogin: TFrmLogin
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Login'
  ClientHeight = 158
  ClientWidth = 393
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 393
    Height = 158
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 345
    object Image1: TImage
      Left = 16
      Top = 24
      Width = 105
      Height = 105
    end
    object edtLogin: TLabeledEdit
      Left = 160
      Top = 32
      Width = 161
      Height = 21
      EditLabel.Width = 25
      EditLabel.Height = 13
      EditLabel.Caption = 'Login'
      TabOrder = 0
    end
    object EdtSenha: TLabeledEdit
      Left = 160
      Top = 71
      Width = 161
      Height = 21
      EditLabel.Width = 30
      EditLabel.Height = 13
      EditLabel.Caption = 'Senha'
      PasswordChar = '*'
      TabOrder = 1
    end
    object btnLogar: TButton
      Left = 160
      Top = 112
      Width = 75
      Height = 25
      Caption = 'Logar'
      ModalResult = 1
      TabOrder = 2
      OnClick = btnLogarClick
    end
    object btnCancelar: TButton
      Left = 246
      Top = 112
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      ModalResult = 2
      TabOrder = 3
    end
  end
end
