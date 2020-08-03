# macOS version

# Modifiers
alias cp='cp -p'
alias scp='scp -p'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias diff='diff -y --suppress-common-lines'

# Simple extensions
alias l='ls -FGhl'
alias ll='ls -FGhla'
#alias lo=logout
alias gitlog='git log --all --graph --decorate --oneline'

# Complicated extensions
alias isodate='date +"%F %T %z"'
alias dfree='df -g . | grep "/dev/disk" | xargs | cut -d" " -f4'
alias myip='ifconfig | grep -oE "inet.*(broadcast|autoconf secured)" | cut -d" " -f2'

# Functions
code () { VSCODE_CWD="$PWD" open -n -b "com.microsoft.VSCode" --args $* ;}
