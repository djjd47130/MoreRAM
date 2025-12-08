object frmMain: TfrmMain
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'More RAM'
  ClientHeight = 237
  ClientWidth = 580
  Color = clBtnFace
  DoubleBuffered = True
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object btnBottom: TPanel
    Left = 0
    Top = 203
    Width = 580
    Height = 34
    Align = alBottom
    TabOrder = 0
    ExplicitLeft = 3
    ExplicitTop = 199
    object lblStatus: TLabel
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 69
      Height = 26
      Align = alLeft
      Caption = 'Status: Ready'
      Layout = tlCenter
      ExplicitHeight = 13
    end
    object btnAdd: TJDFontButton
      AlignWithMargins = True
      Left = 460
      Top = 4
      Width = 116
      Height = 26
      Cursor = crHandPoint
      Align = alRight
      DrawStyle = fdTransparent
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Image.AutoSize = False
      Image.Text = #57518
      Image.Font.Charset = ANSI_CHARSET
      Image.Font.Color = clWindowText
      Image.Font.Height = -19
      Image.Font.Name = 'Segoe UI Symbol'
      Image.Font.Style = []
      Image.Font.Quality = fqAntialiased
      Image.StandardColor = fcGreen
      Overlay.Text = #57715
      Overlay.Font.Charset = DEFAULT_CHARSET
      Overlay.Font.Color = clWindowText
      Overlay.Font.Height = -7
      Overlay.Font.Name = 'FontAwesome'
      Overlay.Font.Style = []
      Overlay.Font.Quality = fqAntialiased
      Overlay.Position = foNone
      Overlay.Margin = 3
      ImagePosition = fpImgRight
      SubTextFont.Charset = DEFAULT_CHARSET
      SubTextFont.Color = clGray
      SubTextFont.Height = -11
      SubTextFont.Name = 'Tahoma'
      SubTextFont.Style = []
      TabOrder = 0
      Text = 'Add RAM'
      OnClick = btnAddClick
      ExplicitLeft = 461
      ExplicitTop = -4
    end
  end
  object pAmount: TPanel
    Left = 0
    Top = 0
    Width = 580
    Height = 80
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    object pAmountHeader: TPanel
      Left = 0
      Top = 0
      Width = 580
      Height = 24
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      object Label3: TLabel
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 153
        Height = 18
        Align = alLeft
        Caption = 'Amount of RAM to add:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitHeight = 16
      end
      object lblAmount: TLabel
        AlignWithMargins = True
        Left = 541
        Top = 3
        Width = 36
        Height = 18
        Align = alRight
        Alignment = taRightJustify
        Caption = '12 GB'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitHeight = 16
      end
    end
    object tbAmount: TTrackBar
      AlignWithMargins = True
      Left = 3
      Top = 27
      Width = 574
      Height = 45
      Cursor = crHandPoint
      Align = alTop
      Max = 128
      Min = 1
      Frequency = 5
      Position = 12
      PositionToolTip = ptBottom
      TabOrder = 1
      OnChange = tbAmountChange
    end
  end
  object pSpeed: TPanel
    Left = 0
    Top = 80
    Width = 580
    Height = 80
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 2
    object pSpeedHeader: TPanel
      Left = 0
      Top = 0
      Width = 580
      Height = 24
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      object Label2: TLabel
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 79
        Height = 18
        Align = alLeft
        Caption = 'RAM Speed:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitHeight = 16
      end
      object lblSpeed: TLabel
        AlignWithMargins = True
        Left = 514
        Top = 3
        Width = 63
        Height = 18
        Align = alRight
        Alignment = taRightJustify
        Caption = '3200 MHz'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitHeight = 16
      end
    end
    object tbSpeed: TTrackBar
      AlignWithMargins = True
      Left = 3
      Top = 27
      Width = 574
      Height = 45
      Cursor = crHandPoint
      Align = alTop
      Max = 7
      Min = 1
      Position = 7
      TabOrder = 1
      OnChange = tbSpeedChange
    end
  end
  object Prog: TProgressBar
    AlignWithMargins = True
    Left = 8
    Top = 168
    Width = 564
    Height = 27
    Margins.Left = 8
    Margins.Top = 8
    Margins.Right = 8
    Margins.Bottom = 8
    Align = alClient
    TabOrder = 3
    Visible = False
    ExplicitHeight = 20
  end
  object tmrProgress: TTimer
    Enabled = False
    Interval = 80
    OnTimer = tmrProgressTimer
    Left = 152
    Top = 152
  end
end
