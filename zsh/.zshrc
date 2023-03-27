# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# DOTFILES
# Make sure this is set to the dotfiles directory
# Many things rely on this
export DOTFILE_DIR="${HOME}/.dotfiles"

# SECRETS
SECRETS=${DOTFILE_DIR}/.secrets
if [[ -f ${SECRETS} ]]; then
  source ${SECRETS}
fi


# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=${DOTFILE_DIR}/zsh/oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"

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
DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=()
LOCAL_PLUGINS="~/.zsh_plugins_local"
if [[ -f ${LOCAL_PLUGINS} ]]; then
  plugins+=($(cat ${LOCAL_PLUGINS}))
fi
source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

export EDITOR="nvim -u ${DOTFILE_DIR}/nvim/init.vim"
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
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#

#RBENV
eval "$(rbenv init -)"

#TMUXINATOR AUTOCOMPLETE
source "${DOTFILE_DIR}/tmux/.tmuxinator/tmuxinator.zsh"

# USE NVIM
alias vim="nvim"

# View with nvim
alias view="$EDITOR -R"

# USE DOTFILE VIMRC
alias nvim="nvim -u ${DOTFILE_DIR}/nvim/init.vim"
#Tmux
alias tmux="tmux -f ${DOTFILE_DIR}/tmux/.tmux.conf"

#Functions from dotfiles
source "${DOTFILE_DIR}/zsh/functions"

# Local Functions
LOCAL_FUNCTIONS="${HOME}/.local_functions"
if [[ -f ${LOCAL_FUNCTIONS} ]]; then
  source ${LOCAL_FUNCTIONS}
fi
alias efuncl="vim $LOCAL_FUNCTIONS"

#Reload zshrc
alias ldrc="source ${HOME}/.zshrc"

#Edit this file
alias erc="vim ${HOME}/.zshrc"

# Edit vim rc
alias evrc="vim ${DOTFILE_DIR}/nvim/init.vim"

# Edit tmux.conf
alias etconf="vim ${DOTFILE_DIR}/tmux/.tmux.conf"

# Edit custom functions
alias efunc="vim ${DOTFILE_DIR}/zsh/functions" 

# Custom completions
zstyle ':completion:*' completer _complete _ignored
zstyle :compinstall filename "${HOME}/.zshrc"
fpath+=(${DOTFILE_DIR}/zsh)
autoload -Uz compinit
compinit

# Interactive Jq
alias jq=jqi

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Do not share history
unsetopt sharehistory
setopt incappendhistory

# keep only unique entries in PATH
typeset -U path

# Local system settings
LOCAL_ZSHRC=${HOME}/.zsh_local
alias ercl="vim ${LOCAL_ZSHRC}"

if [[ -f ${LOCAL_ZSHRC} ]]; then
  source ${LOCAL_ZSHRC}
fi


