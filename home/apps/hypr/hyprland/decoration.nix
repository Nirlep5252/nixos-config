{ ... }: {
  wayland.windowManager.hyprland.settings.decoration = {
    rounding = 16;
    blur = {
      enabled = true;
      size = 8;
      passes = 3;
      new_optimizations = true;
      ignore_opacity = true;
      xray = true;
    };
    active_opacity = 0.95;
    inactive_opacity = 0.85;
    fullscreen_opacity = 1.0;
  };
}
