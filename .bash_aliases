alias vim="nvim"
alias fvim='vim $(fzf)'
alias cdf='cd $(fzf)'
alias ls="lsd"
alias tree="lsd --tree"
alias q="exit"

# Git stuff
alias nuke="git reset --hard && git clean -dfx"
alias treefix="git submodule deinit --all --force && git submodule update --init --recursive"
alias bigbang="nuke && treefix"
