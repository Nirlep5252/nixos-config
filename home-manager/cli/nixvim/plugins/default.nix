{
  programs.nixvim.plugins.web-devicons.enable = true;
  programs.nixvim.plugins.intellitab.enable = true;

  imports = [
    ./ai/default.nix
    ./lsp/default.nix

    ./bufferline.nix
    ./comment.nix
    ./fugitive.nix
    ./gitsigns.nix
    ./indent-blankline.nix
    ./lazygit.nix
    ./nvim-tree.nix
    ./oil.nix
    ./telescope.nix
    ./todo-comments.nix
    ./toggleterm.nix
    ./treesitter.nix
    ./wakatime.nix
  ];
}
