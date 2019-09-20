#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~
#                       General Config
#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~

case $- in
    *i*) ;;
      *) return;;
esac

export BASH_CONFIG_PATH=~/.bash_config/

. $BASH_CONFIG_PATH/config/colors.bash
. $BASH_CONFIG_PATH/config/PS1.bash
. $BASH_CONFIG_PATH/config/bindings.bash
. $BASH_CONFIG_PATH/config/variableExports.bash
. $BASH_CONFIG_PATH/config/bash_configuration.bash

export SHELL=/bin/bash

#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~
#                       Other
#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~

. $BASH_CONFIG_PATH/aliases.bash
. $BASH_CONFIG_PATH/utilityFunctions.bash
if [ -f $BASH_CONFIG_PATH/cplane/workrc.bash ]; then
    . $BASH_CONFIG_PATH/cplane/workrc.bash
fi

PATH="/home/suzu/perl5/bin${PATH+:}${PATH}"; export PATH;
PERL5LIB="/home/suzu/perl5/lib/perl5${PERL5LIB+:}${PERL5LIB}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/home/suzu/perl5${PERL_LOCAL_LIB_ROOT+:}${PERL_LOCAL_LIB_ROOT}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/home/suzu/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/home/suzu/perl5"; export PERL_MM_OPT;

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
