ZSH=$HOME/.oh-my-zsh
#ZSH_THEME="rbates"
DISABLE_AUTO_UPDATE="true"
DISABLE_LS_COLORS="false"

#plugins=(git bundler brew gem rbates)

export PATH="/usr/local/bin:$PATH"
export EDITOR='vim'

source $ZSH/oh-my-zsh.sh

if [ -f /usr/local/share/chruby/chruby.sh ] ; then
  source /usr/local/share/chruby/chruby.sh
fi

if [ -f /usr/local/share/chruby/auto.sh ] ; then
  source /usr/local/share/chruby/auto.sh
fi
