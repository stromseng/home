#!/bin/bash

# Start by adding zsh to /etc/shells
echo $(which zsh) | sudo tee -a /etc/shells

chsh -s $(which zsh)