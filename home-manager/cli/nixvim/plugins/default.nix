{
  programs.nixvim.plugins.web-devicons.enable = true;
  programs.nixvim.plugins.intellitab.enable = true;

  imports = [
    ./ui/default.nix
    ./lsp/default.nix
    ./git/default.nix
    ./ai/default.nix

    ./auto-session.nix
    ./autoclose.nix
    ./barbecue.nix
    ./bufdelete.nix
    ./bufferline.nix
    ./comment.nix
    ./conform.nix
    ./flash.nix
    ./fugitive.nix
    ./guess-indent.nix
    ./hex.nix
    ./illuminate.nix
    ./lazygit.nix
    ./nix.nix
    ./neo-tree.nix
    # ./nvim-tree.nix
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
