# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

case $(uname -s) in
    Linux)
        PATH=$PATH:$HOME/.local/bin:$HOME/bin
        ;;
    Darwin)
        PATH=$PATH:/usr/local/bin
        ;;
esac

export PATH
