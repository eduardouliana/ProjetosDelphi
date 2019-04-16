unit ObserverInterface;

interface

uses
  Notificacao;

type
  IObserverInterface = interface
    procedure Atualizar(Notificacao: TNotificacao);
  end;

implementation

end.
