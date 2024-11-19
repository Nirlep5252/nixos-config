{ pkgs, inputs, ... }: {
  wayland.windowManager.hyprland.plugins = [
    inputs.hyprland-plugins.packages.${pkgs.system}.hyprtrails
    inputs.hyprland-plugins.packages.${pkgs.system}.hyprexpo
    inputs.hyprspace.packages.${pkgs.system}.Hyprspace
    # inputs.hypr-dynamic-cursors.packages.${pkgs.system}.hypr-dynamic-cursors
    inputs.hy3.packages.${pkgs.system}.hy3
  ];

  wayland.windowManager.hyprland.settings.plugin = {
    hyprtrails = {
      color = "rgba(ffffffee)";
    };
    dynamic-cursors = {
      enabled = true;
      mode = "tilt";
      threshold = 2;
    };
    hyprexpo = {
      columns = 3;
      gap_size = 5;
      bg_col = "rgb(111111)";
      workspace_method = "first 1"; # [center/first] [workspace] e.g. first 1 or center m+1

      enable_gesture = false; # laptop touchpad
      gesture_fingers = 3;  # 3 or 4
      gesture_distance = 300; # how far is the "max"
      gesture_positive = true; # positive = swipe down. Negative = swipe up.
    };
  };
}
