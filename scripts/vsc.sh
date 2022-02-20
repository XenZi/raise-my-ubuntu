#!/bin/bash

echo "⌨️  Installing VSCode"
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo install -o root -g root -m 644 microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
sudo apt install -y apt-transport-https
sudo apt update
sudo apt install -y code
rm microsoft.gpg
function install {
  name="${1}"
  code --install-extension ${name} --force
}
install coenraads.bracket-pair-colorizer
install naumovs.color-highlight
install dbaeumer.vscode-eslint
install ritwickdey.liveserver
install monokai.theme-monokai-pro-vscode
install esbenp.prettier-vscode
install ms-python.python
install vscode-icons-team.vscode-icons
install formulahendry.auto-rename-tag
install formulahendry.auto-close-tag
install glen-84.sass-lint
install syler.sass-indented
install foxundermoon.shell-format
install byi8220.indented-block-highlighting
install wayou.vscode-todo-highlight