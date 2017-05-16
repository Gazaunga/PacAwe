### ls aliases
# alias ll='ls -al'
# alias ll='ls -l'
# alias la='ls -A'
# alias l='ls -CF'

# enable color support of "ls" and also add handy aliases
if [ "$TERM" != "dumb" ]; then
    eval "`dircolors -b`"
    alias ls='ls --color=auto --group-directories-first -F'
fi

# reboot / shutdown sudo aliases
alias reboot='sudo reboot'
alias shutdown='sudo shutdown -h now'

# grep with color
alias grep='grep --color=auto'

# screen aliases
alias sdr='screen -dr'
alias sx='screen -x'

