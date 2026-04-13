#!/bin/bash
echo "Installing @RstmMod Ecosystem..."
echo "deb [trusted=yes] https://techxtra.github.io/repo termux extras" > $PREFIX/etc/apt/sources.list.d/rstm-mod.list
pkg update
pkg install fish rstm-mod-theme -y
chsh -s fish
echo "Setup Done! Restart Termux to see the magic."
