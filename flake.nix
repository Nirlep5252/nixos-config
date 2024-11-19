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
    # WARN: remove this later
    zen-browser.url = "github:ch4og/zen-browser-flake";

    # Very epic neovim configuration btw...
    # WARN: if you are using my config, then you should "main" branch rather than "dev"
    epicvim = { url = "github:nirlep5252/epicvim/dev"; };
  };
  outputs = { nixpkgs, nixpkgs-stable, home-manager, lanzaboote, ... }@inputs:
    let
      vars = {
        system = "x86_64-linux";
        hostname = "uwu";
        username = "nirlep5252";
      };
    in {
      nixosConfigurations.${vars.hostname} = nixpkgs.lib.nixosSystem {
        system = vars.system;
        modules = [
          lanzaboote.nixosModules.lanzaboote
          ./configuration.nix
          inputs.home-manager.nixosModules.default
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
          modules = [ ./home/home.nix ];
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
