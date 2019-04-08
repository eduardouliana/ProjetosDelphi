program FactoryMethod;

uses
  Vcl.Forms,
  FrmPrincipal in 'FrmPrincipal.pas' {FrmCalculadora},
  CalculoInterface in 'CalculoInterface.pas',
  FactoryMethodInterface in 'FactoryMethodInterface.pas',
  Somar in 'Somar.pas',
  Subtrair in 'Subtrair.pas',
  Calculadora in 'Calculadora.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmCalculadora, FrmCalculadora);
  Application.Run;
end.
