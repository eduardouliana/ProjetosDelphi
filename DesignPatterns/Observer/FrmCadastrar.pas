unit FrmCadastrar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  SubjectInterface, System.Generics.Collections, ObserverInterface;

type
  TFrameCadastrar = class(TFrame, ISubject)
    Label1: TLabel;
    CmbOperacao: TComboBox;
    Label2: TLabel;
    EdtValor: TEdit;
    BtnSalvar: TButton;
    procedure BtnSalvarClick(Sender: TObject);

  private
    FObservers: TList<IObserverInterface>;
    procedure Notificar;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;

    procedure AdicionarObserver(Observer: IObserverInterface);
    procedure RemoverObserver(Observer: IObserverInterface);

  end;

implementation

uses
  Notificacao;

{$R *.dfm}

{ TFrameCadastrar }
procedure TFrameCadastrar.BtnSalvarClick(Sender: TObject);
begin
  Notificar;
end;

constructor TFrameCadastrar.Create(AOwner: TComponent);
begin
  inherited;
  FObservers := TList<IObserverInterface>.Create;
end;

procedure TFrameCadastrar.AdicionarObserver(Observer: IObserverInterface);
begin
  FObservers.Add(Observer);
end;

procedure TFrameCadastrar.RemoverObserver(Observer: IObserverInterface);
begin
  FObservers.Delete(FObservers.IndexOf(Observer));
end;

destructor TFrameCadastrar.Destroy;
begin
  FObservers.Free;
  inherited;
end;

procedure TFrameCadastrar.Notificar;
var
  Notificacao: TNotificacao;
  Observer: IObserverInterface;
begin
  Notificacao.Operacao := CmbOperacao.Text;
  Notificacao.Valor := StrToCurrDef(EdtValor.Text, 0);

  for Observer in FObservers do
  begin
    Observer.Atualizar(Notificacao);
  end;

end;

end.
