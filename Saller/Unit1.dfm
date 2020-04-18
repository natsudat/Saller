object Form1: TForm1
  Left = 376
  Top = 196
  Width = 1022
  Height = 675
  Caption = #1043#1083#1072#1074#1085#1072#1103' '#1092#1086#1088#1084#1072
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object StatusBar1: TStatusBar
    Left = 0
    Top = 608
    Width = 1006
    Height = 28
    Panels = <
      item
        Text = #1060#1072#1081#1083' '#1085#1077' '#1086#1090#1082#1088#1099#1090
        Width = 120
      end
      item
        Width = 400
      end
      item
        Width = 50
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 193
    Height = 608
    Align = alLeft
    Color = clBtnShadow
    TabOrder = 1
    object Button1: TButton
      Left = 0
      Top = 0
      Width = 193
      Height = 89
      Caption = #1057#1086#1079#1076#1072#1085#1080#1077'/'#1054#1090#1082#1088#1099#1090#1080#1103' '#1092#1072#1081#1083#1072
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      WordWrap = True
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 0
      Top = 88
      Width = 193
      Height = 89
      Caption = #1056#1072#1073#1086#1090#1072' '#1089' '#1079#1072#1087#1080#1089#1103#1084#1080
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      WordWrap = True
      OnClick = Button2Click
    end
    object Button4: TButton
      Left = 0
      Top = 176
      Width = 193
      Height = 89
      Caption = #1055#1086#1082#1086#1079#1072#1090#1100' '#1090#1086#1074#1072#1088#1099' '#1087#1086' '#1074#1099#1073#1086#1088#1091' '#1087#1088#1086#1076#1086#1074#1094#1072
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      WordWrap = True
      OnClick = Button4Click
    end
    object Button5: TButton
      Left = 0
      Top = 264
      Width = 193
      Height = 89
      Caption = #1055#1086#1082#1086#1079#1072#1090#1100' '#1089#1091#1084#1084#1091' '#1087#1088#1077#1084#1080#1080' '#1087#1088#1086#1076#1072#1074#1094#1072
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      WordWrap = True
      OnClick = Button5Click
    end
  end
  object PageControl1: TPageControl
    Left = 193
    Top = 0
    Width = 813
    Height = 608
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 2
    object TabSheet1: TTabSheet
      Caption = #1057#1086#1079#1076#1072#1085#1080#1077'/'#1054#1090#1082#1088#1099#1090#1080#1103' '#1092#1072#1081#1083#1072
      object GroupBox1: TGroupBox
        Left = 8
        Top = 24
        Width = 769
        Height = 209
        Caption = #1057#1086#1079#1076#1072#1085#1080#1077' '#1092#1072#1081#1083#1072
        Color = clSkyBlue
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 0
        object Label1: TLabel
          Left = 48
          Top = 64
          Width = 130
          Height = 20
          Caption = #1053#1072#1079#1074#1072#1085#1080#1077' '#1092#1072#1081#1083#1072
        end
        object Edit1: TEdit
          Left = 48
          Top = 88
          Width = 209
          Height = 28
          TabOrder = 0
        end
        object Button6: TButton
          Left = 296
          Top = 56
          Width = 169
          Height = 81
          Caption = #1057#1086#1079#1076#1072#1090#1100' '#1092#1072#1081#1083
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          OnClick = Button6Click
        end
      end
      object GroupBox2: TGroupBox
        Left = 8
        Top = 296
        Width = 769
        Height = 193
        Caption = #1054#1090#1082#1088#1099#1090#1080#1077' '#1092#1072#1081#1083#1072
        Color = clSkyBlue
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 1
        object Button7: TButton
          Left = 296
          Top = 56
          Width = 169
          Height = 81
          Caption = #1054#1090#1082#1088#1099#1090#1100' '#1092#1072#1081#1083
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          OnClick = Button7Click
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = #1056#1072#1073#1086#1090#1072' '#1089' '#1079#1072#1087#1080#1089#1103#1084#1080
      ImageIndex = 1
      object Label6: TLabel
        Left = 448
        Top = 88
        Width = 32
        Height = 13
        Caption = 'Label6'
        Visible = False
      end
      object StringGrid1: TStringGrid
        Left = 0
        Top = 104
        Width = 805
        Height = 476
        Align = alBottom
        FixedCols = 0
        RowCount = 100
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect]
        TabOrder = 0
        OnClick = StringGrid1Click
        ColWidths = (
          105
          200
          274
          102
          98)
      end
      object Button3: TButton
        Left = 8
        Top = 24
        Width = 177
        Height = 57
        Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        OnClick = Button3Click
      end
      object Button9: TButton
        Left = 224
        Top = 24
        Width = 217
        Height = 57
        Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1079#1072#1087#1080#1089#1100
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        OnClick = Button9Click
      end
      object Button10: TButton
        Left = 496
        Top = 24
        Width = 177
        Height = 57
        Caption = #1059#1076#1072#1083#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        OnClick = Button10Click
      end
    end
    object TabSheet3: TTabSheet
      Caption = #1055#1086#1082#1086#1079#1072#1090#1100' '#1089#1091#1084#1084#1091' '#1087#1088#1077#1084#1080#1080' '#1087#1088#1086#1076#1072#1074#1094#1072
      ImageIndex = 2
      object Label3: TLabel
        Left = 240
        Top = 144
        Width = 221
        Height = 20
        Caption = #1042#1099#1073#1088#1072#1090#1100' '#1087#1088#1086#1076#1072#1074#1094#1072' '#1080#1079' '#1089#1087#1080#1089#1082#1072
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object ComboBox2: TComboBox
        Left = 240
        Top = 176
        Width = 225
        Height = 28
        Style = csDropDownList
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ItemHeight = 20
        ParentFont = False
        TabOrder = 0
      end
      object Button11: TButton
        Left = 168
        Top = 240
        Width = 353
        Height = 57
        Caption = #1055#1086#1082#1072#1079#1072#1090#1100' '#1089#1091#1084#1084#1091' '#1087#1088#1077#1084#1080#1080' '#1087#1088#1086#1076#1072#1074#1094#1072
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        OnClick = Button11Click
      end
      object GroupBox3: TGroupBox
        Left = 224
        Top = 328
        Width = 265
        Height = 121
        Caption = #1057#1091#1084#1084#1072' '#1087#1088#1077#1084#1080#1080' '#1087#1088#1086#1076#1072#1074#1094#1072
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        object Label4: TLabel
          Left = 48
          Top = 56
          Width = 11
          Height = 20
          Caption = '0'
        end
        object Label5: TLabel
          Left = 152
          Top = 56
          Width = 34
          Height = 20
          Caption = #1088#1091#1073'.'
        end
      end
    end
    object TabSheet4: TTabSheet
      Caption = #1055#1086#1082#1086#1079#1072#1090#1100' '#1090#1086#1074#1072#1088#1099' '#1087#1086' '#1074#1099#1073#1086#1088#1091' '#1087#1088#1086#1076#1086#1074#1094#1072
      ImageIndex = 3
      object Label2: TLabel
        Left = 40
        Top = 16
        Width = 221
        Height = 20
        Caption = #1042#1099#1073#1088#1072#1090#1100' '#1087#1088#1086#1076#1072#1074#1094#1072' '#1080#1079' '#1089#1087#1080#1089#1082#1072
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object StringGrid2: TStringGrid
        Left = 0
        Top = 104
        Width = 805
        Height = 476
        Align = alBottom
        ColCount = 4
        FixedCols = 0
        RowCount = 100
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect]
        TabOrder = 0
        ColWidths = (
          105
          450
          114
          110)
      end
      object ComboBox1: TComboBox
        Left = 40
        Top = 48
        Width = 225
        Height = 28
        Style = csDropDownList
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ItemHeight = 20
        ParentFont = False
        TabOrder = 1
      end
      object Button8: TButton
        Left = 296
        Top = 16
        Width = 369
        Height = 57
        Caption = #1055#1086#1082#1086#1079#1072#1090#1100' '#1090#1086#1074#1072#1088#1099' '#1087#1088#1086#1076#1072#1085#1085#1099#1077' '#1087#1088#1086#1076#1072#1074#1094#1086#1084
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        OnClick = Button8Click
      end
    end
  end
  object OpenDialog1: TOpenDialog
    Filter = 'sale|*.sale'
    Left = 976
  end
end
