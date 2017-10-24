case $TERM in
	xterm*)
		PS1="\[\033]0;\w\007\]bash\$ "
		;;
	*)
		PS1="bash\$ "
		;;
esac
. ~/.profile

export PATH=$PATH:/Applications/typesafe-stack/bin:/usr/local/Cellar/smlnj/110.75/libexec/bin


if [ -f /usr/local/git/contrib/completion/git-completion.bash ]; then
    . /usr/local/git/contrib/completion/git-completion.bash
fi
if [[ "$TERM_PROGRAM" != "DTerm" ]]; then
	if [ -f `brew --prefix`/etc/bash_completion ]; then
		. `brew --prefix`/etc/bash_completion
	fi
	#source ~/.hg_bash_completion
	[[ $- == *i* ]]   &&   . /Users/jankrag/Documents/github/git-prompt/git-prompt.sh
fi
#if [ -f ~/.config/exercism/exercism_completion.bash ]; then
#    . ~/.config/exercism/exercism_completion.bash
#fi


#if [ -f /Users/jankrag/Documents/github/git-prompt/git-prompt.sh ]; then
#    . /Users/jankrag/Documents/github/git-prompt/git-prompt.sh
#fi
#GIT_PS1_SHOWDIRTYSTATE=true


#export PS1='\[\033[32m\]\u@\h\[\033[00m\]:\[\033[34m\]\w\[\033[31m\]$(__git_ps1)\[\033[00m\]\$ '


#R=$'\e[0m'
#D=$'\e[32;40m'
#PINK=$'\e[35;40m'
#GREEN=$'\e[32;40m'
#BLUE=$'\e[34;40m'
#ORANGE=$'\e[33;40m'
#BC=$'\e[34;46m'
#CB=$'\e[36'
#CY=$'\e[36;43m'
#BY=$'\e[1;30;43m'
#YP=$'\e[33;45m'
#BP=$'\e[30;45m'
#PB=$'\e[35'
#hg_ps1() {
#    hg prompt "{${D} on ${PINK}{branch}}{${D} at ${ORANGE}{bookmark}}{${GREEN}{status}}" 2> /dev/null
#}

#export PS1='\n${PINK}\u ${D}at ${ORANGE}\h ${D}in ${GREEN}\w$(hg_ps1)\
#${D}\n$ '
#hg_ps1() {
#    hg prompt "{${BC}+{incoming|count} ${CY}⮀${D}}{${BY} {root|basename} ${D}}{${YP}⮀${BP} ⭠ {branch} ${PB}⮀${D}}{${BLUE} ⮀ [{outgoing|count}]${D}}{ at {bookmark}}{ ${GREEN}{status}${R}}{ ${ORANGE}{update}${R} }" 2> /dev/null
#}
#
#export PS1='[\w] $(hg_ps1)$ ${D}'

#export PS1='$(hg_ps1)\n\w\n$ '

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function

# find the actual "source" of a symlinked command, e.g. 'whichl sbt': ../Cellar/sbt/0.13.0/bin/sbt  ('which sbt' would print /usr/local/bin/sbt )
whichl() { readlink `which $@`;}

# nicely formatted and paged ls.
lt() { env CLICOLOR_FORCE=1 ls -GFltra "$@" | tail; }

# list processes matching search-term, and highlight search term match
psgrep() { ps axu | grep -v grep | grep "$@" -i --color=auto; }

#easy case insensitive search for file name pattern
fname() { find . -iname "*$@*"; }

#create a new dir and cd into it.
mcd() { mkdir $1 && cd $1; }

# up -> go up 1 directory
# up 4 -> go up 4 directories
up () {
        COUNTER=$1
        while [[ $COUNTER -gt 0 ]]
         do
          UP="${UP}../"
          COUNTER=$(( $COUNTER -1 ))
         done
        echo "cd $UP"
        cd $UP
        UP=''
}
ht() {
    head -1 $1 && tail -1 $1 && echo
}
# bu <filename>
# make local copy of file with appended .backup-<date>
bu() { cp "$@" "$@".backup-`date +%Y-%m-%d`; }

# coloured man pages: http://www.cyberciti.biz/faq/linux-unix-colored-man-pages-with-less-command/
man() {
	env \
		LESS_TERMCAP_mb=$(printf "\e[1;31m") \
		LESS_TERMCAP_md=$(printf "\e[1;31m") \
		LESS_TERMCAP_me=$(printf "\e[0m") \
		LESS_TERMCAP_se=$(printf "\e[0m") \
		LESS_TERMCAP_so=$(printf "\e[1;44;33m") \
		LESS_TERMCAP_ue=$(printf "\e[0m") \
		LESS_TERMCAP_us=$(printf "\e[1;32m") \
			man "$@"
}

# Git dashboard (w (show dashboard), dn (diff next), an (add next))
# https://gist.github.com/arialdomartini/721c2be0d4edc6f0b5ac
# http://arialdomartini.wordpress.com/2014/03/03/a-dead-stupid-yet-effective-git-dashboard-in-3-lines-of-bash/
w() {
    clear &&  ls -l && echo && git branch && echo && git status --short --branch
}
dn() {
    git status --short --branch | grep '^.[DM\?]' | head -1 | awk '$1 ~ /[MD]/ {print $2} $1 ~ /\?/ {print "/dev/null " $2}' | xargs git diff -- && w
}
an() {
    git status --short --branch | grep '^.[DM\?]' | head -1 | awk '$1 ~ /[M?]/ {print "add " $2} $1 ~ /D/ {print "rm " $2}' | xargs git && w
}

#move and symlink a file in one go. Especially useful for moving some of my dot-files into this repo :-)
lmv() {
	[ -e $1 -a -e $2 ] && mv $1 $2 && ln -s $2/$(basename $1) $(dirname $1); 
}

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

export PATH="$PATH:/Users/jankrag/Documents/github/git-achievements"
export PATH="/usr/local/sbin:$PATH"
