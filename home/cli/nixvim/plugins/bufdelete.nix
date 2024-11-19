{
  programs.nixvim.plugins.bufdelete = {
    enable = true;
  };

  programs.nixvim.keymaps = [
    {
      action = "<cmd>Bdelete<CR>";
      key = "<leader>x";
      mode = [ "n" ];
      options = {
        silent = true;
      };
    }
  ];
}
