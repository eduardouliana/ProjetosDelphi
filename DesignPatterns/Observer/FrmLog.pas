unit FrmLog;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  ObserverInterface, Notificacao;

type
  TFrameLog = class(TFrame, IObserverInterface)
    MmoLog: TMemo;
  public
    procedure Atualizar(Notificacao: TNotificacao);
  end;

implementation

{$R *.dfm}
{ TFrameLog }

procedure TFrameLog.Atualizar(Notificacao: TNotificacao);
var
  TextoLog: String;
begin
  TextoLog := Format('Foi feito uma operação de %s', [Notificacao.Operacao]);
  MmoLog.Lines.Add(TextoLog);
end;

end.
