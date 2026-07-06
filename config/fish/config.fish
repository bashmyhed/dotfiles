if status is-interactive
    # Commands to run in interactive sessions can go here
    set -U fish_greeting
end
alias ll='lsd -lA --color=auto'
alias ls='lsd -A --color=auto'
alias grep='grep --color=auto'
alias cpu='watch -n 0,5 "grep 'MHz' /proc/cpuinfo"'
alias gpu='watch -n 0,5 nvidia-smi'
alias snap='sudo timeshift --check;sudo timeshift --check'
alias snapop='sudo timeshift-launcher'
alias ..='cd ..'
alias c='clear'
alias e='exit'
alias vim='nvim'
alias vi='nvim'
alias jour=".config/scripts/journal.sh"
alias py="source ~/.local/share/venv/default/bin/activate.fish"
alias svim="sudo -E nvim"
#alias cd='z'


## Variables ##
set -x PATH $PATH /usr/local/go/bin

set -x XDG_CONFIG_HOME $HOME/.config
set -x XDG_DATA_HOME $HOME/.local/share
set -x XDG_CACHE_HOME $HOME/.cache
set -x XDG_STATE_HOME $HOME/.local/state

set -x CARGO_HOME "$XDG_DATA_HOME/cargo"
set -x HOSTFILE $XDG_CONFIG_HOME/bash/history
set -x CUDA_CACHE_PATH $XDG_CACHE_HOME/nv
set -x GTK2_RC_FILES $XDG_CONFIG_HOME/gtk-2.0/gtkrc
set -x JAVA_HOME /usr/lib/jvm/java-17-openjdk-amd64
set -gx _JAVA_OPTIONS "-Djava.util.prefs.userRoot=$XDG_CONFIG_HOME/java"
set -x DOCKER_CONFIG $XDG_CONFIG_HOME/docker
set -x GNUPGHOME $XDG_DATA_HOME/gnupg
set -x PASSWORD_STORE_DIR $XDG_DATA_HOME/pass
set -x XCURSOR_PATH /usr/share/icons $XDG_DATA_HOME/icons
set -x GOPATH $XDG_DATA_HOME/go
set -x PSQL_HISTORY $XDG_DATA_HOME/psql_history

## project variables ##

## End project variables ##

# Hermes Agent — ensure ~/.local/bin is on PATH
fish_add_path "$HOME/.local/bin"
