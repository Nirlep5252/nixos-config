{
  programs.nixvim.plugins.copilot-chat = {
    enable = true;
  };

  programs.nixvim.keymaps = [
    {
      action = "<cmd>CopilotChatToggle<CR>";
      key = "<leader>c";
      options = {
        silent = true;
      };
      mode = [ "n" ];
    }
  ];
}
