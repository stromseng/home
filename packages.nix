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
    cmake # rustc compilation dependency
    vscode
    gnome-tweaks
    texliveFull # latex support
  ];

  # Flatpak
  services.flatpak.enable = true;
  services.flatpak.packages = [
    "io.github.zen_browser.zen"
    {
      appId = "com.discordapp.Discord";
      origin = "flathub";
    } 
    "io.github.brunofin.Cohesion" # Notion client
    "com.sindresorhus.Caprine" # Facebook Messenger
    "com.spotify.Client"
    "com.slack.Slack"
    "com.stremio.Stremio" # video streaming
    "com.github.finefindus.eyedropper" #color picker
    "com.feaneron.Boatswain" # streamdeck software
  ];
}
