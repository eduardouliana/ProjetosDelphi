unit Subtrair;

interface

uses
  CalculoInterface;

type
  TSubtrair = class(TInterfacedObject, ICalculo)
    function Executar(AValor1, AValor2: Double): Double;
  end;

implementation

{ TSubtrair }

function TSubtrair.Executar(AValor1, AValor2: Double): Double;
begin
  result := AValor1 - AValor2;
end;

end.
