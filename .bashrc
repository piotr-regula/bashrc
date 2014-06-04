#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~
#                       General Config
#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~

. ~/.bash_config/config/colors.bash

export COLORTERM=1
export SHELL=/bin/bash
export HISTFILE=$HOME/.bash_history
export HISTSIZE=9000
HISTCONTROL=ignoredups:erasedups:ignorespace # don't put duplicate lines in the history. See bash(1) for more options
export HISTIGNORE="pwd:ls:lss:cls:bashrc:vimrc"

export VISUAL='gvim'
export EDITOR=$VISUAL
export WINEDITOR=$EDITOR
#use vim to view man pages
export PAGER="/bin/sh -c \"unset PAGER;col -b -x | vim -R -c 'set ft=man nomod nolist' -c 'map q :q<CR>' -c 'map <SPACE> <C-D>' -c 'map b <C-U>' -c 'nmap K :Man <C-R>=expand(\\\"<cword>\\\")<CR><CR>' -\""
export GREP_OPTIONS="-rIs --exclude=\*.svn\* --exclude=\*.git\*  --color=auto" GREP_COLOR='1;32'

export INDENT=4


#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~
#                       Other
#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~

. ~/.bash_config/aliases.bash
