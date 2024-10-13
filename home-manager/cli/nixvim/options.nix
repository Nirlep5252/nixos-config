{
  programs.nixvim.opts = {
    termguicolors = true;

    number = true;
    relativenumber = true;
    cursorline = false;

    expandtab = true;
    shiftwidth = 4;
    tabstop = 4;

    undofile = true;

    scrolloff = 8;
  };
}
