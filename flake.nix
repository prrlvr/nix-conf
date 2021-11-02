{
  description = "prrlvr nix config";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    home-manager.url = "github:nix-community/home-manager";
    nix-doom-emacs.url = "github:vlaci/nix-doom-emacs";
  };
 
  outputs = { nix-doom-emacs, home-manager, nixpkgs, ... }: {
      nixosConfigurations = {
        pr-nixos = nixpkgs.lib.nixosSystem {
          system = "x86_64-linux";

          modules = [
            ./system/configuration.nix

            home-manager.nixosModules.home-manager {
              home-manager.useGlobalPkgs = true;
              home-manager.useUserPackages = true;

              home-manager.users.prrlvr = { pkgs, ... }: {
                imports = [ nix-doom-emacs.hmModule ./home.nix ];
                programs.doom-emacs = {
                  enable = true;
                  doomPrivateDir = ./.doom.d;
                };
              };
            }
          ];
        };
      };
    };
}
