#!/bin/zsh

xcode-select -p 1>/dev/null || {
    echo "Installing Command line tools ..."
    xcode-select --install
}