#########################################################
#               bash_configuration
#########################################################

#editor
export VISUAL='gvim'
export EDITOR=$VISUAL
export WINEDITOR=$EDITOR
export GIT_EDITOR='vim'

#HISTORY
HISTFILE=$HOME/.bash_history
HISTSIZE=500000
HISTFILESIZE=100000
HISTCONTROL=ignoredups:erasedups:ignorespace # don't put duplicate lines in the history. See bash(1) for more options
HISTIGNORE="pwd:ls:lss:cls:bashrc:vimrc"
shopt -s histappend # Append to the history file, don't overwrite it
shopt -s cmdhist # Save multi-line commands as one command

PROMPT_COMMAND='history -a' # Record each line as it gets issued
#MISC
export COLORTERM=1
export PATH=~/devTools:$PATH
export PATH=~/devTools/devToolTeamRepo:$PATH
export INDENT=4

