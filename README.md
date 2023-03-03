# dotfiles
Common dotfiles for Linux workspaces

## Automatic installation

If you're using Github codespaces, you can folk this repo and config it following [Github instruction](https://docs.github.com/en/codespaces/customizing-your-codespace/personalizing-github-codespaces-for-your-account#enabling-your-dotfiles-repository-for-codespaces).

## Manual installation

You can use a single command to install. Choose either 1 of these:

- via curl
    ```bash
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/alfrededison/dotfiles/main/tools/online-install.sh)"
    ```
- via wget:
    ```bash
    sh -c "$(wget -qO- https://raw.githubusercontent.com/alfrededison/dotfiles/main/tools/online-install.sh)"
    ```
- via fetch:
    ```bash
    sh -c "$(fetch -o - https://raw.githubusercontent.com/alfrededison/dotfiles/main/tools/online-install.sh)"
    ```

## Setting up fonts

1. Download and install fonts on your local system with [p10k fonts](https://github.com/romkatv/powerlevel10k#fonts).
2. Config your terminal to use `MesloLGS NF` as its font family.
