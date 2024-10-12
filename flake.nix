{
  description = "Nirlep's system configuration";
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    nixpkgs-stable.url = "github:nixos/nixpkgs/nixos-24.05";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    lanzaboote = {
      url = "github:nix-community/lanzaboote/v0.4.1";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    # Hyprland
    hyprland.url = "git+https://github.com/hyprwm/Hyprland?submodules=1";
    hyprland-plugins = {
      url = "github:hyprwm/hyprland-plugins";
      inputs.hyprland.follows = "hyprland";
    };
    hyprspace = {
      url = "github:KZDKM/Hyprspace";
      inputs.hyprland.follows = "hyprland";
    };
    hypr-dynamic-cursors = {
      url = "github:VirtCode/hypr-dynamic-cursors";
      inputs.hyprland.follows = "hyprland";
    };
    hy3 = {
      url = "github:outfoxxed/hy3";
      inputs.hyprland.follows = "hyprland";
    };

    # Zen Browser
    zen-browser.url = "github:MarceColl/zen-browser-flake";

    # Nixvim
    nixvim = {
      url = "github:nix-community/nixvim";
      # url = "github:Nirlep5252/Neve";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };
  outputs = { nixpkgs, nixpkgs-stable, home-manager, lanzaboote, ... }@inputs:
    let vars = {
      system = "x86_64-linux";
      hostname = "uwu";
      username = "nirlep5252";
    };
    in {
      nixosConfigurations.${vars.hostname} = nixpkgs.lib.nixosSystem {
        system = vars.system;
        modules = [
          lanzaboote.nixosModules.lanzaboote
          ./nixos/configuration.nix
        ];
        specialArgs = {
          inherit inputs;
          inherit vars;
          pkgs-stable = import nixpkgs-stable {
            system = vars.system;
            config.allowUnfree = true;
          };
        };
      };
      homeConfigurations.${vars.username} =
        home-manager.lib.homeManagerConfiguration {
          pkgs = nixpkgs.legacyPackages.${vars.system};
          modules = [
            ./home-manager/home.nix
            inputs.nixvim.homeManagerModules.nixvim
          ];
          extraSpecialArgs = {
            inherit inputs;
            inherit vars;
            pkgs-stable = import nixpkgs-stable {
              system = vars.system;
              config.allowUnfree = true;
            };
          };
        };
    };
}
