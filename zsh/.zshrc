# Pointers for editing
# use setopt and unsetopt rather than set -o
#
# DOTFILES
# Make sure this is set to the dotfiles directory
# Many things rely on this
export DOTFILE_DIR="${HOME}/.dotfiles"

# SECRETS
SECRETS=${DOTFILE_DIR}/.secrets
if [[ -f ${SECRETS} ]]; then
  source ${SECRETS}
fi

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

export EDITOR="nvim -u ${DOTFILE_DIR}/nvim/init.vim"
export GIT_EDITOR=${EDITOR}
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
# Custom completions
autoload -Uz compinit && compinit
zstyle ':completion:*' completer _complete _ignored
zstyle :compinstall filename "${HOME}/.zshrc"
fpath+=(${DOTFILE_DIR}/zsh)

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


# Interactive Jq
alias jq=jqi

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

# For LSCOLORS
export CLICOLOR=1
export LSCOLORS="Gxfxcxdxbxegedabagacad"

# use emacs keybindings
# CTRL [P,N] for previous,next history line
# CTRL U to clear whole line
bindkey -e

export STARSHIP_CONFIG=${DOTFILE_DIR}/starship/starship.toml
eval "$(starship init zsh)"
