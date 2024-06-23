if status is-interactive
    # Commands to run in interactive sessions can go here
end

source /Users/jgerth/.config/op/plugins.sh

# test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish

fzf --fish | source
