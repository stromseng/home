{ ... }: {
  programs = {
    zsh = {
      enable = true;
      enableCompletion = true;
      autosuggestion.enable = true;
      syntaxHighlighting.enable = true;
      syntaxHighlighting.highlighters = [ "main" "brackets" ];
      autocd = true;
      defaultKeymap = "emacs";

      antidote = {
        enable = true;
        plugins = [
            "zsh-users/zsh-autosuggestions"
            "marlonrichert/zsh-autocomplete"
            "zsh-users/zsh-completions"
            "zsh-users/zsh-history-substring-search"
            "MichaelAquilina/zsh-you-should-use"
            "zsh-users/zsh-syntax-highlighting"
        ];
      };
      
      shellAliases = {
        gs = "git status";
        ga = "git add";
        gaa = "git add --all";
        gc = "git commit";
        gph = "git push";
        gpl = "git pull";
        gco = "git checkout";
        gd = "git diff";

        cat = "bat";
        ls = "eza";
      };
      initExtraBeforeCompInit = ''
      '';
      initExtra = ''
      '';
    };
    # A modern ls replacement
    eza = {
      enable = true;
    };
    # A modern cat replacement
    bat = {
      enable = true;
    };
    ripgrep = {
      enable = true;
    };
  };
}
