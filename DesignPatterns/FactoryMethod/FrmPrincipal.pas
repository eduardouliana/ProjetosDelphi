unit FrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TFrmCalculadora = class(TForm)
    CmbTipoCalculo: TComboBox;
    BtnExecutar: TButton;
    EdtValor1: TEdit;
    EdtValor2: TEdit;
    MmoResultado: TMemo;
    procedure BtnExecutarClick(Sender: TObject);
  end;

var
  FrmCalculadora: TFrmCalculadora;

implementation

uses
  CalculoInterface, Calculadora, FactoryMethodInterface;

{$R *.dfm}

procedure TFrmCalculadora.BtnExecutarClick(Sender: TObject);
var
  oCalculadora: IFactoryMethod;
  oTipoCalculo: ICalculo;
  fResultado: Double;
begin
  oCalculadora := TCalculadora.Create;

  oTipoCalculo := oCalculadora.BuscarResultado(CmbTipoCalculo.Text);

  fResultado := oTipoCalculo.Executar(StrToCurrDef(EdtValor1.Text, 0),
    StrToCurrDef(EdtValor2.Text, 0));

  MmoResultado.Lines.Add(CurrToStr(fResultado));
end;

end.
