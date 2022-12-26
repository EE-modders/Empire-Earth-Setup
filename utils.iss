[Code]
// Yeah... Too much complex to be by default in IS Pascal I guess...
function StrSplit(Text: String; Separator: String): TArrayOfString;
var
  i, p: Integer;
  Dest: TArrayOfString; 
begin
  i := 0;
  repeat
    SetArrayLength(Dest, i+1);
    p := Pos(Separator,Text);
    if p > 0 then begin
      Dest[i] := Copy(Text, 1, p-1);
      Text := Copy(Text, p + Length(Separator), Length(Text));
      i := i + 1;
    end else begin
      Dest[i] := Text;
      Text := '';
    end;
  until Length(Text)=0;
  Result := Dest
end;

function GetUninstallRegPath(Reverse: Boolean): String;
begin
  if not Reverse then
  begin
    Result := 'Software\Microsoft\Windows\CurrentVersion\Uninstall\{#SetupSetting("AppId")}_is1';
  end else begin 
#if InstallType == "EE"
    Result := 'Software\Microsoft\Windows\CurrentVersion\Uninstall\{{#NeoEE_AppID}}_is1';
#elif InstallType == "NeoEE" 
    Result := 'Software\Microsoft\Windows\CurrentVersion\Uninstall\{{#EE_AppID}}_is1';
#else
  #error "Unknown Install Type"
#endif
  end;
end;

function IsAnotherGameInstalled(): Boolean;
begin
  Result := False;
  if RegValueExists(HKA, GetUninstallRegPath(True), 'UninstallString')
  then begin
    Result := True;
  end;
end;

function IsGameInstalled(): Boolean;
begin
  Result := False;
  if RegValueExists(HKA, GetUninstallRegPath(False), 'UninstallString')
  then begin
    Result := True;
  end;
end;

// Return HTTP code or -1 if error
function SendRequest(const URL: String): Integer;
var
  WinHttpRequest: Variant;
  Https: Boolean;
begin
  Result := -1;
  Https := False;

  if (Pos('https://',  URL) <> 0) then
    Https := True;

  // if (Https and not IsWindowsXPOrNewer()) // Force HTTP usage for < XP
  //  StringChangeEx(URL, 'https', 'http', True)

  Log('Sending request: ' + URL + ' (HTTPS: ' + IntToStr(Integer(Https)) + ')');

  try
    WinHttpRequest := CreateOleObject('WinHttp.WinHttpRequest.5.1'); // 5.0 for < Win2000 SP3 / WinXP SP1 ?
    WinHttpRequest.SetTimeouts(8000, 8000, 8000, 8000);
    WinHttpRequest.Open('GET', URL, False);
    WinHttpRequest.Send;
    WinHttpRequest.WaitForResponse();
    Result := WinHttpRequest.Status;
    Log('Status: ' + IntToStr(Result));
  except
    Log('Failed request: ' + URL);
    Log(GetExceptionMessage);
    Result := -1;
    if (Https) then
    begin
      Log('URL was using HTTPS, trying HTTP as fallback...');
      StringChangeEx(URL, 'https', 'http', True);
      Result := SendRequest(URL);
    end;
  end;
end;

function DownloadString(const URL: string; var Response: string): Integer;
var
  WinHttpRequest: Variant;
  Https: Boolean;
begin
  Result := -1; 
  Https := False;

  if (Pos('https://',  URL) <> 0) then
    Https := True;
  
  Log('Downloading string: ' + URL + ' (HTTPS: ' + IntToStr(Integer(Https)) + ')');

  try
    Response := '';
    WinHttpRequest := CreateOleObject('WinHttp.WinHttpRequest.5.1'); // 5.0 for < Win2000 SP3 / WinXP SP1 ?
    WinHttpRequest.SetTimeouts(10000, 5000, 5000, 5000);
    WinHttpRequest.Open('GET', URL, False);
    WinHttpRequest.Send;
    WinHttpRequest.WaitForResponse(); 
    Result := WinHttpRequest.Status;
    Response := WinHttpRequest.ResponseText;
    Log('Downloaded string: ' + URL + ' [Code: ' + IntToStr(Result) + ', Length: ' + IntToStr(Length(Response)) + ']');
  except
    Log('Failed to download: ' + URL);
    Log(GetExceptionMessage);
    Result := -1;
    if (Https) then
    begin
      Log('URL was using HTTPS, trying HTTP as fallback...');
      StringChangeEx(URL, 'https', 'http', True);
      Result := DownloadString(URL, Response);
    end;
  end;
end;