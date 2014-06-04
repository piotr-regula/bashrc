. ~/utils/variousFunc.bash

if [ -z "$PS1" ]; then
    export PS1=
else
    export HOSTNAME=$(echo $(hostname) | cut -d '.' -f 1)
    PPREF=$HOSTNAME
    rec_op="${color_white}-["
    rec_cl="${color_white}]-"
    if [ "$CLEARCASE_ROOT" ];    then PPREF=[$(basename $CLEARCASE_ROOT)]; fi
    if [ "$PROJECT_ROOT" ];      then PPREF=\<$HOSTNAME:$(basename $PROJECT_ROOT)\>; fi
    if [ "$LINSEE_VERSION" ];    then PPREF=[L$(echo $LINSEE_VERSION | cut -d '_' -f 3,4)]$HOSTNAME; fi
    export PS1="${color_white}|--$rec_op${color_nice_green}\w$rec_cl$rec_op${color_nice_green2_bold}jobs: \j$rec_cl$rec_op${color_nice_green3}\`lastFunctionMoodPrinter\`$rec_cl$rec_op${color_nice_green2_bold}$LINSEE_VERSION$rec_cl$rec_op${color_green2}$PROJECT_ROOT$rec_cl$rec_op${color_nice_green2_bold}\$(/bin/ls -1 | /usr/bin/wc -l | /bin/sed 's: ::g') files$rec_cl$rec_op${color_nice_green2_bold}\$(/bin/ls -lah | /bin/grep -m 1 total | /bin/sed 's/total //')b\[\e[30;1m\]$rec_cl
|
\-> $color_none";
fi
