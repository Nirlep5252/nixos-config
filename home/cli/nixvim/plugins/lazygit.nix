{
  programs.nixvim.plugins.lazygit = {
    enable = true;
  };

  programs.nixvim.keymaps = [
    {
      action = "<cmd>LazyGit<CR>";
      key = "<leader>gg";
      options = {
        silent = true;
      };
      mode = [ "n" ];
    }
  ];
}
