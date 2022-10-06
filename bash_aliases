# MacOS version, not Linux !

# Modifiers
alias cp='cp -p'
alias scp='scp -p'
alias grep='ggrep --color=auto'
alias fgrep='ggrep --color=auto -F'
alias egrep='ggrep --color=auto -E'
alias diff='diff -y --suppress-common-lines'
alias clang='clang -Weverything -Wno-poison-system-directories -Ofast'

# Simple extensions
alias l='ls -FGhl'
alias ll='ls -FGla'
alias cal='ncal -w -B1 -A2'
alias gitlog='git log --all --graph --decorate --oneline'
alias pipout='python3 -m pip list --outdated'
alias pipup='python3 -m pip install --user --upgrade'
alias ffmpeg='ffmpeg -hide_banner'
alias ffprobe='ffprobe -hide_banner'
alias enableextensions='/System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.framework/Support/lsregister -f -R /Applications/Safari.app'

# Complicated extensions
alias guid='uuidgen | tr "[:upper:]" "[:lower:]"'
alias isodate='date +"%F %T %z"'
alias dfree='df -g . | grep "/dev/disk" | xargs | cut -d" " -f4'
alias myip='ifconfig | grep -oE "inet.*(broadcast|autoconf secured)" | cut -d" " -f2'
alias oly='rsync -auv "/Volumes/NO NAME   /DCIM/101OLYMP/" "/Users/ewoud/Pictures/Camera Olympus E520/"'

# Functions
code () { VSCODE_CWD="$PWD" open -n -b "com.microsoft.VSCode" --args $* ;}
