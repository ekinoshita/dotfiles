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
        PATH=$PATH:`find /Applications/Xcode.app -name swift | grep bin | xargs -I{} dirname {}`
        ;;
esac

export PATH

export HUB_TEST_HOST=github.lo.mixi.jp:80

