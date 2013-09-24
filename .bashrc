# .bashrc


# import from .mixibashrc
case $(uname -s) in
    Linux)
        . ~/.mixibashrc
esac


# 256 colors
export TERM=xterm-256color


# disable the terminal lock of Ctrl-S
stty stop undef


# For Mac
case $(uname -s) in
    Darwin)
        export LANG=ja_JP.UTF-8
        export PATH=$PATH:/usr/local/bin:~/bin:
        export HISTCONTROL=ignoreboth

        # ls colors
        export LSCOLORS=gxfxcxdxbxegedabagacad
        #export LSCOLORS=CxGxcxdxCxegedabagacad

        # aliases
        alias ls='ls -G' 
        alias keyboardoff='sudo kextunload /System/Library/Extensions/AppleUSBTopCase.kext/Contents/PlugIns/AppleUSBTCKeyboard.kext/'
        alias keyboardon='sudo kextload /System/Library/Extensions/AppleUSBTopCase.kext/Contents/PlugIns/AppleUSBTCKeyboard.kext/'
esac


# User specific aliases and functions
alias ls='ls -Fh'
alias ll='ls -la'
alias rm='rm -i'
alias mv='mv -i'
alias 256color='~/download/256color.pl'
alias bashrc='vim ~/.bashrc'
alias mixibashrc='vim ~/.mixibashrc'
alias vimrc='vim ~/.vimrc'


# import git-prompt.sh & git-completion.bash
if [ -f ~/.git-prompt.sh ]; then
    source ~/.git-prompt.sh
fi

if [ -f ~/.git-completion.bash ]; then
    source ~/.git-completion.bash
fi


# prompt with git branch
if [ -f $BASH_COMPLETION_DIR/git ]; then
    export PS1='\[\033[01;32m\]\u@\h\[\033[01;33m\] \w$(__git_ps1 " (%s)") \n\[\033[01;34m\]\$\[\033[00m\] '
    #export PS1='\[\e[1;32m\][\u@\h \W$(__git_ps1 " (%s)")]\[\e[00m\]\n\$ '
else
    export PS1='\[\033[01;32m\]\u@\h\[\033[01;33m\] \w$(__git_ps1 " (%s)") \n\[\033[01;34m\]\$\[\033[00m\] '
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
