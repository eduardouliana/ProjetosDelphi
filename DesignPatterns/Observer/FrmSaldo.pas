unit FrmSaldo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  ObserverInterface, Notificacao;

type
  TFrameSaldo = class(TFrame, IObserverInterface)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    LblCredito: TLabel;
    LblDebito: TLabel;
    LblSaldo: TLabel;

  private
    FCreditos: Double;
    FDebitos: Double;
  public
    procedure Atualizar(Notificacao: TNotificacao);
  end;

implementation

{$R *.dfm}
{ TFrameSaldo }

procedure TFrameSaldo.Atualizar(Notificacao: TNotificacao);
var
  Saldo: Double;
begin
  if Notificacao.Operacao = 'Crédito' then
    FCreditos := FCreditos + Notificacao.Valor
  else if Notificacao.Operacao = 'Débito' then
    FDebitos := FDebitos + Notificacao.Valor;

  Saldo := FCreditos - FDebitos;

  LblCredito.Caption := FormatFloat('###,##0.00', FCreditos);
  LblDebito.Caption := FormatFloat('###,##0.00', FDebitos);
  LblSaldo.Caption := FormatFloat('###,##0.00', Saldo);
end;

end.
