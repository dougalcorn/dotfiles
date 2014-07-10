shopt -s histappend

function _update_ps1()
{
    history -a; history -n;     # force bash to save and reload the history on each prompt
    if [ "$EMACS" = "t" ]; then
        export PS1="[\w]\$ "
    else
        export PS1="$(~/devel/powerline-bash/powerline-bash.py $?)"
    fi
}

hitch() {
  command hitch "$@"
  if [[ -s "$HOME/.hitch_export_authors" ]] ; then source "$HOME/.hitch_export_authors" ; fi
}
alias unhitch='hitch -u'

# Uncomment to persist pair info between terminal instances
# hitch

#export PROMPT_COMMAND="_update_ps1"

if [ "$EMACS" = "t" ]; then
    export PAGER=cat
fi

export PS1="[\w]\$ "

export PATH=/usr/local/share/npm/bin:$PATH
export PATH="$HOME/.rbenv/bin:$PATH"
export PATH=/usr/local/bin:$PATH

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

#export PATH=/usr/local/bin/Sencha/Cmd/4.0.0.203:$PATH

#export SENCHA_CMD_3_0_0="/usr/local/bin/Sencha/Cmd/4.0.0.203"

export HISTSIZE=100000
eval "$(rbenv init -)"

alias edit='emacsclient -n -c'
alias cwip='cucumber -p wip'
alias egit='git --no-pager'

alias b="bundle"
alias bi="b install --path vendor"
alias bil="bi --local"
alias bu="b update"
alias be="b exec"
alias binit="bi && b package && echo 'vendor/ruby' >> .gitignore"

alias eve='open -n /Applications/EVE\ Online.app'
alias st='/Applications/Sublime\ Text\ 2.app/Contents/SharedSupport/bin/subl'

alias rbinstall='CONFIGURE_OPTS="--disable-install-doc --with-readline-dir=$(brew --prefix readline)" rbenv install'
alias vi='emacsclient -t'
export EDITOR=edit
export PATH="bin:$PATH"

export GOPATH="$HOME/devel/go"
export CC=clang
export ALL_TESTS=true
