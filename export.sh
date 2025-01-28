#!/bin/sh
# Exports the current config inside the home
# /!\ This script usings apt as a package manager

is_installed()
{
    if [ -x "$(command -v $1)" ]; then
        return 0
    else
        return 1
    fi
}

dir_exists()
{
    if [ -d $1 ]; then
        return 0
    else
        return 1
    fi
}

# NOTE: zsh config
if ! is_installed zsh; then
    # installs zsh
    read -p "Zsh is not installed, do you want to install it ? (y/n)" yn
    case $yn in
        [Yy]* ) sudo apt install zsh;;
    esac
fi
if ! dir_exists ${HOME}/.oh-my-zsh; then
    # installs oh my zsh
    read -p "Oh-My-Zsh is not installed, do you want to install it ? (y/n)" yn
    case $yn in
        [Yy]* ) sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
    esac
fi
if is_installed zsh && dir_exists $HOME/.oh-my-zsh ; then
    echo "Exporting oh-my-zsh config"
    cp ./config.zsh $HOME/.oh-my-zsh/custom 
fi


# NOTE: tmux
if ! is_installed tmux; then
    # installs tmux
    read -p "Tmux is not installed, do you want to install it ? (y/n)" yn
    case $yn in
        [Yy]* ) sudo apt install tmux;;
    esac
fi
if is_installed tmux; then
    echo "Exporting tmux config"
    cp ./.tmux.conf $HOME
    if ! dir_exists $HOME/.tmux/plugins/tpm; then
        echo "Installing tmux plugin manager"
        git clone https://github.com/tmux-plugins/tpm $HOME/.tmux/plugins/tpm
    fi
    echo "Don't forget to install plugins using prefix+I inside tmux"
fi

# NOTE: nvim
if ! is_installed nvim; then
    # installs nvim
    read -p "Neovim is not installed, do you want to install it ? (y/n)" yn
    case $yn in
        [Yy]* ) sudo apt-get install neovim;;
    esac
fi
if is_installed nvim; then
    echo "Exporting nvim config"
    cp -r nvim $HOME/.config
    echo "Don't forget to install the dependencies :
    - A nerdfont for icons
    - Lazygit
    - ripgrep for the fuzzy finder
    - python and node
    - lua
    - clang
    and others idk"
    # might want to install dependencies
fi


cp ./.clang-format $HOME
