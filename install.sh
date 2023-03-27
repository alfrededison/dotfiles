#!/bin/bash

echo '>>>>>>>>>> Cloning zsh plugins...'
git clone https://github.com/djui/alias-tips.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/alias-tips
git clone https://github.com/zdharma-continuum/fast-syntax-highlighting.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/fast-syntax-highlighting
git clone https://github.com/unixorn/fzf-zsh-plugin.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/fzf-zsh-plugin
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

echo '>>>>>>>>>> Installing ZSH configs...'
cat .zshrc >$HOME/.zshrc
cat .p10k.zsh >$HOME/.p10k.zsh

echo '>>>>>>>>>> Updating git alias...'
gitconfig_path="$HOME/.gitconfig"

# Check if the file exists
if [ -f "$gitconfig_path" ]; then
  echo "$gitconfig_path exists."
  if grep -q "\[alias\]" "$gitconfig_path"; then
    echo "$gitconfig_path contains [alias]. Skipped!"
  else
    cat .gitconfig >>$gitconfig_path
    echo '>>>>>>>>>> Added alias to .gitconfig!'
  fi
else
  cat .gitconfig >$gitconfig_path
  echo '>>>>>>>>>> Copied .gitconfig!'
fi

echo '>>>>>>>>>> Installing tmux configs...'
cat .tmux.conf >$HOME/.tmux.conf

echo '>>>>>>>>>> Done. Please restart terminal! <<<<<<<<<<'
