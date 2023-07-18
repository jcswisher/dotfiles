# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source /opt/homebrew/opt/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Created by `pipx` on 2023-06-05 17:46:26
export PATH="$PATH:/Users/jswisher/.local/bin"

# Lines configured by zsh-newuser-install
HISTFILE=~/.zsh_history
HISTSIZE=1000
SAVEHIST=100000
setopt autocd
# setopt complete_aliases
unsetopt beep
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/Users/jswisher/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# ⌄ User Settings ⌄

# python
alias pip="pip3"
alias python="python3"
# ls
alias ls="exa --icons"
alias ll="ls --all --long --git"
# cat
alias cat="bat"
# clear
alias cl="clear"
# git
alias gi="git init"
alias gs="git status"
alias gb="git branch"
alias gco="git checkout"
alias gp="git push"
alias gcm="git commit -m"
alias ga="git add"
alias gl="git log"
# vim
alias v="nvim"
# diff
alias diff="colordiff"

# tell brew to shut up when it cleans up after installing
export HOMEBREW_NO_ENV_HINTS=TRUE

# load syntax highlighting into shell
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# load auto suggestions into shell
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
