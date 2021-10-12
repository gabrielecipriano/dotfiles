## Everything related to user profile goes here.

eval "$(fasd --init auto)"
eval "$(direnv hook bash)"

# Alias
if [ $(uname) == "Darwin" ]; then
  alias vim='GOOS=linux CGO_ENABLED=0 nvim'
else
  alias vim='GOOS=linux nvim'
fi

bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'

alias pbcopy="reattach-to-user-namespace pbcopy"
alias pbpaste="reattach-to-user-namespace pbpaste"

alias k="kubectl"
alias be="bundle exec"

export TZ='Europe/London'
