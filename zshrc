ZSH=$HOME/.oh-my-zsh

ZSH_THEME="tryan"

DISABLE_AUTO_UPDATE="true"
CASE_SENSITIVE="true"

plugins=(git bundler gem tryan)

export PATH="/usr/local/bin:$PATH"
export EDITOR='vim'

source $ZSH/oh-my-zsh.sh

if [ -f /usr/local/share/chruby/chruby.sh ] ; then
  source /usr/local/share/chruby/chruby.sh
fi

if [ -f /usr/local/share/chruby/auto.sh ] ; then
  source /usr/local/share/chruby/auto.sh
fi
