if status is-interactive
    # Commands to run in interactive sessions can go here
    pyenv init - | source
end

status is-login; and pyenv init --path | source

starship init fish | source

set -x GPG_TTY (tty)
set -gx HOMEBREW_GITHUB_API_TOKEN <my_github_token>

set -gx GOPATH $HOME/go
set -gx PATH $GOPATH/bin $PATH
