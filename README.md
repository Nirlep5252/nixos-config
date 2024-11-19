# My NixOS configuration

## Usage

1. Clone the repo
2. Replace the `./hardware-configuration.nix` with your `/etc/nixos/hardware-configuration.nix` file.
3. Edit the `flake.nix` file to have your username and hostname.
4. Edit `./modules/nvidia.nix` and change the bus IDs to your system's bus IDs.
   (Guide: [https://nixos.wiki/wiki/Nvidia#Laptop*Configuration:\_Hybrid_Graphics*.28Nvidia_Optimus_PRIME.29](https://nixos.wiki/wiki/Nvidia#Laptop_Configuration:_Hybrid_Graphics_.28Nvidia_Optimus_PRIME.29))
   (Or just disable nvidia prime temporarily)
5. Run `sudo nixos-rebuild switch --flake .` in the current working directory (of this repo).
6. Reboot.
7. Run `nix-shell -p home-manager`
8. Run `home-manager switch --flake .`
9. Enjoy
