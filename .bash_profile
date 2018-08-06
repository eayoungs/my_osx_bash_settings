if [ -f $HOME/.bashrc ]; then
        source $HOME/.bashrc
fi

export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"

export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/latest/bin

# Setting PATH for Python 3.6
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"
export PATH
