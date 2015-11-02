function killscreens()
{
    for session in $(screen -ls | grep -o '[0-9]\{4\}')
    do
        screen -S "${session}" -X quit;
    done
}

function extract()
{
     if [ -f $1 ] ; then
         case $1 in
             *.tar.bz2)   tar xvjf $1     ;;
             *.tar.gz)    tar xvzf $1     ;;
             *.bz2)       bunzip2 $1      ;;
             *.rar)       unrar x $1      ;;
             *.gz)        gunzip $1       ;;
             *.tar)       tar xvf $1      ;;
             *.tbz2)      tar xvjf $1     ;;
             *.tgz)       tar xvzf $1     ;;
             *.zip)       unzip $1        ;;
             *.Z)         uncompress $1   ;;
             *.7z)        7z x $1         ;;
             *)           echo "'$1' cannot be extracted via >extract<" ;;
         esac
     else
         echo "'$1' is not a valid file"
     fi
}

#dtrx for recursive extract

function myinfo()   # Get current host related info.
{
    echo -e "\nYou are logged on ${BLUE}$HOST"
    echo -e "\nAdditionnal information:$NC " ; uname -a
    #echo -e "\n${RED}Users logged on:$NC " ; w -h
    echo -e "\n${RED}Current date :$NC " ; date
    echo -e "\n${RED}Machine stats :$NC " ; uptime
    echo -e "\n${RED}Memory stats :$NC " ; free
    my_ip 2>&- ;
    #echo -e "\n${RED}Open connections :$NC "; netstat -pan --inet;
    echo
}

function lastFunctionMoodPrinter()
{
    if [ $? = 0 ]; then
        echo "${bright_color}(=^_^=)";
    else
        echo "${red_color}(=;_;=)";
    fi
}
function anyChangesInSvn()
{
    number_of_lines_changes=`svn st -q --ignore-externals 2>/dev/null | wc -l`;
    if [ $number_of_lines_changes = 0 ]; then
        echo "${bright_color}no changes";
    else
        echo "${red_color}local changes";
    fi
    
}

function revert()
{
    svn merge -c -$1 .
}

function logppl()
{
    svn log 10000 | grep -i --color -A 2 -B 2  "r[0-9]*.*|.*$1"
}

function g()
{
    grep -rin "$*" .
}

function gnot()
{
    grep -rin "$*" . | grep -vi test | grep -i $1
}

function gvimf()
{
    gvim `echo $1 |  sed 's/\([^:]*\):\([0-9]*\).*/\1 +\2/'`
}

function f()
{
    if [ $# == 2 ]; then
        find $1  -iname '*'$2'*'  ;
    else
        find .  -iname '*'$*'*' | gf ;
    fi
}

function fcpp()
{
    f $* | grep cpp
}

function Find()
{
    if [ $# == 2 ]; then
        find $1 -type f -iname '*'$2'*'  ;
    else
        find . -type f -iname '*'$*'*'  ;
    fi
}


#VCS func
function isGit()
{
    git ls-files &> /dev/null
}

function ci()
{
    if ! isGit; then
        svn ci -m "$*"
    else
        git ci -m "$*"
    fi
}

function st()
{
    if ! isGit; then
        svn st
    else
        git status
    fi
}

function diff()
{
    if ! isGit; then
        svn diff | gvim -
    else
        git diff | gvim -
    fi
}

function notifyLastCommandResult()
{
     [[ $? == 0 ]] && notify.py entity run success - build finished || notify.py entity run failed - build finished
}
