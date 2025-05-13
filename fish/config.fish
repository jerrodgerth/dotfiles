if status is-interactive
    # Commands to run in interactive sessions can go here
end

# source /Users/jgerth/.config/op/plugins.sh

# test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish

# Setup zoxide
zoxide init fish | source

# Setup brew
eval "$(/usr/local/bin/brew shellenv)"

# Set up fzf key bindings
fzf --fish | source

# Abbr for common commands 
abbr -a -- cd z
abbr -a -- .. 'cd ..'
abbr -a -- .... 'cd ../..'

abbr -a -- fsh 'source ~/.config/fish/config.fish'

abbr -a -- mkp 'mkdir -p'
abbr -a -- rmf 'rm -f'
abbr -a -- rmr 'rm -rf'

abbr -a -- c clear
abbr -a -- h history

abbr -a -- myip 'scutil --nwi'

abbr -a -- b bat
abbr -a -- d docker
abbr -a -- lzd lazydocker
abbr -a -- lzg lazygit
abbr -a -- n nvim
abbr -a -- lm limactl

abbr -a -- ol ollama
abbr -a -- oll 'ollama list'
abbr -a -- olp 'ollama ps'

abbr -a -- lma limactl
