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
alias la='ls -FGhla'
alias lo=logout

# Complicated extensions
alias isodate='date +"%F %T %z"'
alias dfree='df -g . | grep "/dev/disk" | xargs | cut -d" " -f4'
alias myip='ifconfig | grep -oE "inet [^ ]+" | cut -d" " -f2 | grep --color=never -v "^127\."'

# Functions
code () { VSCODE_CWD="$PWD" open -n -b "com.microsoft.VSCode" --args $* ;}
