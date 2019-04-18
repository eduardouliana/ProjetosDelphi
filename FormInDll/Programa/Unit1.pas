unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    procedure Button1Click(Sender: TObject);
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}




procedure TForm1.Button1Click(Sender: TObject);
var
  oDLL: THandle;
  Iniciar: procedure(AMensagem: String); stdcall;
begin
  oDLL := LoadLibrary(PChar('DllForm.dll'));
  if (oDLL = 0) then
    RaiseLastOSError;

  try
    @Iniciar := GetProcAddress(oDLL, 'Iniciar');
    if (@Iniciar = nil) then
      RaiseLastOSError;

    Iniciar(Edit1.Text);
  finally
    FreeLibrary(oDLL);
  end;
end;

end.
