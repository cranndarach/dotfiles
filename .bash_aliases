# Aliases
# created by user

# Shorthand & efficiency
alias ll='ls -alF'
alias la='ls -a --color=auto'
alias l='ls -CF'
alias lal='ls -al --color=auto'
alias lsl='ls -alF'
alias lsa='ls -a --color=auto'
alias lsal='ls -al --color=auto'

alias wcl='wc -l'
alias wcw='wc -w'
alias wcc='wc -m'  # -m is characters 
alias wcb='wc -c'  # -c is bytes

alias rustic=rustc
alias qmake='/usr/bin/qmake'

alias bashrc='$EDITOR ~/.bashrc && source ~/.bashrc'
alias bashaliases='$EDITOR ~/.bash_aliases && source ~/.bash_aliases'
alias aliases='$EDITOR ~/.bash_aliases && source ~/.bash_aliases'
alias bashfnc='$EDITOR ~/.bash_functions && source ~/.bash_functions'
alias vimrc='$EDITOR ~/.vimrc'

alias hyper='Hyper'
alias ghost='gs'	# I am used to 'gs' as 'git status'
alias view='evince'
alias ipy='ipython'
# alias norope='echo ".rope*" >> .git/info/exclude'
alias jupy='jupyter notebook'

# Common typos
alias firefix='/usr/bin/firefox'
alias firefix-dev='/opt/firefox-developer/firefox'
alias nom='npm'

# Programs stored in /opt/
alias micro='/opt/micro/micro'
alias firefox-dev='/opt/firefox-developer/firefox'
alias extraterm='/opt/extraterm/extraterm'
alias exercism='/opt/exercism/exercism'

# My own programs
alias lifetracker='cd ~/projects/lifetracker/electron && npm start'
alias passbox='cd ~/projects/passbox && npm start'
alias tarot='python ~/projects/tarot/main.py'
alias namegen='ipython -i ~/projects/namegen/namegen.py'

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
