{
  programs.nixvim.plugins.lastplace.enable = true;
  programs.nixvim.plugins.auto-session = {
    enable = true;
    autoRestore.enabled = true;
    autoSave.enabled = true;
    autoSession = {
      # enableLastSession = true;
      createEnabled = true;
      useGitBranch = true;
    };
  };

  programs.nixvim.keymaps = [
    {
      action = "<cmd>SessionSearch<CR>";
      key = "<leader>fs";
      mode = [ "n" ];
      options = {
        silent = true;
      };
    }

    {
      action = "<cmd>SessionSave<CR>";
      key = "<leader>ss";
      mode = [ "n" ];
      options = {
        silent = true;
      };
    }
  ];
}
