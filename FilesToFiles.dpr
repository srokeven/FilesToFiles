program FilesToFiles;

uses
  Vcl.Forms,
  uMain in 'uMain.pas' {fmMainFiles},
  uManipuladorDeArquivos in 'Utilitarios\uManipuladorDeArquivos.pas',
  uFiltroRegistrosInterface in 'interfaces\uFiltroRegistrosInterface.pas';

{$R *.res}

begin
  {$IFDEF DEBUG}
  ReportMemoryLeaksOnShutdown := True;
  {$ENDIF}
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfmMainFiles, fmMainFiles);
  Application.Run;
end.
