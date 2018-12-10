# git
alias g="git"
alias grema="git rebase-master"
alias gream="echo 'bash rules everything around me'; git rebase-master"

# ls
alias ls='ls -FGh'
alias ll='ls -FGlh'
alias l='ls -FGlh'
alias la='ls -FGlah'

# up 'n' folders
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'

# greps
alias grep='grep --color'
alias psgrep='ps aux | grep -v grep | grep'
alias findgrep='find . 2>/dev/null | grep --color -I'
alias rgrep='find . 2>/dev/null | xargs egrep --color -I 2>/dev/null'

# finds
alias f='find . -iname'
alias a='apropos'

# other
alias emacs='emacs -nw'
