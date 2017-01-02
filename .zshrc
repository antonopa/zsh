# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:$HOME/.local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# ZSH_THEME="robbyrussell"
ZSH_THEME="agnoster"

# Uncomment the following line to disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git common-aliases sudo systemd taskwarrior vi-mode wd)

[ -f ${ZSH}/oh-my-zsh.sh ] && source $ZSH/oh-my-zsh.sh

# User configuration

DEFAULT_USER="antonopa"
# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

[ -f ~/.zsh_helpers ] && source ~/.zsh_helpers
[ -f ~/.zsh_aliases ] && source ~/.zsh_aliases
[ -f ~/.zshcmpl ] && source ~/.zshcmpl

if [[ -d ~/.alias.d ]]; then
  for conf in ~/.alias.d/*; do
    source ${conf}
  done
fi

# Start X if we are in a tty and X is not running
[[ -z "$DISPLAY" && "$XDG_VTNR" -eq 1 && -z "$SSH_TTY" && -z "$TMUX" ]] && exec startx || [[ 1 ]]
