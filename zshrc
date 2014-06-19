# Path to your oh-my-zsh configuration
ZSH=$HOME/.oh-my-zsh

ZSH_THEME="tryan"

# Disable weekly update checks
DISABLE_AUTO_UPDATE="true"

# Disable auto-setting of terminal title
DISABLE_AUTO_TITLE="true"

plugins=(git bundler gem tryan)

# use vim as editor
export PATH="/usr/local/bin:$PATH"
export EDITOR='vim'

source $ZSH/oh-my-zsh.sh

# disable auto-correct
unsetopt correct_all

# use chruby if installed
if [ -f /usr/local/share/chruby/chruby.sh ] ; then
  source /usr/local/share/chruby/chruby.sh
fi

# allow chruby to auto-switch ruby versions
if [ -f /usr/local/share/chruby/auto.sh ] ; then
  source /usr/local/share/chruby/auto.sh
fi
