# MacOS version, not Linux !

export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
export HISTCONTROL=ignoreboth:erasedups

[ -r ~/.bash_aliases ] && source ~/.bash_aliases

# set umask not here but by:
#sudo launchctl config user umask 077
