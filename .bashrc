#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#Alias
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias die='shutdown -P now'
alias l='ls --color=auto'
alias tmuxnew='tmux new -s '
alias tmuxatt='tmux a -t'
alias tmuxkill='tmux kill-session -t'
alias cpufeatures='sysctl -a | grep features'
PS1='[\u@\h \W]\$ '
#PS1='[8==D]\$ '

##Colored Man pages
man() {
    env LESS_TERMCAP_mb=$'\E[01;31m' \
        LESS_TERMCAP_md=$'\E[01;38;5;74m' \
        LESS_TERMCAP_me=$'\E[0m' \
        LESS_TERMCAP_se=$'\E[0m' \
        LESS_TERMCAP_so=$'\E[38;5;246m' \
        LESS_TERMCAP_ue=$'\E[0m' \
        LESS_TERMCAP_us=$'\E[04;38;5;146m' \
        man "$@"
}

##History for multiple bash
export HISTCONTROL=ignoredups:erasedups  # no duplicate entries
export HISTSIZE=100000                   # big big history
export HISTFILESIZE=100000               # big big history
shopt -s histappend                      # append to history, don't overwrite it

# Save and reload the history after each command finishes
#export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"
export PATH="/home/$USER/localnix/x86_64/bin:$PATH"
