[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile
source `brew --prefix asdf`/asdf.sh

parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

if [ -f $(brew --prefix)/etc/bash_completion ]; then
. $(brew --prefix)/etc/bash_completion
fi

# Function to open Xcode projects from the command line, call with $ xcode
function xcode {

  proj=$(ls *.xcodeproj/ 2>/dev/null)

  if [ -n "$proj" ]; then
    # Omit -beta if you're not using beta version
    open -a Xcode "$proj"
  else
    echo "No Xcode project detected."
  fi

}

export PGHOST=localhost
export PS1="\[\033[1;32m\] \w\[\033[31m\]\$(parse_git_branch)\[\033[00m\] $ "
export PATH="/usr/local/Cellar/postgresql@9.6/9.6.7/bin:$PATH"

#export EDITOR="subl"
#export VISUAL="subl"
export EDITOR="code"
export VISUAL="code"
export CPPFLAGS=-I/usr/local/opt/openssl/include
export LIBRARY_PATH=$LIBRARY_PATH:/usr/local/opt/openssl/lib/
export PKG_CONFIG_PATH="/usr/local/opt/openssl/lib/pkgconfig"
export PATH="/usr/local/opt/imagemagick@6/bin:$PATH"
export PATH="/usr/local/opt/openssl/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"
export ERL_AFLAGS="-kernel shell_history enabled"

alias br='bin/rspec'
alias gitx='open -a GitX .'
alias be='bundle exec'
alias run-kafka-run='brew services stop kafka && brew services start kafka && brew services stop zookeeper && brew services start zookeeper'

alias mxpx='mix phx.server'
export PATH=$PATH:/usr/local/opt/go/libexec/bin
export GOPATH=~/go
export PATH=$PATH:$GOPATH/bin
eval "$(direnv hook bash)"
