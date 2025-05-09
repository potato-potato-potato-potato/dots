# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=5000
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/user/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# starship start
eval "$(starship init zsh)"

#theme
export LS_COLORS="$(vivid generate tokyonight-storm)"

alias ls='ls --color=auto'

# zoxide (z) start
eval "$(zoxide init zsh)"

#term thing
export TERM=xterm-256color
