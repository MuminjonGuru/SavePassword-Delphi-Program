object FormMain: TFormMain
  Left = 0
  Top = 0
  Caption = 'Save-Password  &  Delphi.Uz'
  ClientHeight = 530
  ClientWidth = 873
  Color = clBtnFace
  DefaultMonitor = dmDesktop
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIForm
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poDesktopCenter
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    AlignWithMargins = True
    Left = 3
    Top = 119
    Width = 867
    Height = 408
    Cursor = crHandPoint
    Align = alClient
    DataSource = DataSource1
    DrawingStyle = gdsGradient
    FixedColor = clDefault
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Color = cl3DLight
        Expanded = False
        FieldName = 'WebSite'
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Trebuchet MS'
        Font.Style = []
        Title.Font.Charset = RUSSIAN_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = 'Trebuchet MS'
        Title.Font.Style = []
        Width = 183
        Visible = True
      end
      item
        Color = cl3DLight
        Expanded = False
        FieldName = 'Login'
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Trebuchet MS'
        Font.Style = []
        Title.Font.Charset = RUSSIAN_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = 'Trebuchet MS'
        Title.Font.Style = []
        Width = 176
        Visible = True
      end
      item
        Color = cl3DLight
        Expanded = False
        FieldName = 'Email'
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Trebuchet MS'
        Font.Style = []
        Title.Font.Charset = RUSSIAN_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = 'Trebuchet MS'
        Title.Font.Style = []
        Visible = True
      end
      item
        Color = cl3DLight
        Expanded = False
        FieldName = 'FirstPassword'
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Trebuchet MS'
        Font.Style = []
        Title.Font.Charset = RUSSIAN_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = 'Trebuchet MS'
        Title.Font.Style = []
        Visible = True
      end
      item
        Color = cl3DLight
        Expanded = False
        FieldName = 'SecondPassword'
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Trebuchet MS'
        Font.Style = []
        Title.Font.Charset = RUSSIAN_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = 'Trebuchet MS'
        Title.Font.Style = []
        Visible = True
      end
      item
        Color = cl3DLight
        Expanded = False
        FieldName = 'PINCode'
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Trebuchet MS'
        Font.Style = []
        Title.Font.Charset = RUSSIAN_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = 'Trebuchet MS'
        Title.Font.Style = []
        Visible = True
      end>
  end
  object Panel1: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 867
    Height = 70
    Align = alTop
    BevelInner = bvRaised
    BevelKind = bkSoft
    TabOrder = 1
    object SpeedButton1: TSpeedButton
      AlignWithMargins = True
      Left = 725
      Top = 20
      Width = 48
      Height = 29
      Cursor = crHandPoint
      Margins.Left = 15
      Margins.Top = 18
      Margins.Right = 15
      Margins.Bottom = 15
      Align = alRight
      Caption = 'Enter'
      OnClick = SpeedButton1Click
      ExplicitLeft = 545
      ExplicitTop = 23
      ExplicitHeight = 26
    end
    object EditIzlash: TLabeledEdit
      AlignWithMargins = True
      Left = 131
      Top = 23
      Width = 177
      Height = 26
      Cursor = crHandPoint
      BevelKind = bkSoft
      EditLabel.AlignWithMargins = True
      EditLabel.Width = 44
      EditLabel.Height = 20
      EditLabel.Cursor = crHandPoint
      EditLabel.Caption = 'Search'
      EditLabel.Font.Charset = RUSSIAN_CHARSET
      EditLabel.Font.Color = clWindowText
      EditLabel.Font.Height = -15
      EditLabel.Font.Name = 'Trebuchet MS'
      EditLabel.Font.Style = []
      EditLabel.ParentFont = False
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Trebuchet MS'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      TextHint = 'Paytoo'
      OnChange = EditIzlashChange
    end
    object RBSaytNomi: TRadioButton
      Tag = 1
      Left = 12
      Top = 2
      Width = 113
      Height = 17
      Cursor = crHandPoint
      Caption = 'Web-Site Name: '
      Checked = True
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Trebuchet MS'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      TabStop = True
      OnClick = RBSaytNomiClick
    end
    object RBLogin: TRadioButton
      Tag = 1
      Left = 12
      Top = 23
      Width = 113
      Height = 17
      Cursor = crHandPoint
      Caption = 'Login'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Trebuchet MS'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = RBLoginClick
    end
    object RBEmail: TRadioButton
      Tag = 1
      Left = 12
      Top = 44
      Width = 113
      Height = 17
      Cursor = crHandPoint
      Caption = 'Email'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Trebuchet MS'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = RBEmailClick
    end
    object BtnAbout: TButton
      AlignWithMargins = True
      Left = 803
      Top = 17
      Width = 43
      Height = 32
      Margins.Left = 15
      Margins.Top = 15
      Margins.Right = 15
      Margins.Bottom = 15
      Align = alRight
      Caption = '?'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Trebuchet MS'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      OnClick = BtnAboutClick
    end
    object EditPassword: TEdit
      AlignWithMargins = True
      Left = 480
      Top = 20
      Width = 215
      Height = 29
      Cursor = crHandPoint
      Hint = 'Type your password !'
      Margins.Left = 15
      Margins.Top = 18
      Margins.Right = 15
      Margins.Bottom = 15
      Align = alRight
      BevelKind = bkSoft
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Trebuchet MS'
      Font.Style = []
      MaxLength = 24
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      TextHint = 'Password'
      OnKeyDown = EditPasswordKeyDown
      ExplicitHeight = 30
    end
  end
  object DBNavigator1: TDBNavigator
    AlignWithMargins = True
    Left = 3
    Top = 79
    Width = 867
    Height = 34
    Cursor = crHandPoint
    DataSource = DataSource1
    Align = alTop
    TabOrder = 2
  end
  object DataSource1: TDataSource
    DataSet = ADOQueryIzlash
    Left = 136
    Top = 256
  end
  object ADOQueryIzlash: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM parol')
    Left = 280
    Top = 232
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source=parol' +
      '.mdb;Mode=Share Deny None;Persist Security Info=False;Jet OLEDB:' +
      'System database="";Jet OLEDB:Registry Path="";Jet OLEDB:Database' +
      ' Password=delphiuz;Jet OLEDB:Engine Type=5;Jet OLEDB:Database Lo' +
      'cking Mode=1;Jet OLEDB:Global Partial Bulk Ops=2;Jet OLEDB:Globa' +
      'l Bulk Transactions=1;Jet OLEDB:New Database Password="";Jet OLE' +
      'DB:Create System Database=False;Jet OLEDB:Encrypt Database=False' +
      ';Jet OLEDB:Don'#39't Copy Locale on Compact=False;Jet OLEDB:Compact ' +
      'Without Replica Repair=False;Jet OLEDB:SFP=False;'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 228
    Top = 312
  end
  object MainMenu1: TMainMenu
    Left = 184
    Top = 192
    object MenuItemPassword: TMenuItem
      Caption = 'Password'
      object ChangePassword1: TMenuItem
        AutoHotkeys = maManual
        Caption = 'Change &Password'
        ShortCut = 16464
        OnClick = ChangePassword1Click
      end
    end
    object About1: TMenuItem
      Caption = 'About'
      object Author1: TMenuItem
        Caption = 'Author'
        OnClick = BtnAboutClick
      end
      object MoreApps1: TMenuItem
        Caption = 'More Apps'
        OnClick = MoreApps1Click
      end
    end
  end
  object NotificationCenter1: TNotificationCenter
    Left = 368
    Top = 312
  end
end
