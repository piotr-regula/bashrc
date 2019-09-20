#########################################################
#               bindings
#########################################################

bind '"\C-g":"gvimf "'   #ctrl+g for vim - type filename after that command to edit specific file 
bind '"\eg":"gvimRemoteOpen "'     #alt+g for gvimremoteopen 
bind '"\C-v":"vim "'   #ctrl+v for vim 
bind '"\en":"> /dev/null "'   #alt+n /dev/null 
bind '"\e[A": history-search-backward'  #bash completion
bind '"\e[B": history-search-forward'
bind '"\C-f":" | decolorize | fzf "'   #use fzf for interactive menu

