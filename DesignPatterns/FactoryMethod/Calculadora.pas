unit Calculadora;

interface

uses
  FactoryMethodInterface, CalculoInterface;

type
  TCalculadora = class(TInterfacedObject, IFactoryMethod)
    function BuscarResultado(const TipoCalculo: String): ICalculo;
  end;

implementation

uses
  Somar, Subtrair;

{ TCalculadora }

function TCalculadora.BuscarResultado(const TipoCalculo: String): ICalculo;
begin
  if TipoCalculo = 'Somar' then
    result := TSomar.Create
  else if TipoCalculo = 'Subtrair' then
    result := TSubtrair.Create;
end;

end.
