{ pkgs, ... }: {
  # Nixpkgs
  home.packages = with pkgs; [
    mozart2
    emacs
  ];

}
