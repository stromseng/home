{ pkgs, ... }: {
  # Do `dconf watch /` to see which keys to set when changing settings

  # Dconf key format
  # Path: org/gnome/shell
  # Name: favorite-apps
  # Value: [firefox.desktop, ...]

  dconf.settings = {
    "org/gnome/desktop/interface" = {
      gtk-enable-primary-paste = false;
    };

    "org/gnome/desktop/wm/preferences" = {
      button-layout = "appmenu:minimize,maximize,close";
    };

    "org/gnome/desktop/interface" = {
      show-battery-percentage = true;
    };

    # Fix font rendering for LCD screens
    "org/gnome/desktop/interface" = {
      font-hinting = "full";
      font-antialiasing = "rgba";
    };

  };
}
