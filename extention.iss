[Code]
// Inno Setup Extention Code
// Because I needed more Wizard related functions

function WizardContainsParam(Param: String): Boolean;
var
  i: Integer;
begin
  Result := False;
  for i := 1 to ParamCount do
  begin
    if UpperCase(ParamStr(i)) = UpperCase(Param) then
    begin
      Result := True;
      Break;
    end;
  end;
end;

function SilentInstall(): Boolean;
begin
  // Log('SUPPRESSMSGBOXES: ' + IntToStr(WizardContainsParam('/SUPPRESSMSGBOXES')));
  // Log('VERYSILENT: ' + IntToStr(WizardContainsParam('/VERYSILENT'));
  // Log('SILENT: ' + IntToStr(WizardSilent);
  Result := (WizardContainsParam('/SUPPRESSMSGBOXES') or WizardContainsParam('/VERYSILENT') or WizardSilent);
end;

function WizardIsTaskInstalledMultiSetup(Task: String): Boolean;
var
  I: Integer;
  Tmp: String;
  ArrayTmp: TArrayOfString;
begin
  Result := False;
  if RegQueryStringValue(HKA, GetUninstallRegPath(False), 'Inno Setup: Selected Tasks', Tmp) then
  begin
    ArrayTmp := StrSplit(Tmp, ',');
    for I := 0 to high(ArrayTmp) do 
    begin
      if Pos(Task, ArrayTmp[I]) > 0 then
      begin
        Result := True;
        Break;
      end;
    end;
  end;
  
  if RegQueryStringValue(HKA, GetUninstallRegPath(True), 'Inno Setup: Selected Tasks', Tmp) then
  begin
    ArrayTmp := []; 
    ArrayTmp := StrSplit(Tmp, ',');
    for I := 0 to high(ArrayTmp) do 
    begin
      if Pos(Task, ArrayTmp[I]) > 0 then
      begin
        Result := True;
        Break;
      end;
    end;
  end;
end;

function WizardIsTaskInstalled(Task: String): Boolean;
var
  I: Integer;
  Tmp: String;
  ArrayTmp: TArrayOfString;
begin
  Result := False;
  if RegQueryStringValue(HKA, GetUninstallRegPath(False), 'Inno Setup: Selected Tasks', Tmp) then
  begin
    ArrayTmp := StrSplit(Tmp, ',');
    for I := 0 to high(ArrayTmp) do 
    begin
      if Pos(Task, ArrayTmp[I]) > 0 then
      begin
        Result := True;
        Break;
      end;
    end;
  end;
end;

function WizardIsComponentInstalledMultiSetup(Compo: String): Boolean;
var
  I: Integer;
  Tmp: String;
  ArrayTmp: TArrayOfString;
begin
  Result := False;
  if RegQueryStringValue(HKA, GetUninstallRegPath(False), 'Inno Setup: Selected Components', Tmp) then
  begin
    ArrayTmp := StrSplit(Tmp, ',');
    for I := 0 to high(ArrayTmp) do 
    begin
      if Pos(Compo, ArrayTmp[I]) > 0 then
      begin
        Result := True;
        Break;
      end;
    end;
  end;
  
  if RegQueryStringValue(HKA, GetUninstallRegPath(True), 'Inno Setup: Selected Components', Tmp) then
  begin
    ArrayTmp := [];
    ArrayTmp := StrSplit(Tmp, ',');
    for I := 0 to high(ArrayTmp) do 
    begin
      if Pos(Compo, ArrayTmp[I]) > 0 then
      begin
        Result := True;
        Break;
      end;
    end;
  end;
end;

function WizardIsComponentInstalled(Compo: String): Boolean;
var
  I: Integer;
  Tmp: String;
  ArrayTmp: TArrayOfString;
begin
  Result := False;
  if RegQueryStringValue(HKA, GetUninstallRegPath(False), 'Inno Setup: Selected Components', Tmp) then
  begin
    ArrayTmp := StrSplit(Tmp, ',');
    for I := 0 to high(ArrayTmp) do 
    begin
      if Pos(Compo, ArrayTmp[I]) > 0 then
      begin
        Result := True;
        Break;
      end;
    end;
  end;
end;

// Very dirty, because sadly the setup don't store it's own version
// It only store the game product version... For some reason IS don't
// store the setup version but it's own version as 'Inno Setup: Setup Version'...
// So we have the choice, create a new regedit key just for that purpose or
// simply compare if the setup name is different (because *this* setup name is
// formated as 'ProductName ProductVersion - Setup SetupVersion').
function WizardIsUpdate(): Boolean;
var
  Tmp: String;
  LocalVersionName: String;
begin
  Result := False;
  if RegQueryStringValue(HKA, GetUninstallRegPath(False), 'DisplayName', Tmp) then
  begin
    LocalVersionName := ExpandConstant('{#SetupSetting("AppVerName")}');
    if CompareText(Tmp, LocalVersionName) <> 0 then
      Result := True;
  end; 
end;

// WARNING
// A little unsafe since the result depend on the IS version (manifest)
// IS 5 will probably be unable to report more than Win 8
// IS 6+ will probably be unable to report more than Win 10
function IsWindowsVersionOrNewer(Major, Minor: Integer): Boolean;
var 
  Version: TWindowsVersion;
begin
  GetWindowsVersionEx(Version);
  Result :=
    (Version.Major > Major) or
    ((Version.Major = Major) and (Version.Minor >= Minor));
end;

function IsWindows10OrNewer: Boolean;
begin
  Result := IsWindowsVersionOrNewer(10, 0);
end;

function IsWindowsXPOrNewer: Boolean;
begin
  Result := IsWindowsVersionOrNewer(5, 1);
end;