{ ... }: {
  wayland.windowManager.hyprland.settings.exec-once = [
    ''hyprctl setcursor "macOS-BigSur" 16''
    "wl-paste --type text --watch cliphist store"
    "wl-paste --type image --watch cliphist store"
    "nm-applet"
    "blueman-applet"
    # "hyprpm reload -n"
    "lxpolkit"
    "waybar"
  ];
}
