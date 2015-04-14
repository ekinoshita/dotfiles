#                     ___           ___           ___           ___            ___
#      _____         /\  \         /\__\         /\  \         /\  \          /\__\
#     /::\  \       /::\  \       /:/ _/_        \:\  \       /::\  \        /:/  /
#    /:/\:\  \     /:/\:\  \     /:/ /\  \        \:\  \     /:/\:\__\      /:/  /
#   /:/ /::\__\   /:/ /::\  \   /:/ /::\  \   ___ /::\  \   /:/ /:/  /     /:/  /  ___
#  /:/_/:/\:|__| /:/_/:/\:\__\ /:/_/:/\:\__\ /\  /:/\:\__\ /:/_/:/__/___  /:/__/  /\__\
#  \:\/:/ /:/  / \:\/:/  \/__/ \:\/:/ /:/  / \:\/:/  \/__/ \:\/:::::/  /  \:\  \ /:/  /
#   \::/_/:/  /   \::/__/       \::/ /:/  /   \::/__/       \::/~~/~~~~    \:\  /:/  /
#    \:\/:/  /     \:\  \        \/_/:/  /     \:\  \        \:\~~\         \:\/:/  /
#     \::/  /       \:\__\         /:/  /       \:\__\        \:\__\         \::/  /
#      \/__/         \/__/         \/__/         \/__/         \/__/          \/__/
#
#
# Powered by FIGlet ( $ figlet -f isometric2 bashrc )
#========================================================================================

# 256 colors
#export TERM=xterm-256color


# disable the terminal lock of Ctrl-S
#if [ "$SSH_TTY" != "" ]; then
#    stty stop undef
#fi


# For Mac
if [ `uname -s` = 'Darwin' ]; then
    export LANG=ja_JP.UTF-8
    export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0_65.jdk/Contents/Home
    export EC2_HOME=/usr/local/ec2/ec2-api-tools-1.7.1.0
    export PATH=$PATH:$EC2_HOME/bin
    export PATH=$PATH:/usr/local/bin:~/bin:

    # keyboard on/off
    alias keyboardoff='sudo kextunload /System/Library/Extensions/AppleUSBTopCase.kext/Contents/PlugIns/AppleUSBTCKeyboard.kext/'
    alias keyboardon='sudo kextload /System/Library/Extensions/AppleUSBTopCase.kext/Contents/PlugIns/AppleUSBTCKeyboard.kext/'

    # grep color always
    alias grep="grep --color=always"
fi


# to make duplicative command history to one time
export HISTCONTROL=ignoreboth


# ls colors
case `uname -s` in
    Darwin)
        alias ls="ls -G"
        alias ll="ls -laG"
        #export LSCOLORS=CxGxcxdxCxegedabagacad
        export LSCOLORS=gxfxcxdxbxegedabagacad
        ;;
    Linux)
        alias ls='ls --color'
        alias ll='ls -la --color'
        ;;
esac


# User specific aliases and functions
#alias ls='ls -Fh'
alias rm='rm -i'
alias mv='mv -i'
alias 256color='~/download/256color.pl'
alias bashrc='vim ~/.bashrc'
alias vimrc='vim ~/.vimrc'
alias dotfiles='cd ~/git/dotfiles;tig'


# import from .mixibashrc
if [ `uname -s` = 'Linux' ]; then
    . ~/.mixibashrc
    alias mixibashrc='vim ~/.mixibashrc'
fi


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
if [ `uname -s` = 'Darwin' ]; then
    if [ -f ~/.ssh-agent ]; then
        . ~/.ssh-agent
    fi
    if [ -z "$SSH_AGENT_PID" ] || ! kill -0 $SSH_AGENT_PID; then
        ssh-agent > ~/.ssh-agent
        . ~/.ssh-agent
    fi
    ssh-add -l >& /dev/null || ssh-add
fi

# anyenv
if [ -d $HOME/.anyenv ] ; then
    export PATH="$HOME/.anyenv/bin:$PATH"
    export PATH="$HOME/.anyenv/envs/rbenv/versions/2.1.1/bin:$PATH"
    eval "$(anyenv init -)"
fi
