########### config
alias edit-zsh="vim ~/.oh-my-zsh/custom/config.zsh"
alias reload-zsh="source ~/.oh-my-zsh/custom/config.zsh"
alias edit-nvm="vim ~/.config/nvim"
alias edit-tmux="vim ~/.tmux.conf"
alias edit-clang-format="vim ~/.clang-format"
alias edit-prettier="vim ~/.prettierrc"

########### dev

# compil / exec
alias comp="cc -Wall -Wextra -Werror *.c"
alias test="make test"
alias leak="make leak"

# git
alias gst="git status"
alias gcl="git clone"
alias ga="git add"
alias gaa="git add ."
alias gm="git commit -m"
alias gp="git push"
alias gpl="git pull"
alias gs="git stash"

# docker
alias du="docker compose up --build"

########## other

alias untar="tar -xzf"
alias vim="nvim"
alias vi="nvim"

alias py="python3"

# tmux
alias tl="tmux ls"
alias ta="tmux attach -t"
alias td="tmux detach"
alias tr="tmux rename"
alias tk="tmux kill-session -t"
alias tn="tmux new -t"

########## functions

clone () {
	git clone git@github.com:Nabil080/${1}.git
}

cloneFrom () {
	git clone git@github.com:${2}/${1}.git
}

runCommand() {
    for d in ./*/ ; do /bin/zsh -c "(cd "$d" && "$@")"; done
}

# $1 -> request type (GET POST..)
# $2 -> pathname (users/register..)
# $3 -> body (optional)
request() {
  /usr/bin/curl -k -X "$1" "https://localhost:8080/$2" \
    -H "Content-Type: application/json" \
    -d "${3:-{}}"
}

######### temp
alias co="nc -C localhost 6667"
alias ir="irssi -n nabil -c localhost -p 6667 -w password"
