[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile
source `brew --prefix asdf`/asdf.sh

parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

if [ -f $(brew --prefix)/etc/bash_completion ]; then
. $(brew --prefix)/etc/bash_completion
fi

export PGHOST=localhost
export PS1="\[\033[01;32m\]\w\\e[31m\$(parse_git_branch)\[\033[00m\] $ "
export PATH="/usr/local/Cellar/postgresql@9.6/9.6.7/bin:$PATH"
export EDITOR="subl"
export VISUAL="subl"

alias br='bin/rspec'
alias gitx='open -a GitX .'
alias be='bundle exec'
