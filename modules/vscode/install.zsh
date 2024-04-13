#!/usr/bin/env zsh

brew install --cask visual-studio-code

ln -sf $HANDLES_PATH/modules/vscode/settings.json ~/Library/Application\ Support/Code/User/settings.json
ln -sf $HANDLES_PATH/modules/vscode/keybindings.json ~/Library/Application\ Support/Code/User/keybindings.json

. $HANDLES_PATH/modules/vscode/my-extensions.zsh
