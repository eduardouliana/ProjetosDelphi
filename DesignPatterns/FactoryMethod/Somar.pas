unit Somar;

interface

uses
  CalculoInterface;

type

  TSomar = class(TInterfacedObject, ICalculo)
    function Executar(AValor1, AValor2: Double): Double;
  end;

implementation

{ TSomar }

function TSomar.Executar(AValor1, AValor2: Double): Double;
begin
  result := AValor1 + AValor2;
end;

end.
