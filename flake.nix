{
  description = "Home Manager configuration of magnus";

  inputs = {
    # Specify the source of Home Manager and Nixpkgs.
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    nix-flatpak.url = "github:gmodena/nix-flatpak";
  };

  outputs =
    { nixpkgs
    , home-manager
    , nix-flatpak
    , ...
    }:
    let
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${system};
    in
    {
      formatter.x86_64-linux = nixpkgs.legacyPackages.${system}.nixpkgs-fmt;
      homeConfigurations =
        {
          "magnus@zbook" = home-manager.lib.homeManagerConfiguration {
            inherit pkgs;

            # Specify your home configuration modules here, for example,
            # the path to your home.nix.
            modules = [
              ./home.nix

              nix-flatpak.homeManagerModules.nix-flatpak
            ];

            # Optionally use extraSpecialArgs
            # to pass through arguments to home.nix
          };
          
          # nh home switch ./.config/home-manager
          "magnus@Zenbook" = home-manager.lib.homeManagerConfiguration {
            inherit pkgs;
            modules = [
              ./wsl.nix
            ];
          };
        };

    };
}
