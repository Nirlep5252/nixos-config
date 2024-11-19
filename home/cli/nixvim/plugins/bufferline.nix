{
  programs.nixvim.plugins.bufferline = {
    enable = true;
  };

  programs.nixvim.keymaps = [
    {
      action = "<cmd>bprev<CR>";
      key = "H";
      options = {
        silent = true;
      };
      mode = [ "n" ];
    }
    {
      action = "<cmd>bnext<CR>";
      key = "L";
      options = {
        silent = true;
      };
      mode = [ "n" ];
    }
  ];
}
