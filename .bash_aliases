# Aliases
# created by user

alias ll='ls -alF'
alias la='ls -a --color=auto'
alias l='ls -CF'
alias wcl='wc -l'
alias wcw='wc -w'
alias wcc='wc -m'  # -m is characters 
alias wcb='wc -c'  # -c is bytes
# alias python=/usr/bin/python3.5
alias rustic=rustc
alias qmake='/usr/bin/qmake'
alias micro='/opt/micro/micro'
alias firefox-dev='/opt/firefox-developer/firefox'
alias firefix='/usr/bin/firefox'
alias firefix-dev='/opt/firefox-developer/firefox'
alias bashrc='$EDITOR ~/.bashrc && source ~/.bashrc'
alias bashaliases='$EDITOR ~/.bash_aliases && source ~/.bash_aliases'
alias aliases='$EDITOR ~/.bash_aliases && source ~/.bash_aliases'
alias nom='npm'
alias hyper='Hyper'
alias extraterm='/opt/extraterm/extraterm'
alias ghost='gs'	# I am used to 'gs' as 'git status'
alias vimrc='$EDITOR ~/.vimrc'

alias lifetracker='cd ~/projects/lifetracker/electron && npm start'
alias passbox='cd ~/projects/passbox && npm start'
alias tarot='python ~/projects/tarot/main.py'

# git aliases
alias gs='git status'
alias gc='git commit -m'
alias gca='git commit -am'
alias gpl='git pull'
alias gp='git push'
alias gpi='git push -u origin master'
alias gsub='git submodule add'
alias gco='git checkout'


# from original ~/.bashrc
# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'
