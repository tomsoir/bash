# PS1 terminal prompt coloring
PS1="$PS1_COLOR1🏠 \u@\h$PS1_COLOR2 \w$PS1_COLOR3$(__git_ps1 "(%s)")$PS1_COLOR4\$$PS1_COLOR5 "
# PS1='\[\033[01;32m\]🏠 \u@\h\[\033[01;34m\] \w\[\033[31m\]$(__git_ps1 "(%s)")\[\033[01;34m\]$\[\033[00m\] '
