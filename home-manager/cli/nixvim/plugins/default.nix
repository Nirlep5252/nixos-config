{
  programs.nixvim.plugins.web-devicons.enable = true;
  programs.nixvim.plugins.intellitab.enable = true;

  imports = [
    ./ai/default.nix
    ./lsp/default.nix

    ./auto-session.nix
    ./autoclose.nix
    ./barbecue.nix
    ./bufdelete.nix
    ./bufferline.nix
    ./comment.nix
    ./dashboard.nix
    ./dressing.nix
    ./flash.nix
    ./fugitive.nix
    ./gitsigns.nix
    ./guess-indent.nix
    ./hex.nix
    ./illuminate.nix
    ./indent-blankline.nix
    ./lazygit.nix
    ./lualine.nix
    ./nix.nix
    ./nvim-tree.nix
    ./oil.nix
    ./telescope.nix
    ./todo-comments.nix
    ./toggleterm.nix
    ./treesitter.nix
    ./wakatime.nix
    ./which-key.nix
    ./wilder.nix
  ];
}
