{
  description = "Nirlep's system configuration";
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    hyprland.url = "git+https://github.com/hyprwm/Hyprland?submodules=1";
    zen-browser.url = "github:MarceColl/zen-browser-flake";
  };
  outputs = { nixpkgs, home-manager, ... }@inputs:
    let system = "x86_64-linux";
    in {
      nixosConfigurations.uwu = nixpkgs.lib.nixosSystem {
        inherit system;
        modules = [ ./nixos/configuration.nix ];
        specialArgs = { inherit inputs; };
      };
      homeConfigurations.nirlep5252 =
        home-manager.lib.homeManagerConfiguration {
          pkgs = nixpkgs.legacyPackages.${system};
          modules = [ ./home-manager/home.nix ];
          extraSpecialArgs = { inherit inputs; };
        };
    };
}
