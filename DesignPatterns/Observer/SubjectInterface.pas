unit SubjectInterface;

interface

uses
  ObserverInterface;

type
  ISubject = interface
    procedure AdicionarObserver(Observer: IObserverInterface);
    procedure RemoverObserver(Observer: IObserverInterface);
    procedure Notificar;
  end;

implementation

end.
