{
  programs.nixvim = {
    enable = true;
    # withNodejs = true;
    defaultEditor = true;

    viAlias = true;
    vimAlias = true;
    vimdiffAlias = true;
  };

  programs.nixvim.globals.mapleader = " ";

  imports = [
    ./colorschema.nix
    ./options.nix
    ./files.nix
    ./clipboard.nix
    ./plugins/default.nix
  ];
}
