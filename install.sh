#!/bin/bash

echo -e "\u001b[7m Cloning zsh plugins...\u001b[0m"
git clone https://github.com/djui/alias-tips.git ~/.oh-my-zsh/custom/plugins/alias-tips
git clone https://github.com/zdharma-continuum/fast-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/fast-syntax-highlighting
git clone https://github.com/unixorn/fzf-zsh-plugin.git ~/.oh-my-zsh/custom/plugins/fzf-zsh-plugin
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions

echo -e "\u001b[7m Installing dot files...\u001b[0m"
cat .gitconfig >> $HOME/.gitconfig
cat .zshrc > $HOME/.zshrc
cat .tmux.conf > $HOME/.tmux.conf

echo -e "\u001b[7m Done. Please restart terminal!\u001b[0m"
