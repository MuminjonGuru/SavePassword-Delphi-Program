object FormAbout: TFormAbout
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'About'
  ClientHeight = 229
  ClientWidth = 306
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object LblProgrammer: TLabel
    AlignWithMargins = True
    Left = 8
    Top = 8
    Width = 285
    Height = 18
    Caption = 'Programmer: Abduraimov Mo'#39'minjon'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tekton Pro Ext'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = LblProgrammerClick
    OnMouseMove = LblProgrammerMouseMove
    OnMouseLeave = LblProgrammerMouseLeave
  end
  object LblWebSite: TLabel
    AlignWithMargins = True
    Left = 8
    Top = 40
    Width = 248
    Height = 23
    Caption = 'Web-site:  www.delphi.uz'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tekton Pro Ext'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = LblWebSiteClick
    OnMouseMove = LblWebSiteMouseMove
    OnMouseLeave = LblWebSiteMouseLeave
  end
  object LblCopyright: TLabel
    AlignWithMargins = True
    Left = 3
    Top = 208
    Width = 300
    Height = 18
    Align = alBottom
    Alignment = taCenter
    Caption = '(c) 2017  @ DelphiUz'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tekton Pro Ext'
    Font.Pitch = fpFixed
    Font.Style = [fsBold]
    ParentFont = False
    ExplicitWidth = 173
  end
  object PopupMenu1: TPopupMenu
    Left = 232
    Top = 112
    object More1: TMenuItem
      Caption = 'More'
      ShortCut = 16461
      OnClick = More1Click
    end
  end
end
