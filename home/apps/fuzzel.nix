{ ... }: {
  programs.fuzzel.enable = true;
  programs.fuzzel.settings = {
    main = {
      font = "GeistMono Nerd Font:size=16";
      line-height = 30;
      prompt = "-> ";
      layer = "overlay";
      lines = 10;
      icon-theme = "WhiteSur";
      horizontal-pad = 10;
      vertical-pad = 10;
      inner-pad = 6;
      filter-desktop = true;
      image-size-ratio = 0.5;
      terminal = "kitty";
      fields = "name,exec,filename";
      placeholder = "Search...";
      sort-result = false;
      match-mode = "exact";
      dpi-aware = false;
    };

    colors = {
      background = "1a1b26aa";
      text = "c0caf5ff";
      prompt = "7aa2f7ff";
      input = "c0caf5ff";
      match = "f38ba8ff";
      selection = "41486855";
      selection-match = "7aa2f7ff";
      selection-text = "c0caf5ff";
      border = "7aa2f7ff";
      placeholder = "828bb8ff";
      count = "828bb8ff";
    };

    border = {
      radius = 6;
      width = 2;
    };

    key-bindings = {
      prev-with-wrap = "Up";
      next-with-wrap = "Down";
      prev = "None";
      next = "None";
    };
  };
}
