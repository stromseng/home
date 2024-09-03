{ self, ... }: {
  # # handle prompt in zsh.nix instead, to use znap
  programs.starship = {
    enable = true;
    enableZshIntegration = true;
  };
  home.file.".config/starship.toml".source = ./starship.toml;
}
