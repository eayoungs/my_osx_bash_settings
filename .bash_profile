if [ -f $HOME/.bashrc ]; then
        source $HOME/.bashrc
fi

export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"

export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/latest/bin

# Java PATH settings
export JAVA_HOME=/Library/Java/Home
export JUNIT_HOME=/Library/JUnit
export CLASSPATH=$CLASSPATH:$JUNIT_HOME/junit-4.10.jar:$JUNIT_HOME/hamcrest-core-1.3.jar:.

# Setting PATH for Python 3.6
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"
export PATH

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/eayoungs/google-cloud-sdk/path.bash.inc' ]; then source '/Users/eayoungs/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/eayoungs/google-cloud-sdk/completion.bash.inc' ]; then source '/Users/eayoungs/google-cloud-sdk/completion.bash.inc'; fi
