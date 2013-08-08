# .bashrc


# import from .mixibashrc
case $(uname -s) in
    Linux)
        . ~/.mixibashrc
esac


# 256 colors
export TERM=xterm-256color


# For Mac
case $(uname -s) in
    Darwin)
        # ls colors
        alias ls='ls -G' 
        export LSCOLORS=gxfxcxdxbxegedabagacad
        #export LSCOLORS=CxGxcxdxCxegedabagacad
esac


# User specific aliases and functions
alias ll='ls -la'
alias rm='rm -i'
alias 256color='~/download/256color.pl'


source ~/.git-completion.bash

# prompt with git branch

if [ -f $BASH_COMPLETION_DIR/git ]; then
    export PS1='\[\033[01;32m\]\u@\h\[\033[01;33m\] \w$(__git_ps1) \n\[\033[01;34m\]\$\[\033[00m\] '
    #export PS1='\[\e[1;32m\][\u@\h \W$(__git_ps1 " (%s)")]\[\e[00m\]\n\$ '
else
    export PS1='\[\033[01;32m\]\u@\h\[\033[01;33m\] \w \n\[\033[01;34m\]\$\[\033[00m\] '
fi

# Omit the ssh passphrase input for the git push
if [ -f ~/.ssh-agent ]; then
    . ~/.ssh-agent
fi
if [ -z "$SSH_AGENT_PID" ] || ! kill -0 $SSH_AGENT_PID; then
    ssh-agent > ~/.ssh-agent
    . ~/.ssh-agent
fi
ssh-add -l >& /dev/null || ssh-add
