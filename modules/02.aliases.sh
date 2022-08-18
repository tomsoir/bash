# git
alias g="git"
alias ga="git add"
alias gl="git logs"
alias gs="git status"
alias gr="git remote -v"
alias gull="git pull --rebase origin"
alias gush="git push origin"

# ls
alias ls='ls -FGh'
alias ll='ls -FGlh'
alias l='ls -FGlh'
alias la='ls -FGlah'

# up 'n' folders
alias ..='cd ..'
alias ...='cd ~/.'

# greps
alias grep='grep --color'
alias psgrep='ps aux | grep -v grep | grep'  # find all processes.
alias findgrep='find . 2>/dev/null | grep --color -I'  # find all files by path segment.
alias rgrep='find . 2>/dev/null | xargs egrep --color -I 2>/dev/null'  # find all files contains some text

# finds
alias f='find . -iname'
alias a='apropos'

# other
alias emacs='emacs -nw'
