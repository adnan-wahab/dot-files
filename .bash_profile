#ONLY EXECUTED ONCE LOL

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	      . "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin directories
PATH="$HOME/bin:$HOME/.local/bin:$PATH"
export PATH="/home/eggnog/anaconda2/bin:$PATH"
GOPATH=/home/eggnog/.go
export GOPATH
export PATH=$PATH:$GOPATH/bin # Add GOPATH/bin to PATH for scripting
