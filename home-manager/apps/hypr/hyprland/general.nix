{ pkgs, ... }: {
  wayland.windowManager.hyprland.enable = true;
  wayland.windowManager.hyprland.systemd.variables = [ "--all" ];

  xdg.portal = {
    enable = true;
    extraPortals = [ pkgs.xdg-desktop-portal-gtk ];
  };
  xdg.portal.config.common.default = "*";

  wayland.windowManager.hyprland.settings = {
    "$mod" = "SUPER";

    "$terminal" = "kitty";
    "$menu" = "wofi --show run";
    "$fileManager" = "nemo";

    "windowrulev2" = [ "suppressevent maximize, class:.*" ];
  };

  wayland.windowManager.hyprland.settings.general = {
    gaps_in = 5;
    gaps_out = 10;

    border_size = 2;
    "col.active_border" = "0xffffffff";
    "col.inactive_border" = "rgba(00000000)";

    layout = "dwindle";
  };
}
