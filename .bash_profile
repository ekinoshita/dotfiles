# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

case $(uname -s) in
    Linux)
        PATH=$PATH:$HOME/local/bin
        ;;
    Darwin)
        # default path = /usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin
        PATH=$HOME/.nodebrew/current/bin:$PATH
        PATH=$PATH:/usr/local/bin
        ;;
esac

export PATH
