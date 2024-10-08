{
  programs.nixvim.plugins.lsp = {
    enable = true;
  };

  imports = [
    ./clangd.nix
    ./css.nix
    ./docker.nix
    ./emmet.nix
    ./eslint.nix
    ./html.nix
    ./ruff.nix
    ./rust.nix
    ./tailwind.nix
    ./typescript.nix

    ./cmp.nix
  ];
}
