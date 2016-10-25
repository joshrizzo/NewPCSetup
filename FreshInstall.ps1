# Install all apps with Chocolatey
cinst allbrowsers poshgit webpi visualstudio2015community fiddler slack skype dropbox teamviewer linqpad sublimetext3 7zip office365proplus lockhunter powershellhere steam battle.net ccleaner vlc lastpass foxitreader sysinternals windirstat gimp sourcetree wireshark nugetpackageexplorer filezilla meld sublimetext3.powershellalias audacity sqlserver2014express webessentials2015 synergy sourcetree goggalaxy packageinstaller webdeploy resharper -y

# Windows Setup with Boxstarter
Disable-UAC
Enable-RemoteDesktop
Enable-MicrosoftUpdate
Install-WindowsUpdate
Set-StartScreenOptions -EnableBootToDesktop -EnableShowStartOnActiveScreen -EnableShowAppsViewOnStartScreen -EnableListDesktopAppsFirst
Set-WindowsExplorerOptions -DisableOpenFileExplorerToQuickAccess -EnableShowHiddenFilesFoldersDrives -EnableShowProtectedOSFiles -EnableShowFileExtensions -EnableShowFullPathInTitleBar
Set-TaskbarOptions -Combine Never

# Setup some Windows 10 registry hacks
Push-Location
Set-Location HKLM:\SOFTWARE\Policies\Microsoft\Windows\Personalization
Set-ItemProperty . NoLockScreen 1
Set-Location HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize
Set-ItemProperty . AppsUseLightTheme 0
Set-Location HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize
Set-ItemProperty . AppsUseLightTheme 0
Pop-Location
