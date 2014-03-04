export CLICOLOR=1
export GREP_OPTIONS='--color=auto'
export LSCOLORS=GxFxCxDxBxegedabagaced
alias ll='ls -alF'
alias fr='cd /Users/jankrag/Documents/workspaces/fr'
alias tmc='cd /Users/jankrag/Documents/workspaces/TMC/TMC'
alias hgs='echo;echo "STATUS";hg st;echo;echo "SUMMARY";hg sum;echo;echo "INCOMING";hg inc;echo;echo "OUTGOING";hg out'
alias hgrc='vi ~/.hgrc'
alias activate="osascript -e 'tell application \"System Events\" to activate'"
alias gotosleep="osascript -e 'tell application \"System Events\" to sleep'"
alias boss='cd /Users/jankrag/Documents/workspaces/BOSS'
alias nlp='cd /Users/jankrag/Documents/workspaces/BOSS/nlp'
alias advice='cd /Users/jankrag/Documents/workspaces/BOSS/advice'
alias coreweb='cd /Users/jankrag/Documents/workspaces/BOSS/coreweb'
alias gf='git flow'
alias gff='git flow feature'
alias gffs='git flow feature start'
alias ga='gitall'
alias gau='gitall up'
alias gas='gitall status'
alias gasr='gitall -qq st --porcelain'
alias gap='gitall push'
alias finderfix='sudo killall -KILL appleeventsd'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias wget="curl -O"
#reload .bash_profile
alias rebash='source ~/.bash_profile'
#reload .profile
alias repro='source ~/.profile'
#Get BOFH excuse
alias bofh='telnet towel.blinkenlights.nl 666 2>/dev/null |tail -2'
#Mac OSX - show battery status
alias battery="pmset -g batt | egrep '([0-9]+\%).*' -o --colour=auto | cut -f1 -d';'"
# print the top 10 most frequent git commands to look for candidates for git aliases
alias frequentgit='history | cut -c 8- | grep git | sort | uniq -c  | sort -n -r | head -n 10'
alias frequentgitall='history | cut -c 8- | grep ga | sort | uniq -c  | sort -n -r | head -n 10'
# print stats of most frequent bash commands to look for candidates for aliases
alias frequent='history | cut -c 8- | sort | uniq -c  | sort -n -r | head -n 10'

