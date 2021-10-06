# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="/home/marcello/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"

export FZF_DEFAULT_OPTS='--height 40% --layout=reverse --border'

plugins=(git sudo colored-man-pages docker zsh-autosuggestions fast-syntax-highlighting osx fzf)

source $ZSH/oh-my-zsh.sh

#load aliases
if [ -f ~/.aliases ]; then
  . ~/.aliases
fi

# Load functions
if [ -f ~/.functions ]; then
  . ~/.functions
fi

# Load exports
if [ -f ~/.exports ]; then
  . ~/.exports
fi

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
