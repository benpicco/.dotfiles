alias ls="ls --color=auto"
alias ll="ls -l"
alias lsh="ls -sh"
alias sl=ls

alias …="cd .."
alias open=xdg-open

alias watch="watch --differences"
alias irsshi="ssh benpicco.de -t bash -ic 'screen\ -rd\ irc'"

calc(){ awk "BEGIN{ print $* }" ;}
mkcd(){ mkdir $1 ; cd $1 ;}

extract () {
        if [ -f $1 ] ; then
                case $1 in
                        *.tar.bz2)   tar xvjf $1    ;;
                        *.tar.gz)    tar xvzf $1    ;;
                        *.tar.xz)    tar xvJf $1    ;;
                        *.bz2)       bunzip2 $1     ;;
                        *.rar)       unrar x $1     ;;
                        *.gz)        gunzip $1      ;;
                        *.tar)       tar xvf $1     ;;
                        *.tbz2)      tar xvjf $1    ;;
                        *.tgz)       tar xvzf $1    ;;
                        *.zip)       unzip $1       ;;
                        *.Z)         uncompress $1  ;;
                        *.7z)        7z x $1        ;;
                        *.xz)        unxz $1        ;;
                        *.exe)       cabextract $1  ;;
                        *)           echo "\`$1': unrecognized file compression" ;;
                esac
        else
                echo "\`$1' is not a valid file"
        fi
}

shopt -s cdspell

alias homeconfig='git --git-dir=$HOME/.homeconfig.git/ --work-tree=$HOME'
