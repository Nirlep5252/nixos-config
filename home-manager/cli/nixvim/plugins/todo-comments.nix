{
  programs.nixvim.plugins.todo-comments = {
    enable = true;
  };

  programs.nixvim.keymaps = [
    {
      action = "<cmd>TodoTelescope<CR>";
      key = "<leader>ft";
      options = {
        silent = true;
      };
      mode = [ "n" ];
    }
  ];
}
