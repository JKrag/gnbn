case $TERM in
	xterm*)
		PS1="\[\033]0;\w\007\]bash\$ "
		;;
	*)
		PS1="bash\$ "
		;;
esac
. ~/.profile

export PATH=$PATH:/Applications/typesafe-stack/bin

. ~/.bash_completion

R=$'\e[0m'
D=$'\e[32;40m'
PINK=$'\e[35;40m'
GREEN=$'\e[32;40m'
BLUE=$'\e[34;40m'
ORANGE=$'\e[33;40m'

#hg_ps1() {
#    hg prompt "{${D} on ${PINK}{branch}}{${D} at ${ORANGE}{bookmark}}{${GREEN}{status}}" 2> /dev/null
#}
#export PS1='\n${PINK}\u ${D}at ${ORANGE}\h ${D}in ${GREEN}\w$(hg_ps1)\
#${D}\n$ '

hg_ps1() {
    hg prompt "{${BLUE}[{incoming|count}]->${D}}{${ORANGE}{root|basename}${D}}{/${PINK}{branch}${D}}{${BLUE}->[{outgoing|count}]${D}}{ at {bookmark}}{ ${GREEN}{status}${D}}{ ${ORANGE}{update}${D} }" 2> /dev/null
}

export PS1='[\w] $(hg_ps1)$ ${D}'

#export PS1='$(hg_ps1)\n\w\n$ '

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function
alias wget="curl -O"

whichl() { ls -al `which $@`;}