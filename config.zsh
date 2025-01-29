########### config

alias edit-zsh="vim ~/.oh-my-zsh/custom/config.zsh"
alias reload-zsh="source ~/.oh-my-zsh/custom/config.zsh"
alias edit-nvm="vim ~/.config/nvim"
alias edit-tmux="vim ~/.tmux.conf"
alias edit-format="vim ~/.clang-format"

########### dev

alias test="make test"
alias leak="make leak"
alias gm="git commit -m"

########## other

alias untar="tar -xzf"
alias vim="nvim"

########## functions

clone () {
	git clone git@github.com:Nabil080/${1}.git
}

######### temp

alias co="nc -C localhost 6667"
alias ir="irssi -n nabil -c localhost -p 6667 -w password"
