{ ... }: {
  programs = {
    zsh = {
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
    };
  };
}
