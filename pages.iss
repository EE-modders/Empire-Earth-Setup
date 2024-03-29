[Code]

// Read Selected Components to try to find the language
function GetSelectedLanguageFromRegistry(): String;
var
  i: Integer;
begin
  RegQueryStringValue(HKA, GetUninstallRegPath(False), 'Inno Setup: Selected Components', Result);
  if (Result = '') then
  begin
    Result := 'en';
    Exit;
  end;

  for i := 0 to Langs.Count - 1 do
  begin
    if (Pos('language\' + Langs[i], Result) > 0) then
    begin
      Result := Langs[i];
      Exit;
    end;
  end;
end;


procedure SetupLanguagePage;
var
  i: Integer;
  SuccessufllySelected: Boolean;
begin
  // Language page
  Log('Create language page');
  LanguageInstallQuestionPage := CreateInputOptionPage(wpSelectDir,
    ExpandConstant('{cm:LIQP_Title}'), ExpandConstant('{cm:LIQP_Desc}'),
    ExpandConstant('{cm:LIQP_Content}'), True, True);

  // Register all langs to the page
  // Auto select the language in the list from the one used by the OS
  SuccessufllySelected := False;
  for i := 0 to Langs.Count - 1 do
  begin
    LanguageInstallQuestionPage.AddEx({ '&' + } ExpandConstant('{cm:LIQP_' + Langs[i] + '}'), 0, True);
    if (Langs[i] = ActiveLanguage) then
    begin
      LanguageInstallQuestionPage.Values[i] := True;
      SuccessufllySelected := True;
      // Break; not break, because we want to register all langs to the page
    end;
  end;

  // If the language is not found, select english
  if (not SuccessufllySelected) then
  begin
    for i := 0 to Langs.Count - 1 do
    begin
      if (Langs[i] = 'en') then
      begin
        LanguageInstallQuestionPage.Values[i] := True;
        SuccessufllySelected := True;
        Break;
      end;
    end;
  end;

  // If game is installed, try to find the language from the registry
  if (IsGameInstalled()) then
  begin
    for i := 0 to Langs.Count - 1 do
    begin
      if (Langs[i] = GetSelectedLanguageFromRegistry()) then
      begin
        LanguageInstallQuestionPage.Values[i] := True;
        SuccessufllySelected := True;
        Break;
      end;
    end;
  end;

  // Last resort, select the first language in the list
  if (not SuccessufllySelected) then
    LanguageInstallQuestionPage.Values[0] := True;

end;

procedure SetupManualCustomInstallPage;
begin
// Manual or custom install page
  Log('Create install manual/custom page');
  ManualInstallQuestionPage :=
    CreateInputOptionPage(LanguageInstallQuestionPage.ID, ExpandConstant('{cm:MIQP_Title}'),
      ExpandConstant('{cm:MIQP_Desc}'), ExpandConstant('{cm:MIQP_Content}'), True, False);

  ManualInstallQuestionPage.AddEx('&' + ExpandConstant('{cm:MIQP_Recommanded}'), 1, True);
  ManualInstallQuestionPage.AddEx('&' + ExpandConstant('{cm:MIQP_Recommanded_EE}'), 1, True);
  ManualInstallQuestionPage.AddEx('&' + ExpandConstant('{cm:MIQP_Recommanded_EE_AoC}'), 1, True);  
  ManualInstallQuestionPage.AddEx('&' + ExpandConstant('{cm:MIQP_Custom}'), 0, True);
  ManualInstallQuestionPage.Values[0] := True; 
  ManualInstallQuestionPage.Values[1] := True;

  if (IsGameInstalled()) then
  begin
    if (WizardIsUpdate()) then
      ManualInstallQuestionPage.AddEx('&' + ExpandConstant('{cm:MIQP_Update}'), 0, True)
    else
      ManualInstallQuestionPage.AddEx('&' + ExpandConstant('{cm:MIQP_Repair}'), 0, True);
    ManualInstallQuestionPage.Values[4] := True;
  end;

  
  ManualInstallQuestionPage.AddEx('&' + ExpandConstant('{cm:MIQP_Telemetry}'), 0, False);
  if (WizardIsComponentInstalledMultiSetup('additional\telemetry')) then
  begin
    if (IsGameInstalled()) then 
      ManualInstallQuestionPage.Values[5] :=  WizardIsComponentInstalledMultiSetup('additional\telemetry')
    else
      ManualInstallQuestionPage.Values[4] := WizardIsComponentInstalledMultiSetup('additional\telemetry');
  end;
end;

procedure SetupGPUInstallPage;
var
  VendorId: String;
begin
  // GPU vendor slector page
  Log('Create GPU DirectX Wrapper selection');
  GPUInstallQuestionPage :=
    CreateInputOptionPage(ManualInstallQuestionPage.ID, ExpandConstant('{cm:GPUIQP_Title}'),
      ExpandConstant('{cm:GPUIQP_Desc}'), ExpandConstant('{cm:GPUIQP_Content}'), True, False);

  GPUInstallQuestionPage.Add('&' + ExpandConstant('{cm:GPUIQP_NVIDIA}') + ' (DirectX Wrapper 11 API 11)');
  if (IsWindows10OrNewer) then
    GPUInstallQuestionPage.Add('&' + ExpandConstant('{cm:GPUIQP_AMD}') + ' (DirectX Wrapper 11 API 11)')
  else                                                                                         
    GPUInstallQuestionPage.Add('&' + ExpandConstant('{cm:GPUIQP_AMD}') + ' (DirectX Wrapper 11 API 10.1)');
  GPUInstallQuestionPage.Add('&' + ExpandConstant('{cm:GPUIQP_Intel}' + ' (DirectX Wrapper 11 API 10.1)'));
  GPUInstallQuestionPage.Add('&' + ExpandConstant('{cm:GPUIQP_Default}' + ' (DirectX Wrapper 9)'));
  GPUInstallQuestionPage.Add('&Native');

  VendorId := String(EEStats_getGpuVendorId());

  if (VendorId = '10DE') then
  begin
    Log('NVIDIA GPU detected');
    GPUInstallQuestionPage.Values[0] := True
  end else if (VendorId = '1002') then
  begin
    Log('AMD GPU detected');
    GPUInstallQuestionPage.Values[1] := True
  end else if (VendorId = '8086') then
  begin
    Log('Intel GPU detected');
    GPUInstallQuestionPage.Values[2] := True
  end else
  begin
    Log('Unknown GPU detected');
    GPUInstallQuestionPage.Values[3] := True
  end;

end;