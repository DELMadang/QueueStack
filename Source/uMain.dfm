object frmMain: TfrmMain
  Left = 0
  Top = 0
  Caption = #51088#47308#44396#51312' '#53580#49828#53944
  ClientHeight = 280
  ClientWidth = 534
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object btnQueue: TButton
    Left = 8
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Queue'
    TabOrder = 0
    OnClick = btnQueueClick
  end
  object eLog: TMemo
    Left = 8
    Top = 39
    Width = 521
    Height = 233
    TabOrder = 1
  end
  object btnStack: TButton
    Left = 89
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Stack'
    TabOrder = 2
    OnClick = btnStackClick
  end
  object btnDiagnostics: TButton
    Left = 170
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Diagnostics'
    TabOrder = 3
    OnClick = btnDiagnosticsClick
  end
end
