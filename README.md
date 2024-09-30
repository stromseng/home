Declaratively manages packages, flatpaks, and config files.


### WSL Setup
1. Run Nix Determinate installer. `curl --proto '=https' --tlsv1.2 -sSf -L https://install.determinate.systems/nix | sh -s -- install`
2. Clone repo into .config/home-manager `git clone https://github.com/stromseng/home-manager.git ~/.config/home-manager`
3. Run home-manager switch `nix run github:nix-community/home-manager/master -- switch --flake /home/magnus/.config/home-manager#magnus@wsl -b backup`
4. install zsh `sudo apt install zsh`
5. Change default shell to zsh `chsh -s $(which zsh)`
