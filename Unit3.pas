unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm3 = class(TForm)
    Edit1: TEdit;
    Button1: TButton;
    Label1: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
    arr : array of Integer;
    procedure showValue;
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

procedure TForm3.Button1Click(Sender: TObject);
var
  I: Integer;

begin
  for i := Low(arr) to High(arr)-1 do
    arr[i] := arr[i + 1];
  arr[High(arr)] := StrToInt(Edit1.Text);

  showValue;
end;

procedure TForm3.FormCreate(Sender: TObject);
var
  I: Integer;
begin
  SetLength(arr, 10);
  for I := Low(arr) to High(arr) do
    arr[I] := I*1;

    showValue;
end;

procedure TForm3.FormShow(Sender: TObject);
var
  I: Integer;
  Result: String;
begin

  Result := '';
  for I := Low(arr) to High(arr) do
    Result := Result + FloatToStr(arr[I]) + ' | ';
  Label1.Caption := Result;

end;

procedure TForm3.showValue;
var
  I: Integer;
  Result: String;
begin

  Result := '';
  for I := Low(arr) to High(arr) do
    Result := Result + FloatToStr(arr[I]) + ' | ';
  Label1.Caption := Result;

end;

end.
