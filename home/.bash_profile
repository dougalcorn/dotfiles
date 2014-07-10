# export HISTSIZE=100000
# eval "$(rbenv init -)"

# alias edit='emacsclient -n -c'
# alias cwip='cucumber -p wip'

# alias b="bundle"
# alias bi="b install --path vendor --binstubs"
# alias bil="bi --local"
# alias bu="b update"
# alias be="b exec"
# alias binit="bi && b package && echo 'vendor/ruby' >> .gitignore"

# alias eve='open -n /Applications/EVE\ Online.app'
# alias st='/Applications/Sublime\ Text\ 2.app/Contents/SharedSupport/bin/subl'

# alias rbinstall='CONFIGURE_OPTS="--disable-install-doc --with-readline-dir=$(brew --prefix readline)" rbenv install'
# alias vi='emacsclient -t'
# export EDITOR=edit
# export PATH="bin:$PATH"
if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi

if [ -f ~/.bashrc ]; then
  . ~/.bashrc
fi

#export PATH=/usr/local/bin/Sencha/Cmd/4.0.0.203:$PATH

#export SENCHA_CMD_3_0_0="/usr/local/bin/Sencha/Cmd/4.0.0.203"
