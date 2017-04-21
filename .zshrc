if [[ $TERMINIX_ID ]]; then
  source /etc/profile.d/vte.sh
fi

# export USER="oak"

if [[ -f /usr/share/powerline/bindings/zsh/powerline.zsh ]]; then
  source /usr/share/powerline/bindings/zsh/powerline.zsh
fi

# 
export TERM="xterm-256color"

export XDG_CONFIG_DIRS=~/.config:$XDG_CONFIG_DIRS
export XDG_CONFIG_HOME=~/.config

fpath=(~/.zsh/completions $fpath) 
autoload -U compinit && compinit

# Path to your oh-my-zsh installation.
export ZSH=/home/rachael/.oh-my-zsh

# source ~/.zsh_colors

################
# POWERLEVEL9K #
################

# Using an awesome font
POWERLEVEL9K_MODE='awesome-fontconfig'

# Prompt sections
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(status anaconda context dir)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(vcs time battery)

# Username / context
# POWERLEVEL9K_CONTEXT_DEFAULT_BACKGROUND="02"
POWERLEVEL9K_CONTEXT_DEFAULT_BACKGROUND="10"
POWERLEVEL9K_CONTEXT_DEFAULT_FOREGROUND="black"
export DEFAULT_USER=$USER

# Anaconda env marker
POWERLEVEL9K_ANACONDA_BACKGROUND="53"
POWERLEVEL9K_ANACONDA_ICON="\ue73c"
POWERLEVEL9K_ANACONDA_ICON_COLOR="white"

# Directory prompt
POWERLEVEL9K_SHORTEN_DIR_LENGTH=2
POWERLEVEL9K_DIR_HOME_BACKGROUND="4"
POWERLEVEL9K_DIR_DEFAULT_BACKGROUND="4"
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND="4"
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND="black"
POWERLEVEL9K_DIR_DEFAULT_FOREGROUND="black"

# Git
POWERLEVEL9K_VCS_SHOW_SUBMODULE_DIRTY=false
POWERLEVEL9K_VSC_BACKGROUND="10"
POWERLEVEL9K_VCS_MODIFIED_BACKGROUND="11"

# Time
POWERLEVEL9K_TIME_FORMAT="%D{⌚ %I:%M}"
POWERLEVEL9K_TIME_BACKGROUND="248"
POWERLEVEL9K_TIME_FOREGROUND="234"

# Battery
# export BATT_BG="black"
export BATT_BG="243"
POWERLEVEL9K_BATTERY_LOW_THRESHOLD="15"
POWERLEVEL9K_BATTERY_LOW_BACKGROUND="$BATT_BG"
POWERLEVEL9K_BATTERY_CHARGING_BACKGROUND="$BATT_BG"
POWERLEVEL9K_BATTERY_CHARGED_BACKGROUND="$BATT_BG"
POWERLEVEL9K_BATTERY_DISCONNECTED_BACKGROUND="$BATT_BG"
POWERLEVEL9K_BATTERY_LOW_FOREGROUND="52"
POWERLEVEL9K_BATTERY_CHARGING_FOREGROUND="17"
POWERLEVEL9K_BATTERY_CHARGED_FOREGROUND="255"
POWERLEVEL9K_BATTERY_DISCONNECTED_FOREGROUND="19"
# POWERLEVEL9K_BATTERY_ICON=" "
# POWERLEVEL9K_BATTERY_LOW_ICON=" "
# POWERLEVEL9K_BATTERY_CHARGING_ICON=" "
# POWERLEVEL9K_BATTERY_CHARGED_ICON=" "
# POWERLEVEL9K_BATTERY_DISCONNECTED_ICON=" "
POWERLEVEL9K_BATTERY_VISUAL_IDENTIFIER_COLOR="255"
POWERLEVEL9K_BATTERY_LOW_VISUAL_IDENTIFIER_COLOR="52"
POWERLEVEL9K_BATTERY_CHARGING_VISUAL_IDENTIFIER_COLOR="17"
POWERLEVEL9K_BATTERY_CHARGED_VISUAL_IDENTIFIER_COLOR="255"
POWERLEVEL9K_BATTERY_DISCONNECTED_VISUAL_IDENTIFIER_COLOR="19"

# Status marker
POWERLEVEL9K_STATUS_OK_BACKGROUND="$BATT_BG"

# End POWERLEVEL9K configuration

# ZSH_THEME="agnosterzak"
ZSH_THEME="powerlevel9k/powerlevel9k"
# ZSH_THEME="norm"
# ZSH_THEME="risto"
# ZSH_THEME="af-magic"
# ZSH_THEME="lukerandall"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(gem, npm, pow, python, rails, ruby, web-search wd)

# Plugin configuration

# ZSH_TMUX_AUTOSTART=true
# ZSH_TMUX_AUTOSTART_ONCE=false
# ZSH_TMUX_AUTOQUIT=false

source $ZSH/oh-my-zsh.sh

# User configuration

export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Don't immediately remove everything
setopt RM_STAR_WAIT

# Can have comments in interactive session
setopt interactivecomments

# Source my other related dotfiles
source ~/.zsh_aliases
source ~/.zsh_functions

# Enable powerline
source /usr/share/powerline/bindings/zsh/powerline.zsh

# This loads nvm
export NVM_DIR="/home/rachael/.nvm"
nvm_start() {
  [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
}

export LD_LIBRARY_PATH=/usr/lib/gcc/x86_64-linux-gnu/5:LD_LIBRARY_PATH
export ANDROID_HOME=/home/rachael/Android/Sdk
export JAVA_HOME=$(update-alternatives --query javac | sed -n -e 's/Best: *\(.*\)\/bin\/javac/\1/p')
export GOOGLE_APPLICATION_CREDENTIALS=~/.google-service-credentials.json
export GOPATH=$HOME/gopath
export GEM_HOME=$HOME/.gem

for dir in $HOME/.gem/ruby/*; do
  [ -d "$dir/bin" ] && PATH="${dir}/bin:${PATH}"
done
# export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH="/home/rachael/anaconda3/bin:$PATH" # added by Anaconda3 4.2.0 installer
export PATH=${PATH}:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools
export PATH=~/.npm-global/bin:$PATH
export PATH=$GOPATH:$GOPATH/bin:$PATH
export PATH=~/.scripts:$PATH
# export PATH=/opt:$PATH
export PATH=~/.keepass2:$PATH

# OPAM configuration
. /home/rachael/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true

. /home/rachael/torch/install/bin/torch-activate


# Greet me and show my to-do list once everything is loaded.
echo "Hello, $USER!"
# echo "Here's your current to-do list:"
# echo
# task
