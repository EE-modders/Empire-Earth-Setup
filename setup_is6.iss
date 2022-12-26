; ---------------------------------------
;      By EnergyCube#7471 2020-2023
;      Empire Earth Community Setup      
;     GNU General Public License v3.0
; ---------------------------------------
;   Reborn : discord.com/invite/BjUXbFB
; --------------------------------------- 
; Don't change the UTF-8 BOM encoding!
; UTF-8 doesn't preserve all characters
; ---------------------------------------
;                 Credit
; ---------------------------------------
; Translations :
;  German   : xXxJannik#0001, AmbozZ_Ger#3847
;  French   : EnergyCube#7471
;  Polish   : Dr.MonaLisa#9523, jorrr1#1558
;  Italian  : Âgræl#9008
;  Spanish  : IvaN#9233, Kurt Z#8222
;  Russian  : FC_Fan#8831
;  Others   : DeepL / DuckDuckGo Translator
; ---------------------------------------
; External Dep. 
;   InnoSetup Downloader Plugin (download files + support mirrors), BASS (audio module)
; Additinal Content
;   Omega (Patch & Neo Content Patch), yukon aka. drex (dreXmod.dll)
;   Dege (DX Wrapper: dgVoodoo), GOG (DX Wrapper), zocker_160 & EnergyCube (Reborn.dll)
; Other Help
;   CyrentiX#1219 (Compatibility), xq_happy#7140 (Compatibility & Chinese files) jorrr1#1558 (Polish files)
;   giord#4697 (Content, Compatibility), IvaN#9233 (Spanish files), FC_Fan#8831 (Russian files)
;   Every members of EE:Reborn team and and all others I may have forgotten :>
; ---------------------------------------
;  Notes  | Empire Earth is very sensitive to version change (which leads to multiplayer incompatibility),
;   for   | some modders might be interested in using this setup to deliver their mods. Please do not do
; Modders | this unless you have created a really popular and functional modpack. We must avoid creating
;         | multiple versions of the game to avoid fracturing the community.
; --------------------------------------- 
;  Notes  | Since the script is licensed under the GNU GPL v3 you have every right to modify the setup script
;   for   | to generate your own versions, but you must also publish the source code of the script.
;   Dev   | So I invite you to fork this project if you want and I pray you don't forget that we have to do
;         | everything to unite the community around the world, if you have ideas of modifications to do don't
;         | hesitate to make suggestions, I also invite you to make pull requests if you think you have done
;         | something that deserves to be in this script. The version of the script I'm distributing should
;         | become the standard to facilitate future installations. I hope you understand the objective and
;         | how necessary and helpful it is for everyone.
;         | If you think something is wrong, don't hesitate to tell me!
; ---------------------------------------
;              Release Note
; ---------------------------------------
; 1.0.0.0 | Initial Version
;         |--------- 16/02/2022 ----------
;         | EE & AoC (in 11 languages)    
;         | Support NeoEE, dreXmod, Omega content 
;         | Support NeoEE CDKey generation (Admin)
;         | Download localized content online (support mirror)
;         | Online update checker (support mirror)
;         | DirectX Wrapper (DX9 with GOG dll and DX12 with dgVoodoo dll)
;         | Better compatibility with additonal flags
;         | HD Content with FortuKing textures 
;         | Registered in Firewall (Admin)  
;         | DirectX 9 Install (when using DirectX Wrapper for DirectX 9) 
;         | Removable Movies
;         | Digitally signed
;         |-------------------------------
;         | DX11 (API 10 & 11) has been disabled. It is obviously impossible to fix the bug related to the
;         | full screen of the lobby (which puts the main window in window).
;         | Reborn.dll is currently disabled because of a bug that makes it unusable with dgVoodoo (or makes
;         | the window bug occur even with DirectX 12).
;         | Since after analysis the binaries of GOG and the one of the 2002 Empire Earth crack are identical
;         | the installation mode of the GOG binary has been removed since it is useless (its equivalent is to
;         | simply use the DirectX Wrapper of DirectX 9)
; ----------------------------------------
; 1.0.0.1 | NeoEE version fix
;         |--------- 17/02/2022 ----------
;         | Fixed invalid regedit path for NeoEE (Installed From Directory was reversed)
;         | Deleted old NeoEE integrated updater
; ----------------------------------------
; 1.0.1.0 | NeoEE CDKeys user support, fixed Regedit and added new tool
;         |--------- 20/02/2022 ----------
;         | Patched authtools.exe to install CDKeys in HKCU (now there is 2 authtools bin)
;         | Patched EE & AoC to read CDKeys in HKCU (now there is 2 Neo EE/AoC bin)   
;         | Fixed wrong regedit compatibility delete that was deleting the entire (Layers) key  
;         | Reworked compatibility flags, with fewer flags and better admin rights                  
;         | Added Empire Earth Diagnostic, a simple tool giving install informations (.NET 4) 
;         | Better certificate uninstall (check if another game is instaleld)
;         | Allow to install the certificate as user
;         | Redirected chinese traditional setup messages to chinese
; ----------------------------------------
; 1.0.2.0 | NeoEE Map fix, new HD content inc. icons with/witout letters
;         |--------- 06/03/2022 ----------
;         | Fixed invalid maps on NeoEE
;         | Fixed EE:Diagnostic error while EE running
;         | Reworked WON Lobby Dialog images
;         | Added tips for recommanded multiplayer max pop for NeoEE
;         | Updated HD Icons by Fortuking
;         | Added some HD terrain textures from Yukon mod 
;         | Better file clean-up (OOS, UPnP)
;         | Reworked Omega content management in the Setup
; ----------------------------------------
; 1.0.3.0 | eC Civs update, lobby regist. for Gen Z, fixed Linux setup crash, easy install mode and CD Keys/Install repair
;         |--------- 14/04/2022 ----------  
;         | Updated eC civs thanks to Kazter
;         | Added back the NeoEE Updater because it could still be required
;         | NeoEE registration now allow year up to 3000 (was limited to 1999)
;         | Fixed NeoEE Admin binary headers
;         | Added a new page in the setup to install with default options (easy) or custom options
;         | Added a new page for default options to select GPU vendor to try to apply settings
;         | Renamed 'Game Intro' to 'Install intro videos' to avoid that people don't understand
;         | Updated HD Icons by Fortuking
;         | CD Keys now display an error message when fail
;         | Installation step has been reworked to use safer IS function instead of the page ID
;         | Components/Tasks now split the elements rather than stupidly looking for a match in the whole reg list as string 
;         | Added back dgVoodoo DX 11 config and more stable DX 12 thanks to Giord (also removed useless dgVoodoo dlls files)
;         | Fixed AoC directory creation when not installing it while using DirectX Wrapper
;         | Reworked gold corners of IG interface (isn't in HD content, it's by default)
;         | Removed already installed warning
;         |------------------------------- 
;         | I am still shocked by the results of the first round of the presidential
;         | election of the French Republic, so there can be errors of innatention in the code...
; ----------------------------------------
; 1.0.4.0 | Better support for Wine and ARM, added Telemetry (+possibility to accept/refuse) and dreXmod 3
;         |--------- 24/12/2022 ----------
;         | Added Empire Earth Stats v1.0.4 
;         | Added dreXmod v3 (yeah, I'm not kidding, it's finally released) 
;         | Now able to agree or reject tracking for dreXmod and EES!
;         | More secure files and folder permissions, only Data/Users can be edited by anyone (avoid non-admin to add/edit dll to game dir) 
;         | Show update and not repair when a setup version different from the one already installed is started
;         | EE Diag is no more selected by default with Wine
;         | Fixed invalid regedit path not overwrited when not created by the setup (Sierra Setup create but don't delete it...)
;         | Fixed Wine detection, the setup was reading the registry, we are now using a dll that call ntdll.dll -> wine_get_version
;         | Disabled compatibiliy, firewall, certutil and file permissions flags for Wine (was useless and speed up the install process)
;         | Removed Retail/GOG text on EE/AoC banners since we only use Retail
;         | Less visible EE black border in startup banner and reduced EnergyCube logo opacity
;         | Added Setup mutex to avoid multiple instance running at the same time
;         | Reworked the Setup code and reorganized some parts because the code was getting really messy
;         | Added ARM support (tested on Windows 11 ARM64 Parallels Desktop)
;         | Fixed regedit entry for Wine installations (created even without using AoC for ex.)
;         | Added EE and AoC Polish campain thanks to jorrr1#1558
; ----------------------------------------

; SETUP SETTINGS

#define MySetupVersion "1.0.4.0"
#define MyAppGroupName "Empire Earth" 

; InstallMode : Regular / Portable
#define InstallMode "Regular"

; InstallType : EE / NeoEE
#define InstallType "EE"

; Sign Setup/Uninstall

; Note: Signing the setup allows you to avoid the warning messages of Windows (saying that it would be
;       a virus...). This certificate is not free because everyone knows that trust can be bought...
;       However, when a user installs a signed version of the setup, by default he installs the joint
;       certificate on his computer (if CertInclude = true + user confirmation). If you want to use
;       the community certificate, contact me on discord, I will sign your setup after a verification.
#define SignSetup false

#if SignSetup 
  ; Install Cert
  #define CertInclude true
  ; Cert File Name (Need to be in ./data)
  #define CertFileName "cert_name.crt" 
  ; Cert Hash SHA1 (very important, needed to uninstall the cert)
  #define CertHashSHA1 ""
#else
  #define CertInclude false
#endif

; Regedit
#if InstallType == "EE"
  #define BaseRegEE = "Software\SSSI\Empire Earth"
  #define BaseRegAoC = "Software\Mad Doc Software\EE-AOC"
#elif InstallType == "NeoEE"
  #define BaseRegEE = "Software\Neo\Empire Earth"
  #define BaseRegAoC = "Software\Neo\Art of Conquest"
#else
  #error Unsupported Install Type
#endif
#define BaseRegCompatibility = "Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers"

; TestID (0 if Release)
#define TestID = 0

; END SETUP SETTINGS

; Reminder
; Update MyAppVersion if the update is a game update
; Update MySetupVersion if the update is a setup update
; Update MySetupVersion if updating MyAppVersion only if the setup is really updated
; When releasing a new MySetupVersion, it should be distribued for both EE & Neo
; MySetupVersion is a good way to know the features of the setup, meaning that EE & Neo should share the same version !

#define EE_AppID "4C0B46D8-E7EB-4B95-97D4-A578D9B914C6"
#define NeoEE_AppID "A24FCC7A-5491-4FEA-837B-4E4430C349DA"

#if InstallType == "EE"
  #define AppID EE_AppID
  #define MyAppVersion "2.0.0.0"
  #define MyAppName "Empire Earth" 
  #define MyAppPublisher "Empire Earth Community"
  #define MyAppURL "https://empireearth.eu/"
  #define MyInstallDirName "Empire Earth"
  #define MySetupPassword "ee"
#elif InstallType == "NeoEE"
  #define AppID NeoEE_AppID
  #define MyAppVersion "2.0.0.5" 
  #define MyAppName "NeoEE"
  #define MyAppPublisher "Empire Earth Community & NeoEE"
  #define MyAppURL "https://www.neoee.net/"
  #define MyInstallDirName "Neo Empire Earth"
  #define MySetupPassword "neo"
#else
  #error Unsupported Install Type
#endif

; AppId: Tools > Generate GUID
; Be very carefull to AppId, it's like the unique id of the setup, be sure to generate it with inno setup
; the first time you distribute your setup and to keep it forever for the setup !
; So since it's a unique setup id, EE & NeoEE must have different AppId !

[Setup]
; SignTool: We need to use InnoSetup SignTool feature to sign install/uninstall etc...
AppId={{{#AppID}}
#if InstallType == "EE"
  SetupIconFile=./data/Empire Earth Base/Empire Earth/game.ico
  WizardSmallImageFile=internal\media\WizardSmallImageFileEE.bmp
  #if SignSetup
    SignTool=NameInInnoSetupEE $f
  #endif
#elif InstallType == "NeoEE"
  SetupIconFile=./data/NeoEE Base/Empire Earth/neoee.ico
  WizardSmallImageFile=internal\media\WizardSmallImageFileNeo.bmp
  #if SignSetup
    SignTool=NameInInnoSetupNeo $f
  #endif
#endif
SetupMutex={#InstallType}_Setup
; Sadly for some reasons, they are always reported as running... Don't ask me why I have no idea
; In all my C++ code I done they work fine but I just can't figure out why they are always reported active
; AppMutex=StainlessSteelStudiosPresentsEmpireEarth,MadDocSoftwarePresentsEmpireEarthExpansion
AppName={#MyAppName}
AppVersion={#MyAppVersion}
VersionInfoProductVersion={#MyAppVersion}
VersionInfoVersion={#MySetupVersion}
VersionInfoCopyright={#MyAppPublisher}
AppVerName={#MyAppName} v{#MyAppVersion} - Setup v{#MySetupVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultGroupName={#MyAppGroupName}
AllowNoIcons=yes
LicenseFile=./data/Empire Earth Base/Empire Earth/EULA_DSML.txt
#if InstallType == "NeoEE"
  InfoBeforeFile=./data/NeoEE Base/Empire Earth/neoee_rules.rtf
#endif
InfoAfterFile=./data/Empire Earth Base/Empire Earth/help.rtf
OutputDir=./out
; lzma2/max = 32mo of ram (noticed 42mo on W10 & XP)
; Since EE need 64mo (including Windows), lzma2/max is the maximum compression
#if TestID == 0
  Compression=lzma2/max
#else                  
  Compression=zip/1
#endif
SolidCompression=no
LZMAUseSeparateProcess=yes    
WizardImageFile=internal\media\SetupBanner.bmp
WindowVisible=True
WindowResizable=False
WindowShowCaption=False
UninstallDisplayIcon={uninstallexe}
DirExistsWarning=no

#if Ver >= EncodeVer(6, 0, 0)
  WizardStyle=modern
#else
  WizardStyle=classic
#endif

; Windows 10/11 ARM
; EE working on ARM thanks to the Windows x86 to ARM translation
; By not defining ArchitecturesAllowed IS will allow the setup to run
; on any machine supporting x86 (so ARM emulation will work)
; So never uncomment that line unless we want to restrict the install to some arch
; ArchitecturesAllowed=x86 x64 arm64

; I have condemned myself forever to use this option...
; I don't need it at all but I didn't understand how ArchitecturesAllowed works
; So I had to use it to avoid regedit redirection in WOW6432Node on x64
; I should have used IsWin64 and HK[...]64 or not IsWin64 and HK[...]32
ArchitecturesInstallIn64BitMode=x64 arm64 ia64 

; Warning for MinVersion < 6.1sp1
; From IS 6, Windows < 6.1sp1 has been disabled for security reasons.
; We can force it to support from Windows 6.0 (Vista) but that's *insecure*
; Keeping that security is okay I think, creating a legacy setup with IS 5
; would be the real solution for that problem since it's clearly 'legacy'
; MinVersion=6.0

; If for any reason, Setup is reported to be a virus uncomment this to crypt files...
; The setup will display the password when asked to the user :)
; Also the setup should work, remember that any ressources used befoare the password
; validation need the 'noencryption' flag in Inno Setup !
; Encryption=yes
; Password={#MySetupPassword}

#if InstallMode == "Regular"
  PrivilegesRequiredOverridesAllowed=commandline dialog
  UsePreviousAppDir=yes
  Uninstallable=yes
  CreateUninstallRegKey=yes
  PrivilegesRequired=admin
  DefaultDirName={autopf32}\{#MyInstallDirName}
  #if InstallType == "EE"
    OutputBaseFilename={#InstallType}_Setup_v{#MySetupVersion}
  #elif InstallType == "NeoEE"
    OutputBaseFilename={#InstallType}_v{#MyAppVersion}_Setup_v{#MySetupVersion}
  #endif
#elif InstallMode == "Portable"
  UsePreviousAppDir=no
  Uninstallable=no
  CreateUninstallRegKey=no
  PrivilegesRequired=lowest 
  DefaultDirName={src}\{#MyInstallDirName} Portable
  #if InstallType == "EE"
    OutputBaseFilename={#InstallType}_Portable_Setup_v{#MySetupVersion}
  #elif InstallType == "NeoEE"
    OutputBaseFilename={#InstallType}_Portable_v{#MyAppVersion}_Setup_v{#MySetupVersion}
  #endif
#else
  #error Unsupported Install Mode
#endif

; Includes
#include "utils.iss"
#include "messages.iss"
#include "internal\lib\idp\idp.iss"
#define BassLoopSound "internal\misc\Loop.flac"
#include "internal\lib\bass\bass.iss"

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"
Name: "french"; MessagesFile: "compiler:Languages\French.isl"
Name: "german"; MessagesFile: "compiler:Languages\German.isl"
Name: "italian"; MessagesFile: "compiler:Languages\Italian.isl"
Name: "spanish"; MessagesFile: "compiler:Languages\Spanish.isl"
Name: "russian"; MessagesFile: "compiler:Languages\Russian.isl"
Name: "polish"; MessagesFile: "compiler:Languages\Polish.isl"
Name: "portuguese_brazil"; MessagesFile: "compiler:Languages\BrazilianPortuguese.isl" 
Name: "chinese"; MessagesFile: "internal\unofficial_isl\IS6\ChineseSimplified.isl"
Name: "chinese_traditional"; MessagesFile: "internal\unofficial_isl\IS6\ChineseTraditional.isl" 
Name: "korean"; MessagesFile: "internal\unofficial_isl\IS6\Korean.isl"

[Tasks]   
Name: "compatibility"; Description: "Enable compatibility flags"; MinVersion: 0.0,5.1; Check: not IsWine
Name: "compatibility_windows"; Description: "Enable earlier Windows compatibility mode"; MinVersion: 0.0,5.1; Check: not IsWine
Name: "firewallexception"; Description: "Add Empire Earth in the FireWall"; MinVersion: 0.0,5.0; Check: IsAdminInstallMode and not IsWine
; GOG Setup install DirectPlay but i don't think it's really important... some kind of default install for old DX game maybe
; Name: "directplay"; Description: "Install DirectPlay to improve compatibility"; MinVersion: 6.2; Check: IsAdminInstallMode
#if InstallType == "NeoEE"
  ; Since 1.0.1.0 NeoEE CDKeys support HKLM & HKCU
  Name: "neoee_cdkeys"; Description: "Register NeoEE CDKeys (Required to use the online lobby)"; MinVersion: 0.0,5.0;
#endif 

#if CertInclude
  Name: "certinclude"; Description: "Install Empire Earth Community Certificate (Uncheck if you don't trust us!)"; MinVersion: 0.0,6.0; Check: IsAdminInstallMode and not IsWine
  Name: "certinclude"; Description: "Install Empire Earth Community Certificate (Check only if you trust us!)"; MinVersion: 0.0,6.0; Flags: unchecked; Check: not IsAdminInstallMode and not IsWine
#endif

Name: "everyoneadminstart"; Description: "Require administrator rights for all users to run the game"; MinVersion: 0.0,5.1; Flags: unchecked; Check: IsAdminInstallMode and not IsWine

#if InstallMode != "Portable"
  Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"
  Name: "quicklaunchicon"; Description: "{cm:CreateQuickLaunchIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked; OnlyBelowVersion: 0.0,6.1
#endif

[Components]
Name: "game"; Description: "{#MyAppName}"; Types: full compact custom; Flags: fixed
Name: "game\update"; Description: "Download {language} voices and campaigns"; Types: full compact; Flags: disablenouninstallwarning; Languages: french german italian spanish russian 
Name: "game\update"; Description: "**Try** to download {language} voices and campaigns"; Types: full compact; Flags: disablenouninstallwarning;  Languages: chinese chinese_traditional korean polish portuguese_brazil
; ------------------
Name: "gameaoc"; Description: "{#MyAppName} : The Art of Conquest"; Types: full
Name: "gameaoc\update"; Description: "Download {language} voices and campaigns"; Types: full; Flags: disablenouninstallwarning; Languages: french german italian spanish
Name: "gameaoc\update"; Description: "**Try** to download {language} voices and campaigns"; Types: full;  Flags: disablenouninstallwarning; Languages: russian chinese chinese_traditional korean polish portuguese_brazil

; ------------------

Name: "additional"; Description: "Additional Recommended Content"
Name: "additional\movies"; Description: "Install intro videos"; Flags: disablenouninstallwarning;
Name: "additional\hd"; Description: "HD/HQ Content"; Flags: disablenouninstallwarning; Types: full
Name: "additional\hd\terrain"; Description: "HD Terrain v1.0 (by Sleeper & Yukon)"; Types: full

; Types: full -> Disabled by default for the moment, because not enough imao and still really WIP
Name: "additional\hd\music"; Description: "HQ Musics WIP (by Fortuking)";

Name: "additional\hd\buildings"; Description: "HD Buildings Icons v3.0 (by Fortuking)"; Types: full;

Name: "additional\hd\tech"; Description: "HD Tech Icons v3.0.1 (by Fortuking)"; Types: full;

Name: "additional\hd\effects"; Description: "HD Effects WIP (by Fortuking)"; Types: full
Name: "additional\drexmod"; Description: "dreXmod to enhance/add features (by Yukon)"
//#if InstallType == "EE" ; Prefer dxm2
//  Name: "additional\drexmod\v2"; Description: "dreXmod v2 for better Camera/HUD/Lobby "; Flags: exclusive disablenouninstallwarning; Types: full compact; MinVersion: 0,5.1
//  Name: "additional\drexmod\v3"; Description: "dreXmod v3 for better Camera/HUD/Lobby/Ranking/AntiCheat"; Flags: exclusive disablenouninstallwarning; MinVersion: 0,5.1
//#elif InstallType == "NeoEE" ; Prefer dxm3
  Name: "additional\drexmod\v3"; Description: "dreXmod v3 for better Camera/HUD/Lobby/Ranking/AntiCheat"; Flags: exclusive disablenouninstallwarning; Types: full compact; MinVersion: 0,5.1
  Name: "additional\drexmod\v2"; Description: "dreXmod v2 for better Camera/HUD/Lobby"; Flags: exclusive disablenouninstallwarning; MinVersion: 0,5.1
//#endif

; Name: "additional\reborn"; Description: "Reborn.dll v0.1 for better Camera, Resolution and Solo Max Units"; Flags: disablenouninstallwarning; Types: full compact; MinVersion: 0,5.1
#if InstallType == "EE"
  Name: "additional\omega"; Description: "Omega Content for more Maps"; Types: full custom; 
#endif

Name: "additional\directx_wrapper"; Description: "DirectX Wrapper (+compatibility and sometime +performance)"; Flags: disablenouninstallwarning; MinVersion: 0.0,6.1
Name: "additional\directx_wrapper\dx9"; Description: "DirectX 9 (Windows XP&+) [Generally Recommended]"; Flags: exclusive disablenouninstallwarning; MinVersion: 0.0,6.1
Name: "additional\directx_wrapper\dx11_lvl10"; Description: "DirectX 11 API lvl.10 v2.71.3 (Windows 7&+)"; Flags: exclusive disablenouninstallwarning; MinVersion: 0.0,6.1
Name: "additional\directx_wrapper\dx11_lvl11"; Description: "DirectX 11 API lvl.11 v2.71.3 (Windows 7&+)"; Flags: exclusive disablenouninstallwarning; MinVersion: 0.0,6.1
Name: "additional\directx_wrapper\dx12_lvl11"; Description: "DirectX 12 API lvl.11 v2.71.3 (Windows 10&+)"; Flags: exclusive disablenouninstallwarning; MinVersion: 0.0,10;
Name: "additional\directx_wrapper\dx12_lvl12"; Description: "DirectX 12 API lvl.12 v2.71.3 (Windows 10&+)"; Flags: exclusive disablenouninstallwarning; MinVersion: 0.0,10;

Name: "additional\telemetry"; Description: "Telemetry (Compatibility and Stats)"; Flags: disablenouninstallwarning; Types: full compact custom; MinVersion: 0.0,6.1 
Name: "additional\discord"; Description: "Discord Presence"; Flags: disablenouninstallwarning; Types: full compact; MinVersion: 0.0,6.1; Check: not IsWine 
Name: "additional\tools"; Description: "Tools";
Name: "additional\tools\diagnostic"; Description: "Empire Earth Diagnostic"; Flags: disablenouninstallwarning; Types: full compact; MinVersion: 0.0,6.1; Check: not IsWine
Name: "additional\civs"; Description: "Civilizations"
Name: "additional\civs\ec"; Description: "eC Standard Civilizations (25)"; Types: full compact
Name: "additional\civs\ec_full"; Description: "eC Full Civilizations (71)"
Name: "additional\civs\j2"; Description: "J2 Civilizations (19)"; Types: full compact

[Files]   
; NOTE: Don't use "Flags: ignoreversion" on any shared system files
; For future ? signonce/sign
#if CertInclude
  Source: "internal/misc/{#CertFileName}"; DestDir: "{tmp}"; DestName: "{#CertFileName}"; Flags: deleteafterinstall; Tasks: certinclude;
#endif
  
Source: "data/Add-on/DLLs/EEStats/EEStats.dll"; Flags: dontcopy noencryption nocompression; MinVersion: 0.0,6.1
Source: "data/Add-on/DLLs/EEStats/EEStats.dll"; DestDir: "{app}\{#AppID}"; Flags: ignoreversion recursesubdirs createallsubdirs; MinVersion: 0.0,6.1
// WARNING: If I add support for < Win7 I will need a special build without cURL inside (or any other solution to remove new dep)


#if InstallType == "EE"
  Source: "internal\media\SetupBackground-4-3.bmp"; DestDir: "{tmp}"; DestName: "SetupBackground-4-3.bmp"; Flags: deleteafterinstall dontcopy noencryption
  Source: "internal\media\SetupBackground-16-9.bmp"; DestDir: "{tmp}"; DestName: "SetupBackground-16-9.bmp"; Flags: deleteafterinstall dontcopy noencryption
#elif InstallType == "NeoEE"
  Source: "internal\media\SetupBackground-4-3-Neo.bmp"; DestDir: "{tmp}"; DestName: "SetupBackground-4-3.bmp"; Flags: deleteafterinstall dontcopy noencryption
  Source: "internal\media\SetupBackground-16-9-Neo.bmp"; DestDir: "{tmp}"; DestName: "SetupBackground-16-9.bmp"; Flags: deleteafterinstall dontcopy noencryption
#endif

Source: "internal\runtime\dx9\*"; DestDir: "{tmp}/dx9"; Flags: deleteafterinstall ignoreversion recursesubdirs createallsubdirs nocompression; Components: additional\directx_wrapper\dx9; Check: IsAdminInstallMode

; ---------------- 

; EE Base
Source: "./data/Empire Earth Base/Empire Earth/*"; DestDir: "{app}\Empire Earth"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: game;
Source: "./data/Empire Earth Base/shared/*"; DestDir: "{app}\Empire Earth"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: game;
; EE Movies
Source: "./data/Add-on/Movies/EE/*"; DestDir: "{app}\Empire Earth\Data\Movies"; Flags: ignoreversion recursesubdirs createallsubdirs nocompression; Components: additional\movies and game;

#if InstallType == "NeoEE"
  Source: "./data/NeoEE Base/Empire Earth/*"; DestDir: "{app}\Empire Earth"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: game
  Source: "./data/NeoEE Base/shared/*"; DestDir: "{app}\Empire Earth"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: game
  Source: "./data/Add-on/Omega/EE/*"; DestDir: "{app}\Empire Earth"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: game
  Source: "./data/NeoEE - Admin/Empire Earth/*"; DestDir: "{app}\Empire Earth"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: game; Check: IsAdminInstallMode
  Source: "./data/NeoEE - User/Empire Earth/*"; DestDir: "{app}\Empire Earth"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: game; Check: not IsAdminInstallMode
  Source: "./data/NeoEE - CDKeys/authtools_user.exe"; DestDir: "{tmp}";  DestName: "authtools.exe"; Flags: deleteafterinstall ignoreversion recursesubdirs createallsubdirs; Components: game; Check: not IsAdminInstallMode
  Source: "./data/NeoEE - CDKeys/authtools_admin.exe"; DestDir: "{tmp}";  DestName: "authtools.exe"; Flags: deleteafterinstall ignoreversion recursesubdirs createallsubdirs; Components: game; Check: IsAdminInstallMode
  Source: "./data/NeoEE - CDKeys/_wonkver.pub"; DestDir: "{app}\Empire Earth"; Flags: deleteafterinstall ignoreversion recursesubdirs createallsubdirs; Components: game
  ; NeoEE - Wine Fix (GDI)
  Source: "./data/NeoEE - Wine/NeoEE.cfg"; DestDir: "{app}\Empire Earth"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: game; Check: IsWine
#endif

; EE Local Lang Based Content (External Flag because we are using already extracted files)
Source: "{app}\Empire Earth\Data\Languages\{language}\*"; DestDir: "{app}\Empire Earth"; Flags: external ignoreversion recursesubdirs createallsubdirs; Components: game;
; EE Online Lang Based Content
Source: "{tmp}\EE\*"; DestDir: "{app}\Empire Earth"; Flags: ignoreversion recursesubdirs createallsubdirs external skipifsourcedoesntexist; Components: game\update;

; DreXmod 2 (+privacy patched dll, because nothing allow to disable it in config)
Source: "./data/Add-on/DLLs/dreXmod/2/*"; DestDir: "{app}\Empire Earth"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: additional\drexmod\v2 and game;
Source: "./data/Add-on/DLLs/dreXmod/2_privacy/*"; DestDir: "{app}\Empire Earth"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: additional\drexmod\v2 and game and not additional\telemetry;

; DreXmod 3 (+privacy config)
Source: "./data/Add-on/DLLs/dreXmod/3/*"; DestDir: "{app}\Empire Earth"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: additional\drexmod\v3 and game;
Source: "./data/Add-on/DLLs/dreXmod/3_privacy/*"; DestDir: "{app}\Empire Earth"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: additional\drexmod\v3 and game and not additional\telemetry;  

#if InstallType == "EE"
  ; Omega
  Source: "./data/Add-on/Omega/EE/*"; DestDir: "{app}\Empire Earth"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: additional\omega and game
#endif
; dgVoodoo  Bin
Source: "./data/Add-on/DirectX_Wrapper/dgVoodoo_bin/*"; DestDir: "{app}\Empire Earth"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: additional\directx_wrapper and game and not additional\directx_wrapper\dx9 
Source: "./data//Add-on/DirectX_Wrapper/GOG/DDraw.dll"; DestDir: "{app}\Empire Earth"; DestName: "DDraw.dll"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: additional\directx_wrapper\dx9 and game;
; dgVoodoo Conf
Source: "./data/Add-on/DirectX_Wrapper/dgVoodoo_conf/dgVoodoo_DX11_LVL10.conf"; DestDir: "{app}\Empire Earth"; DestName: "dgVoodoo.conf"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: additional\directx_wrapper\dx11_lvl10 and game;
Source: "./data/Add-on/DirectX_Wrapper/dgVoodoo_conf/dgVoodoo_DX11_LVL11.conf"; DestDir: "{app}\Empire Earth"; DestName: "dgVoodoo.conf"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: additional\directx_wrapper\dx11_lvl11 and game;
Source: "./data/Add-on/DirectX_Wrapper/dgVoodoo_conf/dgVoodoo_DX12_LVL11.conf"; DestDir: "{app}\Empire Earth"; DestName: "dgVoodoo.conf"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: additional\directx_wrapper\dx12_lvl11 and game;
Source: "./data/Add-on/DirectX_Wrapper/dgVoodoo_conf/dgVoodoo_DX12_LVL12.conf"; DestDir: "{app}\Empire Earth"; DestName: "dgVoodoo.conf"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: additional\directx_wrapper\dx12_lvl12 and game; 

; Civs
Source: "./data/Add-on/Civs/eC/*"; DestDir: "{app}\Empire Earth\Users\default\Civilizations"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: additional\civs\ec and game
Source: "./data/Add-on/Civs/eC_full/*"; DestDir: "{app}\Empire Earth\Users\default\Civilizations"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: additional\civs\ec_full and game
Source: "./data/Add-on/Civs/J2/*"; DestDir: "{app}\Empire Earth\Users\default\Civilizations"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: additional\civs\j2 and game

; Discord
Source: "./data/Add-on/DLLs/Discord/*"; DestDir: "{app}\Empire Earth"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: additional\discord and game

; Reborn.dll
; Source: "./data/Add-on/DLLs/Reborn/*"; DestDir: "{app}\Empire Earth"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: additional\reborn and game


; EEStats
Source: "./data/Add-on/DLLs/EEStats/*"; DestDir: "{app}\Empire Earth"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: additional\telemetry and game; MinVersion: 0.0,6.1

; HD
Source: "./data/Add-on/HD/terrain/*"; DestDir: "{app}\Empire Earth\Data\Textures"; \
  Flags: ignoreversion recursesubdirs createallsubdirs; Components: additional\hd\terrain and game

; Music
Source: "./data/Add-on/HD/music/*"; DestDir: "{app}\Empire Earth\Data\Sounds"; \
  Flags: ignoreversion recursesubdirs createallsubdirs; Components: additional\hd\music and game

; Tech
Source: "./data/Add-on/HD/tech/*"; DestDir: "{app}\Empire Earth\Data\Textures"; \
  Flags: ignoreversion recursesubdirs createallsubdirs; Components: additional\hd\tech and game

; Building
Source: "./data/Add-on/HD/buildings/*"; DestDir: "{app}\Empire Earth\Data\Textures"; \
  Flags: ignoreversion recursesubdirs createallsubdirs; Components: additional\hd\buildings and game

; Effects
Source: "./data/Add-on/HD/effects/*"; DestDir: "{app}\Empire Earth\Data\Textures"; \
  Flags: ignoreversion recursesubdirs createallsubdirs; Components: additional\hd\effects and game

; ----------------

; AoC Base
Source: "./data/Empire Earth Base/Empire Earth - The Art of Conquest/*"; DestDir: "{app}\Empire Earth - The Art of Conquest"; \
  Flags: ignoreversion recursesubdirs createallsubdirs; Components: gameaoc;
Source: "./data/Empire Earth Base/shared/*"; DestDir: "{app}\Empire Earth - The Art of Conquest"; \
  Flags: ignoreversion recursesubdirs createallsubdirs; Components: gameaoc;
; EE Movies
Source: "./data/Add-on/Movies/AoC/*"; DestDir: "{app}\Empire Earth - The Art of Conquest\Data\Movies"; \
  Flags: ignoreversion recursesubdirs createallsubdirs; Components: additional\movies and gameaoc;

#if InstallType == "NeoEE"
  Source: "./data/NeoEE Base/Empire Earth - The Art of Conquest/*"; DestDir: "{app}\Empire Earth - The Art of Conquest"; \
    Flags: ignoreversion recursesubdirs createallsubdirs; Components: gameaoc
  Source: "./data/NeoEE Base/shared/*"; DestDir: "{app}\Empire Earth - The Art of Conquest"; \
    Flags: ignoreversion recursesubdirs createallsubdirs; Components: gameaoc
  Source: "./data/Add-on/Omega/AoC/*"; DestDir: "{app}\Empire Earth - The Art of Conquest"; \
    Flags: ignoreversion recursesubdirs createallsubdirs; Components: gameaoc
  Source: "./data/NeoEE - Admin/Empire Earth - The Art of Conquest/*"; DestDir: "{app}\Empire Earth - The Art of Conquest"; \
    Flags: ignoreversion recursesubdirs createallsubdirs; Components: gameaoc; Check: IsAdminInstallMode
  Source: "./data/NeoEE - User/Empire Earth - The Art of Conquest/*"; DestDir: "{app}\Empire Earth - The Art of Conquest"; \
    Flags: ignoreversion recursesubdirs createallsubdirs; Components: gameaoc; Check: not IsAdminInstallMode
  ; Already done in EE part Source: authtools.exe
  Source: "./data/NeoEE - CDKeys/_wonkver.pub"; DestDir: "{app}\Empire Earth - The Art of Conquest"; \
    Flags: deleteafterinstall ignoreversion recursesubdirs createallsubdirs; Components: gameaoc
  ; NeoEE - Wine Fix (GDI)
  Source: "./data/NeoEE - Wine/NeoEE.cfg"; DestDir: "{app}\Empire Earth - The Art of Conquest"; \
    Flags: ignoreversion recursesubdirs createallsubdirs; Components: game; Check: IsWine
#endif

; AoC Local Lang Based Content (External Flag because {language} cause error during compilation
Source: "{app}\Empire Earth - The Art of Conquest\Data\Languages\{language}\*"; DestDir: "{app}\Empire Earth - The Art of Conquest"; \
  Flags: external ignoreversion recursesubdirs createallsubdirs; Components: gameaoc
; AoC Online Lang Based Content
Source: "{tmp}\AoC\*"; DestDir: "{app}\Empire Earth - The Art of Conquest"; \
  Flags: ignoreversion recursesubdirs createallsubdirs external; Components: gameaoc\update
Source: "{tmp}\EE\Data\Campaigns\EELearningCampaign.ssa"; DestDir: "{app}\Empire Earth\Data\Campaigns"; \
  Flags: ignoreversion recursesubdirs createallsubdirs external skipifsourcedoesntexist; Components: gameaoc\update;

  ; DreXmod 2 (+privacy patched dll, because nothing allow to disable it in config)
Source: "./data/Add-on/DLLs/dreXmod/2/*"; DestDir: "{app}\Empire Earth - The Art of Conquest"; \
  Flags: ignoreversion recursesubdirs createallsubdirs; Components: additional\drexmod\v2 and gameaoc;
Source: "./data/Add-on/DLLs/dreXmod/2_privacy/*"; DestDir: "{app}\Empire Earth"; \
  Flags: ignoreversion recursesubdirs createallsubdirs; Components: additional\drexmod\v2 and gameaoc and not additional\telemetry;

; DreXmod 3 (+privacy config)
Source: "./data/Add-on/DLLs/dreXmod/3/*"; DestDir: "{app}\Empire Earth - The Art of Conquest"; \
  Flags: ignoreversion recursesubdirs createallsubdirs; Components: additional\drexmod\v3 and gameaoc;
Source: "./data/Add-on/DLLs/dreXmod/3_privacy/*"; DestDir: "{app}\Empire Earth"; \
  Flags: ignoreversion recursesubdirs createallsubdirs; Components: additional\drexmod\v3 and gameaoc and not additional\telemetry;  

#if InstallType == "EE"  
  ; Omega
  Source: "./data/Add-on/Omega/AoC/*"; DestDir: "{app}\Empire Earth - The Art of Conquest"; \
    Flags: ignoreversion recursesubdirs createallsubdirs; Components: additional\omega and gameaoc
#endif

; dgVoodoo  Bin
Source: "./data/Add-on/DirectX_Wrapper/dgVoodoo_bin/*"; DestDir: "{app}\Empire Earth - The Art of Conquest"; \
  Flags: ignoreversion recursesubdirs createallsubdirs; Components: additional\directx_wrapper and gameaoc and not additional\directx_wrapper\dx9 
Source: "./data//Add-on/DirectX_Wrapper/GOG/DDraw.dll"; DestDir: "{app}\Empire Earth - The Art of Conquest"; DestName: "DDraw.dll"; \
  Flags: ignoreversion recursesubdirs createallsubdirs; Components: additional\directx_wrapper\dx9 and gameaoc;
; dgVoodoo Conf
Source: "./data/Add-on/DirectX_Wrapper/dgVoodoo_conf/dgVoodoo_DX11_LVL10.conf"; DestDir: "{app}\Empire Earth - The Art of Conquest"; DestName: "dgVoodoo.conf"; \
  Flags: ignoreversion recursesubdirs createallsubdirs; Components: additional\directx_wrapper\dx11_lvl10 and gameaoc;
Source: "./data/Add-on/DirectX_Wrapper/dgVoodoo_conf/dgVoodoo_DX11_LVL11.conf"; DestDir: "{app}\Empire Earth - The Art of Conquest"; DestName: "dgVoodoo.conf"; \
  Flags: ignoreversion recursesubdirs createallsubdirs; Components: additional\directx_wrapper\dx11_lvl11 and gameaoc;
Source: "./data/Add-on/DirectX_Wrapper/dgVoodoo_conf/dgVoodoo_DX12_LVL11.conf"; DestDir: "{app}\Empire Earth - The Art of Conquest"; DestName: "dgVoodoo.conf"; \
  Flags: ignoreversion recursesubdirs createallsubdirs; Components: additional\directx_wrapper\dx12_lvl11 and gameaoc;
Source: "./data/Add-on/DirectX_Wrapper/dgVoodoo_conf/dgVoodoo_DX12_LVL12.conf"; DestDir: "{app}\Empire Earth - The Art of Conquest"; DestName: "dgVoodoo.conf"; \
  Flags: ignoreversion recursesubdirs createallsubdirs; Components: additional\directx_wrapper\dx12_lvl12 and gameaoc; 

; Civs
Source: "./data/Add-on/Civs/eC/*"; DestDir: "{app}\Empire Earth - The Art of Conquest\Users\default\Civilizations"; \
  Flags: ignoreversion recursesubdirs createallsubdirs; Components: additional\civs\ec and gameaoc
Source: "./data/Add-on/Civs/eC_full/*"; DestDir: "{app}\Empire Earth - The Art of Conquest\Users\default\Civilizations"; \
  Flags: ignoreversion recursesubdirs createallsubdirs; Components: additional\civs\ec_full and gameaoc
Source: "./data/Add-on/Civs/J2/*"; DestDir: "{app}\Empire Earth - The Art of Conquest\Users\default\Civilizations"; \
  Flags: ignoreversion recursesubdirs createallsubdirs; Components: additional\civs\j2 and gameaoc

; Discord
Source: "./data/Add-on/DLLs/Discord/*"; DestDir: "{app}\Empire Earth - The Art of Conquest"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: additional\discord and gameaoc

; Reborn.dll
; Not supported Source: "./data/Add-on/DLLs/Reborn/*"; DestDir: "{app}\Empire Earth - The Art of Conquest"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: additional\reborn and gameaoc

; EEStats
; Not supported Source: "./data/Add-on/DLLs/EEStats/*"; DestDir: "{app}\Empire Earth - The Art of Conquest"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: additional\telemetry and gameaoc; MinVersion: 0.0,6.1

; HD & Music & Tech & Building
; Herit from EE natively

; -------------------
;  Allow config edit, move the files to the exact same dir but with good perm :>
; -------------------  
Source: "{app}\Empire Earth\*.cfg"; DestDir: "{app}\Empire Earth"; Permissions: authusers-modify; Flags: ignoreversion recursesubdirs createallsubdirs external; Components: game; Check: not IsWine and IsAdminInstallMode
Source: "{app}\Empire Earth\*.config"; DestDir: "{app}\Empire Earth"; Permissions: authusers-modify; Flags: ignoreversion recursesubdirs createallsubdirs external; Components: game; Check: not IsWine and IsAdminInstallMode
Source: "{app}\Empire Earth\*.ini"; DestDir: "{app}\Empire Earth"; Permissions: authusers-modify; Flags: ignoreversion recursesubdirs createallsubdirs external; Components: game; Check: not IsWine and IsAdminInstallMode
; ----------------
Source: "{app}\Empire Earth - The Art of Conquest\*.cfg"; DestDir: "{app}\Empire Earth - The Art of Conquest"; Permissions: authusers-modify; Flags: ignoreversion recursesubdirs createallsubdirs external; Components: gameaoc; Check: not IsWine and IsAdminInstallMode
Source: "{app}\Empire Earth - The Art of Conquest\*.config"; DestDir: "{app}\Empire Earth - The Art of Conquest"; Permissions: authusers-modify; Flags: ignoreversion recursesubdirs createallsubdirs external; Components: gameaoc; Check: not IsWine and IsAdminInstallMode
Source: "{app}\Empire Earth - The Art of Conquest\*.ini"; DestDir: "{app}\Empire Earth - The Art of Conquest"; Permissions: authusers-modify; Flags: ignoreversion recursesubdirs createallsubdirs external; Components: gameaoc; Check: not IsWine and IsAdminInstallMode 

; ---------------------
;         Tools
; ---------------------
Source: "./data/Add-on/Tools/Diagnostic/*"; DestDir: "{app}\Tools\Diagnostic"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: additional\tools\diagnostic; Check: IsAdminInstallMode

[Dirs]
; ---------------------
;  Allow Data/Civ edit
; ---------------------
Name: "{app}\Empire Earth\Data"; Permissions: authusers-modify; Components: game; Check: not IsWine and IsAdminInstallMode
Name: "{app}\Empire Earth\Users"; Permissions: authusers-modify; Components: game; Check: not IsWine and IsAdminInstallMode
; ---------------- 
Name: "{app}\Empire Earth - The Art of Conquest\Data"; Permissions: authusers-modify; Components: gameaoc; Check: not IsWine and IsAdminInstallMode
Name: "{app}\Empire Earth - The Art of Conquest\Users"; Permissions: authusers-modify; Components: gameaoc; Check: not IsWine and IsAdminInstallMode

; Additional setup related data
Name: "{app}\{#AppID}"; Attribs: hidden


[Registry]
; Compatibility
;   WIN7RTM    DWM8And16BitMitigation    for Windows 8+
;   WINXPSP3   DWM8And16BitMitigation    for Windows 7+
;   WIN98               -                for Windows >2000
; Help
;   HeapClearAllocation: Clear memory on program crash
;   DWM8And16BitMitigation: (From Windows 8, DirectX) Convert 8bits to 16bits
;   HIGHDPIAWARE: [Need investigation] Will try to make the game coherent with the screen DPI 
; Maybe for later ?
;   IgnoreAltTab DisableWindowsDefender DisableDWM Disable8And16BitModes Disable8And16BitD3D
;   DISABLETHEMES DISABLEDWM IgnoreFontQuality ForceLoadMirrorDrvMitigation DXGICompat         
;   FontMigration: [Need investigation] Replaces a font with a better font, to avoid text truncation.            
;   ForceInvalidateOnClose: Force program to close window in some cases 
;   DISABLEDXMAXIMIZEDWINDOWEDMODE: (DirectX) Disable fullscreen optimization (maj is important...) (make game crash but sometime work)

; Admin + Windows compatibility    
; Windows >=8                                                                                                                                                                           
Root: "HKLM"; Subkey: "{#BaseRegCompatibility}"; ValueType: String; ValueName: "{app}\Empire Earth\Empire Earth.exe"; ValueData: "{code:GetCompatibilityFlags} WIN7RTM"; \
  Flags: uninsdeletevalue; Check: IsAdminInstallMode; MinVersion: 0.0,10; Tasks: compatibility_windows; Components: game
Root: "HKLM"; Subkey: "{#BaseRegCompatibility}"; ValueType: String; ValueName: "{app}\Empire Earth - The Art of Conquest\EE-AOC.exe"; ValueData: "{code:GetCompatibilityFlags} WIN7RTM"; \
  Flags: uninsdeletevalue; Check: IsAdminInstallMode; MinVersion: 0.0,10; Tasks: compatibility_windows; Components: gameaoc
; Windows >=Vista & <= 7
Root: "HKLM"; Subkey: "{#BaseRegCompatibility}"; ValueType: String; ValueName: "{app}\Empire Earth\Empire Earth.exe"; ValueData: "{code:GetCompatibilityFlags} WINXPSP3"; \
  Flags: uninsdeletevalue; Check: IsAdminInstallMode; MinVersion: 0.0,6.0; OnlyBelowVersion: 0.6.2; Tasks: compatibility_windows; Components: game 
Root: "HKLM"; Subkey: "{#BaseRegCompatibility}"; ValueType: String; ValueName: "{app}\Empire Earth - The Art of Conquest\EE-AOC.exe"; ValueData: "{code:GetCompatibilityFlags} WINXPSP3"; \
  Flags: uninsdeletevalue; Check: IsAdminInstallMode; MinVersion: 0.0,6.0; OnlyBelowVersion: 0.0,6.2; Tasks: compatibility_windows; Components: gameaoc
; Windows >=2000 & <=XP                                                                                                                                        
Root: "HKLM"; Subkey: "{#BaseRegCompatibility}"; ValueType: String; ValueName: "{app}\Empire Earth\Empire Earth.exe"; ValueData: "{code:GetCompatibilityFlags} WIN98"; \
  Flags: uninsdeletevalue; Check: IsAdminInstallMode; MinVersion: 0.0,5.0; OnlyBelowVersion: 0.0,6.0; Tasks: compatibility_windows; Components: game 
Root: "HKLM"; Subkey: "{#BaseRegCompatibility}"; ValueType: String; ValueName: "{app}\Empire Earth - The Art of Conquest\EE-AOC.exe"; ValueData: "{code:GetCompatibilityFlags} WIN98"; \
  Flags: uninsdeletevalue; Check: IsAdminInstallMode; MinVersion: 0.0,5.0; OnlyBelowVersion: 0.0,6.0; Tasks: compatibility_windows; Components: gameaoc

; Admin - Windows compatibility    
; Windows >=8                                                                                                                                                                           
Root: "HKLM"; Subkey: "{#BaseRegCompatibility}"; ValueType: String; ValueName: "{app}\Empire Earth\Empire Earth.exe"; ValueData: "{code:GetCompatibilityFlags}"; \
  Flags: uninsdeletevalue; Check: IsAdminInstallMode; MinVersion: 0.0,10; Tasks: not compatibility_windows and compatibility; Components: game
Root: "HKLM"; Subkey: "{#BaseRegCompatibility}"; ValueType: String; ValueName: "{app}\Empire Earth - The Art of Conquest\EE-AOC.exe"; ValueData: "{code:GetCompatibilityFlags}"; \
  Flags: uninsdeletevalue; Check: IsAdminInstallMode; MinVersion: 0.0,10; Tasks: not compatibility_windows and compatibility; Components: gameaoc
; Windows >=Vista & <= 7
Root: "HKLM"; Subkey: "{#BaseRegCompatibility}"; ValueType: String; ValueName: "{app}\Empire Earth\Empire Earth.exe"; ValueData: "{code:GetCompatibilityFlags}"; \
  Flags: uninsdeletevalue; Check: IsAdminInstallMode; MinVersion: 0.0,6.0; OnlyBelowVersion: 0.6.2; Tasks: not compatibility_windows and compatibility; Components: game 
Root: "HKLM"; Subkey: "{#BaseRegCompatibility}"; ValueType: String; ValueName: "{app}\Empire Earth - The Art of Conquest\EE-AOC.exe"; ValueData: "{code:GetCompatibilityFlags}"; \
  Flags: uninsdeletevalue; Check: IsAdminInstallMode; MinVersion: 0.0,6.0; OnlyBelowVersion: 0.0,6.2; Tasks: not compatibility_windows and compatibility; Components: gameaoc
; Windows >=2000 & <=XP                                                                                                                                        
Root: "HKLM"; Subkey: "{#BaseRegCompatibility}"; ValueType: String; ValueName: "{app}\Empire Earth\Empire Earth.exe"; ValueData: "{code:GetCompatibilityFlags}"; \
  Flags: uninsdeletevalue; Check: IsAdminInstallMode; MinVersion: 0.0,5.0; OnlyBelowVersion: 0.0,6.0; Tasks: not compatibility_windows and compatibility; Components: game 
Root: "HKLM"; Subkey: "{#BaseRegCompatibility}"; ValueType: String; ValueName: "{app}\Empire Earth - The Art of Conquest\EE-AOC.exe"; ValueData: "{code:GetCompatibilityFlags}"; \
  Flags: uninsdeletevalue; Check: IsAdminInstallMode; MinVersion: 0.0,5.0; OnlyBelowVersion: 0.0,6.0; Tasks: not compatibility_windows and compatibility; Components: gameaoc

; Admin (Add admin flag for CU if LM don't have it)
Root: "HKCU"; Subkey: "{#BaseRegCompatibility}"; ValueType: String; ValueName: "{app}\Empire Earth\Empire Earth.exe"; ValueData: "~ RUNASADMIN"; \
  Flags: uninsdeletevalue; Check: IsAdminInstallMode; MinVersion: 0.0,5.0; Tasks: not everyoneadminstart and compatibility; Components: game  
Root: "HKCU"; Subkey: "{#BaseRegCompatibility}"; ValueType: String; ValueName: "{app}\Empire Earth - The Art of Conquest\EE-AOC.exe"; ValueData: "~ RUNASADMIN"; \
  Flags: uninsdeletevalue; Check: IsAdminInstallMode; MinVersion: 0.0,5.0; Tasks: not everyoneadminstart and compatibility; Components: gameaoc

; ---------

; User + Windows compatibility    
; Windows >=8                                                                                                                                                                           
Root: "HKCU"; Subkey: "{#BaseRegCompatibility}"; ValueType: String; ValueName: "{app}\Empire Earth\Empire Earth.exe"; ValueData: "{code:GetCompatibilityFlags} WIN7RTM"; \
  Flags: uninsdeletevalue; Check: not IsAdminInstallMode; MinVersion: 0.0,10; Tasks: compatibility_windows and compatibility; Components: game 
Root: "HKCU"; Subkey: "{#BaseRegCompatibility}"; ValueType: String; ValueName: "{app}\Empire Earth - The Art of Conquest\EE-AOC.exe"; ValueData: "{code:GetCompatibilityFlags} WIN7RTM"; \
  Flags: uninsdeletevalue; Check: not IsAdminInstallMode; MinVersion: 0.0,10; Tasks: compatibility_windows and compatibility; Components: gameaoc
; Windows >=Vista & <= 7
Root: "HKCU"; Subkey: "{#BaseRegCompatibility}"; ValueType: String; ValueName: "{app}\Empire Earth\Empire Earth.exe"; ValueData: "{code:GetCompatibilityFlags} WINXPSP3"; \
  Flags: uninsdeletevalue; Check: not IsAdminInstallMode; MinVersion: 0.0,6.0; OnlyBelowVersion: 0.6.2; Tasks: compatibility_windows and compatibility; Components: game  
Root: "HKCU"; Subkey: "{#BaseRegCompatibility}"; ValueType: String; ValueName: "{app}\Empire Earth - The Art of Conquest\EE-AOC.exe"; ValueData: "{code:GetCompatibilityFlags} WINXPSP3"; \
  Flags: uninsdeletevalue; Check: not IsAdminInstallMode; MinVersion: 0.0,6.0; OnlyBelowVersion: 0.0,6.2; Tasks: compatibility_windows and compatibility; Components: gameaoc
; Windows >=2000 & <=XP                                                                                                                                        
Root: "HKCU"; Subkey: "{#BaseRegCompatibility}"; ValueType: String; ValueName: "{app}\Empire Earth\Empire Earth.exe"; ValueData: "{code:GetCompatibilityFlags} WIN98"; \
  Flags: uninsdeletevalue; Check: not IsAdminInstallMode; MinVersion: 0.0,5.0; OnlyBelowVersion: 0.0,6.0; Tasks: compatibility_windows and compatibility; Components: game  
Root: "HKCU"; Subkey: "{#BaseRegCompatibility}"; ValueType: String; ValueName: "{app}\Empire Earth - The Art of Conquest\EE-AOC.exe"; ValueData: "{code:GetCompatibilityFlags} WIN98"; \
  Flags: uninsdeletevalue; Check: not IsAdminInstallMode; MinVersion: 0.0,5.0; OnlyBelowVersion: 0.0,6.0; Tasks: compatibility_windows and compatibility; Components: gameaoc

; User - Windows compatibility    
; Windows >=8                                                                                                                                                                           
Root: "HKCU"; Subkey: "{#BaseRegCompatibility}"; ValueType: String; ValueName: "{app}\Empire Earth\Empire Earth.exe"; ValueData: "{code:GetCompatibilityFlags}"; \
  Flags: uninsdeletevalue; Check: not IsAdminInstallMode; MinVersion: 0.0,10; Tasks: not compatibility_windows and compatibility; Components: game
Root: "HKCU"; Subkey: "{#BaseRegCompatibility}"; ValueType: String; ValueName: "{app}\Empire Earth - The Art of Conquest\EE-AOC.exe"; ValueData: "{code:GetCompatibilityFlags}"; \
  Flags: uninsdeletevalue; Check: not IsAdminInstallMode; MinVersion: 0.0,10; Tasks: not compatibility_windows and compatibility; Components: gameaoc
; Windows >=Vista & <= 7
Root: "HKCU"; Subkey: "{#BaseRegCompatibility}"; ValueType: String; ValueName: "{app}\Empire Earth\Empire Earth.exe"; ValueData: "{code:GetCompatibilityFlags}"; \
  Flags: uninsdeletevalue; Check: not IsAdminInstallMode; MinVersion: 0.0,6.0; OnlyBelowVersion: 0.6.2; Tasks: not compatibility_windows and compatibility; Components: game 
Root: "HKCU"; Subkey: "{#BaseRegCompatibility}"; ValueType: String; ValueName: "{app}\Empire Earth - The Art of Conquest\EE-AOC.exe"; ValueData: "{code:GetCompatibilityFlags}"; \
  Flags: uninsdeletevalue; Check: not IsAdminInstallMode; MinVersion: 0.0,6.0; OnlyBelowVersion: 0.0,6.2; Tasks: not compatibility_windows and compatibility; Components: gameaoc
; Windows >=2000 & <=XP                                                                                                                                        
Root: "HKCU"; Subkey: "{#BaseRegCompatibility}"; ValueType: String; ValueName: "{app}\Empire Earth\Empire Earth.exe"; ValueData: "{code:GetCompatibilityFlags}"; \
  Flags: uninsdeletevalue; Check: not IsAdminInstallMode; MinVersion: 0.0,5.0; OnlyBelowVersion: 0.0,6.0; Tasks: not compatibility_windows and compatibility; Components: game 
Root: "HKCU"; Subkey: "{#BaseRegCompatibility}"; ValueType: String; ValueName: "{app}\Empire Earth - The Art of Conquest\EE-AOC.exe"; ValueData: "{code:GetCompatibilityFlags}"; \
  Flags: uninsdeletevalue; Check: not IsAdminInstallMode; MinVersion: 0.0,5.0; OnlyBelowVersion: 0.0,6.0; Tasks: not compatibility_windows and compatibility; Components: gameaoc

; Game Settings
Root: "HKCU"; Subkey: "{#BaseRegEE}"; Flags: uninsdeletekey; Components: game
Root: "HKCU"; Subkey: "{#BaseRegEE}"; ValueType: String; ValueName: "Rasterizer Name"; ValueData: "Direct3D Hardware TnL"; Flags: deletevalue; Components: game and not additional\directx_wrapper; Check: not IsWine
Root: "HKCU"; Subkey: "{#BaseRegEE}"; ValueType: String; ValueName: "Rasterizer Name"; ValueData: "Direct3D"; Flags: deletevalue; Components: game and additional\directx_wrapper; Check: not IsWine
Root: "HKCU"; Subkey: "{#BaseRegEE}"; ValueType: String; ValueName: "Rasterizer Name"; ValueData: "Direct3D"; Flags: deletevalue; Check: IsWine; Components: game 
Root: "HKCU"; Subkey: "{#BaseRegEE}"; ValueType: Dword; ValueName: "AutoSave In Milliseconds"; ValueData: "$124F80"; Flags: createvalueifdoesntexist; Components: game
Root: "HKCU"; Subkey: "{#BaseRegEE}\Game Options"; ValueType: String; ValueName: "Map Type"; ValueData: "Continental"; Flags: createvalueifdoesntexist; Components: game
Root: "HKCU"; Subkey: "{#BaseRegEE}\Game Options"; ValueType: Dword; ValueName: "Map Size"; ValueData: "$2"; Flags: createvalueifdoesntexist; Components: game
Root: "HKCU"; Subkey: "{#BaseRegEE}\Game Options"; ValueType: Dword; ValueName: "Starting Resources"; ValueData: "$3"; Flags: createvalueifdoesntexist; Components: game
Root: "HKCU"; Subkey: "{#BaseRegEE}\Game Options"; ValueType: Dword; ValueName: "Starting Epoch"; ValueData: "$0"; Flags: createvalueifdoesntexist; Components: game
Root: "HKCU"; Subkey: "{#BaseRegEE}\Game Options"; ValueType: Dword; ValueName: "Ending Epoch"; ValueData: "$D"; Flags: createvalueifdoesntexist; Components: game
Root: "HKCU"; Subkey: "{#BaseRegEE}\Game Options"; ValueType: Dword; ValueName: "Game Unit Limit"; ValueData: "$4B0"; Flags: createvalueifdoesntexist; Components: game
Root: "HKCU"; Subkey: "{#BaseRegEE}\Game Options"; ValueType: Dword; ValueName: "Wonders For Victory"; ValueData: "$0"; Flags: createvalueifdoesntexist; Components: game
Root: "HKCU"; Subkey: "{#BaseRegEE}\Game Options"; ValueType: Dword; ValueName: "Game Variant"; ValueData: "$2"; Flags: createvalueifdoesntexist; Components: game
Root: "HKCU"; Subkey: "{#BaseRegEE}\Game Options"; ValueType: Dword; ValueName: "Difficulty Level"; ValueData: "$0"; Flags: createvalueifdoesntexist; Components: game
Root: "HKCU"; Subkey: "{#BaseRegEE}\Game Options"; ValueType: Dword; ValueName: "Game Speed"; ValueData: "$3"; Flags: createvalueifdoesntexist; Components: game
Root: "HKCU"; Subkey: "{#BaseRegEE}\Game Options"; ValueType: Dword; ValueName: "Reveal Map"; ValueData: "$0"; Flags: createvalueifdoesntexist; Components: game
Root: "HKCU"; Subkey: "{#BaseRegEE}\Game Options"; ValueType: Dword; ValueName: "Allow Custom Civs"; ValueData: "$1"; Flags: createvalueifdoesntexist; Components: game
Root: "HKCU"; Subkey: "{#BaseRegEE}\Game Options"; ValueType: Dword; ValueName: "Lock Teams"; ValueData: "$1"; Flags: createvalueifdoesntexist; Components: game
Root: "HKCU"; Subkey: "{#BaseRegEE}\Game Options"; ValueType: Dword; ValueName: "Lock Speed"; ValueData: "$1"; Flags: createvalueifdoesntexist; Components: game
Root: "HKCU"; Subkey: "{#BaseRegEE}\Game Options"; ValueType: Dword; ValueName: "Cheat Codes"; ValueData: "$0"; Flags: createvalueifdoesntexist; Components: game
Root: "HKCU"; Subkey: "{#BaseRegEE}"; ValueType: Dword; ValueName: "Music Volume"; ValueData: "$2C"; Flags: createvalueifdoesntexist; Components: game
Root: "HKCU"; Subkey: "{#BaseRegEE}"; ValueType: Dword; ValueName: "Sound Volume"; ValueData: "$3C"; Flags: createvalueifdoesntexist; Components: game
; Set Default 1920x1080 32 bits
Root: "HKCU"; Subkey: "{#BaseRegEE}"; ValueType: Dword; ValueName: "Game Window Height"; ValueData: "$438"; Flags: deletevalue; Components: game
Root: "HKCU"; Subkey: "{#BaseRegEE}"; ValueType: Dword; ValueName: "Game Window Width"; ValueData: "$780"; Flags: deletevalue; Components: game
Root: "HKCU"; Subkey: "{#BaseRegEE}"; ValueType: Dword; ValueName: "Game Bit Depth"; ValueData: "$20"; Flags: deletevalue; Components: game
Root: "HKCU"; Subkey: "{#BaseRegEE}"; ValueType: Dword; ValueName: "Texture Bit Depth"; ValueData: "$20"; Flags: deletevalue; Components: game
; Adding Installed From to allow AoC to be started without having to start EE first.
Root: "HKCU"; Subkey: "{#BaseRegEE}"; ValueType: string; ValueName: "Installed From Volume"; ValueData: "{code:GetInstallDriveLetter}"; Flags: deletevalue; Components: game
Root: "HKCU"; Subkey: "{#BaseRegEE}"; ValueType: string; ValueName: "Installed From Directory"; ValueData: "{code:GetInstallWithoutDriveLetterBase}\Empire Earth\"; Flags: deletevalue; Components: game

; ----------------

Root: "HKCU"; Subkey: "{#BaseRegAoC}"; Flags: uninsdeletekey; Components: gameaoc
Root: "HKCU"; Subkey: "{#BaseRegAoC}"; ValueType: String; ValueName: "Rasterizer Name"; ValueData: "Direct3D Hardware TnL"; Flags: deletevalue; Components: gameaoc and not additional\directx_wrapper
Root: "HKCU"; Subkey: "{#BaseRegAoC}"; ValueType: String; ValueName: "Rasterizer Name"; ValueData: "Direct3D"; Flags: deletevalue; Components: gameaoc and additional\directx_wrapper 
Root: "HKCU"; Subkey: "{#BaseRegAoC}"; ValueType: String; ValueName: "Rasterizer Name"; ValueData: "Direct3D";  Flags: deletevalue; Check: IsWine; Components: gameaoc
Root: "HKCU"; Subkey: "{#BaseRegAoC}"; ValueType: Dword; ValueName: "AutoSave In Milliseconds"; ValueData: "$124F80"; Flags: createvalueifdoesntexist; Components: gameaoc
Root: "HKCU"; Subkey: "{#BaseRegAoC}\Game Options"; ValueType: String; ValueName: "Map Type"; ValueData: "Continental"; Flags: createvalueifdoesntexist; Components: gameaoc
Root: "HKCU"; Subkey: "{#BaseRegAoC}\Game Options"; ValueType: Dword; ValueName: "Map Size"; ValueData: "$2"; Flags: createvalueifdoesntexist; Components: gameaoc
Root: "HKCU"; Subkey: "{#BaseRegAoC}\Game Options"; ValueType: Dword; ValueName: "Starting Resources"; ValueData: "$3"; Flags: createvalueifdoesntexist; Components: gameaoc
Root: "HKCU"; Subkey: "{#BaseRegAoC}\Game Options"; ValueType: Dword; ValueName: "Starting Epoch"; ValueData: "$0"; Flags: createvalueifdoesntexist; Components: gameaoc
Root: "HKCU"; Subkey: "{#BaseRegAoC}\Game Options"; ValueType: Dword; ValueName: "Ending Epoch"; ValueData: "$E"; Flags: createvalueifdoesntexist; Components: gameaoc
Root: "HKCU"; Subkey: "{#BaseRegAoC}\Game Options"; ValueType: Dword; ValueName: "Game Unit Limit"; ValueData: "$4B0"; Flags: createvalueifdoesntexist; Components: gameaoc
Root: "HKCU"; Subkey: "{#BaseRegAoC}\Game Options"; ValueType: Dword; ValueName: "Wonders For Victory"; ValueData: "$0"; Flags: createvalueifdoesntexist; Components: gameaoc
Root: "HKCU"; Subkey: "{#BaseRegAoC}\Game Options"; ValueType: Dword; ValueName: "Game Variant"; ValueData: "$2"; Flags: createvalueifdoesntexist; Components: gameaoc
Root: "HKCU"; Subkey: "{#BaseRegAoC}\Game Options"; ValueType: Dword; ValueName: "Difficulty Level"; ValueData: "$0"; Flags: createvalueifdoesntexist; Components: gameaoc
Root: "HKCU"; Subkey: "{#BaseRegAoC}\Game Options"; ValueType: Dword; ValueName: "Game Speed"; ValueData: "$3"; Flags: createvalueifdoesntexist; Components: gameaoc
Root: "HKCU"; Subkey: "{#BaseRegAoC}\Game Options"; ValueType: Dword; ValueName: "Reveal Map"; ValueData: "$0"; Flags: createvalueifdoesntexist; Components: gameaoc
Root: "HKCU"; Subkey: "{#BaseRegAoC}\Game Options"; ValueType: Dword; ValueName: "Allow Custom Civs"; ValueData: "$1"; Flags: createvalueifdoesntexist; Components: gameaoc
Root: "HKCU"; Subkey: "{#BaseRegAoC}\Game Options"; ValueType: Dword; ValueName: "Lock Teams"; ValueData: "$1"; Flags: createvalueifdoesntexist; Components: gameaoc
Root: "HKCU"; Subkey: "{#BaseRegAoC}\Game Options"; ValueType: Dword; ValueName: "Lock Speed"; ValueData: "$1"; Flags: createvalueifdoesntexist; Components: gameaoc
Root: "HKCU"; Subkey: "{#BaseRegAoC}\Game Options"; ValueType: Dword; ValueName: "Cheat Codes"; ValueData: "$0"; Flags: createvalueifdoesntexist; Components: gameaoc
Root: "HKCU"; Subkey: "{#BaseRegAoC}"; ValueType: Dword; ValueName: "Music Volume"; ValueData: "$2C"; Flags: createvalueifdoesntexist; Components: gameaoc
Root: "HKCU"; Subkey: "{#BaseRegAoC}"; ValueType: Dword; ValueName: "Sound Volume"; ValueData: "$3C"; Flags: createvalueifdoesntexist; Components: gameaoc 
; Set Default 1920x1080 32 bits (Note : if Texture Bit Depth != Game Bit Depth, the main menu is just white and unreadable)
Root: "HKCU"; Subkey: "{#BaseRegAoC}"; ValueType: Dword; ValueName: "Game Window Height"; ValueData: "$438"; Flags: deletevalue; Components: gameaoc
Root: "HKCU"; Subkey: "{#BaseRegAoC}"; ValueType: Dword; ValueName: "Game Window Width"; ValueData: "$780"; Flags: deletevalue; Components: gameaoc 
Root: "HKCU"; Subkey: "{#BaseRegAoC}"; ValueType: Dword; ValueName: "Game Bit Depth"; ValueData: "$20"; Flags: deletevalue; Components: gameaoc
Root: "HKCU"; Subkey: "{#BaseRegAoC}"; ValueType: Dword; ValueName: "Texture Bit Depth"; ValueData: "$20"; Flags: deletevalue; Components: gameaoc
Root: "HKCU"; Subkey: "{#BaseRegAoC}"; ValueType: string; ValueName: "Installed From Volume"; ValueData: "{code:GetInstallDriveLetter}"; Flags: deletevalue; Components: gameaoc
Root: "HKCU"; Subkey: "{#BaseRegAoC}"; ValueType: string; ValueName: "Installed From Directory"; ValueData: "{code:GetInstallWithoutDriveLetterBase}\Empire Earth - The Art of Conquest\"; Components: gameaoc

[Icons]
#if InstallMode != "Portable"
  Name: "{group}\{#MyAppName}"; Filename: "{app}\Empire Earth\Empire Earth.exe"; Components: game;
  Name: "{group}\{#MyAppName} - AoC"; Filename: "{app}\Empire Earth - The Art of Conquest\EE-AOC.exe"; Components: gameaoc;
  Name: "{group}\{#MyAppName} Diagnostic"; Filename: "{app}\Tools\Diagnostic\EE-Diagnostic.exe"; Parameters: "{#SetupSetting("AppId")}_is1"; Components: additional\tools\diagnostic;
  ; Uncomment to add the Uninstall shortcut in the Start Menu
  ; Name: "{group}\{cm:UninstallProgram,Empire Earth}"; Filename: "{uninstallexe}"; 
  Name: "{autodesktop}\{#MyAppName}"; Filename: "{app}\Empire Earth\Empire Earth.exe"; Components: game; Tasks: desktopicon; 
  Name: "{autodesktop}\{#MyAppName} - AoC"; Filename: "{app}\Empire Earth - The Art of Conquest\EE-AOC.exe"; Components: gameaoc; Tasks: desktopicon; 
  Name: "{autoappdata}\Microsoft\Internet Explorer\Quick Launch\{#MyAppName}"; Filename: "{app}\Empire Earth\Empire Earth.exe"; Components: game; Tasks: quicklaunchicon; 
  Name: "{autoappdata}\Microsoft\Internet Explorer\Quick Launch\{#MyAppName} - AoC"; Filename: "{app}\Empire Earth - The Art of Conquest\EE-AOC.exe"; Components: gameaoc; Tasks: quicklaunchicon;
  Name: "{autoappdata}\Microsoft\Internet Explorer\Quick Launch\{#MyAppName} Diagnostic"; Filename: "{app}\Tools\Diagnostic\EE-Diagnostic.exe"; Parameters: "{#SetupSetting("AppId")}_is1"; Components: additional\tools\diagnostic; Tasks: quicklaunchicon;  
#endif

[InstallDelete]
; Supported Component modification : old GOG or Retail | dgVoodoo | dreXmod | Discord | Movies | Reborn | EEStats
; Other component are too hard to delete without maybe deleting user files (modding)
Type: files; Name: "{app}\Empire Earth\Empire Earth.exe"
Type: files; Name: "{app}\Empire Earth\D3D8.dll"
Type: files; Name: "{app}\Empire Earth\D3D9.dll"
Type: files; Name: "{app}\Empire Earth\D3DImm.dll"
Type: files; Name: "{app}\Empire Earth\DDraw.dll"
Type: files; Name: "{app}\Empire Earth\dgVoodooCpl.exe"
Type: files; Name: "{app}\Empire Earth\dgVoodoo.conf"
Type: files; Name: "{app}\Empire Earth\dreXmod.config"
Type: files; Name: "{app}\Empire Earth\dreXmod.dll"
Type: files; Name: "{app}\Empire Earth\Reborn.ini"
Type: files; Name: "{app}\Empire Earth\Reborn.dll"
Type: files; Name: "{app}\Empire Earth\EEStats.dll"
Type: files; Name: "{app}\Empire Earth\EEStats.log"
Type: filesandordirs; Name: "{app}\Empire Earth\Data\dxm"
Type: files; Name: "{app}\Empire Earth\discord_game_sdk.dll"
Type: files; Name: "{app}\Empire Earth\EEDiscordRichPresence.dll"
Type: files; Name: "{app}\Empire Earth\EEDiscord.dll"
Type: files; Name: "{app}\Empire Earth\Data\Scenarios\ScenDefault.scn"

Type: files; Name: "{app}\Empire Earth\OOS *"
Type: filesandordirs; Name: "{app}\Empire Earth\Data\Movies\";
; ----------------
Type: files; Name: "{app}\Empire Earth - The Art of Conquest\EE-AOC"
Type: files; Name: "{app}\Empire Earth - The Art of Conquest\D3D8.dll"
Type: files; Name: "{app}\Empire Earth - The Art of Conquest\D3D9.dll"
Type: files; Name: "{app}\Empire Earth - The Art of Conquest\D3DImm.dll"
Type: files; Name: "{app}\Empire Earth - The Art of Conquest\DDraw.dll"
Type: files; Name: "{app}\Empire Earth - The Art of Conquest\dgVoodooCpl.exe"
Type: files; Name: "{app}\Empire Earth - The Art of Conquest\dgVoodoo.conf"
Type: files; Name: "{app}\Empire Earth - The Art of Conquest\dreXmod.config"
Type: files; Name: "{app}\Empire Earth - The Art of Conquest\dreXmod.dll" 
Type: files; Name: "{app}\Empire Earth - The Art of Conquest\Reborn.ini" 
Type: files; Name: "{app}\Empire Earth - The Art of Conquest\Reborn.dll" 
Type: files; Name: "{app}\Empire Earth - The Art of Conquest\EEStats.dll"
Type: files; Name: "{app}\Empire Earth - The Art of Conquest\EEStats.log"
Type: filesandordirs; Name: "{app}\Empire Earth - The Art of Conquest\Data\dxm"
Type: files; Name: "{app}\Empire Earth - The Art of Conquest\discord_game_sdk.dll"
Type: files; Name: "{app}\Empire Earth - The Art of Conquest\EEDiscordRichPresence.dll"
Type: files; Name: "{app}\Empire Earth - The Art of Conquest\EEDiscord.dll"
Type: files; Name: "{app}\Empire Earth - The Art of Conquest\Data\Scenarios\ScenDefault.scn" 

Type: files; Name: "{app}\Empire Earth - The Art of Conquest\OOS *" 
Type: filesandordirs; Name: "{app}\Empire Earth - The Art of Conquest\Data\Movies\"
; ----------------
Type: files; Name: "{app}\{#AppID}"

[UninstallDelete]
; A little extra cleaning of the installed files
; Convention : Never delete the entire program folder !     
Type: files; Name: "{app}\Empire Earth\0_Error.log"
Type: files; Name: "{app}\Empire Earth\neoee.log"
Type: files; Name: "{app}\Empire Earth\upnp_info.txt"
Type: files; Name: "{app}\Empire Earth\Reborn.ini"
Type: files; Name: "{app}\Empire Earth\EEStats.log"
Type: filesandordirs; Name: "{app}\Empire Earth\Data\dxm"
Type: files; Name: "{app}\Empire Earth\_won*"
Type: files; Name: "{app}\Empire Earth\upnp_info.txt"
Type: filesandordirs; Name: "{app}\Empire Earth\_wonHTTPCache"
Type: files; Name: "{app}\Empire Earth\Data\Scenarios\ScenDefault.scn"
; portuguese_brazil create that dir for some reasons (not used)
Type: filesandordirs; Name: "{app}\Empire Earth\Users\default\Civilizações"
; ----------------
Type: files; Name: "{app}\Empire Earth - The Art of Conquest\0_Error.log" 
Type: files; Name: "{app}\Empire Earth - The Art of Conquest\neoee.log" 
Type: files; Name: "{app}\Empire Earth - The Art of Conquest\upnp_info.txt"
Type: files; Name: "{app}\Empire Earth - The Art of Conquest\Reborn.ini"
Type: files; Name: "{app}\Empire Earth - The Art of Conquest\EEStats.log"
Type: filesandordirs; Name: "{app}\Empire Earth - The Art of Conquest\Data\dxm"
Type: files; Name: "{app}\Empire Earth - The Art of Conquest\_won*"
Type: files; Name: "{app}\Empire Earth - The Art of Conquest\upnp_info.txt"
Type: filesandordirs; Name: "{app}\Empire Earth - The Art of Conquest\_wonHTTPCache"
Type: files; Name: "{app}\Empire Earth - The Art of Conquest\Data\Scenarios\ScenDefault.scn" 
; portuguese_brazil create that dir for some reasons (not used)
Type: filesandordirs; Name: "{app}\Empire Earth - The Art of Conquest\Users\default\Civilizações"
; ----------------
Type: filesandordirs; Name: "{app}\Tools\Diagnostic\log.txt"
 
Type: filesandordirs; Name: "{app}\{#AppID}"

[Run]
; Add Cert in Windows Trusted Root CA Store
#if SignSetup
  Filename: "{sys}\certutil.exe"; Parameters: "-addstore root ""{tmp}\{#CertFileName}"""; Flags: runhidden; Tasks: certinclude; \
    StatusMsg: "Adding Empire Earth Community Certificate Authority (issued by EnergyCube)"; MinVersion: 0,6.0; Components: game; Check: IsAdminInstallMode
  Filename: "{sys}\certutil.exe"; Parameters: "-user -addstore root ""{tmp}\{#CertFileName}"""; Flags: runhidden; Tasks: certinclude; \
    StatusMsg: "Adding Empire Earth Community Certificate Authority (issued by EnergyCube)"; MinVersion: 0,6.0; Components: game; Check: not IsAdminInstallMode
#endif

; Install DirectPlay (Never tested on x86) ({sys}\dism.exe should work)
; Disabled because seems useless
; Filename: "{win}\System32\dism.exe"; Parameters: "/Online /Enable-Feature /FeatureName:""DirectPlay"" /all /NoRestart"; Flags: runhidden; StatusMsg: "Installing DirectPlay"; \
;	MinVersion: 0,6.2; Tasks: directplay; Check: Is64BitInstallMode and IsAdminInstallMode
; Filename: "{win}\sysnative\dism.exe"; Parameters: "/Online /Enable-Feature /FeatureName:""DirectPlay"" /all /NoRestart"; Flags: runhidden; StatusMsg: "Installing DirectPlay"; \
;	MinVersion: 0,6.2; Tasks: directplay; Check: not Is64BitInstallMode and IsAdminInstallMode

; FireWall Remover (Copy from [UninstallRun] to remove previous entry in case it was missconfigured)
Filename: "{sys}\netsh.exe"; Parameters: "advfirewall firewall delete rule program=""{app}\Empire Earth\Empire Earth.exe"" name=all"; Flags: runhidden; \
  StatusMsg: "Removing {#MyAppName} in Firewall"; Tasks: firewallexception; MinVersion: 0,6.0; Components: game; Check: IsAdminInstallMode
Filename: "{sys}\netsh.exe"; Parameters: "advfirewall firewall delete rule program=""{app}\Empire Earth - The Art of Conquest\EE-AOC.exe"" name=all"; Flags: runhidden; \
  StatusMsg: "Removing {#MyAppName} : AoC in Firewall"; Tasks: firewallexception; MinVersion: 0,6.0; Components: gameaoc; Check: IsAdminInstallMode

; Old Windows FireWall (advfirewall is only available from Vista)
Filename: "{sys}\netsh.exe"; Parameters: "firewall delete portopening protocol=ALL port=33334"; Flags: runhidden; StatusMsg: "Removing {#MyAppName} Port in Firewall"; \
  Tasks: firewallexception; MinVersion: 0,5.0; OnlyBelowVersion: 0,6.0; Components: game; Check: IsAdminInstallMode
Filename: "{sys}\netsh.exe"; Parameters: "firewall delete portopening protocol=ALL port=33335"; Flags: runhidden; StatusMsg: "Removing {#MyAppName} Port in Firewall"; \
  Tasks: firewallexception; MinVersion: 0,5.0; OnlyBelowVersion: 0,6.0; Components: game; Check: IsAdminInstallMode
Filename: "{sys}\netsh.exe"; Parameters: "firewall delete portopening protocol=ALL port=33336"; Flags: runhidden; StatusMsg: "Removing {#MyAppName} Port in Firewall"; \
  Tasks: firewallexception; MinVersion: 0,5.0; OnlyBelowVersion: 0,6.0; Components: game; Check: IsAdminInstallMode

Filename: "{sys}\netsh.exe"; Parameters: "firewall delete allowedprogram ""{app}\Empire Earth\Empire Earth.exe"""; Flags: runhidden; \
  StatusMsg: "Removing {#MyAppName} in Firewall"; Tasks: firewallexception; MinVersion: 0,5.0; OnlyBelowVersion: 0,6.0; Components: game; Check: IsAdminInstallMode
Filename: "{sys}\netsh.exe"; Parameters: "firewall delete allowedprogram ""{app}\Empire Earth - The Art of Conquest\EE-AOC.exe"""; Flags: runhidden; \
  StatusMsg: "Removing {#MyAppName} : AoC in Firewall"; Tasks: firewallexception; MinVersion: 0,5.0; OnlyBelowVersion: 0,6.0; Components: gameaoc; Check: IsAdminInstallMode


; FireWall Register
Filename: "{sys}\netsh.exe"; Parameters: "advfirewall firewall add rule name=""{#MyAppName} - TCP - Out"" program=""{app}\Empire Earth\Empire Earth.exe"" protocol=TCP dir=out action=allow enable=yes localport=any"; \
  Flags: runhidden; Tasks: firewallexception;StatusMsg: "Opening Empire Earth in Firewall"; MinVersion: 0,6.0; Components: game; Check: IsAdminInstallMode 
Filename: "{sys}\netsh.exe"; Parameters: "advfirewall firewall add rule name=""{#MyAppName} - TCP - In"" program=""{app}\Empire Earth\Empire Earth.exe"" protocol=TCP dir=in action=allow enable=yes localport=any"; \
  Flags: runhidden; Tasks: firewallexception; StatusMsg: "Opening Empire Earth in Firewall"; MinVersion: 0,6.0; Components: game; Check: IsAdminInstallMode
Filename: "{sys}\netsh.exe"; Parameters: "advfirewall firewall add rule name=""{#MyAppName} - UDP - Out"" program=""{app}\Empire Earth\Empire Earth.exe"" protocol=UDP dir=out action=allow enable=yes localport=any"; \
  Flags: runhidden; Tasks: firewallexception; StatusMsg: "Opening Empire Earth in Firewall"; MinVersion: 0,6.0; Components: game; Check: IsAdminInstallMode
Filename: "{sys}\netsh.exe"; Parameters: "advfirewall firewall add rule name=""{#MyAppName} - UDP - In"" program=""{app}\Empire Earth\Empire Earth.exe"" protocol=UDP dir=in action=allow enable=yes localport=any"; \
  Flags: runhidden; Tasks: firewallexception; StatusMsg: "Opening Empire Earth in Firewall"; MinVersion: 0,6.0; Components: game; Check: IsAdminInstallMode

Filename: "{sys}\netsh.exe"; Parameters: "advfirewall firewall add rule name=""{#MyAppName} - AoC - TCP - Out"" program=""{app}\Empire Earth - The Art of Conquest\EE-AOC.exe"" protocol=TCP dir=out action=allow enable=yes localport=any"; \
  Flags: runhidden; Tasks: firewallexception; StatusMsg: "Opening Empire Earth : AoC in Firewall"; MinVersion: 0,6.0; Components: gameaoc; Check: IsAdminInstallMode
Filename: "{sys}\netsh.exe"; Parameters: "advfirewall firewall add rule name=""{#MyAppName} - AoC - TCP - In"" program=""{app}\Empire Earth - The Art of Conquest\EE-AOC.exe"" protocol=TCP dir=in action=allow enable=yes localport=any"; \
  Flags: runhidden; Tasks: firewallexception; StatusMsg: "Opening Empire Earth : AoC in Firewall"; MinVersion: 0,6.0; Components: gameaoc; Check: IsAdminInstallMode
Filename: "{sys}\netsh.exe"; Parameters: "advfirewall firewall add rule name=""{#MyAppName} - AoC - UDP - Out"" program=""{app}\Empire Earth - The Art of Conquest\EE-AOC.exe"" protocol=UDP dir=out action=allow enable=yes localport=any"; \
  Flags: runhidden; Tasks: firewallexception; StatusMsg: "Opening Empire Earth : AoC in Firewall"; MinVersion: 0,6.0; Components: gameaoc; Check: IsAdminInstallMode
Filename: "{sys}\netsh.exe"; Parameters: "advfirewall firewall add rule name=""{#MyAppName} - AoC - UDP - In"" program=""{app}\Empire Earth - The Art of Conquest\EE-AOC.exe"" protocol=UDP dir=in action=allow enable=yes localport=any"; \
  Flags: runhidden; Tasks: firewallexception; StatusMsg: "Opening Empire Earth : AoC in Firewall"; MinVersion: 0,6.0; Components: gameaoc; Check: IsAdminInstallMode

; Old Windows FireWall (advfirewall is only available from Vista)
Filename: "{sys}\netsh.exe"; Parameters: "firewall add portopening protocol=ALL port=33334 name=""{#MyAppName} Port 33334"""; Flags: runhidden; \
  StatusMsg: "Opening {#MyAppName} Port in Firewall"; MinVersion: 0,5.0; OnlyBelowVersion: 0,6.0; Tasks: firewallexception; Components: game; Check: IsAdminInstallMode
Filename: "{sys}\netsh.exe"; Parameters: "firewall add portopening protocol=ALL port=33335 name=""{#MyAppName} Port 33335"""; Flags: runhidden; \
  StatusMsg: "Opening {#MyAppName} Port in Firewall"; MinVersion: 0,5.0; OnlyBelowVersion: 0,6.0; Tasks: firewallexception; Components: game; Check: IsAdminInstallMode
Filename: "{sys}\netsh.exe"; Parameters: "firewall add portopening protocol=ALL port=33336 name=""{#MyAppName} Port 33336"""; Flags: runhidden; \
  StatusMsg: "Opening {#MyAppName} Port in Firewall"; MinVersion: 0,5.0; OnlyBelowVersion: 0,6.0; Tasks: firewallexception; Components: game; Check: IsAdminInstallMode

Filename: "{sys}\netsh.exe"; Parameters: "firewall add allowedprogram program=""{app}\Empire Earth\Empire Earth.exe"" name=""{#MyAppName}"" mode=ENABLE"; \
  Flags: runhidden; StatusMsg: "Opening {#MyAppName} in Firewall"; MinVersion: 0,5.0; OnlyBelowVersion: 0,6.0; Tasks: firewallexception; Components: game; Check: IsAdminInstallMode
Filename: "{sys}\netsh.exe"; Parameters: "firewall add allowedprogram program=""{app}\Empire Earth - The Art of Conquest\EE-AOC.exe"" name=""{#MyAppName} - AoC"" mode=ENABLE"; \
  Flags: runhidden; StatusMsg: "Opening {#MyAppName} : AoC in Firewall"; MinVersion: 0,5.0; OnlyBelowVersion: 0,6.0; Tasks: firewallexception; Components: gameaoc; Check: IsAdminInstallMode

; DX9 Setup
Filename: "{tmp}\dx9\DXSETUP.exe"; Parameters: "/silent"; Flags: runhidden; \
    StatusMsg: "Installing DirectX 9..."; MinVersion: 0,5.0; Components: additional\directx_wrapper\dx9; Check: IsAdminInstallMode

#if InstallType == "NeoEE"
  // Fake NeoEE register to show the right message while Code will install keys :)
  // /!\ This mean that this part should always be at the end of Run.
  Filename: "{sys}\cmd.exe"; Parameters: "/C"; Flags: runhidden; \
    StatusMsg: "Register Empire Earth NeoEE CDKey"; MinVersion: 0,5.0; Tasks: neoee_cdkeys; Components: game and not gameaoc; AfterInstall: RegisterCDKeys
  Filename: "{sys}\cmd.exe"; Parameters: "/C"; Flags: runhidden; \
    StatusMsg: "Register Empire Earth Neo EE & AoC CDKey"; MinVersion: 0,5.0; Tasks: neoee_cdkeys; Components: game and gameaoc; AfterInstall: RegisterCDKeys
#endif

[UninstallRun]
; Uninstall DirectPlay
; Disabled because seems useless
; Filename: "{win}\System32\dism.exe"; Parameters: "/Online /Disable-Feature /FeatureName:""DirectPlay"" /NoRestart"; Flags: runhidden; \
;	StatusMsg: "Uninstalling DirectPlay"; MinVersion: 0,6.2; Tasks: directplay; Check: Is64BitInstallMode and IsAdminInstallMode
; Filename: "{win}\sysnative\dism.exe"; Parameters: "/Online /Disable-Feature /FeatureName:""DirectPlay"" /NoRestart"; Flags: runhidden; \
;	StatusMsg: "Uninstalling DirectPlay"; MinVersion: 0,6.2; Tasks: directplay; Check: not Is64BitInstallMode and IsAdminInstallMode

; FireWall
Filename: "{sys}\netsh.exe"; Parameters: "advfirewall firewall delete rule program=""{app}\Empire Earth\Empire Earth.exe"" name=all"; Flags: runhidden; \
  StatusMsg: "Removing {#MyAppName} in Firewall"; Tasks: firewallexception; MinVersion: 0,6.0; Components: game; Check: IsAdminInstallMode
Filename: "{sys}\netsh.exe"; Parameters: "advfirewall firewall delete rule program=""{app}\Empire Earth - The Art of Conquest\EE-AOC.exe"" name=all"; Flags: runhidden; \
  StatusMsg: "Removing {#MyAppName} : AoC in Firewall"; Tasks: firewallexception; MinVersion: 0,6.0; Components: gameaoc; Check: IsAdminInstallMode

; Old Windows FireWall (advfirewall is only available from Vista)
Filename: "{sys}\netsh.exe"; Parameters: "firewall delete portopening protocol=ALL port=33334"; Flags: runhidden; \
  StatusMsg: "Removing {#MyAppName} Port in Firewall"; Tasks: firewallexception; MinVersion: 0,5.0; OnlyBelowVersion: 0,6.0; Components: game; Check: IsAdminInstallMode
Filename: "{sys}\netsh.exe"; Parameters: "firewall delete portopening protocol=ALL port=33335"; Flags: runhidden; \
  StatusMsg: "Removing {#MyAppName} Port in Firewall"; Tasks: firewallexception; MinVersion: 0,5.0; OnlyBelowVersion: 0,6.0; Components: game; Check: IsAdminInstallMode
Filename: "{sys}\netsh.exe"; Parameters: "firewall delete portopening protocol=ALL port=33336"; Flags: runhidden; \
  StatusMsg: "Removing {#MyAppName} Port in Firewall"; Tasks: firewallexception; MinVersion: 0,5.0; OnlyBelowVersion: 0,6.0; Components: game; Check: IsAdminInstallMode

Filename: "{sys}\netsh.exe"; Parameters: "firewall delete allowedprogram ""{app}\Empire Earth\Empire Earth.exe"""; Flags: runhidden; \
  StatusMsg: "Removing {#MyAppName} in Firewall"; Tasks: firewallexception; MinVersion: 0,5.0; OnlyBelowVersion: 0,6.0; Components: game; Check: IsAdminInstallMode
Filename: "{sys}\netsh.exe"; Parameters: "firewall delete allowedprogram ""{app}\Empire Earth - The Art of Conquest\EE-AOC.exe"""; Flags: runhidden; \
  StatusMsg: "Removing {#MyAppName} : AoC in Firewall"; Tasks: firewallexception; MinVersion: 0,5.0; OnlyBelowVersion: 0,6.0; Components: gameaoc; Check: IsAdminInstallMode

[Code]
// Since the setup need to work from 98 to 11 trying to use ssl would be a disaster
// So we will use HTTP only, GameVersionURL and SetupVersionURL URLs need to accept HTTP 
const
  SetupURL = 'http://empireearth.eu/download';
  DomainMain = 'empireearth.eu';
  DomainMirror = 'ee.zocker-160.de';
  
  function EEStats_runInVM: BOOL;
    external 'EEStats_runInVM@files:EEStats.dll stdcall setuponly';
  function EEStats_getUID: PAnsiChar;
    external 'EEStats_getUID@files:EEStats.dll stdcall setuponly';
  function EEStats_isWine: BOOL;
    external 'EEStats_isWine@files:EEStats.dll stdcall setuponly'; 
  function EEStats_getWineVersion: PAnsiChar;
    external 'EEStats_getWineVersion@files:EEStats.dll stdcall setuponly';
  function EEStats_getProcessorArch: PAnsiChar;
    external 'EEStats_getProcessorArch@files:EEStats.dll stdcall setuponly';
  function EEStats_isEmpireEarthRunning: BOOL;
    external 'EEStats_isEmpireEarthRunning@files:EEStats.dll stdcall setuponly'; 
  function EEStats_isTheArtOfConquestRunning: BOOL;
    external 'EEStats_isTheArtOfConquestRunning@files:EEStats.dll stdcall setuponly';


  // Yeah I know that's horrible x2 function just because we can add a a dll inside the uninstall setup
  function EEStats_runInVM_U: BOOL;
    external 'EEStats_runInVM@{app}\{#AppID}\EEStats.dll stdcall uninstallonly';
  function EEStats_getUID_U: PAnsiChar;
    external 'EEStats_getUID@{app}\{#AppID}\EEStats.dll stdcall uninstallonly';
  function EEStats_isWine_U: BOOL;
    external 'EEStats_isWine@{app}\{#AppID}\EEStats.dll stdcall uninstallonly'; 
  function EEStats_getWineVersion_U: PAnsiChar;
    external 'EEStats_getWineVersion@{app}\{#AppID}\EEStats.dll stdcall uninstallonly';
  function EEStats_getProcessorArch_U: PAnsiChar;
    external 'EEStats_getProcessorArch@{app}\{#AppID}\EEStats.dll stdcall uninstallonly';
  function EEStats_isEmpireEarthRunning_U: BOOL;
    external 'EEStats_isEmpireEarthRunning@{app}\{#AppID}\EEStats.dll stdcall uninstallonly'; 
  function EEStats_isTheArtOfConquestRunning_U: BOOL;
    external 'EEStats_isTheArtOfConquestRunning@{app}\{#AppID}\EEStats.dll stdcall uninstallonly';

var
  ManualInstallQuestionPage: TInputOptionWizardPage;
  GPUInstallQuestionPage: TInputOptionWizardPage;

function GetCompatibilityFlags(Param: String): String;
begin
  Result :=  '~'

  if WizardIsTaskSelected('everyoneadminstart') then
  begin
    Result := Result + ' RUNASADMIN'; 
  end;

  if WizardIsTaskSelected('compatibility') then
  begin
    Result := Result + ' DWM8And16BitMitigation HIGHDPIAWARE HeapClearAllocation';
  end;
end;

function GetInstallDriveLetter(Param: String): String;
begin
  Result := copy(ExpandConstant('{app}'), 1, 2);
end;

function GetInstallWithoutDriveLetter(Param: String): String;
var
  S : String;
begin
  S := ExpandConstant('{app}');
  delete(S, 1, 2);
  Result := S;
end;

function IsWine(): Boolean;
begin
  if not IsUninstaller then
    Result := EEStats_IsWine()
  else
    Result := EEStats_IsWine_U(); 
end;

function GetInstallWithoutDriveLetterBase(Param: String): String;
begin
    Result := UpperCase(GetInstallWithoutDriveLetter(Param));
end;

// Return True when update dialog return yes (= exit setup & open web page)
function CheckUpdate: Boolean;
var
  LatestVersion: String;
  UpdateMsg: String;
  ErrorCode : Integer;
begin
  Result := False;
  if (DownloadString('https://api.empireearth.eu/setup/?product={#AppID}&type=game&version={#MyAppVersion}', LatestVersion) <> -1)
    and (CompareStr(LatestVersion, 'false') = 0) then
  begin
    UpdateMsg := ExpandConstant('{cm:GameUpdate}');
    if (DownloadString('https://api.empireearth.eu/setup/?product={#AppID}&type=game', LatestVersion) <> -1) and (LatestVersion <> '') then 
      StringChangeEx(UpdateMsg, '[LAST]', LatestVersion, True)
    else
      StringChangeEx(UpdateMsg, '[LAST]', '?', True);
    if MsgBox(UpdateMsg, mbError, MB_YESNO) = IDYES then
    begin
      DownloadString('https://api.empireearth.eu/setup/?product={#AppID}', LatestVersion);
      if (LatestVersion <> '') then
        ShellExec('', LatestVersion, '', '', SW_SHOW, ewNoWait, ErrorCode) // Direct File
      else 
        ShellExec('', SetupURL, '', '', SW_SHOW, ewNoWait, ErrorCode); // Fallback
      Result := True;
      Exit;
    end;
  end else if (DownloadString('https://api.empireearth.eu/setup/?product={#AppID}&type=setup&version={#MySetupVersion}', LatestVersion) <> -1)
    and (CompareStr(LatestVersion, 'false') = 0) then
  begin
    UpdateMsg := ExpandConstant('{cm:SetupUpdate}');
    if (DownloadString('https://api.empireearth.eu/setup/?product={#AppID}&type=setup', LatestVersion) <> -1) and (LatestVersion <> '') then 
      StringChangeEx(UpdateMsg, '[LAST]', LatestVersion, True)
    else
      StringChangeEx(UpdateMsg, '[LAST]', '?', True);
    if MsgBox(UpdateMsg, mbError, MB_YESNO) = IDYES then
    begin
      DownloadString('https://api.empireearth.eu/setup/?product={#AppID}', LatestVersion);
      if (LatestVersion <> '') then 
        ShellExec('', LatestVersion, '', '', SW_SHOW, ewNoWait, ErrorCode) // Direct File
      else 
        ShellExec('', SetupURL, '', '', SW_SHOW, ewNoWait, ErrorCode); // Fallback
      Result := True;
      Exit;
    end;
  end;
end;

function InitializeSetup: Boolean;
var
  ErrorCode : Integer;
begin
  Result := False;

  if (IsWine()) then
  begin
    Log('Wine detected v' + EEStats_getWineVersion());
  end;

  if (not WizardSupressMsgBoxes) then
  begin
    if (CheckUpdate()) then
    begin
      Log('Update found and user want to download it! Exiting setup...');
      Exit;
    end
  end
  else begin
    Log('Update check skipped because using silent mode');
  end;
  
  // Already Installed
  if (not IsGameInstalled() and not WizardSupressMsgBoxes) then
  begin
    // Legal Question
    if MsgBox(ExpandConstant('{cm:LegalQuestion}'), mbConfirmation, MB_YESNO) = IDNO then
    begin
      ShellExec('', 'https://www.gog.com/game/empire_earth_gold_edition', '', '', SW_SHOW, ewNoWait, ErrorCode);
      Exit;
    end;
  end;

#if TestID != 0
  // Test Warning, force pop up even with silent mode
  if WizardSupressMsgBoxes = False then
    MsgBox('THIS IS A TEST SETUP ID = {#TestID} [Setup v{#MySetupVersion} - Game v{#MyAppVersion}]' + #13#10 + 'PLEASE USE THIS INSTALLER ONLY FOR TESTING' + #13#10 + 'DO >>NOT<< SHARE IT!' , mbInformation, MB_OK);
#endif
  
  // AntiVirus/Portable/User Warning
  if (WizardSupressMsgBoxes = False) then
  begin
    if IsAdminInstallMode and not IsWine then
    begin
      MsgBox(ExpandConstant('{cm:AntiVirusWarning}'), mbInformation, MB_OK);
    end;
        
    if (ExpandConstant('{#InstallMode}') = 'Portable') then
    begin
      if MsgBox(ExpandConstant('{cm:PortableQuestion}'), mbConfirmation, MB_YESNO) = IDNO then
        Exit;
      end
    else if (not IsAdminInstallMode) then
    begin
      MsgBox(ExpandConstant('{cm:UserInstallMode}'), mbInformation, MB_OK);
    end;
  end;
  
#if InstallType == "NeoEE"
  // Wine Environment Detection
  if (IsWine() and not WizardSupressMsgBoxes) then
    MsgBox('Wine Detected !' + #13#10 + 'NeoEE connection GUI which causes the game to crash because it uses GDI will be disabled.'
            + #13#10 + 'You should be able to enable it again if you install GDI/GDI+ with winetricks', mbInformation, MB_OK);
#endif

  if ((not WizardSupressMsgBoxes and not IsWine()) or not IsWine()) then
  begin
    bassInit();
  end;
  
  Result :=  True;
end;

function WizardIsAnotherGameTaskInstalledMultiSetup(Compo: String): Boolean;
var
  I: Integer;
  Tmp: String;
  ArrayTmp: TArrayOfString;
begin
  Result := False;
  if RegQueryStringValue(HKA, GetUninstallRegPath(True), 'Inno Setup: Selected Tasks', Tmp) then
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

function WizardIsTaskInstalledMultiSetup(Compo: String): Boolean;
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
      if Pos(Compo, ArrayTmp[I]) > 0 then
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

procedure SendSetupTelemetry();
var
  InstallUrlStats: String;
begin
  Log('Sending setup stats over HTTPS!');
  InstallUrlStats := ExpandConstant('api.' + DomainMain + '/eestats/setup/'
    + '?install_type={#AppID}'
    + '&install_lang={language}'
    + '&is_uninstall=' + IntToStr(Integer(IsUninstaller))
    + '&setup_version={#MySetupVersion}' 
    + '&game_version={#MyAppVersion}');

  if (not IsUninstaller) then
  begin
    InstallUrlStats := (InstallUrlStats + '&components=' + WizardSelectedComponents(false) + '&tasks=' + WizardSelectedTasks(false))
    InstallUrlStats := InstallUrlStats + '&arch=' + EEStats_getProcessorArch()
  end else begin                                                                 
    InstallUrlStats := InstallUrlStats + '&arch=' + EEStats_getProcessorArch_U()
  end;

  // Allow telemetry ?
  // Well we can send UID (We could also do it if not allowed since it's already anonymized
  // but it's a good way for us to know how many % ppl accept or refuse :>)   
  if ((not IsUninstaller and WizardIsComponentSelected('additional\telemetry')) or (IsUninstaller and WizardIsComponentInstalledMultiSetup('additional\telemetry'))) then
  begin
    if (IsUninstaller) then
      InstallUrlStats := (InstallUrlStats + '&user_uid=' + EEStats_getUID_U())
    else
      InstallUrlStats := (InstallUrlStats + '&user_uid=' + EEStats_getUID());
  end else begin
    InstallUrlStats := (InstallUrlStats + '&user_uid=REFUSED')
  end;

  if (IsGameInstalled) then
  begin 
    InstallUrlStats := (InstallUrlStats + '&already_installed=1');
    InstallUrlStats := (InstallUrlStats + '&install_update=' + IntToStr(Integer(WizardIsUpdate())))
  end else begin
      InstallUrlStats := (InstallUrlStats + '&already_installed=0')
      InstallUrlStats := (InstallUrlStats + '&install_update=0')
  end;

  if (IsUninstaller) then
    InstallUrlStats := (InstallUrlStats + '&os_virtual_machine=' + IntToStr(Integer(EEStats_runInVM_U())))
  else                                                                                                    
    InstallUrlStats := (InstallUrlStats + '&os_virtual_machine=' + IntToStr(Integer(EEStats_runInVM())));


  if (IsWine()) then
  begin
    InstallUrlStats := (InstallUrlStats + '&wine=1')
    if (IsUninstaller) then
      InstallUrlStats := InstallUrlStats + '&os_version=' + EEStats_getWineVersion_U()
    else                                                                              
      InstallUrlStats := InstallUrlStats + '&os_version=' + EEStats_getWineVersion();
  end else begin
    InstallUrlStats := InstallUrlStats + '&os_version=' + GetWindowsVersionString() 
    InstallUrlStats := (InstallUrlStats + '&wine=0')
  end;      

  if (SendRequest('https://' + InstallUrlStats) <> 200) then
  begin
    Log('Failed to send setup stats! Trying HTTP');
  end;
end;

procedure CurUninstallStepChanged(CurUninstallStep: TUninstallStep);
var
  ErrorCode: Integer;
begin
  if (CurUninstallStep = usUninstall) then begin
    SendSetupTelemetry();
    UnloadDLL(ExpandConstant('{app}\{#AppID}\EEStats.dll'));
  end else if (CurUninstallStep = usPostUninstall) then
  begin
#if CertInclude
    // We do 2 checks, because we want to delete the right certificate (user or admin) but also ensure that
    // the given certificate isn't still used by another install mode (EE/Neo)
    if (WizardIsTaskInstalledMultiSetup('certinclude')) then
    begin
      Log('Removing certificate from store ({#CertHashSHA1})');
      if IsAdminInstallMode and not WizardIsAnotherGameTaskInstalledMultiSetup('certinclude') then
      begin
        Exec(ExpandConstant('{sys}\certutil.exe'), '-delstore root ""{#CertHashSHA1}"""', '', SW_HIDE, ewWaitUntilTerminated, ErrorCode);
      end
      else if not IsAdminInstallMode and not WizardIsAnotherGameTaskInstalledMultiSetup('certinclude') then
      begin
        Exec(ExpandConstant('{sys}\certutil.exe'), '-user -delstore root ""{#CertHashSHA1}""', '', SW_HIDE, ewWaitUntilTerminated, ErrorCode);
      end;
    end;
#endif
  end;
end;

function ShouldSkipPage(PageID: Integer): Boolean;
begin
  // If components or taks page and recommanded install type -> don't show those page
  if ((PageID = wpSelectComponents) or (PageID = wpSelectTasks)) and (ManualInstallQuestionPage.Values[3] = False) then
  begin
    Result := True;
  end
  else if (PageID = GPUInstallQuestionPage.ID) and ((ManualInstallQuestionPage.Values[0] = False) or IsWine()) then
  begin
    Result := True;
  end;
end;

#if InstallType == "NeoEE"
procedure RegisterCDKeys();
var
  AuthExitCode: Integer;
begin
    AuthExitCode := 0;

    if (IsWine() = True) then
    begin
        MsgBox('You are using Wine! Sadly CD Keys can''t be generated for security, we will probably implement that later.' + #13#10 + 
          'For the moment contact Reborn or NeoEE devs to get a key for your Wine installation', mbError, MB_OK)
        exit;
    end;

    Sleep(1000); // Wait for potential AV detection

    if (not FileExists(ExpandConstant('{tmp}\authtools.exe'))) then
    begin
        Log('CD Keys generation failed! Unable to find authtools.exe! Probably removed by the Anti-Virus!') 
        MsgBox('Your Anti-Virus deleted the file used to generate the NeoEE CD Keys, making your game unable to play on NeoEE.' + #13#10 + 
          'Please disable your Anti-Virus and install NeoEE again!!', mbError, MB_OK)
        Exit;
    end;

    // NeoEE CDKeys Regedit Hell
    // HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Sierra\CDKeys
    // HKEY_LOCAL_MACHINE\Software\Sierra\CDKeys
    if (WizardIsComponentSelected('game') and not WizardIsComponentSelected('gameaoc') and not IsWine()) then
    begin
      Log('Register NeoEE CD Keys for EE'); 
      Exec(ExpandConstant('{tmp}\authtools.exe'), ExpandConstant('-eec={app}\Empire Earth, -authserv=neoee.net, -port=10003'), '',
        SW_HIDE, ewWaitUntilTerminated, AuthExitCode);
    end
    else if (WizardIsComponentSelected('game') and WizardIsComponentSelected('gameaoc') and not IsWine()) then
    begin
      Log('Register NeoEE CD Keys for EE and AoC');
      Exec(ExpandConstant('{tmp}\authtools.exe'), ExpandConstant('-eec={app}\Empire Earth, -aoc={app}\Empire Earth - The Art of Conquest, -authserv=neoee.net, -port=10003'), '',
        SW_HIDE, ewWaitUntilTerminated, AuthExitCode);
    end;
    
    Log('CD Keys generation result: ' + IntToStr(AuthExitCode));

    if (WizardSupressMsgBoxes = False) then
    begin
      if (AuthExitCode = 1) then
        MsgBox('Unable to install CD Keys: Virtual Machine Detected' + #13#10 + 'Contact Reborn or NeoEE devs to get a key for your Virtual Machine.', mbError, MB_OK)
      else if (AuthExitCode = 2) then
        MsgBox('Unable to install CD Keys: Unknown Error', mbError, MB_OK)
      else if (AuthExitCode = 3) then
        MsgBox('Unable to install CD Keys: Network Error' + #13#10 + 'If you very recently installed NeoEE this error is normal.', mbError, MB_OK)
      else if (AuthExitCode = 5) then
        MsgBox('Unable to install CD Keys: Sythax Error', mbError, MB_OK)
      else if (AuthExitCode <> 0) then
        MsgBox('Unknown error when installing CD Keys.', mbError, MB_OK);
    end;
end;
#endif

procedure RegisterOnlineFiles();
var
  BaseDomainName: String;
  BaseDomainMirror: String;
begin
  // Register Online Files (Game default is in english, online files will recover the located one if asked)
  // Mirror Order
  // EE Community (Energy) => Zocker
  // Storage Localized structure : {base_url}/localized/{language}/{GameType}/
  // Note: EELearningCampaign.ssa is the same for AoC, the setup will copy the one of EE    
  BaseDomainName := ExpandConstant('files.' + DomainMain + '/localized/{language}');
  BaseDomainMirror := ExpandConstant('storage.' + BaseDomainMirror + '/localized/{language}');
  
  // Clears files if the user have the bad idea of going back to component to change them
  Log('Clear download file list');
  idpClearFiles();

  Log('Adding file list to download');
  // EE Community Server
  idpAddFileComp(ExpandConstant('https://' + BaseDomainName + '/EE/Language.dll'), ExpandConstant('{tmp}\EE\Language.dll'), 'game\update'); 
  idpAddFileComp(ExpandConstant('https://' + BaseDomainName + '/EE/Data/data.ssa'), ExpandConstant('{tmp}\EE\Data\data.ssa'), 'game\update');
  idpAddFileComp(ExpandConstant('https://' + BaseDomainName + '/EE/Data/Campaigns/EELearningCampaign.ssa'), ExpandConstant('{tmp}\EE\Data\Campaigns\EELearningCampaign.ssa'), 'game\update');
  idpAddFileComp(ExpandConstant('https://' + BaseDomainName + '/EE/Data/Campaigns/EETheBritish.ssa'), ExpandConstant('{tmp}\EE\Data\Campaigns\EETheBritish.ssa'), 'game\update');
  idpAddFileComp(ExpandConstant('https://' + BaseDomainName + '/EE/Data/Campaigns/EETheFuture.ssa'), ExpandConstant('{tmp}\EE\Data\Campaigns\EETheFuture.ssa'), 'game\update');
  idpAddFileComp(ExpandConstant('https://' + BaseDomainName + '/EE/Data/Campaigns/EETheGermans.ssa'), ExpandConstant('{tmp}\EE\Data\Campaigns\EETheGermans.ssa'), 'game\update'); 
  idpAddFileComp(ExpandConstant('https://' + BaseDomainName + '/EE/Data/Campaigns/EETheGreeks.ssa'), ExpandConstant('{tmp}\EE\Data\Campaigns\EETheGreeks.ssa'), 'game\update');
  if (WizardIsComponentSelected('additional\movies')) then
  begin        
    idpAddFileComp(ExpandConstant('https://' + BaseDomainName + '/EE/Data/Movies/Empire Earth.bik'), ExpandConstant('{tmp}\EE\Data\Movies\Empire Earth.bik'), 'game\update');
  end;   
  idpAddFileComp(ExpandConstant('https://' + BaseDomainName + '/shared/Data/WONLobby Resources/_WONStatus.cfg'), ExpandConstant('{tmp}\EE\Data\WONLobby Resources\_WONStatus.cfg'), 'game\update');
  idpAddFileComp(ExpandConstant('https://' + BaseDomainName + '/shared/Data/WONLobby Resources/_GameResource.cfg'), ExpandConstant('{tmp}\EE\Data\WONLobby Resources\_GameResource.cfg'), 'game\update');
  idpAddFileComp(ExpandConstant('https://' + BaseDomainName + '/shared/Data/WONLobby Resources/_LobbyResource.cfg'), ExpandConstant('{tmp}\EE\Data\WONLobby Resources\_LobbyResource.cfg'), 'game\update');
  #if InstallType == "NeoEE"
    idpAddFileComp(ExpandConstant('https://' + BaseDomainName + '/shared/Data/WONLobby Resources/_NeoEEResource.cfg'), ExpandConstant('{tmp}\EE\Data\WONLobby Resources\_NeoEEResource.cfg'), 'game\update');
  #endif

  // Zocker Server
  idpAddMirror(ExpandConstant('https://' + BaseDomainName + '/EE/Language.dll'), ExpandConstant('https://' + BaseDomainMirror + '/EE/Language.dll')); 
  idpAddMirror(ExpandConstant('https://' + BaseDomainName + '/EE/Data/data.ssa'), ExpandConstant('https://' + BaseDomainMirror + '/EE/Data/data.ssa'));
  idpAddMirror(ExpandConstant('https://' + BaseDomainName + '/EE/Data/Campaigns/EELearningCampaign.ssa'), ExpandConstant('https://' + BaseDomainMirror + '/EE/Data/Campaigns/EELearningCampaign.ssa'));
  idpAddMirror(ExpandConstant('https://' + BaseDomainName + '/EE/Data/Campaigns/EETheBritish.ssa'), ExpandConstant('https://' + BaseDomainMirror + '/EE/Data/Campaigns/EETheBritish.ssa'));
  idpAddMirror(ExpandConstant('https://' + BaseDomainName + '/EE/Data/Campaigns/EETheFuture.ssa'), ExpandConstant('https://' + BaseDomainMirror + '/EE/Data/Campaigns/EETheFuture.ssa'));
  idpAddMirror(ExpandConstant('https://' + BaseDomainName + '/EE/Data/Campaigns/EETheGermans.ssa'), ExpandConstant('https://' + BaseDomainMirror + '/EE/Data/Campaigns/EETheGermans.ssa'));
  idpAddMirror(ExpandConstant('https://' + BaseDomainName + '/EE/Data/Campaigns/EETheGreeks.ssa'), ExpandConstant('https://' + BaseDomainMirror + '/EE/Data/Campaigns/EETheGreeks.ssa'));
  if (WizardIsComponentSelected('additional\movies')) then
  begin
    idpAddMirror(ExpandConstant('https://' + BaseDomainName + '/EE/Data/Movies/Empire Earth.bik'), ExpandConstant('https://' + BaseDomainMirror + '/EE/Data/Movies/Empire Earth.bik'));
  end;
  idpAddMirror(ExpandConstant('https://' + BaseDomainName + '/shared/Data/WONLobby Resources/_WONStatus.cfg'), ExpandConstant('https://' + BaseDomainMirror + '/EE/Data/WONLobby Resources/_WONStatus.cfg'));
  idpAddMirror(ExpandConstant('https://' + BaseDomainName + '/shared/Data/WONLobby Resources/_GameResource.cfg'), ExpandConstant('https://' + BaseDomainMirror + '/EE/Data/WONLobby Resources/_GameResource.cfg')); 
  idpAddMirror(ExpandConstant('https://' + BaseDomainName + '/shared/Data/WONLobby Resources/_LobbyResource.cfg'), ExpandConstant('https://' + BaseDomainMirror + '/EE/Data/WONLobby Resources/_LobbyResource.cfg'));
  #if InstallType == "NeoEE"
    idpAddMirror(ExpandConstant('https://' + BaseDomainName + '/shared/Data/WONLobby Resources/_NeoEEResource.cfg'), ExpandConstant('https://' + BaseDomainMirror + '/EE/Data/WONLobby Resources/_NeoEEResource.cfg'));
  #endif

  // -------- AoC --------
  
  // EE Community Server
  idpAddFileComp(ExpandConstant('https://' + BaseDomainName + '/AoC/Language.dll'), ExpandConstant('{tmp}\AoC\Language.dll'), 'gameaoc\update');
  idpAddFileComp(ExpandConstant('https://' + BaseDomainName + '/AoC/Data/data.ssa'), ExpandConstant('{tmp}\AoC\Data\data.ssa'), 'gameaoc\update');
  idpAddFileComp(ExpandConstant('https://' + BaseDomainName + '/AoC/Data/Campaigns/AOCAsian.ssa'), ExpandConstant('{tmp}\AoC\Data\Campaigns\AOCAsian.ssa'), 'gameaoc\update');
  idpAddFileComp(ExpandConstant('https://' + BaseDomainName + '/AoC/Data/Campaigns/AOCPacific.ssa'), ExpandConstant('{tmp}\AoC\Data\Campaigns\AOCPacific.ssa'), 'gameaoc\update');
  idpAddFileComp(ExpandConstant('https://' + BaseDomainName + '/AoC/Data/Campaigns/AOCRoman.ssa'), ExpandConstant('{tmp}\AoC\Data\Campaigns\AOCRoman.ssa'), 'gameaoc\update'); 
  idpAddFileComp(ExpandConstant('https://' + BaseDomainName + '/shared/Data/WONLobby Resources/_WONStatus.cfg'), ExpandConstant('{tmp}\AoC\Data\WONLobby Resources\_WONStatus.cfg'), 'gameaoc\update');    
  idpAddFileComp(ExpandConstant('https://' + BaseDomainName + '/shared/Data/WONLobby Resources/_GameResource.cfg'), ExpandConstant('{tmp}\AoC\Data\WONLobby Resources\_GameResource.cfg'), 'gameaoc\update');
  idpAddFileComp(ExpandConstant('https://' + BaseDomainName + '/shared/Data/WONLobby Resources/_LobbyResource.cfg'), ExpandConstant('{tmp}\AoC\Data\WONLobby Resources\_LobbyResource.cfg'), 'gameaoc\update');   
  #if InstallType == "NeoEE"
    idpAddFileComp(ExpandConstant('https://' + BaseDomainName + '/shared/Data/WONLobby Resources/_NeoEEResource.cfg'), ExpandConstant('{tmp}\AoC\Data\WONLobby Resources\_NeoEEResource.cfg'), 'gameaoc\update');
  #endif

  // Zocker Server
  idpAddMirror(ExpandConstant('https://' + BaseDomainName + '/AoC/Language.dll'), ExpandConstant('https://' + BaseDomainMirror + '/AoC/Language.dll'));
  idpAddMirror(ExpandConstant('https://' + BaseDomainName + '/AoC/Data/data.ssa'), ExpandConstant('https://' + BaseDomainMirror + '/AoC/Data/data.ssa'))
  idpAddMirror(ExpandConstant('https://' + BaseDomainName + '/AoC/Data/Campaigns/AOCAsian.ssa'), ExpandConstant('https://' + BaseDomainMirror + '/AoC/Data/Campaigns/AOCAsian.ssa'));
  idpAddMirror(ExpandConstant('https://' + BaseDomainName + '/AoC/Data/Campaigns/AOCPacific.ssa'), ExpandConstant('https://' + BaseDomainMirror + '/AoC/Data/Campaigns/AOCPacific.ssa'));
  idpAddMirror(ExpandConstant('https://' + BaseDomainName + '/AoC/Data/Campaigns/AOCRoman.ssa'), ExpandConstant('https://' + BaseDomainMirror + '/AoC/Data/Campaigns/AOCRoman.ssa'));
  idpAddMirror(ExpandConstant('https://' + BaseDomainName + '/shared/Data/WONLobby Resources/_WONStatus.cfg'), ExpandConstant('https://' + BaseDomainMirror + '/AoC/Data/WONLobby Resources/_WONStatus.cfg'));
  idpAddMirror(ExpandConstant('https://' + BaseDomainName + '/shared/Data/WONLobby Resources/_GameResource.cfg'), ExpandConstant('https://' + BaseDomainMirror + '/AoC/Data/WONLobby Resources/_GameResource.cfg'));
  idpAddMirror(ExpandConstant('https://' + BaseDomainName + '/shared/Data/WONLobby Resources/_LobbyResource.cfg'), ExpandConstant('https://' + BaseDomainMirror + '/AoC/Data/WONLobby Resources/_LobbyResource.cfg'));
  #if InstallType == "NeoEE"
    idpAddMirror(ExpandConstant('https://' + BaseDomainName + '/shared/Data/WONLobby Resources/_NeoEEResource.cfg'), ExpandConstant('https://' + BaseDomainMirror + '/AoC/Data/WONLobby Resources/_NeoEEResource.cfg'));
  #endif
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

function NextButtonClick(CurPageID: Integer): Boolean;
begin
  if (CurPageID = ManualInstallQuestionPage.ID) then
  begin
    if (ManualInstallQuestionPage.Values[0]) then
    begin
      if (ManualInstallQuestionPage.Values[1]) then
      begin
        WizardSelectComponents('game');
        WizardSelectComponents('!gameaoc');
      end
      else if (ManualInstallQuestionPage.Values[2]) then
      begin
        WizardSelectComponents('game');
        WizardSelectComponents('gameaoc');
      end;
    end
    else if (IsGameInstalled() and not ManualInstallQuestionPage.Values[0]) then
    begin
      // For some reasons WizardSelectComponents (on top) will badly unselect the component
      // This make any component(/task?) unselected by code automatically re-selected on reinstall...  
      if (WizardIsComponentInstalledMultiSetup('gameaoc')) then
        WizardSelectComponents('gameaoc')
      else
        WizardSelectComponents('!gameaoc');
    end;

  if (not WizardIsComponentInstalledMultiSetup('additional\telemetry')) then
  begin
    if (IsGameInstalled()) then
      if (ManualInstallQuestionPage.Values[5]) then
      begin
        WizardSelectComponents('additional\telemetry');
      end
      else begin
        WizardSelectComponents('!additional\telemetry');
      end
    else if (not IsGameInstalled()) then
    if (ManualInstallQuestionPage.Values[4]) then
      begin
        WizardSelectComponents('additional\telemetry');
      end
      else begin
        WizardSelectComponents('!additional\telemetry');
      end
    end;
  end;

  if (CurPageID = GPUInstallQuestionPage.ID) then
  begin

    if (GPUInstallQuestionPage.Values[0]) then          // NVIDIA
    begin
      Log('Using NVIDIA GPU settings');
      WizardSelectComponents('!additional\directx_wrapper');
    end
    else if (GPUInstallQuestionPage.Values[1]) then     // AMD
    begin
      Log('Using AMD GPU settings');
      if (IsWindows10OrNewer) then     
        WizardSelectComponents('additional\directx_wrapper\dx12_lvl11')
      else
        WizardSelectComponents('additional\directx_wrapper\dx11_lvl10');
    end
    else if (GPUInstallQuestionPage.Values[2]) then     // Intel Sh$t
    begin
      Log('Using Intel GPU settings');
      WizardSelectComponents('additional\directx_wrapper\dx11_lvl10');
    end
    else if (GPUInstallQuestionPage.Values[3]) then     // Idk
    begin
      Log('Using general GPU settings');  
      WizardSelectComponents('additional\directx_wrapper\dx9');
    end;

  end;

  if (CurPageID = wpFinished) then
  begin 
    SendSetupTelemetry();
  end;

  // Register files after components page
  if (CurPageID = wpReady) then
	begin
    RegisterOnlineFiles();
  end;
  Result := True;
end;

{ Setup }
procedure InitializeWizard;
var
  BackgroundImage: TBitmapImage;
  Diff: double;
  ScrWidth: double;
  ScrHeight: double;
begin

  // Manual or custom install page
  Log('Create install manual/custom page');
  ManualInstallQuestionPage :=
    CreateInputOptionPage(wpSelectDir, ExpandConstant('{cm:MIQP_Title}'),
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
    ManualInstallQuestionPage.Values[4] := True
  end;

  if (not WizardIsComponentInstalledMultiSetup('additional\telemetry')) then
  begin
    if (IsGameInstalled()) then
    begin
      ManualInstallQuestionPage.AddEx('&' + 'Allow telemetry to improve the game compatibility and follow it''s evolution', 0, False);
      ManualInstallQuestionPage.Values[5] := True;
    end
    else begin
      ManualInstallQuestionPage.AddEx('&' + 'Allow telemetry to improve the game compatibility and follow it''s evolution', 0, False);
      ManualInstallQuestionPage.Values[4] := True;
    end
  end;

  // GPU vendor slector page
  Log('Create GPU DirectX Wrapper selection');
  GPUInstallQuestionPage :=
    CreateInputOptionPage(ManualInstallQuestionPage.ID, ExpandConstant('{cm:GPUIQP_Title}'),
      ExpandConstant('{cm:GPUIQP_Desc}'), ExpandConstant('{cm:GPUIQP_Content}'), True, False);

  GPUInstallQuestionPage.Add('&' + ExpandConstant('{cm:GPUIQP_NVIDIA}') + ' (DirectX Native)');
  if (IsWindows10OrNewer) then
    GPUInstallQuestionPage.Add('&' + ExpandConstant('{cm:GPUIQP_AMD}') + ' (DirectX Wrapper 12)')
  else                                                                                         
    GPUInstallQuestionPage.Add('&' + ExpandConstant('{cm:GPUIQP_AMD}') + ' (DirectX Wrapper 11)');
  GPUInstallQuestionPage.Add('&' + ExpandConstant('{cm:GPUIQP_Intel}' + ' (DirectX Wrapper 11)'));
  GPUInstallQuestionPage.Add('&' + ExpandConstant('{cm:GPUIQP_Default}' + ' (DirectX Wrapper 9)'));    
  GPUInstallQuestionPage.Values[3] := True;
  
  Log('Init setup background');
  BackgroundImage := TBitmapImage.Create(MainForm);
  BackgroundImage.Parent := MainForm;
  BackgroundImage.SetBounds(0, 0, MainForm.ClientWidth, MainForm.ClientHeight);
  BackgroundImage.Stretch := True;

  // Auto Select 16:9 or 4:3
  ScrWidth := MainForm.ClientWidth;
  ScrHeight := MainForm.ClientHeight;

  Diff := ScrWidth / ScrHeight
  
  Log('Extracting and defining image banner');
  if (Diff > 1.55) then
  begin
    ExtractTemporaryFile('SetupBackground-16-9.bmp');
    BackgroundImage.Bitmap.LoadFromFile(ExpandConstant('{tmp}\SetupBackground-16-9.bmp'));
  end;

  if (Diff <= 1.55) then
  begin
    ExtractTemporaryFile('SetupBackground-4-3.bmp');
    BackgroundImage.Bitmap.LoadFromFile(ExpandConstant('{tmp}\SetupBackground-4-3.bmp'));
  end;

  if ((not WizardSupressMsgBoxes and not IsWine()) or not IsWine()) then
  begin
    bassCreateButton();
  end;

  // Create tmp dir to download files
  CreateDir(ExpandConstant('{tmp}\EE'));
  CreateDir(ExpandConstant('{tmp}\EE\Data'));
  CreateDir(ExpandConstant('{tmp}\EE\Data\Campaigns'));  
  CreateDir(ExpandConstant('{tmp}\EE\Data\Movies'));   
  CreateDir(ExpandConstant('{tmp}\EE\Data\WONLobby Resources'))
  CreateDir(ExpandConstant('{tmp}\AoC'));        
  CreateDir(ExpandConstant('{tmp}\AoC\Data'));
  CreateDir(ExpandConstant('{tmp}\AoC\Data\Campaigns'));     
  CreateDir(ExpandConstant('{tmp}\AoC\Data\WONLobby Resources'));

  idpSetOption('DetailedMode',  '1');   
  idpSetOption('ConnectTimeout', '500');  
  idpSetOption('SendTimeout', '500');       
  idpSetOption('ReceiveTimeout', '500');       
  idpSetOption('ErrorDialog', 'UrlList');          
  idpSetOption('InvalidCert', 'Ignore');          
  idpSetOption('AllowContinue', '1');

  idpDownloadAfter(wpReady);
end;

procedure DeinitializeSetup;
begin
  if (IsWine() = False) then
  begin
    bassFree;
  end;
end;
