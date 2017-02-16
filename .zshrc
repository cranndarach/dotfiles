# Set my name
export USER="Rachael"
# Greet me when it starts
echo "Hello, $USER!"
# Show my to-do list
echo "Here's your current to-do list:"
echo
task

export EDITOR=nvim
# export GH=https://github.com/cranndarach/

if [[ $TERMINIX_ID ]]; then
  source /etc/profile.d/vte.sh
fi

fpath=(~/.zsh/completions $fpath) 
autoload -U compinit && compinit

# Path to your oh-my-zsh installation.
export ZSH=/home/rachael/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="agnosterzak"
# ZSH_THEME="norm"
# ZSH_THEME="risto"
# ZSH_THEME="af-magic"
# ZSH_THEME="lukerandall"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

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
plugins=(gem, npm, python, rails, ruby, web-search)

# Plugin configuration

# ZSH_TMUX_AUTOSTART=true
# ZSH_TMUX_AUTOSTART_ONCE=false
# ZSH_TMUX_AUTOQUIT=false

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="vim ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

setopt RM_STAR_WAIT

setopt interactivecomments

export TERM="xterm-256color"

source ~/.zsh_aliases
source ~/.zsh_functions

# Enable powerline
source /usr/share/powerline/bindings/zsh/powerline.zsh

export NVM_DIR="/home/rachael/.nvm"
nvm_start() {
  [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
}

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
# added by Anaconda3 4.2.0 installer
export PATH="/home/rachael/anaconda3/bin:$PATH"

export ANDROID_HOME=/home/rachael/Android/Sdk
export PATH=${PATH}:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools
export PATH=~/.npm-global/bin:$PATH
export JAVA_HOME=$(update-alternatives --query javac | sed -n -e 's/Best: *\(.*\)\/bin\/javac/\1/p')
export GOOGLE_APPLICATION_CREDENTIALS=~/.google-service-credentials.json
export GOPATH=$HOME/gopath
export PATH=$GOPATH:$GOPATH/bin:$PATH

export GEM_HOME=$HOME/.gem
for dir in $HOME/.gem/ruby/*; do
  [ -d "$dir/bin" ] && PATH="${dir}/bin:${PATH}"
done
