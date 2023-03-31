# DOTFILES
# Make sure this is set to the dotfiles directory
# Many things rely on this
export DOTFILE_DIR="${HOME}/.dotfiles"

# For LSCOLORS
export CLICOLOR=1
export LSCOLORS="Gxfxcxdxbxegedabagacad"
# Editors
export EDITOR="nvim -u ${DOTFILE_DIR}/nvim/init.vim"
export GIT_EDITOR=${EDITOR}

# SECRETS
SECRETS=${DOTFILE_DIR}/.secrets
if [[ -r ${SECRETS} ]]; then
  source ${SECRETS}
fi

# Custom completions
autoload -Uz compinit && compinit
zstyle ':completion:*' completer _complete _ignored
zstyle :compinstall filename "${HOME}/.zshrc"
fpath+=(${DOTFILE_DIR}/zsh)

#RBENV
eval "$(rbenv init -)"

#TMUXINATOR AUTOCOMPLETE
source "${DOTFILE_DIR}/tmux/.tmuxinator/tmuxinator.zsh"

#Functions from dotfiles
source "${DOTFILE_DIR}/zsh/functions"


# Options
OPTIONS="${DOTFILE_DIR}/zsh/options"
if [[ -r ${OPTIONS} ]]; then
  source ${OPTIONS}
fi

# Aliases
if [[ -r "${DOTFILE_DIR}/zsh/aliases" ]]; then
  source "${DOTFILE_DIR}/zsh/aliases"
fi

# Local system settings
LOCAL_ZSHRC="${HOME}/.zsh_local"
if [[ -r ${LOCAL_ZSHRC} ]]; then
  source ${LOCAL_ZSHRC}
fi

# Local Functions
LOCAL_FUNCTIONS="${HOME}/.local_functions"
if [[ -r ${LOCAL_FUNCTIONS} ]]; then
  source ${LOCAL_FUNCTIONS}
fi


# Starship for prompt config
export STARSHIP_CONFIG=${DOTFILE_DIR}/starship/starship.toml
eval "$(starship init zsh)"
