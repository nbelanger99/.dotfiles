# Tools
alias vim="nvim"
alias ls="lsd"
alias tree="lsd --tree"

# Git stuff
alias nuke="git reset --hard && git clean -dfx"
alias treefix="git submodule deinit --all --force && git submodule update --init --recursive"
alias bigbang="nuke && treefix"

# Misc Helpers
alias serve="python -m http.server -d "
alias q="exit"
