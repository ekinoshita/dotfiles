# .bashrc


# import from .mixibashrc
. ~/.mixibashrc


# 256 colors
export TERM=xterm-256color


# User specific aliases and functions
alias ll='ls -la'
alias rm='rm -i'
alias 256color='~/download/256color.pl'


# prompt with git branch
source ~/.git-completion.bash
PS1='\[\e[1;32m\][\u@\h \W$(__git_ps1 " (%s)")]\[\e[00m\]\n\$ '


# Omit the ssh passphrase input for the git push
if [ -f ~/.ssh-agent ]; then
    . ~/.ssh-agent
fi
if [ -z "$SSH_AGENT_PID" ] || ! kill -0 $SSH_AGENT_PID; then
    ssh-agent > ~/.ssh-agent
    . ~/.ssh-agent
fi
ssh-add -l >& /dev/null || ssh-add
