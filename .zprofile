[[ -e ~/.profile ]] && emulate sh -c 'source ~/.profile'

# Set my name
export USER=$(eval whoami) #"Rachael"

# Set rc file
export RCFILE=~/.zshrc

# Set preferred programs for aliases, etc.
export VIEWER=okular
export EDITOR=nvim

# Set github SSH URL prefix
export GH=git@github.com:cranndarach/
# Alias `hub` as `git`
eval "$(hub alias -s)"

# Allow command completion for gcloud
source ~/.local/lib/google-cloud-sdk/completion.zsh.inc
# Add gcloud SDK command line tools to $PATH
source ~/.local/lib/google-cloud-sdk/path.zsh.inc
