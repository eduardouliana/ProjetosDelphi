unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    FMensagem: String;
  public
    constructor Create(AOwner: TComponent; AMensagem: String = ''); reintroduce;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

{ TForm1 }



constructor TForm1.Create(AOwner: TComponent; AMensagem: String);
begin
  inherited Create(AOwner);
  FMensagem := AMensagem;
end;



procedure TForm1.Button1Click(Sender: TObject);
begin
  ShowMessage(FMensagem);
end;

end.
