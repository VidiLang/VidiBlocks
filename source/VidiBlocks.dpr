// @davidberneda June 2023
program VidiBlocks;

uses
  System.StartUpCopy,
  FMX.Forms,
  FMX.Skia,
  Unit_Blocks in 'Unit_Blocks.pas' {FormMain},
  Unit_Settings in 'Unit_Settings.pas' {FormSettings},
  Unit_Texts in 'Unit_Texts.pas',
  Vidi_FMX in '..\..\..\SharedUnits\Vidi_FMX.pas',
  Unit_Animate in '..\..\Unit_Animate.pas',
  Unit_Game in '..\..\Unit_Game.pas',
  Vidi_Graphics in '..\..\Vidi_Graphics.pas',
  Vidi_Game in 'Vidi_Game.pas',
  Vidi_Canvas in '..\..\Vidi_Canvas.pas',
  Unit_Sounds in '..\..\Unit_Sounds.pas',
  Unit_BestScores in 'Unit_BestScores.pas' {FormScores};

{$R *.res}

begin
  GlobalUseSkia := True;
  {$IFOPT D+}
  ReportMemoryLeaksOnShutdown:=True;
  {$ENDIF}

  Application.Initialize;
  Application.CreateForm(TFormMain, FormMain);
  Application.Run;
end.
