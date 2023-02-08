#!/bin/bash

echo -e "\u001b[7m Cloning zsh plugins...\u001b[0m"
git clone https://github.com/djui/alias-tips.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/alias-tips
git clone https://github.com/zdharma-continuum/fast-syntax-highlighting.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/fast-syntax-highlighting
git clone https://github.com/unixorn/fzf-zsh-plugin.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/fzf-zsh-plugin
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

echo -e "\u001b[7m Installing dot files...\u001b[0m"
cat .gitconfig > $HOME/.gitconfig
cat .zshrc > $HOME/.zshrc
cat .tmux.conf > $HOME/.tmux.conf
cat .p10k.zsh > $HOME/.p10k.zsh

echo -e "\u001b[7m Done. Please restart terminal!\u001b[0m"
