object frmMain: TfrmMain
  Left = 0
  Top = 0
  Caption = 'More RAM'
  ClientHeight = 131
  ClientWidth = 520
  Color = clBtnFace
  DoubleBuffered = True
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  DesignSize = (
    520
    131)
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 14
    Width = 153
    Height = 16
    Caption = 'Amount of RAM to add:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblAmount: TLabel
    Left = 470
    Top = 11
    Width = 36
    Height = 16
    Alignment = taRightJustify
    Anchors = [akTop, akRight]
    Caption = '12 GB'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 95
    Width = 520
    Height = 36
    Align = alBottom
    TabOrder = 0
    ExplicitLeft = 3
    ExplicitTop = 336
    ExplicitWidth = 772
    object JDFontButton1: TJDFontButton
      AlignWithMargins = True
      Left = 414
      Top = 4
      Width = 102
      Height = 28
      Cursor = crHandPoint
      Align = alRight
      DrawStyle = fdTransparent
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Image.AutoSize = False
      Image.Text = #61537
      Image.Font.Charset = DEFAULT_CHARSET
      Image.Font.Color = clWindowText
      Image.Font.Height = -21
      Image.Font.Name = 'FontAwesome'
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
      OnClick = JDFontButton1Click
      ExplicitLeft = 668
      ExplicitTop = 75
      ExplicitHeight = 30
    end
  end
  object tbAmount: TTrackBar
    Left = 16
    Top = 35
    Width = 490
    Height = 45
    Anchors = [akLeft, akTop, akRight]
    Max = 128
    Min = 1
    Frequency = 5
    Position = 12
    PositionToolTip = ptBottom
    TabOrder = 1
    OnChange = tbAmountChange
  end
end
