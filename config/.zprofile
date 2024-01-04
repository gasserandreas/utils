
eval "$(/opt/homebrew/bin/brew shellenv)"

export PATH=/usr/local/opt/python/libexec/bin:$PATH

# say hello
printf "Hi you, keep on rocking!! \n"
printf "Path: $PWD \n"

# git config
git config --global user.name "Andreas Liistro"
git config --global user.email "gasserandreas@users.noreply.github.com"

# allow git auto completion
autoload -Uz compinit && compinit