#!/bin/sh
# Exports the current config inside the home

is_installed()
{
    if [ -x "$(command -v $1)" ]; then
        return 0
    else
        return 1
    fi
}

# zsh
# ensure oh my zsh is installed
if is_installed zsh; then
    echo 'zsh is installed'
else
    echo 'zsh is not installed'
fi
cp ./config.zsh $HOME/.oh-my-zsh/custom 


# tmux
# ensure tmux is installed
# clone plugin manager
cp ./.tmux.conf $HOME

# nvim
# ensure nvim is installed
# ensure necessary dependencies are installed
# # lazygit
# # ripgrep
# # nerd font
# # clang
# # python
cp -r nvim $HOME/.config

cp ./.clang-format $HOME
