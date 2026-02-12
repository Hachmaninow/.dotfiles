export ZSH=$HOME/.oh-my-zsh
export PATH=$HOME/code/tools:$PATH

######################################################################
# Use antigen to setup oyh-my-zsh.
######################################################################

source $HOME/code/tools/antigen/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Format of the command execution timestamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="yyyy-mm-dd"

# ZSH auto-update interval
UPDATE_ZSH_DAYS=30

# Use hyphen-insensitive completion.
HYPHEN_INSENSITIVE=true

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle z
antigen bundle colorize
antigen bundle docker
antigen bundle git
antigen bundle history
antigen bundle httpie
antigen bundle mvn
antigen bundle lein
antigen bundle aws
antigen bundle djui/alias-tips
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle nvm

# theme
antigen theme romkatv/powerlevel10k

# Tell antigen that you're done.
antigen apply

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Make page-up/-down search for entries having the same prefix as currently entered.
bindkey "^[[5~" history-beginning-search-backward
bindkey "^[[6~" history-beginning-search-forward
bindkey \^U backward-kill-line

# Stop complaining about unmatched wildcards
unsetopt nomatch
setopt extendedglob

######################################################################
# Environment variables used by various tools.
######################################################################

export GIT_MERGE_AUTOEDIT=no    # do not open editor when committing a merge in git
export EDITOR=vim
export WORDCHARS='*?_-[]~=&!$%^(){}<>'

######################################################################
# Aliases and shortcuts for various development tools.
######################################################################

alias vi="nvim"
alias vim="nvim"

alias g='git status'
alias gg="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias ac='git commit -a --amend'
alias gpo='gp -u origin `git rev-parse --abbrev-ref HEAD`'

alias git-restart='git checkout master && git pull && git remote prune origin && git branch --merged master | grep -v "^[ *]*master$" | xargs git branch -d'
alias git-replace-local='git fetch origin $(git branch --show-current) && git reset --hard origin/$(git branch --show-current)'
alias git-merges='git log --merges --pretty="%<(12)%h %C(cyan)%ci%Creset %<(30)%an %b %C(blue)(%s)%Creset"'

alias head='head -n 20'

alias mvn='mvn-color'
alias mp='mvn package'
alias mcp='mvn clean package'
alias mi='mvn install'
alias md='mvn deploy'

######################################################################
# Setting up tools.
######################################################################

# Broot
source /Users/hachmann/.config/broot/launcher/bash/br

# Powerline10k
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# SdkMan
export SDKMAN_DIR="/Users/hachmann/.sdkman"
[[ -s "/Users/hachmann/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/hachmann/.sdkman/bin/sdkman-init.sh"

# Python / Pyenv
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# FZF
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

######################################################################
# Workplace specific stuff (not to manage with Git)
######################################################################
#
FILE=$HOME/.zshrc-workplace-specific.sh && test -f $FILE && source $FILE

# To customize prompt, run `p10k configure` or edit ~/code/.dotfiles/p10k/.p10k.zsh.
[[ ! -f ~/code/.dotfiles/p10k/.p10k.zsh ]] || source ~/code/.dotfiles/p10k/.p10k.zsh
