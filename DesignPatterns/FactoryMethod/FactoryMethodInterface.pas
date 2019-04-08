unit FactoryMethodInterface;

interface

uses
  CalculoInterface;

type
  IFactoryMethod = interface
    function BuscarResultado(const TipoCalculo: String): ICalculo;
  end;

implementation

end.
