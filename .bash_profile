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
        PATH=/usr/local/bin:$PATH
        source ~/perl5/perlbrew/etc/bashrc
        ;;
esac

export PATH
