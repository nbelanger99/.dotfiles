# Tools
alias vim="nvim"
alias ls="lsd"
alias tree="lsd --tree"
# alias man='man "$@" | nvim -R +":set ft=man" - '
alias man='MANPAGER="nvim +Man!" man'

# Git stuff
alias past="git log --all --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset'"
alias nuke="git reset --hard && sudo git clean -dfx"
alias treefix="git submodule deinit --all --force && git submodule update --init --recursive"
alias bigbang="nuke && treefix"

# Misc Helpers
alias serve="python -m http.server -d "
alias q="exit"

function far {
  find ./ -type f -exec sed -i "s/$1/$2/g" {} \;
}

function checkpoint {
  git stash store $(git stash create) -m "$1"
}
