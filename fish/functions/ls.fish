function ls --wraps='eza -lh --group-directories-first --icons' --description 'alias ls=eza -lh --group-directories-first --icons'
  eza -lh --group-directories-first --icons $argv
        
end
