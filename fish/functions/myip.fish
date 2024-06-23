function myip --wraps='scutil --nwi' --description 'alias myip=scutil --nwi'
  scutil --nwi $argv
        
end
