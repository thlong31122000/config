export PAGER="less"

# APPLICATION PATHS
# FLUTTER_PATH="$HOME/MySpace/WorkSpace/SETUP/flutter/bin"
# DOOM_EMACS_PATH="$HOME/.emacs.d/bin"
# ANDROID_SDK_PATH="$HOME/Library/Android/sdk"

# MAIN PATH
# PATH="$ANDROID_SDK_PATH:$DOOM_EMACS_PATH:$FLUTTER_PATH:$PATH"
# typeset -U PATH
# export PATH

# PROMPT
NEWLINE=$'\n'
PROMPT="%(?.%F{green}√.%F{red}?%?)%f %B%F{51}%2~%f%b %#${NEWLINE} » "
RPROMPT="%* "

# Add a new line before each prompt is rendered
precmd() {
  $funcstack[1]() {
    echo
  }
}

# ls
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
alias ls='ls -G'
alias ll='ls -lG'

# History
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
HUSTDUP=erase
setopt appendhistory
setopt sharehistory
setopt incappendhistory
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups


# PLUGINS
ZSH_CONFIG_PATH="$HOME/MySpace/Scripts/zsh-plugins"

# zsh-colored-man-pages
source "$ZSH_CONFIG_PATH/zsh-colored-man-pages/colored-man-pages.plugin.zsh"

# zsh-autosuggestions
source "$ZSH_CONFIG_PATH/zsh-autosuggestions/zsh-autosuggestions.zsh"

# zsh-syntax-highlighting
source "$ZSH_CONFIG_PATH/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"

# Enable vi mode
# source "${ZSH_CONFIG_PATH}/zsh-vim-mode/zsh-vim-mode.plugin.zsh"

# Emacs
alias em="emacsclient -c -a 'emacs'"

neofetch
