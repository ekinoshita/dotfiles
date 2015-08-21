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
        PATH=$PATH:/usr/local/bin
        PATH=$PATH:`find /Applications/Xcode.app -name swift | grep bin | xargs -I{} dirname {}`
        ;;
esac

export PATH

export HUB_TEST_HOST=github.lo.mixi.jp:80

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

export PATH="$HOME/.rbenv/shims:$PATH"
export PATH="$HOME/.rbenv/bin:$PATH"

export EDITOR=vim

eval "$(direnv hook bash)"
export PATH=~/.pyenv/shims/:$PATH
