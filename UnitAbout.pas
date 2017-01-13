unit UnitAbout;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, ShellApi, Vcl.Menus;

type
  TFormAbout = class(TForm)
    PopupMenu1: TPopupMenu;
    More1: TMenuItem;
    LblProgrammer: TLabel;
    LblWebSite: TLabel;
    LblCopyright: TLabel;
    procedure More1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure LblWebSiteMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure LblWebSiteMouseLeave(Sender: TObject);
    procedure LblProgrammerMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure LblProgrammerMouseLeave(Sender: TObject);
    procedure LblWebSiteClick(Sender: TObject);
    procedure LblProgrammerClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormAbout: TFormAbout;

implementation

{$R *.dfm}

procedure TFormAbout.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  FormAbout := Nil;
end;

procedure TFormAbout.LblProgrammerClick(Sender: TObject);
begin
  ShellExecute(Handle, 'OPEN', 'https://www.delphi.uz', Nil, Nil, SW_SHOWMAXIMIZED);
end;

procedure TFormAbout.LblProgrammerMouseLeave(Sender: TObject);
begin
  LblProgrammer.Font.Color := clBlack;
end;

procedure TFormAbout.LblProgrammerMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  LblProgrammer.Font.Color := clRed;
end;

procedure TFormAbout.LblWebSiteClick(Sender: TObject);
begin
  ShellExecute(Handle, 'OPEN', 'https://www.delphi.uz', Nil, Nil, SW_SHOWMAXIMIZED);
end;

procedure TFormAbout.LblWebSiteMouseLeave(Sender: TObject);
begin
  LblWebSite.Font.Color := clBlack;
end;

procedure TFormAbout.LblWebSiteMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  LblWebSite.Font.Color := clRed;
end;

procedure TFormAbout.More1Click(Sender: TObject);
begin
  ShellExecute(Handle, 'OPEN', 'https://www.delphi.uz', Nil, Nil, SW_SHOWMAXIMIZED);
end;

end.

