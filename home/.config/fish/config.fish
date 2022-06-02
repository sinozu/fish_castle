alias ssh-peco="grep -w Host ~/.ssh/config | peco | awk '{print \$2}' | xargs -o -n 1 ssh"
alias ghq-peco="cd (ghq root)/(ghq list | peco)"

set -x EDITOR vim

source "$HOME/.homesick/repos/homeshick/homeshick.fish"

eval (/opt/homebrew/bin/brew shellenv)

source /opt/homebrew/opt/asdf/asdf.fish

