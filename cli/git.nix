{ config
, pkgs
, ...
}: {
  # Enable and configure git
  programs.git = {
    enable = true;
    userName = "Magnus Alexander Strømseng";
    userEmail = "magnus.stromseng@gmail.com";
  };

  # Enable github CLI
  programs.gh.enable = true;
}
