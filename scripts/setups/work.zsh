#!/usr/bin/env zsh

. $HANDLES_PATH/src/helpers.sh

$HANDLES_PATH/modules/ssh/install.zsh

$HANDLES_PATH/modules/brew/common.zsh

$HANDLES_PATH/modules/git/install.zsh
$HANDLES_PATH/modules/macos/install.zsh
$HANDLES_PATH/modules/vscode/install.zsh
