unit uMain;

interface

uses
  Winapi.Windows,
  Winapi.Messages,

  System.SysUtils,
  System.Classes,

  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.StdCtrls;

type
  TfrmMain = class(TForm)
    btnQueue: TButton;
    eLog: TMemo;
    btnStack: TButton;
    btnDiagnostics: TButton;
    procedure btnQueueClick(Sender: TObject);
    procedure btnStackClick(Sender: TObject);
    procedure btnDiagnosticsClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}

uses
  System.Generics.Collections,
  System.Diagnostics;

procedure TfrmMain.btnQueueClick(Sender: TObject);
begin
  var LQueue := TQueue<Integer>.Create;
  try
    var LStopWatch := TStopWatch.StartNew;
    for var i := 1 to 1000000 do
    begin
      LQueue.Enqueue(i);
    end;

    for var i := 1 to 1000000 do
    begin
      LQueue.Dequeue;
    end;

    LStopWatch.Stop;
    eLog.Lines.Add(LStopWatch.ElapsedMilliseconds.ToString);
    eLog.Lines.Add(LQueue.Count.ToString);
  finally
    LQueue.Free;
  end;
end;

procedure TfrmMain.btnStackClick(Sender: TObject);
begin
  var LStack := TStack<Integer>.Create;
  try
    var LStopWatch := TStopWatch.StartNew;
    for var i := 1 to 1000000 do
    begin
      LStack.Push(i);
    end;

    for var i := 1 to 1000000 do
    begin
      LStack.Pop;
    end;

    LStopWatch.Stop;
    eLog.Lines.Add(LStopWatch.ElapsedMilliseconds.ToString);
    eLog.Lines.Add(LStack.Count.ToString);
  finally
    LStack.Free;
  end;
end;

procedure TfrmMain.btnDiagnosticsClick(Sender: TObject);
begin
  var LList := TList<Integer>.Create;
  try
    var LStopWatch := TStopWatch.StartNew;
    for var i := 1 to 1000000 do
    begin
      LList.Add(i);
    end;

    for var i := 1 to 1000000 do
    begin
      LList.Delete(0);
    end;

    LStopWatch.Stop;
    eLog.Lines.Add(LStopWatch.ElapsedMilliseconds.ToString);
    eLog.Lines.Add(LList.Count.ToString);
  finally
    LList.Free;
  end;
end;

end.
