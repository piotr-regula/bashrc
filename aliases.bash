alias cls=clear
alias bashrc="$EDITOR ~/.bashrc"
alias vimrc="$EDITOR ~/.vimrc"
alias lss="ls -l --color=always | sort -f"
alias ll="ls -la --color=always | sort -f"
alias pack='tar -cjf'
alias p='patch -p0 <'
alias pg='patch -p1 <'
alias rp='patch -p1 -R <'
alias gc='find . -regex "\(.*\.cpp\)\|\(.*\.hpp\)\|\(.*\.mk\)\|\(.*\.ttcn3\)" | xargs -P 25 grep --color -rins '
alias gcnot='find . -regex "\(.*\.cpp\)\|\(.*\.hpp\)\|\(.*\.mk\)\|\(.*\.ttcn3\)" | grep -vi test | xargs -P 25 grep --color -rins '
alias G="grep -i --color "
alias psaux='ps aux | grep regula'
alias line="echo -e \"------------------------------------------------------------------------------------------------------------------------------------------\" "
alias gf=' grep -v "base\|svn\|.swp\|.swo\|.rej\|.orig\|.ysm\|.swn\|.edited\|.swm\|.swl\|.t3xf"' #grep filter
alias sedfiles="find . -iname \"*.[hc]pp\" -or -iname \"*.ttcn3\" | xargs sed -i\"*.back\" "

alias gs='gvim --servername GVIM'
alias gvimRemoteOpen=' gvim --servername GVIM --remote-send "<Esc>:split<Cr>" && gvim --servername GVIM --remote '
alias VL='root&vimlog logs/SCTs/`ls -lart logs/SCTs/ | tr -s " " |cut -d" " -f9  | tail -n1`'

#apps aliases
alias vue="java -jar ~/programs/VUE/VUE.jar >/dev/null 2>&1"
alias img="eog "
alias citrixcfg="/opt/Citrix/ICAClient/wfcmgr & "
alias citrixcfg="/opt/Citrix/ICAClient/wfcmgr & "
alias op="xdg-open"
alias umlet="java -jar ~/programs/Umlet/umlet.jar &>/dev/null &"
#VCS aliases
alias co="svn co"
alias up="svn update"
alias update="svn update"
alias commit="svn commit"
alias status="svn st"
alias svnst="svn st -q --ignore-externals"
alias add="svn add"
alias svndiff="svn diff | colordiff"
alias diffrev="svn diff -c"
alias log="svn log -l"
alias revertall="svn revert -R ."
alias logreg="log 10000 | G -A 2 -B 2 regula"
alias logppl="log 10000 | G -A 2 -B 2 "

alias pull="git pull"
alias push="git push"
