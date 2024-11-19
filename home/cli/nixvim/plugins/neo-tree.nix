{
  programs.nixvim.plugins.neo-tree = { enable = true; };
  programs.nixvim.keymaps = [{
    action = "<cmd>Neotree toggle position=right<CR>";
    key = "<leader>e";
    options = { silent = true; };
    mode = [ "n" ];
  }];
}
