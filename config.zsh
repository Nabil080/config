########### config
alias edit-zsh="vim ~/.oh-my-zsh/custom/config.zsh"
alias reload-zsh="source ~/.oh-my-zsh/custom/config.zsh"
alias edit-nvm="vim ~/.config/nvim"
alias edit-tmux="vim ~/.tmux.conf"
alias edit-format="vim ~/.clang-format"

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

########## other

alias untar="tar -xzf"
alias vim="nvim"
alias vi="nvim"

# tmux
alias tl="tmux ls"
alias ta="tmux attach -t"
alias td="tmux detach"
alias tr="tmux rename"
alias tk="tmux kill-session -t"
alias tn="tmux new -t"

########## functions

function clone () {
	git clone git@github.com:Nabil080/${1}.git
}
function runCommand() {
    for d in ./*/ ; do /bin/zsh -c "(cd "$d" && "$@")"; done
}
######### temp
alias co="nc -C localhost 6667"
alias ir="irssi -n nabil -c localhost -p 6667 -w password"
