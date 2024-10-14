# My NixOS configuration

## Usage

1. Clone the repo
2. Replace the `./nixos/hardware-configuration.nix` with your `hardware-configuration.nix` file.
3. Edit the `flake.nix` file to have your username and hostname.
4. Run `sudo nixos-rebuild switch --flake .` in the current working directory (of this repo).
5. Reboot.
6. Run `nix-shell -p home-manager`
7. Run `home-manager switch --flake .`
8. Enjoy
