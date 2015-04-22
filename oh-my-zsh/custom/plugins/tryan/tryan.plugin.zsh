# Use gvim (if available) in console mode. This gives Vim access to the system clipboards.
vim() {
  if $(type gvim >/dev/null 2>&1) ; then
    /usr/bin/gvim -v $*
  else
    /usr/bin/vim $*
  fi
}

# Colorized, paginated, diff. Accepts same args as normal diff.
cdiff() {
  colordiff -u -p $* | less -R
}

# Compare changesets across git branches.
# gcs: git cherry show
gcs() {
  git cherry -v $* | grep '^\+' | less
}
compdef _git gcs=git-cherry

# autocorrect is more annoying than helpful
unsetopt correct_all

# General Aliases
# apt-get
alias sagi='sudo apt-get install'
alias sagu='sudo apt-get update'
alias sagr='sudo apt-get remove'

# ls
alias l='ls -lAh --color=auto'
alias ll='ls -lh --color=auto'
alias la='ls -A --color=auto'

# git
alias ga='git add'
compdef _git ga=git-add
alias gap='git add -p'
compdef _git gap=git-add

alias gb='git branch'
compdef _git gb=git-branch
alias gba='git branch -a'
compdef _git gba=git-branch

alias gc='git commit'
compdef _git gc=git-commit
alias gc!='git commit --amend'
compdef _git gc!=git-commit

alias gco='git checkout'
compdef _git gco=git-checkout

alias gcp='git cherry-pick'
compdef _git gcp=git-cherry-pick

alias gd='git diff'
compdef _git gd=git-diff
alias gdc='git diff --cached'
compdef _git gdc=git-diff

alias gl='git log --notes'
compdef _git gl=git-log
alias gld='git log --decorate'
compdef _git gld=git-log
alias glf='git log --pretty=full'
compdef _git glf=git-log
alias glp='gl -p'
compdef _git glp=git-log
alias glg='gl --oneline --abbrev-commit --graph --decorate --color'
compdef _git glg=git-log
alias gls='gl --stat'
compdef _git gls=git-log
alias gcount='git shortlog -sn'
compdef gcount=git
alias glcm='gl --cherry-mark --oneline'
compdef _git glcm=git-log

alias gm='git merge'
compdef _git gm=git-merge

alias gmv='git mv'
alias grm='git rm'

alias gpull='git pull'
compdef _git gpull=git-pull
alias gpullr='git pull --rebase'
compdef _git gpullr=git-fetch

alias gup='git up'

alias gpush='git push'
compdef _git gpush=git-push
alias gpoat='git push origin --all && git push origin --tags'

alias gr='git reset'
compdef _git gr=git-reset
alias grh='git reset --hard'
compdef _git grh=git-reset

alias grb='git rebase'
compdef _git grb=git-rebase
alias gri='git rebase -i'
compdef _git gri=git-rebase
alias gra='git rebase --abort'
alias grc='git rebase --continue'

alias gs='git status'
compdef _git gs=git-status
alias gss='git status -s'
compdef _git gss=git-status

alias gst='git stash'
compdef _git gst=git-stash
alias gsl='git stash list'
compdef _git gsl=git-stash
alias gsp='git stash pop'
compdef _git gsp=git-stash
alias gsd='git stash drop'
compdef _git gsd=git-stash

alias gsb='git -p show-branch'
compdef _git gsb=git-show-branch

alias gsu='git submodule update --init --recursive'
compdef _git gsu=git-submodule

alias rc='bundle exec pry -r ./config/environment || rails console'
# add plugin's bin directory to path
export PATH="$(dirname $0)/bin:$PATH"
