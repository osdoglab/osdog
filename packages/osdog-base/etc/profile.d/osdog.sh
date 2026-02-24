# OS.Dog shell configuration

# Auto-escalate to root for 'user' account
if [ "$(id -u)" != "0" ] && [ "$(whoami)" = "user" ] && [ -n "$PS1" ]; then
    exec sudo su -
fi

# OS.Dog binaries
export PATH="/opt/osdog:$PATH"

# Colored prompt: root@osdog:~#
PS1='\[\033[01;31m\]\u\[\033[00m\]@\[\033[01;33m\]osdog\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '

# Aliases
alias ll='ls -lah --color=auto'
alias gs='git status'
alias mlog='tail -f /dog/log/*.log 2>/dev/null'
