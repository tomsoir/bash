# PS1 terminal prompt coloring
source $HOME/.bashrc.d/assets/git-prompt.sh

# Without host
export PS1='\[\033[01;32m\]🏠 \u\[\033[01;34m\] \w\[\033[31m\]$(__git_ps1 "(%s)")\[\033[01;34m\]$\[\033[00m\] '

# With host
# export PS1='\[\033[01;32m\]🏠 \u@\h\[\033[01;34m\] \w\[\033[31m\]$(__git_ps1 "(%s)")\[\033[01;34m\]$\[\033[00m\] '
