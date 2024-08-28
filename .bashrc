#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export PATH="$PATH:$HOME/.local/bin:$HOME/.deta/bin"
export EDITOR="/usr/bin/vim"
export TERMINAL="/usr/local/bin/st"
export DOTREMINDERS="$HOME/.config/remind/reminders.rem"

# set user directories (just in case)
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"

# cleanup variables
export LESSHISTFILE="$HOME/.config/lesshst"
#export GTK2_RC_FILES="$HOME/.config/gtk-2.0/gtkrc"
export INPUTRC="$HOME/.config/readline/inputrc"

# bash prompt 
# PS1='[\u@\h \W]\$ '
PS1='\[\033[1;38;5;71m\][\u@\h \[\033[1;37m\]\W\[\033[1;38;5;71m\]]\$ \[\033[0m\]'
#PS1='\[\033[1;34m\][\u@\h \[\033[1;37m\]\W\[\033[1;34m\]]\$ \[\033[0m\]'
#PS1='\[\033[1;38;5;214m\][\u@\h \[\033[1;37m\]\W\[\033[1;38;5;214m\]]\$ \[\033[0m\]'

eval "$(dircolors "$XDG_CONFIG_HOME"/dir_colors)"

# aliases of basic commands with color
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias diff='diff --color=auto'
alias ip='ip --color=auto'

# less in color
#export LESS='-R --use-color -Dd+g$Du+w$'
# man entries in color
export MANPAGER="less -R --use-color -Dd+g -Du+c -DP+kW -DSky"
export MANROFFOPT="-P -c"

# bash completion
bind "TAB:menu-complete"
bind "set show-all-if-ambiguous on"
bind "set menu-complete-display-prefix on"

alias cp="cp -i -v"
alias rm="rm -v"
alias rmdir="rmdir -v"
alias mkdir="mkdir -v"
alias df="df -h"
alias du="du -h"
alias free="free -m"

alias cdto="source cdto"
alias d="ddgr -n 5"
alias remc="rem -cl -w1,1,1 -m -b1"
alias reme="vim + ~/.config/remind/reminders.rem"
alias mpvhd="mpv --ytdl-format='bv*[height<=720]+ba/b[height<=720]'"
alias mpvbest="mpv --ytdl-format=b"
alias packe='vim $HOME/package-list'

# Cyrillic aliases
alias цд="cd"
alias лс="ls"
alias вим="vim"
alias затхура="zathura"
alias д="ddgr -n 5"
alias трее="tree"

alias clearswap="sudo swapoff -a && sudo swapon -a"
alias cswap="sudo swapoff -a && sudo swapon -a"
alias pingr="ping 192.168.0.1"
alias pingq="ping 9.9.9.9"

# dotfiles repo
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles --work-tree=$HOME'

