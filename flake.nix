{
  description = "Nirlep's system configuration";
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    nixpkgs-stable.url = "github:nixos/nixpkgs/nixos-24.05";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    hyprland.url = "git+https://github.com/hyprwm/Hyprland?submodules=1";
    zen-browser.url = "github:MarceColl/zen-browser-flake";
    nixvim = {
      # url = "github:nix-community/nixvim";
      url = "github:Nirlep5252/Neve";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };
  outputs = {
    nixpkgs,
    nixpkgs-stable,
    home-manager,
    ...
  } @ inputs: let
    system = "x86_64-linux";
  in {
    nixosConfigurations.uwu = nixpkgs.lib.nixosSystem {
      inherit system;
      modules = [./nixos/configuration.nix];
      specialArgs = {
        inherit inputs;
        inherit system;
        pkgs-stable = import nixpkgs-stable {
          inherit system;
          config.allowUnfree = true;
        };
      };
    };
    homeConfigurations.nirlep5252 = home-manager.lib.homeManagerConfiguration {
      pkgs = nixpkgs.legacyPackages.${system};
      modules = [
        ./home-manager/home.nix
        # inputs.nixvim.homeManagerModules.nixvim
      ];
      extraSpecialArgs = {
        inherit inputs;
        inherit system;
        pkgs-stable = import nixpkgs-stable {
          inherit system;
          config.allowUnfree = true;
        };
      };
    };
  };
}
