#########################################################
#               colors
#########################################################
#0   = default colour
#1   = bold
#4   = underlined
#5   = flashing text
#7   = reverse field
#31  = red
#32  = green
#33  = orange
#34  = blue
#35  = purple
#36  = cyan
#37  = grey
#40  = black background
#41  = red background
#42  = green background
#43  = orange background
#44  = blue background
#45  = purple background
#46  = cyan background
#47  = grey background
#90  = dark grey
#91  = light red
#92  = light green
#93  = yellow
#94  = light blue
#95  = light purple
#96  = turquoise
#100 = dark grey background
#101 = light red background
#102 = light green background
#103 = yellow background
#104 = light blue background
#105 = light purple background
#106 = turquoise background
  
#export LS_COLORS='fi=0:di=1;4;91;103:ln=0;35:ex=0;94:*.txt=35;106:*.cpp=35;106:*.hpp=35;106:*.vim=35;106:*.py=35;106:*.sh=35;106:'
export LS_COLORS='fi=0:di=1;36:ln=0;35:ex=0;94:*.txt=35;106:*.cpp=35;106:*.hpp=35;106:*.vim=35;106:*.py=35;106:*.sh=35;106:'
color_red="\[\e[01;31m\\]"
color_red2="\[\e[01;91m\\]"
color_green="\[\e[01;32m\]"
color_green2="\[\e[0;92m\]"
color_blue="\[\e[01;34m\]"
color_blue2="\[\e[01;94m\]"
color_nice_green="\[\e[00;36m\]"
color_nice_green2="\[\e[00;96m\]"
color_nice_green2_bold="\[\e[00;96m\]"
color_nice_green3="\[\e[01;96m\]"
color_yellow="\[\e[01;33m\]"
color_white="\[\e[0;97m\]"
color_none="\[\e[0m\]"
RED="\e[1;31m"
NICE_GREEN="\e[0;36m"
COLOR_NONE="\e[0;00m"
color_none="\[\e[0;00m\]"
BLUE="\e[1;34m\]"

if [ -z "$PS1" ]; then
    export PS1=
else
    #vvolkows colors
    reset_color=`tput sgr0`
    black_color=`tput setaf 0`
    red_color=`tput setaf 1`
    green_color=`tput setaf 2`
    blue_color=`tput setaf 4`
    bright_color=`tput bold`
    #
    Black="$(tput setaf 0)"
    BlackBG="$(tput setab 0)"
    DarkGrey="$(tput bold ; tput setaf 0)"
    LightGrey="$(tput setaf 7)"
    LightGreyBG="$(tput setab 7)"
    White="$(tput bold ; tput setaf 7)"
    Red="$(tput setaf 1)"
    RedBG="$(tput setab 1)"
    LightRed="$(tput bold ; tput setaf 1)"
    Green="$(tput setaf 2)"
    GreenBG="$(tput setab 2)"
    LightGreen="$(tput bold ; tput setaf 2)"
    Brown="$(tput setaf 3)"
    BrownBG="$(tput setab 3)"
    Yellow="$(tput bold ; tput setaf 3)"
    Blue="$(tput setaf 4)"
    BlueBG="$(tput setab 4)"
    LightBlue="$(tput bold ; tput setaf 4)"
    Purple="$(tput setaf 5)"
    PurpleBG="$(tput setab 5)"
    Pink="$(tput bold ; tput setaf 5)"
    Cyan="$(tput setaf 6)"
    CyanBG="$(tput setab 6)"
    LightCyan="$(tput bold ; tput setaf 6)"
    NC="$(tput sgr0)" # No Color
fi

