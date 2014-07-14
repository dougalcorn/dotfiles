shopt -s histappend

hitch() {
  command hitch "$@"
  if [[ -s "$HOME/.hitch_export_authors" ]] ; then source "$HOME/.hitch_export_authors" ; fi
}
alias unhitch='hitch -u'

# Uncomment to persist pair info between terminal instances
# hitch

export PS1="[\w]\$ "

export PATH=/usr/local/share/npm/bin:$PATH
export PATH="$HOME/.rbenv/bin:$PATH"

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

export HISTSIZE=100000

alias edit='emacsclient -n -c'
alias cwip='cucumber -p wip'
alias egit='git --no-pager'

alias b="bundle"
alias bi="b install --path vendor"
alias bil="bi --local"
alias bu="b update"
alias be="b exec"
alias binit="bi && b package && echo 'vendor/ruby' >> .gitignore"

export PATH="bin:$PATH"

export GOPATH="$HOME/devel/go"
export CC=clang
export ALL_TESTS=true

source /opt/boxen/env.sh

# https://github.com/boxen/puppet-bash/issues/1
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

echo ".bashrc"
