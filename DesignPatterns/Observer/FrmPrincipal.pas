unit FrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FrmLog, FrmSaldo, FrmCadastrar;

type
  TForm1 = class(TForm)
    FrameCadastrar1: TFrameCadastrar;
    FrameSaldo1: TFrameSaldo;
    FrameLog1: TFrameLog;
    procedure FormCreate(Sender: TObject);
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
  FrameCadastrar1.AdicionarObserver(FrameSaldo1);
  FrameCadastrar1.AdicionarObserver(FrameLog1);
end;

end.
