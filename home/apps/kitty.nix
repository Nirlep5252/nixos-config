{ ... }: {
  programs.kitty = {
    enable = true;
    font = {
      name = "Maple Mono NF";
      size = 12;
    };
    shellIntegration.enableZshIntegration = true;
    settings = {
      remember_window_size = "no";
      initial_window_width = 1920;
      initial_window_height = 1080;
      window_padding_width = 6;
      background_opacity = "0.8";
      cursor_trail = 10;
    };
    themeFile = "Catppuccin-Mocha";
  };
}
