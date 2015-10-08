# Install all apps with Chocolatey
cinst allbrowsers poshgit webpi visualstudio2015community fiddler slack skype dropbox teamviewer linqpad sublimetext3 7zip office365proplus lockhunter powershellhere steam battle.net ccleaner vlc lastpass-for-applications foxitreader sysinternals windirstat sourcetree nugetpackageexplorer meld sublimetext3.powershellalias jdk8 apache.ant nodejs.install intellijidea-community audacity -y

# Git config
git config --global alias.a 'add -A'
git config --global alias.s 'config --get-regexp alias'
git config --global alias.d 'commit -a --amend'
git config --global alias.b 'branch'
git config --global alias.k 'reset HEAD@{1} '
git config --global alias.n '!git branch --merged ${1-master} | grep -v " ${1-master}" | xargs -r git branch -d'
git config --global alias.t 'checkout -b'
git config --global alias.l 'blame -w -M -C'
git config --global alias.a 'branch -rav'
git config --global alias.s 'branch -rav'
git config --global alias.y 'log --since yesterday --oneline --author 'joshrizzo''
git config --global alias.c 'checkout'
git config --global alias.b 'checkout -b'
git config --global alias.d 'status -sb'
git config --global alias.y 'log -u'
git config --global alias.n '!CURRENT=$(git rev-parse --abbrev-ref HEAD) && git checkout ${1-master} && git up && git merge $CURRENT'
git config --global alias.n 'push -f'
git config --global alias.f 'fetch'
git config --global alias.d 'stash pop'
git config --global alias.h '!git fetch && git pull'
git config --global alias.y '!git a && git stash && git up && git stash pop'
git config --global alias.d 'rev-parse --short HEAD'
git config --global alias.n '!git a && git commit -m'
git config --global alias.y 'shortlog -s -e --'
git config --global alias.k 'log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue) [%an]%Creset' --abbrev-commit --date=relative --all'
git config --global alias.l 'log --pretty=oneline --abbrev-commit'
git config --global alias.t 'log -p --max-count=1 --word-diff'
git config --global alias.g 'describe --tags --abbrev=0'
git config --global alias.g 'log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --date=relative'
git config --global alias.l 'log --pretty=oneline --abbrev-commit --max-count=15'
git config --global alias.t '!git a && git stash'
git config --global alias.d 'reset --hard'
git config --global alias.y 'log --stat --summary'
git config --global alias.y 'config --global -e'
git config --global alias.d '!git checkout ${1-master} && git up && git bclean ${1-master}'
git config --global alias.d '!CURRENT=$(git rev-parse --abbrev-ref HEAD) && git push origin $CURRENT:master'
git config --global alias.k 'add -p'
git config --global alias.m 'push origin master'
git config --global alias.s 'push origin source'
git config --global alias.r 'pull --rebase'
git config --global alias.e 'fetch --prune'
git config --global alias.b '!git push origin HEAD:master && git push . HEAD:master && git checkout master'
git config --global alias.r 'rebase --interactive HEAD~10'
git config --global alias.a 'rebase --abort'
git config --global alias.c 'rebase --continue'
git config --global alias.y '!git-init'
git config --global alias.s 'remote -v show'
git config --global alias.d 'reflog'
git config --global alias.e '!git add -A && git commit -m 'SAVEPOINT''
git config --global alias.r '!git checkout `git rev-list --topo-order HEAD.."$*" | tail -1`'
git config --global alias.e '-p status'
git config --global alias.s '-p status -s'
git config --global alias.e 'add'
git config --global alias.s 'diff --stat'
git config --global alias.c '!git fetch upstream -v && git fetch origin -v && git checkout master && git merge upstream/master'
git config --global alias.d 'tf checkin --deep'
git config --global alias.s 'tf checkin --shallow'
git config --global alias.r 'mergetool'
git config --global alias.r 'tf pull --rebase --deep'
git config --global alias.s 'tf pull --rebase --shallow'
git config --global alias.p '!git fetch --all --prune && git rebase origin/master && git submodule update && git push . origin/master:master 2> /dev/null'
git config --global alias.d 'checkout HEAD~'
git config --global alias.f 'diff --word-diff'
git config --global alias.p 'commit -am "WIP"'
git config --global alias.d '!git add -A && git commit -qm 'WIPE SAVEPOINT' && git reset HEAD~1 --hard'
git config --global alias.o 'git commit -am "DEAL WITH IT" && git push -f origin master'

git config --global credential.helper wincred
git config --global core.editor "'c:/program files/sublime text 3/subl.exe'"
git config --global merge.tool meld
git config --global mergetool.meld.path "'c:/Program files (x86)/Meld/meld/meldc.exe'"

# Setup some Windows 10 registry hacks
Push-Location
Set-Location HKLM:\SOFTWARE\Policies\Microsoft\Windows\Personalization
Set-ItemProperty . NoLockScreen 1
Set-Location HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize
Set-ItemProperty . AppsUseLightTheme 0
Set-Location HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize
Set-ItemProperty . AppsUseLightTheme 0
Pop-Location

# Windows Setup with Boxstarter
Disable-UAC
Enable-RemoteDesktop
Enable-MicrosoftUpdate
Install-WindowsUpdate
Set-StartScreenOptions -EnableBootToDesktop -EnableDesktopBackgroundOnStart -EnableShowStartOnActiveScreen -EnableShowAppsViewOnStartScreen -EnableListDesktopAppsFirst
Set-WindowsExplorerOptions -EnableShowHiddenFilesFoldersDrives -EnableShowProtectedOSFiles -EnableShowFileExtensions -EnableShowFullPathInTitleBar

# Install Android SDK
cinst android-sdk -y
[System.Environment]::SetEnvironmentVariable("PATH", [System.Environment]::GetEnvironmentVariable("PATH", "Machine") + ";$env:LOCALAPPDATA\android\android-sdk\tools;$env:LOCALAPPDATA\android\android-sdk\platform-tools", "Machine")
$env:PATH = [System.Environment]::GetEnvironmentVariable("PATH", "Machine") + ";" + [System.Environment]::GetEnvironmentVariable("PATH", "User")

# Update Android SDK bits
android update sdk --no-ui

# Install Cordova
npm install -g cordova
cordova # Check this works

# Install Bower
npm install -g bower