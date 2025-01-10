if status is-interactive
    # Commands to run in interactive sessions can go here
end

source /Users/jgerth/.config/op/plugins.sh

# test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish

# Setup zoxide
zoxide init fish | source

# Setup brew
eval "$(/usr/local/bin/brew shellenv)"

# Set up fzf key bindings
fzf --fish | source
