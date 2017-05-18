###-tns-completion-start-###
if [ -f /home/rachael/.tnsrc ]; then 
    source /home/rachael/.tnsrc 
fi
###-tns-completion-end-###

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

if [ -f /home/rachael/.profile ]; then
    source /home/rachael/.profile
fi

###-tns-completion-start-###
if [ -f /home/rachael/.tnsrc ]; then 
    source /home/rachael/.tnsrc 
fi
###-tns-completion-end-###
