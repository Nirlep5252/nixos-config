{ ... }: {
  wayland.windowManager.hyprland.settings.animations = {
    enabled = "yes";

    bezier = [ "myBezier, 0.05, 0.9, 0.1, 1.05" "linear, 0.0, 0.0, 1.0, 1.0" ];

    animation = [
      "windows, 1, 3, myBezier, slide"
      "windowsOut, 1, 3, default, slide"
      "border, 1, 5, default"
      "borderangle, 1, 50, linear, loop"
      "fade, 1, 3, default"
      "workspaces, 1, 3, default, slide"
    ];
  };
}
