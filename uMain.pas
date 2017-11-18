{*************************************************
**   Created by Mo'minjon Abduraimov            **
**      http://delphi.uz                        **
**                                              **
**   Simple Password protect program            **
**                                              **
**   mr.delphiguru@gmail.com                    **
**************************************************}

Unit uMain;

Interface

Uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.ExtCtrls,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.ExtDlgs, Vcl.Menus,
  Registry, System.Notification, Vcl.Buttons, Vcl.Grids, ShellApi;

Type
  TFormMain = class(TForm)
    DataSource1: TDataSource;
    ADOQueryIzlash: TADOQuery;
    ADOConnection1: TADOConnection;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    EditIzlash: TLabeledEdit;
    RBSaytNomi: TRadioButton;
    RBLogin: TRadioButton;
    RBEmail: TRadioButton;
    DBNavigator1: TDBNavigator;
    BtnAbout: TButton;
    MainMenu1: TMainMenu;
    MenuItemPassword: TMenuItem;
    ChangePassword1: TMenuItem;
    EditPassword: TEdit;
    SpeedButton1: TSpeedButton;
    NotificationCenter1: TNotificationCenter;
    About1: TMenuItem;
    Author1: TMenuItem;
    MoreApps1: TMenuItem;
    procedure EditIzlashChange(Sender: TObject);
    procedure RBSaytNomiClick(Sender: TObject);
    procedure RBLoginClick(Sender: TObject);
    procedure RBEmailClick(Sender: TObject);
    procedure BtnAboutClick(Sender: TObject);
    procedure ChangePassword1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure EditPasswordKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure MoreApps1Click(Sender: TObject);
  Private
    { Private declarations }
  Public
    { Public declarations }
    IniFile: TRegIniFile;
  End;

Var
  FormMain: TFormMain;
  Password, PasswordChecker: String;

Implementation

{$R *.dfm}

Uses UnitAbout;

procedure TFormMain.BtnAboutClick(Sender: TObject);
begin
  if FormAbout = Nil Then
  begin
    FormAbout := TFormAbout.Create(Application);
    FormAbout.Show;
  end;
end;

procedure TFormMain.ChangePassword1Click(Sender: TObject);
var
  MyNotification: TNotification;
begin
  Password := InputBox('Change Password', 'Enter new password', '');

  MyNotification := NotificationCenter1.CreateNotification;

  IniFile := TRegIniFile.Create('Software\SavePassword');
  Try
    IniFile.WriteString('Password', 'Password', Password);
    MyNotification.Name := 'Save-Password';
    MyNotification.Title := 'Password Changed To: ';
    MyNotification.AlertBody := Password;
    NotificationCenter1.PresentNotification(MyNotification);
  Finally
    IniFile.Free;
    MyNotification.Free;
  End;
end;

procedure TFormMain.EditIzlashChange(Sender: TObject);
begin
  Try
    ADOQueryIzlash.Close;
    ADOQueryIzlash.SQL.Clear;
    ADOQueryIzlash.SQL.Add('SELECT * FROM parol');

    if RBSaytNomi.Checked then
    begin
      ADOQueryIzlash.SQL.Add('WHERE WebSite LIKE "' + EditIzlash.Text + '%"');
    end;

    if RBLogin.Checked then
    begin
      ADOQueryIzlash.SQL.Add('WHERE Login LIKE "' + EditIzlash.Text + '%"');
    end;

    if RBEmail.Checked then
    begin
      ADOQueryIzlash.SQL.Add('WHERE Email LIKE "' + EditIzlash.Text + '%"');
    end;

    ADOQueryIzlash.Open;
  Except
    ON E: Exception Do
      ShowMessage('Error Class Name: ' + E.ClassName + #13 + 'Error Message: ' +
        E.Message);
  End;
end;

procedure TFormMain.EditPasswordKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    SpeedButton1Click(Sender);
  end;
end;

procedure TFormMain.FormClose(Sender: TObject; var Action: TCloseAction);  // closing notification
var
  MyNotification: TNotification;
begin
  MyNotification := NotificationCenter1.CreateNotification;
  MyNotification.Name := 'Delphi.Uz';
  MyNotification.Title := 'Delphi.Uz';
  MyNotification.AlertBody := 'Thank you for using Save-Password program ! ';
  NotificationCenter1.PresentNotification(MyNotification);
end;

procedure TFormMain.FormCreate(Sender: TObject);
begin
  ADOQueryIzlash.Active := False;
  RBSaytNomi.Visible := False;
  RBEmail.Visible := False;
  RBLogin.Visible := False;
  EditIzlash.Visible := False;
  MenuItemPassword.Visible := False;
  DBGrid1.Visible := False;
  DBNavigator1.Visible := False;
  Try
    IniFile := TRegIniFile.Create('Software\SavePassword');
    Password := IniFile.ReadString('Password', 'Password', Password);
  Finally
    IniFile.Free;
  End;
end;

procedure TFormMain.MoreApps1Click(Sender: TObject);
begin
  ShellExecute(Handle, 'OPEN', 'https://www.delphi.uz', Nil, Nil, SW_SHOWMAXIMIZED);
end;

procedure TFormMain.RBEmailClick(Sender: TObject);
begin
  if RBEmail.Checked then
  begin
    EditIzlash.Text := '';
    EditIzlash.SetFocus;
  end;
end;

procedure TFormMain.RBLoginClick(Sender: TObject);
begin
  if RBLogin.Checked then
  begin
    EditIzlash.Text := '';
    EditIzlash.SetFocus;
  end;
end;

procedure TFormMain.RBSaytNomiClick(Sender: TObject);
begin
  if RBSaytNomi.Checked then
  begin
    EditIzlash.Text := '';
    EditIzlash.SetFocus;
  end;
end;

procedure TFormMain.SpeedButton1Click(Sender: TObject);
begin
  PasswordChecker := EditPassword.Text;
  if Not (PasswordChecker = Password) then
  begin
    ShowMessage('Password is incorrect, please try again!');
    EditPassword.SetFocus;
  end
  else
  begin
    // controlling components
    ADOQueryIzlash.Active := True;
    RBSaytNomi.Visible := True;
    RBEmail.Visible := True;
    RBLogin.Visible := True;
    EditIzlash.Visible := True;
    MenuItemPassword.Visible := True;
    DBGrid1.Visible := True;
    DBNavigator1.Visible := True;
    // We need to hide checker components
    EditPassword.Visible := False;
    SpeedButton1.Visible := False;
  end;
end;

end.
