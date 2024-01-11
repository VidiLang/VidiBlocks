// @davidberneda August 2021
unit Unit_Texts;

interface

const
  Vidi_Block_Version='1.0.8';
  Vidi_Text_ScoreFile='Vidi_Blocks_High_Score.txt';
  Vidi_Text_BestScoresFile='Vidi_Blocks_Best_Scores.txt';
  Vidi_Text_SettingsFile='Vidi_Blocks_Settings.txt';
  Vidi_Text_MatchFile='Vidi_Blocks_Match.txt';

var
  Vidi_Text_SureToStop,
  Vidi_Text_GameOver,
  Vidi_Text_Sounds,
  Vidi_Text_LockRotation,
  Vidi_Text_Version,
  Vidi_Text_Settings,
  Vidi_Text_PlayAgain

  :String;

procedure SetLanguage(const ALanguage:String);

implementation

procedure SetLanguage(const ALanguage:String);
begin
  if ALanguage='ca' then
  begin
    Vidi_Text_SureToStop:='Segur que vols sortir?';
    Vidi_Text_GameOver:='JOC ACABAT';
    Vidi_Text_Sounds:='Sons';
    Vidi_Text_LockRotation:='Bloqueig rotaci�';
    Vidi_Text_Version:='Versi�';
    Vidi_Text_Settings:='Ajustaments';
    Vidi_Text_PlayAgain:='JUGAR';
  end
  else
  if ALanguage='es' then
  begin
    Vidi_Text_SureToStop:='�Seguro que quieres salir?';
    Vidi_Text_GameOver:='JUEGO TERMINADO';
    Vidi_Text_Sounds:='Sonidos';
    Vidi_Text_LockRotation:='Bloqueo rotaci�n';
    Vidi_Text_Version:='Versi�n';
    Vidi_Text_Settings:='Ajustes';
    Vidi_Text_PlayAgain:='JUGAR';
  end
  else
  // English
  begin
    Vidi_Text_SureToStop:='Are you sure to stop?';
    Vidi_Text_GameOver:='GAME OVER';
    Vidi_Text_Sounds:='Sounds';
    Vidi_Text_LockRotation:='Lock Rotation';
    Vidi_Text_Version:='Version';
    Vidi_Text_Settings:='Settings';
    Vidi_Text_PlayAgain:='PLAY';
  end;
end;

initialization
  SetLanguage('en');
end.
