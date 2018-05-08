unit Form.Main;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.Ani, FMX.Media, FMX.Platform;

type
  TFormMain = class(TForm)
    Bg: TRectangle;
    Rectangle1: TRectangle;
    Rectangle2: TRectangle;
    Rectangle3: TRectangle;
    Rectangle4: TRectangle;
    Rectangle5: TRectangle;
    Rectangle7: TRectangle;
    Rectangle8: TRectangle;
    Rectangle9: TRectangle;
    FloatAnimation1: TFloatAnimation;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMain: TFormMain;

implementation

{$R *.fmx}

procedure TFormMain.FormCreate(Sender: TObject);
var
  i: Integer;
  Snow: TCircle;
  Animation: TPathAnimation;
begin
  for i := 1 to 64 do
  begin
    Snow := TCircle.Create(Self);
    Snow.Stroke.Kind := TBrushKind.None;
    Snow.Fill.Color := TAlphaColorRec.White;
    Snow.Width := Random(8) + 3;
    Snow.Height := Snow.Width;
    Snow.Visible := False;
    Snow.Parent := Self;
    Snow.Position.X := Random(Width);
    Snow.Position.Y := -20 - Random(40);

    Animation := TPathAnimation.Create(Snow);
    Animation.Parent := Snow;
    Animation.Duration := Random(5) + 3;
    Animation.Delay := Random(16);
    Animation.Path.Data := 'M0,0L'+ (Random(200) - 100).ToString +',' + (Self.Height * 2).ToString;
    Animation.Loop := True;

    Snow.Visible := True;
    Animation.Enabled := True;
  end;

end;

initialization

  Randomize;
end.
