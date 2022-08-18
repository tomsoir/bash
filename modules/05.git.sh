# create assest folder if not exist
$HOME_BASHRC_ASSETS="$HOME/.bashrc.d/assets"
mkdir -p $HOME_ASSETS

# git autocompletion
git_completion_file="$HOME_BASHRC_ASSETS/.git-completion.bash"
git_completion_url="https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash"

if [ ! -f $git_completion_file ]; then
    echo "** git autocompletion not installed. installing from $git_completion_url..."
    curl -s -o $git_completion_file $git_completion_url
    echo "** done.
"
fi
source $git_completion_file

# git prompt
git_prompt_file=$HOME_BASHRC_ASSETS/bash-git-prompt/gitprompt.sh
git_prompt_url="git@github.com:magicmonty/bash-git-prompt.git"
if [ ! -f $git_prompt_file ]; then
    echo "** git prompt not installed..."
    git clone $git_prompt_url $HOME_BASHRC_ASSETS
    echo "** done.
"
fi
GIT_PROMPT_ONLY_IN_REPO=1 # apply only in GH repo
GIT_PROMPT_THEME=Single_line # gitprompt style
source $git_prompt_file

# alias lg command to show git log in a pretty format
git config --global alias.lg "log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr)%C(bold blue)<%an>%Creset' --abbrev-commit"

# fetch and checkout specific PRs
git config --global alias.fetch-pr "!bash -xc 'git fetch upstream pull/\$0/head:\${1:-pr-\$0}'"
git config --global alias.checkout-pr "!bash -xc 'git fetch-pr \$0 \${1:-pr-\$0} && git checkout \${1:-pr-\$0}'"
git config --global alias.rebase-master "!git checkout master && git pull upstream master && git push origin master && git checkout - && git rebase master"

function checkout-remote(){
    # args = username:branch-name
    USER=`echo $1 | cut -d: -f1`
    BRANCH=`echo $1 | cut -d: -f2`

    REMOTE_EXISTS=`git remote -v | grep ^$USER`
    if [ -z "$REMOTE_EXISTS" ]; then
        REPO_NAME=`git config --get remote.origin.url | cut -d/ -f5`
        git remote add $USER "https://$GITHUB_USERNAME:$GITHUB_TOKEN@github.com/$USER/$REPO_NAME"
    fi

    git fetch $USER
    git checkout $BRANCH
}
