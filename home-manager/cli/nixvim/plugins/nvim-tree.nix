{
  programs.nixvim.plugins.nvim-tree = {
    enable = true;
    hijackNetrw = false;
  };

  programs.nixvim.keymaps = [
    {
      action = "<cmd>NvimTreeToggle<CR>";
      key = "<leader>e";
      options = {
        silent = true;
      };
      mode = [ "n" ];
    }
  ];
}
