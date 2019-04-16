unit FrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FrmLog, FrmSaldo, FrmCadastrar;

type
  TForm1 = class(TForm)
    oFrameCadastrar: TFrameCadastrar;
    oFrameSaldo: TFrameSaldo;
    oFrameLog: TFrameLog;
    procedure FormCreate(Sender: TObject);
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
  oFrameCadastrar.AdicionarObserver(oFrameSaldo);
  oFrameCadastrar.AdicionarObserver(oFrameLog);
end;

end.
