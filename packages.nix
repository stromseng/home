{ pkgs, ... }: {
  # Nixpkgs
  home.packages = with pkgs; [
    vim
    wget
    curl
    docker
    docker-compose
    go
    nerdfonts
    figma-linux
    distrobox # Linux containers manager
    boxbuddy # Distrobox gui
    bun
    rustup
    nh # nix helper cli tool
  ];

  # Flatpak
  services.flatpak.enable = true;
  services.flatpak.packages = [
    "io.github.zen_browser.zen"
    {
      appId = "com.discordapp.Discord";
      origin = "flathub";
    }
    "io.github.brunofin.Cohesion"
    "com.sindresorhus.Caprine"
    "com.spotify.Client"
    "com.slack.Slack"
    "com.stremio.Stremio"
    "com.github.finefindus.eyedropper"
  ];
}
