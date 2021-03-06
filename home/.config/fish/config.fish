alias ssh-peco="grep -w Host ~/.ssh/config | peco | awk '{print \$2}' | xargs -o -n 1 ssh"
alias ghq-peco="cd (ghq root)/(ghq list | peco)"

set -x EDITOR vim
set -x PATH ~/.asdf/shims $PATH
set -x GOPATH ~/go

source "$HOME/.homesick/repos/homeshick/homeshick.fish"

eval (/opt/homebrew/bin/brew shellenv)

source /opt/homebrew/opt/asdf/asdf.fish

direnv hook fish | source



# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/uo/google-cloud-sdk/path.fish.inc' ]; . '/Users/uo/google-cloud-sdk/path.fish.inc'; end

