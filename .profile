export CLICOLOR=1
export GREP_OPTIONS='--color=auto'
export LSCOLORS=GxFxCxDxBxegedabagaced
export HISTIGNORE="&:ll:[bf]g:exit"
export HISTCONTROL=ignoredups
export EDITOR=vi
export HISTFILESIZE=100000000
export HISTSIZE=1000
shopt -s histappend #tell the shell to always append the history to the HISTFILE.
shopt -s histverify # verify command substitutions before the shell executes them
export PROMPT_COMMAND="$PROMPT_COMMAND;history -a"

#set -o vi

alias git="git-achievements"

alias ll='ls -alF'
alias fr='cd /Users/jankrag/Documents/workspaces/fr'
alias tmc='cd /Users/jankrag/Documents/workspaces/TMC/TMC'
alias hgs='echo;echo "STATUS";hg st;echo;echo "SUMMARY";hg sum;echo;echo "INCOMING";hg inc;echo;echo "OUTGOING";hg out'
alias hgrc='vi ~/.hgrc'
#put my laptop into sleep mode
alias gotosleep="osascript -e 'tell application \"System Events\" to sleep'"
#wake up laptop from sleep - and yes, this is usefull as you can ssh into laptop while its sleeping
alias activate="osascript -e 'tell application \"System Events\" to activate'"

alias gf='git flow'
alias gff='git flow feature'
alias gffs='git flow feature start'
alias ga='gitall'
alias gau='gitall up'
alias gas='gitall status'
alias gac='gitall -qq curbranch'
alias gasr='gitall -qq st --porcelain'
alias gras='gitall -qq rawst'
alias gu='gitall -e unitlinked'
alias ss='gitall -nq status -sb'
alias ssq='gitall -qq status -sb'
alias gap='gitall push'
alias finderfix='sudo killall -KILL appleeventsd'
alias g1='git l1'
alias g5='git l5'
alias g10='git l10'
alias g20='git l20'
alias gt='git-show-tree'

#fast cd up commands
#alternatively use 'up' function defined in my bash_profile
# up -> go up 1 directory
# up 4 -> go up 4 directories
alias cd..='cd ..'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ..2='cd ../..'
alias ..3='cd ../../..'
alias ..4='cd ../../../..'
alias ..5='cd ../../../../..'

alias wget="curl -O"

#alias git=hub

#reload .bash_profile
alias rebash='source ~/.bash_profile'
#reload .profile
alias repro='source ~/.profile'
#Get BOFH excuse
alias bofh='telnet towel.blinkenlights.nl 666 2>/dev/null |tail -2'
alias bofd='telnet towel.blinkenlights.nl 666 2>/dev/null |tail -2 | cowsay -f dragon | lolcat'
#Mac OSX - show battery status
alias battery="pmset -g batt | egrep '([0-9]+\%).*' -o --colour=auto | cut -f1 -d';'"
# print the top 10 most frequent git commands to look for candidates for git aliases
alias frequentgit='history | cut -c 8- | grep git | sort | uniq -c  | sort -n -r | head -n 10'
alias frequentgitall='history | cut -c 8- | grep ga | sort | uniq -c  | sort -n -r | head -n 10'
# print stats of most frequent bash commands to look for candidates for aliases
alias frequent='history | cut -c 8- | sort | uniq -c  | sort -n -r | head -n 10'

alias fastping='ping -c 20 -i.1'
alias watchtail='watch -n .5 tail -n 20'
alias watchdir='watch -n .5 ls -la'
#cat print source files with syntax highlighting. Uses Pythons Pygments module (http://pygments.org/)
#http://stackoverflow.com/questions/7851134/syntax-highlighting-colorizing-cat/7855793#7855793
alias catc='pygmentize -g'

#alias my own clone of 'q' command for testing changes before sending pull-request, but still allowing use of the brew installed one
alias jq='~/Documents/github/q/q'

