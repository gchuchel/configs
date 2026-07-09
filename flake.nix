{
  description = "nixos i3";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-24.11";
    home-manager = {
      url = "github:nix-community/home-manager/release-24.11";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    tg-ws-proxy.url = "github:pialtor/tg-ws-proxy-flake";   # ДОБАВИТЬ
  };

  outputs = { self, nixpkgs, home-manager, tg-ws-proxy, ... }@inputs: {
    nixosConfigurations.default = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      specialArgs = { inherit tg-ws-proxy; };   # ДОБАВИТЬ
      modules = [
        ./configuration.nix
        ./hardware-configuration.nix
        home-manager.nixosModules.home-manager
        {
          home-manager.useGlobalPkgs = true;
          home-manager.useUserPackages = true;
          home-manager.backupFileExtension = "backup";
          home-manager.users.max = import ./home.nix;
        }
        ./modules/tg.nix   # ДОБАВИТЬ
      ];
    };
  };
}
