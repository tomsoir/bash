# Bash Path
PATH=/usr/local/bin:$HOME/bin:$PATH

# Remove MacOS ZSH warning
export BASH_SILENCE_DEPRECATION_WARNING=1

# Activate brew
eval "$(/opt/homebrew/bin/brew shellenv)"

# Activate bash_completion
[[ -r "/opt/homebrew/etc/profile.d/bash_completion.sh" ]] && . "/opt/homebrew/etc/profile.d/bash_completion.sh"
