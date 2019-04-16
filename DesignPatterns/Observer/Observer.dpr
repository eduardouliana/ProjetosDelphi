program Observer;

uses
  Vcl.Forms,
  FrmPrincipal in 'FrmPrincipal.pas' {Form1},
  Notificacao in 'Notificacao.pas',
  ObserverInterface in 'ObserverInterface.pas',
  FrmSaldo in 'FrmSaldo.pas' {FrameSaldo: TFrame},
  FrmLog in 'FrmLog.pas' {FrameLog: TFrame},
  SubjectInterface in 'SubjectInterface.pas',
  FrmCadastrar in 'FrmCadastrar.pas' {FrameCadastrar: TFrame};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
