#!/bin/bash

PS1='> '

export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"


#######################################
## other things to clean home directory
#######################################

export HISTFILE="${XDG_STATE_HOME}/bash/history"
export CUDA_CACHE_PATH="$XDG_CACHE_HOME/nv"
export GTK2_RC_FILES="$XDG_CONFIG_HOME/gtk-2.0/gtkrc"
export _JAVA_OPTIONS=-Djava.util.prefs.userRoot="$XDG_CONFIG_HOME"/java
export DOCKER_CONFIG="$XDG_CONFIG_HOME"/docker
export GNUPGHOME="$XDG_DATA_HOME"/gnupg
export PASSWORD_STORE_DIR="$XDG_DATA_HOME"/pass
export XCURSOR_PATH=/usr/share/icons:$XDG_DATA_HOME/icons
export GOPATH="$XDG_DATA_HOME"/go
export PSQL_HISTORY="$XDG_DATA_HOME"/psql_history

##export XINITRC="$XDG_CONFIG_HOME"/X11/xinitrc
