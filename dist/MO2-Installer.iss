; Script generated by the Inno Script Studio Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#include "MO2-Config.iss"
#include "Scripts/innodependencyinstaller/innodependencyinstaller.iss"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{68ADD8CF-0653-48BD-8B14-26E43B93933C}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
VersionInfoVersion={#MyAppVersion}
;We should only allow installing on 64bit systems
ArchitecturesAllowed=x64
ArchitecturesInstallIn64BitMode=x64
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
AppendDefaultDirName=no
DefaultDirName={sd}\Modding\MO2
DirExistsWarning=no
DefaultGroupName={#MyAppName}
AllowNoIcons=yes
LicenseFile=..\..\..\..\install\bin\licenses\GPL-v3.0.txt
OutputDir={#MO2Folder}
OutputBaseFilename=Mod.Organizer-{#MyAppVersionString}
SetupIconFile=.\Images\mo_icon.ico
WizardSmallImageFile=.\Images\WizModernSmallImage.bmp
Compression=lzma
SolidCompression=yes
Uninstallable=yes
CreateUninstallRegKey=no
UninstallDisplayIcon={app}\ModOrganizer.exe
UninstallDisplayName=Mod Organizer 2

[Languages]
Name: "en"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Icons]
Name: "{group}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{group}\{cm:UninstallProgram,{#MyAppName}}"; Filename: "{uninstallexe}"
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Flags: nowait postinstall skipifsilent; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"

[Types]
Name: "Full"; Description: "Recommended Install"
Name: "Custom"; Description: "Expert Install"; Flags: iscustom

; NOTE:  Order of the components matters!  See proc UpdateComponents below.
[Components]
Name: "core"; Description: "Core Application"; Types: Custom Full; Flags: fixed
Name: "QTDLL"; Description: "Qt DLL's"; Types: Full Custom; Flags: fixed
Name: "FileExplorer"; Description: "Explorer++"; Types: Full Custom;
Name: "Plugins"; Description: "MO2 Plugins"; Types: Full Custom; Flags: fixed
Name: "Plugins\GameSupport";  Description: "Game Support"; Types: Custom Full; Flags: fixed
Name: "Plugins\Python"; Description: "Python Support"; Types: Custom Full; Flags: fixed
Name: "Plugins\Manual"; Description: "Manual Installer"; Types: Custom Full
Name: "Plugins\Quick"; Description: "Quick Installer"; Types: Custom Full
Name: "Plugins\Bain"; Description: "BAIN Installers"; Types: Custom Full
Name: "Plugins\FOMOD"; Description: "FOMOD Installers"; Types: Custom Full
Name: "Plugins\OMOD"; Description: "OMOD Installer"; Types: Custom Full
Name: "Plugins\NCC"; Description: "NCC Installer"; Types: Custom Full
Name: "Plugins\LegacyINI"; Description: "Legacy INI editor"; Types: Custom Full
Name: "Plugins\FNISCheck"; Description: "FNIS Checker"; Types: Custom Full
Name: "Plugins\FNISPatches"; Description: "FNIS Patches"; Types: Custom Full
Name: "Plugins\FNISTool"; Description: "FNIS Tool"; Types: Custom Full
Name: "Plugins\Configurator"; Description: "Configurator"; Types: Custom Full
Name: "Plugins\SEPluginChecker"; Description: "Script Extender Plugin Checker"; Types: Custom Full
Name: "Plugins\DDSPreview"; Description: "DDS Preview"; Types: Custom Full
Name: "Plugins\Form43Checker"; Description: "Form 43 Checker"; Types: Custom Full
Name: "Plugins\File"; Description: "File Preview"; Types: Custom Full
Name: "Plugins\BSAPacker"; Description: "BSA/BA2 Packer"; Types: Custom Full
Name: "Translations"; Description: "Translations"; Types: Custom Full
Name: "Tutorials"; Description: "Tutorials"; Types: Custom Full
Name: "Stylesheets"; Description: "Stylesheets"; Types: Custom Full
Name: "Exclusions"; Description: "Add Windows Defender Exclusions"; Types: Custom Full

[Files]
;Core Files
Source: "..\..\..\..\install\bin\dump_running_process.bat"; DestDir: "{app}"; Flags: ignoreversion; Components: core
Source: "..\..\..\..\install\bin\helper.exe"; DestDir: "{app}"; Flags: ignoreversion; Components: core
Source: "..\..\..\..\install\bin\libcrypto-1_1-x64.dll"; DestDir: "{app}"; Flags: ignoreversion; Components: core
Source: "..\..\..\..\install\bin\libssl-1_1-x64.dll"; DestDir: "{app}"; Flags: ignoreversion; Components: core
Source: "..\..\..\..\install\bin\ModOrganizer.exe"; DestDir: "{app}"; Flags: ignoreversion; Components: core
Source: "..\..\..\..\install\bin\nxmhandler.exe"; DestDir: "{app}"; Flags: ignoreversion; Components: core
Source: "..\..\..\..\install\bin\QtWebEngineProcess.exe"; DestDir: "{app}"; Flags: ignoreversion; Components: core
Source: "..\..\..\..\install\bin\uibase.dll"; DestDir: "{app}"; Flags: ignoreversion; Components: core
Source: "..\..\..\..\install\bin\usvfs_proxy_x64.exe"; DestDir: "{app}"; Flags: ignoreversion; Components: core
Source: "..\..\..\..\install\bin\usvfs_proxy_x86.exe"; DestDir: "{app}"; Flags: ignoreversion; Components: core
Source: "..\..\..\..\install\bin\usvfs_x64.dll"; DestDir: "{app}"; Flags: ignoreversion; Components: core
Source: "..\..\..\..\install\bin\usvfs_x86.dll"; DestDir: "{app}"; Flags: ignoreversion; Components: core
Source: "..\..\..\..\install\bin\loot\loot.dll"; DestDir: "{app}\loot"; Flags: ignoreversion; Components: core
Source: "..\..\..\..\install\bin\loot\lootcli.exe"; DestDir: "{app}\loot"; Flags: ignoreversion; Components: core
Source: "..\..\..\..\install\bin\plugins\bsa_extractor.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion; Components: core
Source: "..\..\..\..\install\bin\plugins\diagnose_basic.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion; Components: core
Source: "..\..\..\..\install\bin\plugins\inibakery.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion; Components: core
Source: "..\..\..\..\install\bin\plugins\installer_bundle.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion; Components: core
Source: "..\..\..\..\install\bin\licenses\*"; DestDir: "{app}\licenses"; Flags: ignoreversion createallsubdirs recursesubdirs; Components: core
Source: "..\..\..\..\install\bin\QtQml\*"; DestDir: "{app}\QtQml"; Flags: ignoreversion createallsubdirs recursesubdirs; Components: core
Source: "..\..\..\..\install\bin\QtQuick\*"; DestDir: "{app}\QtQuick"; Flags: ignoreversion createallsubdirs recursesubdirs; Components: core
Source: "..\..\..\..\install\bin\platforms\*"; DestDir: "{app}\platforms"; Flags: ignoreversion createallsubdirs recursesubdirs; Components: core
Source: "..\..\..\..\install\bin\dlls\7z.dll"; DestDir: "{app}\dlls"; Flags: ignoreversion; Components: core
Source: "..\..\..\..\install\bin\dlls\archive.dll"; DestDir: "{app}\dlls"; Flags: ignoreversion; Components: core
Source: "..\..\..\..\install\bin\dlls\libcrypto-1_1-x64.dll"; DestDir: "{app}\dlls"; Flags: ignoreversion; Components: core
Source: "..\..\..\..\install\bin\dlls\liblz4.dll"; DestDir: "{app}\dlls"; Flags: ignoreversion; Components: core
Source: "..\..\..\..\install\bin\dlls\libssl-1_1-x64.dll"; DestDir: "{app}\dlls"; Flags: ignoreversion; Components: core
Source: "..\..\..\..\install\bin\resources\*"; DestDir: "{app}\resources"; Flags: ignoreversion createallsubdirs recursesubdirs; Components: core
Source: "..\..\..\..\install\bin\styles\*"; DestDir: "{app}\styles"; Flags: ignoreversion createallsubdirs recursesubdirs; Components: core
;QT DLLS
Source: "..\..\..\..\install\bin\dlls\imageformats\*"; DestDir: "{app}\dlls\imageformats"; Flags: ignoreversion createallsubdirs recursesubdirs; Components: QTDLL
Source: "..\..\..\..\install\bin\dlls\tls\*"; DestDir: "{app}\dlls\tls"; Flags: ignoreversion createallsubdirs recursesubdirs; Components: QTDLL
Source: "..\..\..\..\install\bin\dlls\Qt*.dll"; DestDir: "{app}\dlls"; Flags: ignoreversion; Components: QTDLL
Source: "..\..\..\..\install\bin\dlls\d3dcompiler_47.dll"; DestDir: "{app}\dlls"; Flags: ignoreversion; Components: QTDLL
Source: "..\..\..\..\install\bin\dlls\dlls.manifest"; DestDir: "{app}\dlls"; Flags: ignoreversion; Components: QTDLL
Source: "..\..\..\..\install\bin\dlls\opengl32sw.dll"; DestDir: "{app}\dlls"; Flags: ignoreversion; Components: QTDLL
Source: "..\..\..\..\install\bin\dlls\opengl32sw.dll"; DestDir: "{app}\dlls"; Flags: ignoreversion; Components: QTDLL
;Explorer++
Source: "..\..\..\..\install\bin\explorer++\*"; DestDir: "{app}\explorer++"; Flags: ignoreversion; Components: FileExplorer
;Start Plugin Groups
;Manual Installer
Source: "..\..\..\..\install\bin\plugins\installer_manual.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion; Components: Plugins\Manual
;Quick Installer
Source: "..\..\..\..\install\bin\plugins\installer_quick.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion; Components: Plugins\Quick
;BAIN Installer
Source: "..\..\..\..\install\bin\plugins\installer_bain.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion; Components: Plugins\Bain
Source: "..\..\..\..\install\bin\plugins\installer_wizard\*"; DestDir: "{app}\plugins\installer_wizard"; Flags: ignoreversion createallsubdirs recursesubdirs; Components: Plugins\Bain
;FOMOD Installer
Source: "..\..\..\..\install\bin\plugins\installer_fomod.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion; Components: Plugins\FOMOD
;FOMOD C# Installer
Source: "..\..\..\..\install\bin\plugins\installer_fomod_csharp.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion; Components: Plugins\FOMOD
;OMOD Installer
Source: "..\..\..\..\install\bin\plugins\installer_omod\*"; DestDir: "{app}\plugins\installer_omod"; Flags: ignoreversion; Components: Plugins\OMOD
;NCC Installer
; Source: "..\..\..\..\install\bin\NCC\*"; DestDir: "{app}\NCC"; Flags: ignoreversion createallsubdirs recursesubdirs; Components: Plugins\NCC
; Source: "..\..\..\..\install\bin\plugins\installer_ncc.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion; Components: Plugins\NCC
;Python Support
Source: "..\..\..\..\install\bin\plugins\plugin_python\*"; DestDir: "{app}\plugins\plugin_python"; Flags: ignoreversion createallsubdirs recursesubdirs; Components: Plugins\Python
;Legacy ini editor
Source: "..\..\..\..\install\bin\plugins\inieditor.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion; Components: Plugins\LegacyINI
;FNIS Checker
Source: "..\..\..\..\install\bin\plugins\check_fnis.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion; Components: Plugins\FNISCheck
;Configurator
Source: "..\..\..\..\install\bin\plugins\pyCfg.py"; DestDir: "{app}\plugins"; Flags: ignoreversion; Components: Plugins\Configurator
;File Preview
Source: "..\..\..\..\install\bin\plugins\preview_base.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion; Components: Plugins\File
;Preview BSA
Source: "..\..\..\..\install\bin\plugins\preview_bsa.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion; Components: Plugins\File
;Game Support
Source: "..\..\..\..\install\bin\plugins\game_oblivion.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion; Components: Plugins\GameSupport
Source: "..\..\..\..\install\bin\plugins\game_nehrim.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion; Components: Plugins\GameSupport
Source: "..\..\..\..\install\bin\plugins\game_morrowind.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion; Components: Plugins\GameSupport
Source: "..\..\..\..\install\bin\plugins\game_fallout3.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion; Components: Plugins\GameSupport
Source: "..\..\..\..\install\bin\plugins\game_ttw.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion; Components: Plugins\GameSupport
Source: "..\..\..\..\install\bin\plugins\game_fallout4.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion; Components: Plugins\GameSupport
Source: "..\..\..\..\install\bin\plugins\game_fallout4vr.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion; Components: Plugins\GameSupport
Source: "..\..\..\..\install\bin\plugins\game_falloutNV.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion; Components: Plugins\GameSupport
Source: "..\..\..\..\install\bin\plugins\game_skyrim.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion; Components: Plugins\GameSupport
Source: "..\..\..\..\install\bin\plugins\game_skyrimvr.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion; Components: Plugins\GameSupport
Source: "..\..\..\..\install\bin\plugins\game_skyrimse.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion; Components: Plugins\GameSupport
Source: "..\..\..\..\install\bin\plugins\game_enderal.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion; Components: Plugins\GameSupport
Source: "..\..\..\..\install\bin\plugins\game_enderalse.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion; Components: Plugins\GameSupport
Source: "..\..\..\..\install\bin\plugins\basic_games\*"; DestDir: "{app}\plugins\basic_games"; Flags: ignoreversion createallsubdirs recursesubdirs; Components: Plugins\GameSupport
;FNIS Patches
Source: "..\..\..\..\install\bin\plugins\FNISPatches.py"; DestDir: "{app}\plugins"; Flags: ignoreversion; Components: Plugins\FNISPatches
;FNIS Tool
Source: "..\..\..\..\install\bin\plugins\FNISTool.py"; DestDir: "{app}\plugins"; Flags: ignoreversion; Components: Plugins\FNISTool
Source: "..\..\..\..\install\bin\plugins\FNISToolReset.py"; DestDir: "{app}\plugins"; Flags: ignoreversion; Components: Plugins\FNISTool
;Script Extender Plugin Checker
Source: "..\..\..\..\install\bin\plugins\ScriptExtenderPluginChecker.py"; DestDir: "{app}\plugins"; Flags: ignoreversion; Components: Plugins\SEPluginChecker
;DDS Preview
Source: "..\..\..\..\install\bin\plugins\DDSPreview.py"; DestDir: "{app}\plugins"; Flags: ignoreversion; Components: Plugins\DDSPreview
;Form 43 Checker
Source: "..\..\..\..\install\bin\plugins\Form43Checker.py"; DestDir: "{app}\plugins"; Flags: ignoreversion; Components: Plugins\Form43Checker
;BSA/BA2 Packer
Source: "..\..\..\..\install\bin\dlls\libbsarch.dll"; DestDir: "{app}\dlls"; Flags: ignoreversion; Components: Plugins\BSAPacker
Source: "..\..\..\..\install\bin\plugins\bsa_packer.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion; Components: Plugins\BSAPacker
;Plugins Data
Source: "..\..\..\..\install\bin\plugins\data\*"; DestDir: "{app}\plugins\data"; Flags: ignoreversion createallsubdirs recursesubdirs; Components: Plugins
;End Plugin Groups
;Translations
Source: "..\..\..\..\install\bin\translations\*"; DestDir: "{app}\translations"; Flags: ignoreversion createallsubdirs recursesubdirs; Components: Translations
;Tutorials
Source: "..\..\..\..\install\bin\tutorials\*"; DestDir: "{app}\tutorials"; Flags: ignoreversion createallsubdirs recursesubdirs; Components: Tutorials
;Stylesheets
Source: "..\..\..\..\install\bin\stylesheets\*"; DestDir: "{app}\stylesheets"; Flags: ignoreversion createallsubdirs recursesubdirs; Components: Stylesheets

[InstallDelete]
Type: filesandordirs; Name: "{app}/DLLS"
Type: filesandordirs; Name: "{app}/explorer++"
Type: filesandordirs; Name: "{app}/licenses"
Type: filesandordirs; Name: "{app}/loot"
Type: filesandordirs; Name: "{app}/NCC"
Type: filesandordirs; Name: "{app}/platforms"
Type: filesandordirs; Name: "{app}/QtQuick"
Type: filesandordirs; Name: "{app}/QtQuick.2"
Type: filesandordirs; Name: "{app}/resources"
Type: filesandordirs; Name: "{app}/styles"
Type: filesandordirs; Name: "{app}/translations"
Type: filesandordirs; Name: "{app}/tutorials"
Type: filesandordirs; Name: "{app}/boost_python*.dll"
Type: filesandordirs; Name: "{app}/helper.exe"
Type: filesandordirs; Name: "{app}/libeay32.dll"
Type: filesandordirs; Name: "{app}/libcrypto-*"
Type: filesandordirs; Name: "{app}/ModOrganizer.exe"
Type: filesandordirs; Name: "{app}/nxmhandler.exe"
Type: filesandordirs; Name: "{app}/python*"
Type: filesandordirs; Name: "{app}/QTWebEngineProcess.exe"
Type: filesandordirs; Name: "{app}/ssleay32.dll"
Type: filesandordirs; Name: "{app}/libssl-*"
Type: filesandordirs; Name: "{app}/libffi-*"
Type: filesandordirs; Name: "{app}/uibase.dll"
Type: filesandordirs; Name: "{app}/uninstall.exe"
Type: filesandordirs; Name: "{app}/usvfs_*"

;Only use if release breaks plugins:
;Type: filesandordirs; Name: "{app}/plugins"
;Only use if release breaks stylesheets:
;Type: filesandordirs; Name: "{app}/stylesheets"

;In 2.5, Python plugin is a module so need to remove the DLL
Type: filesandordirs; Name: "{app}/plugins/plugin_python"
Type: filesandordirs; Name: "{app}/plugins/plugin_python.dll"
Type: filesandordirs; Name: "{app}/plugins/data/pythonrunner.dll"
Type: filesandordirs; Name: "{app}/plugins/data/PyQt*"

;In 2.5, installer OMOD is a module
Type: filesandordirs; Name: "{app}/plugins/installer_omod"
Type: filesandordirs; Name: "{app}/plugins/installer_omod.dll"
Type: filesandordirs; Name: "{app}/plugins/data/OMOD*.dll"
Type: filesandordirs; Name: "{app}/plugins/data/ICSharpCode.SharpZipLib.dll"
Type: filesandordirs; Name: "{app}/plugins/data/RtfPipe.dll"
Type: filesandordirs; Name: "{app}/plugins/data/System.Drawing.Common.dll"


Type: filesandordirs; Name: "{app}/plugins/installer_wizard"

;This was added in 2.4.3 and quarantined in 2.4.4.
;The applicable users shouldn't be using the installer anyways
;so yeet it.
Type: filesandordirs; Name: "{app}/plugins/basic_games/games/game_masseffectlegendary.py"

[UninstallDelete]
Type: filesandordirs; Name: "{app}/pythoncore"
Type: filesandordirs; Name: "{app}/plugins"
Type: filesandordirs; Name: "{app}/webcache"

[Code]
const
//Define global constants
  CompIndexFNISPatches = 13;
  CompIndexFNISTool = 14;
  CompIndexConfigurator = 15;
  CompIndexSEPluginChecker = 16;
  CompIndexDDSPreview = 17;
  CompIndexForm43Checker = 18;

var
//Define global variables
  CompPageVisited: Boolean;
  DefaultCompClickCheck: TNotifyEvent;
  DefaultCompTypeChange: TNotifyEvent;

//Uncheck and set the enabled state of the Sync components based on whether the Client component is selected
procedure UpdateComponents;
begin
  with WizardForm.ComponentsList do
    begin
      //Python plugins require Python
      if not IsComponentSelected('Plugins\Python') then
        begin
          CheckItem(CompIndexFNISPatches, coUncheck);
          CheckItem(CompIndexFNISTool, coUncheck);
          CheckItem(CompIndexConfigurator, coUncheck);
          CheckItem(CompIndexSEPluginChecker, coUncheck);
          CheckItem(CompIndexDDSPreview, coUncheck);
          CheckItem(CompIndexForm43Checker, coUncheck);
        end;
      ItemEnabled[CompIndexConfigurator] := IsComponentSelected('Plugins\Python');
      ItemEnabled[CompIndexFNISPatches] := IsComponentSelected('Plugins\Python');
      ItemEnabled[CompIndexFNISTool] := IsComponentSelected('Plugins\Python');
      ItemEnabled[CompIndexSEPluginChecker] := IsComponentSelected('Plugins\Python');
      ItemEnabled[CompIndexDDSPreview] := IsComponentSelected('Plugins\Python');
      ItemEnabled[CompIndexForm43Checker] := IsComponentSelected('Plugins\Python');

      Invalidate; //required for text state to update correctly
    end;
end;

//Update the component states if the component states change and restore the original event handler procedures
procedure ComponentsClickCheck(Sender: TObject);
begin
  DefaultCompClickCheck(Sender);
  UpdateComponents;
end;

procedure ComponentsTypesComboChange(Sender: TObject);
begin
  DefaultCompTypeChange(Sender);
  UpdateComponents;
end;

procedure InitializeWizard();
begin
//Store the original Components Page OnClickCheck and Types Combo Box OnChange event procedures and assign custom procedures
  DefaultCompClickCheck := WizardForm.ComponentsList.OnClickCheck;
  WizardForm.ComponentsList.OnClickCheck := @ComponentsClickCheck;
  DefaultCompTypeChange := WizardForm.TypesCombo.OnChange;
  WizardForm.TypesCombo.OnChange := @ComponentsTypesComboChange;
end;

procedure CurPageChanged(CurPageID: Integer);
begin
//Update the Components Page if entered for the first time
  if (CurPageID = wpSelectComponents) and not CompPageVisited then
    begin
      CompPageVisited := True;
      UpdateComponents;
    end;
end;

function MyGetVersionNumbersString(const Filename: String; var Version: String): Boolean;
var
  MS, LS: Cardinal;
  Major, Minor, Rev, Build: Cardinal;
begin
  Result := GetVersionNumbers(Filename, MS, LS);

  if Result then
  begin
    Major := MS shr 16;
    Minor := MS and $FFFF;
    Rev := LS shr 16;
    Build := LS and $FFFF;
    Version := Format('%d.%d.%d', [Major, Minor, Rev]);
  end
end;
