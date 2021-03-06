if [ $TILIX_ID ] || [ $VTE_VERSION ]; then
        source /etc/profile.d/vte.sh
fi

# if [[ $TERMINIX_ID ]]; then
#   source /etc/profile.d/vte.sh
# fi

# (cat ~/.cache/wal/sequences &)
# exec $(wal -R)

export FONTAWESOME=/usr/share/fonts/awesome-terminal-fonts
source $FONTAWESOME/devicons-regular.sh
source $FONTAWESOME/fontawesome-regular.sh
source $FONTAWESOME/octicons-regular.sh
source $FONTAWESOME/pomicons-regular.sh

# if [[ -f /usr/share/powerline/bindings/zsh/powerline.zsh ]]; then
#   # Mint (outdated?)
#   source /usr/share/powerline/bindings/zsh/powerline.zsh
# if [[ -f /usr/lib/python3.6/site-packages/powerline/bindings ]]; then
#   # Manjaro
#   source /usr/lib/python3.6/site-packages/powerline/bindings
# fi

# 
export TERM="xterm-256color"

fpath=(~/.zsh/completions $fpath) 
autoload -U compinit && compinit

# Path to your oh-my-zsh installation.
export ZSH=/home/rachael/.oh-my-zsh
# export ZSH=/usr/share/oh-my-zsh

# source ~/.zsh_colors

################
# POWERLEVEL9K #
################

# source $HOME/.config/Xcolors/hex_colors

# Using an awesome font
# POWERLEVEL9K_MODE='nerd-font-complete'
POWERLEVEL9K_MODE='awesome-fontconfig'

# Prompt sections
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(status context anaconda virtualenv dir)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(vcs time battery)

# Status
POWERLEVEL9K_STATUS_OK_BACKGROUND="0"
POWERLEVEL9K_STATUS_OK_FOREGROUND="13"

# Username / context
# POWERLEVEL9K_CONTEXT_DEFAULT_BACKGROUND="02"
POWERLEVEL9K_CONTEXT_DEFAULT_BACKGROUND="10"
POWERLEVEL9K_CONTEXT_DEFAULT_FOREGROUND="black"
export DEFAULT_USER=$USER

# Anaconda env marker
POWERLEVEL9K_ANACONDA_BACKGROUND="8"
POWERLEVEL9K_ANACONDA_ICON="\ue73c"
POWERLEVEL9K_ANACONDA_ICON_COLOR="15"

POWERLEVEL9K_VIRTUALENV_BACKGROUND="8"
# POWERLEVEL9K_VIRTUALENV_ICON="\ue73c"
POWERLEVEL9K_VIRTUALENV_ICON_COLOR="15"
POWERLEVEL9K_VIRTUALENV_FOREGROUND="15"

# Directory prompt
POWERLEVEL9K_SHORTEN_DIR_LENGTH=2
POWERLEVEL9K_DIR_HOME_BACKGROUND="12"
POWERLEVEL9K_DIR_DEFAULT_BACKGROUND="12"
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND="12"
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND="black"
POWERLEVEL9K_DIR_DEFAULT_FOREGROUND="black"

# Git
POWERLEVEL9K_VCS_SHOW_SUBMODULE_DIRTY=false
# POWERLEVEL9K_VCS_CLEAN_BACKGROUND="10"
POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND="5"
POWERLEVEL9K_VCS_MODIFIED_BACKGROUND="8"
POWERLEVEL9K_VCS_MODIFIED_FOREGROUND="0"

# Time
POWERLEVEL9K_TIME_FORMAT="%D{⌚ %I:%M}"
POWERLEVEL9K_TIME_BACKGROUND="15"
POWERLEVEL9K_TIME_FOREGROUND="#24516c"

# Battery
# export BATT_BG="black"
# export BATT_BG="243"
POWERLEVEL9K_BATTERY_LOW_THRESHOLD="20"
#
POWERLEVEL9K_BATTERY_LOW_BACKGROUND="8"
POWERLEVEL9K_BATTERY_CHARGING_BACKGROUND="8"
POWERLEVEL9K_BATTERY_CHARGED_BACKGROUND="8"
POWERLEVEL9K_BATTERY_DISCONNECTED_BACKGROUND="8"
#
POWERLEVEL9K_BATTERY_VISUAL_IDENTIFIER_COLOR="0"
POWERLEVEL9K_BATTERY_LOW_FOREGROUND="7"
POWERLEVEL9K_BATTERY_LOW_VISUAL_IDENTIFIER_COLOR="1"
POWERLEVEL9K_BATTERY_CHARGING_FOREGROUND="black"
POWERLEVEL9K_BATTERY_CHARGING_VISUAL_IDENTIFIER_COLOR="black"
POWERLEVEL9K_BATTERY_CHARGED_FOREGROUND="10"
POWERLEVEL9K_BATTERY_CHARGED_VISUAL_IDENTIFIER_COLOR="10"
POWERLEVEL9K_BATTERY_DISCONNECTED_FOREGROUND="0"
POWERLEVEL9K_BATTERY_DISCONNECTED_VISUAL_IDENTIFIER_COLOR="0"
# POWERLEVEL9K_BATTERY_ICON=" "
# POWERLEVEL9K_BATTERY_LOW_ICON=" "
# POWERLEVEL9K_BATTERY_CHARGING_ICON=" "
# POWERLEVEL9K_BATTERY_CHARGED_ICON=" "
# POWERLEVEL9K_BATTERY_DISCONNECTED_ICON=" "

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
# source /usr/lib/python3.6/site-packages/powerline/bindings

# Source fuzzy finder
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Source autoenv
# [ -f /usr/share/autoenv/activate.sh ] && source /usr/share/autoenv/activate.sh

# Activate direnv
# eval "$(direnv hook zsh)"

###-nativescript-completion-start-###
if [ -f /home/rachael/.tnsrc ]; then 
    source /home/rachael/.tnsrc 
fi
###-nativescript-completion-end-###

# This loads nvm
export NVM_DIR="/home/rachael/.nvm"
# nvm_start() {
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
# }
autoload -U add-zsh-hook
load-nvmrc() {
  local node_version="$(nvm version)"
  local nvmrc_path="$(nvm_find_nvmrc)"

  if [ -n "$nvmrc_path" ]; then
    local nvmrc_node_version=$(nvm version "$(cat "${nvmrc_path}")")

    if [ "$nvmrc_node_version" = "N/A" ]; then
      nvm install
    elif [ "$nvmrc_node_version" != "$node_version" ]; then
      nvm use --silent
    fi
  elif [ "$node_version" != "$(nvm version default)" ]; then
    echo "Reverting to nvm default version"
    nvm use default
  fi
}
# Syntax: add-zsh-hook hook function
add-zsh-hook chpwd load-nvmrc
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Make pandoc available to RStudio
export RSTUDIO_PANDOC=$HOME/anaconda3/bin
# export RSTUDIO_PANDOC=/opt/anaconda/bin

export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/opt/cuda/extras/CUPTI/lib64
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/opt/cuda/lib64

export GEM_HOME=$HOME/.gem
for dir in $HOME/.gem/ruby/*; do
  [ -d "$dir/bin" ] && PATH="${dir}/bin:${PATH}"
done
export PATH=$HOME/bin:/usr/local/bin:$HOME/.local/bin:$PATH
# export PATH=/opt/anaconda/bin:$PATH
export PATH=$HOME/anaconda3/bin:$PATH
export PATH=$NVM_DIR/*/bin:$PATH
export PATH=~/.npm-global/bin:$PATH
export PATH=~/.scripts:$PATH
# export PATH=/opt:$PATH
# for dir in $HOME/.nvm/versions/node/*; do
#   echo $dir
#   [ -d "$dir/bin" ] && PATH="${dir}/bin:${PATH}"
# done
# export PATH=/opt/Telegram:$PATH
export PATH=/home/rachael/.nvm/*/bin:$PATH
export PATH=/home/rachael/.local/misc/pycharm/bin:$PATH
export PATH=/home/rachael/.local/lib/manuskript/bin:$PATH

export JAVA_HOME=/usr/lib/jvm/java-8-openjdk
export PATH=$PATH:$JAVA_HOME/bin
export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/tools/bin:$ANDROID_HOME/platform-tools

. /home/rachael/.local/lib/torch/install/bin/torch-activate

# Say hi and show my to-do list once everything is loaded.
load-nvmrc()
echo
echo "Hello, $USER!"
# echo "Here's your current to-do list:"
# echo
# task

###-tns-completion-start-###
if [ -f /home/rachael/.tnsrc ]; then 
    source /home/rachael/.tnsrc 
fi
###-tns-completion-end-###
