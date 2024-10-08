{
  programs.nixvim.plugins.cmp = {
    enable = true;
    autoEnableSources = true;
    settings.sources = [
      { name = "nvim_lsp"; }
      { name = "path"; }
      { name = "buffer"; }
    ];
    settings.mapping = {
      "<C-Space>" = "cmp.mapping.complete()";
      "<C-d>" = "cmp.mapping.scroll_docs(-4)";
      "<C-e>" = "cmp.mapping.close()";
      "<C-f>" = "cmp.mapping.scroll_docs(4)";
      "<Tab>" = "cmp.mapping.confirm({ select = true })";
    };
  };
  programs.nixvim.plugins.cmp-nvim-lsp.enable = true;
  programs.nixvim.plugins.cmp-path.enable = true;
  programs.nixvim.plugins.cmp-buffer.enable = true;
}
