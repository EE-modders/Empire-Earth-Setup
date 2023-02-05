; BASS Plugin
; InnoSetup implementation by EnergyCube

#ifndef BassLoopSound
  ; #define BassLoopSound "relative/path/to/sound.flac"
  ; #include "relative/path/to/bass.iss"
  #error 'The include of BASS Plugin need to be done after the declaration of BassLoopSound!'
#endif

#define BASSROOT ExtractFilePath(__PATHFILENAME__)

[Files]
Source: "{#BASSROOT}\x86\bass.dll"; Flags: dontcopy noencryption nocompression; Check: not Is64BitInstallMode
Source: "{#BASSROOT}\x64\bass.dll"; Flags: dontcopy noencryption nocompression; Check: Is64BitInstallMode
Source: "{#BassLoopSound}"; Flags: dontcopy noencryption nocompression

[CustomMessages]
SoundCtrlButtonCaptionSoundOn=Unmute 
SoundCtrlButtonCaptionSoundOff=Mute

[Code]
const  
  BASS_SAMPLE_LOOP = 4;
  BASS_UNICODE = $80000000;
  BASS_ACTIVE_STOPPED = 0;
  BASS_ACTIVE_PLAYING = 1;
  BASS_ACTIVE_STALLED = 2;
  BASS_ACTIVE_PAUSED  = 3;
  BASS_CONFIG_GVOL_STREAM = 5;
const
  #ifndef UNICODE
    EncodingFlag = 0;
  #else
    EncodingFlag = BASS_UNICODE;
  #endif
type
  HSTREAM = DWORD;

function BASS_Init(device: LongInt; freq, flags: DWORD; 
  win: HWND; clsid: Cardinal): BOOL;
  external 'BASS_Init@files:bass.dll stdcall setuponly';
function BASS_StreamCreateFile(mem: BOOL; f: string; offset1: DWORD; 
  offset2: DWORD; length1: DWORD; length2: DWORD; flags: DWORD): HSTREAM;
  external 'BASS_StreamCreateFile@files:bass.dll stdcall setuponly';
function BASS_Start: BOOL;
  external 'BASS_Start@files:bass.dll stdcall setuponly';
function BASS_Pause: BOOL;
  external 'BASS_Pause@files:bass.dll stdcall setuponly';
function BASS_ChannelPlay(handle: DWORD; restart: BOOL): BOOL; 
  external 'BASS_ChannelPlay@files:bass.dll stdcall setuponly';
function BASS_SetConfig(option: DWORD; value: DWORD ): BOOL;
  external 'BASS_SetConfig@files:bass.dll stdcall setuponly';
function BASS_ChannelIsActive(handle: DWORD): DWORD;
  external 'BASS_ChannelIsActive@files:bass.dll stdcall setuponly';
function BASS_Free: BOOL;
  external 'BASS_Free@files:bass.dll stdcall setuponly';
  
var
	InitBass: Boolean;
	SoundStream: HSTREAM;
  Muted: Boolean;
  SoundCtrlButton: TNewButton;

procedure SoundCtrlButtonClick(Sender: TObject);
begin

  if (not InitBass) then
  begin
    Log('Trying to use un/mute button but BASS isn''t init!');
    Exit;
  end;

  if not Muted then
  begin
    if BASS_Pause then
    begin
      SoundCtrlButton.Caption := ExpandConstant('{cm:SoundCtrlButtonCaptionSoundOn}');
      Muted := True;
    end;
  end
    else
  begin
    if BASS_Start then
    begin
      SoundCtrlButton.Caption := ExpandConstant('{cm:SoundCtrlButtonCaptionSoundOff}');
      Muted := False;
    end;
  end;
end;

procedure bassCreateButton;
begin
  if InitBass then
  begin
    Log('Create sound button');
    SoundCtrlButton := TNewButton.Create(WizardForm);
    SoundCtrlButton.Parent := WizardForm; 
    SoundCtrlButton.Left := WizardForm.InnerNotebook.Left / 2; //+ WizardForm.OuterNotebook.Left
    //SoundCtrlButton.Left := WizardForm.ClientWidth - WizardForm.NextButton.Left - WizardForm.NextButton.Width;
    SoundCtrlButton.Top := WizardForm.NextButton.Top;
    SoundCtrlButton.Width := WizardForm.NextButton.Width;
    SoundCtrlButton.Height := WizardForm.NextButton.Height
    SoundCtrlButton.Anchors := [akLeft, akBottom];
    SoundCtrlButton.Caption := ExpandConstant('&{cm:SoundCtrlButtonCaptionSoundOff}');
    SoundCtrlButton.OnClick := @SoundCtrlButtonClick;
  end;
end;

procedure bassPlay;
begin
  if (not InitBass) then
  begin
    Log('Trying to play sound but BASS isn''t init!');
    Exit;
  end;
  Log('Play sound');
  BASS_ChannelPlay(SoundStream, False);
end;


function bassInit: Boolean;
begin
  Result := False;
  Log('Init BASS lib');
  InitBass := BASS_Init(-1, 44100, 0, 0, 0);
  if InitBass then
  begin
    Log('BASS lib init completed, extracting sound...');
    ExtractTemporaryFile('Loop.flac');  
    SoundStream := BASS_StreamCreateFile(False, 
      ExpandConstant('{tmp}\Loop.flac'), 0, 0, 0, 0, 
      EncodingFlag or BASS_SAMPLE_LOOP);
    BASS_SetConfig(BASS_CONFIG_GVOL_STREAM, 2500);
  end else begin
    Log('Unable to init BASS lib');
  end;
  Result := InitBass;
end;

procedure bassFree;
begin
  if (InitBass) then
  begin
    BASS_Free;
    InitBass := False;
  end;
end;