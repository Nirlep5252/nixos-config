{
  programs.nixvim.plugins.todo-comments = {
    enable = true;
  };

  programs.nixvim.keymaps = [
    {
      action = "<cmd>TodoTelescope<CR>";
      key = "<leader>tt";
      options = {
        silent = true;
      };
      mode = [ "n" ];
    }
  ];
}
