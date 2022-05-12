# Golang
set -x GOPATH $HOME/go
set -x PATH $PATH $GOPATH/bin
set -x PATH $HOME/.rbenv/bin $PATH
set -x PATH $HOME/.cargo/bin $PATH
set -x PATH $HOME/.tfenv/bin $PATH


set -x PYENV_ROOT $HOME/.pyenv
set -x PATH $PYENV_ROOT/bin $PATH
status --is-interactive; and . (pyenv init - | psub)

alias python=python3
alias ssh-peco="grep -w Host ~/.ssh/config | peco | awk '{print \$2}' | xargs -o -n 1 ssh"
alias ghq-peco="cd (ghq root)/(ghq list | peco)"

eval (direnv hook fish)
status --is-interactive; and source (rbenv init -|psub)

status --is-interactive; and source (nodenv init -|psub)

set -x PATH $PATH $HOME/Library/Python/3.7/bin
set -x PATH $PATH $HOME/.nodebrew/current/bin

set -x RDS_USER root
set -x RDS_PASSWORD
set -x RDS_HOST 127.0.0.1
set -x RDS_DATABASE uzo

set -x EDITOR vim


set -g fish_user_paths "/usr/local/opt/openjdk/bin" $fish_user_paths


set -x GOPRIVATE github.com/speee
# GO111MODULEは無指定もしくは明示的にon設定
set -x GO111MODULE on


# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/shin.uozumi/Downloads/google-cloud-sdk/path.fish.inc' ]; . '/Users/shin.uozumi/Downloads/google-cloud-sdk/path.fish.inc'; end


# media-admin login
function login-media-admin-dev
  aws ecs execute-command --cluster uzo-media-admin-cluster-dev --task (aws ecs list-tasks --cluster uzo-media-admin-cluster-dev | jq -r '.taskArns[0] | split("/")[-1]') --container app --interactive --command "bash"
end

source "$HOME/.homesick/repos/homeshick/homeshick.fish"
