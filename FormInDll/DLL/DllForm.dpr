library DllForm;

uses
  System.SysUtils,
  System.Classes,
  windows,
  Forms,
  Unit1 in 'Unit1.pas' {Form1};

{$R *.res}




procedure Iniciar(AMensagem: String); stdcall;
begin
  with TForm1.Create(Application, AMensagem) do
    try
      ShowModal;
    finally
      Release;
      Free;
    end;
end;

exports
  Iniciar;



begin

end.
