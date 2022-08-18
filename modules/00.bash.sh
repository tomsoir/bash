# Bash Path
PATH=/usr/local/bin:$HOME/bin:$PATH

# Remove MacOS ZSH warning
export BASH_SILENCE_DEPRECATION_WARNING=1

# Env vars
export HOME_BASHRC="$HOME/.bashrc.d"
export HOME_BASHRC_ASSETS="$HOME_BASHRC/assets"

# Activate brew
eval "$(/opt/homebrew/bin/brew shellenv)"

# Activate bash_completion
[[ -r "/opt/homebrew/etc/profile.d/bash_completion.sh" ]] && . "/opt/homebrew/etc/profile.d/bash_completion.sh"

# Create (if needed) ignored (in .gitignore) file for local env owerwride (Only)!
test -f modules/\!.ignored1.sh || touch modules/\!.ignored.sh
