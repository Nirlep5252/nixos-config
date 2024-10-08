{
  programs.nixvim.plugins.toggleterm = {
    enable = true;
  };

  programs.nixvim.keymaps = [
    {
      action = "<cmd>ToggleTerm direction=horizontal<CR>";
      key = "<C-`>";
      options = {
        silent = true;
      };
      mode = [ "n" "i" "t" "v" ];
    }
  ];
}
