if status is-interactive
    set fish_greeting
    fastfetch -c examples/27.jsonc
end

if test -f ./.env.fish
    source ./.env.fish
end
fish_add_path $HOME/.scripts

function last_history_item; echo $history[1]; end

abbr -a !! --position anywhere --function last_history_item

alias la='ls -la'
alias h='cd ~'

alias v='nvim'
alias n='fastfetch'
alias cr='cargo run'
alias ct='cargo test'
alias g='git'
alias :q='exit'
alias :wq='exit'
alias q='exit'
alias nano=nvim
alias pru=paru

zoxide init fish | source

set -x GPG_TTY (tty)

set -x LANG en_GB.UTF-8
set -x LC_ALL en_GB.UTF-8
