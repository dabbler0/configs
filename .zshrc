# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/anthony/.zshrc'

setopt correctall
autoload -Uz compinit
compinit
# End of lines added by compinstall
function set-window-title() {
  echo -ne "\033];$PWD\007"
}

autoload -Uz colors && colors
autoload -Uz vcs_info
zstyle ':vcs_info:*' enable git svn
zstyle ':vcs_info:git*' formats "[%F{2}%b%f]"
zstyle ':vcs_info:git*' actionformats "[%F{2}%b%f|$fg_bold[red]%a$fg_no_bold[white]%f]"
precmd() {
  vcs_info
  set-window-title
}

setopt prompt_subst
PROMPT='${PWD/$HOME/~} ${vcs_info_msg_0_}\$ '

bindkey "^R" history-incremental-search-backward

alias ls='ls --color=auto'
function st { vim "$HOME/.scratch/$1"; }
