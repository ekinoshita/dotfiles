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
        #PATH=$PATH:/usr/local/bin
        # default path = /usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin
        ;;
esac

export PATH
