{ ... }: {
  wayland.windowManager.hyprland.settings.bind = [
    "$mod SHIFT, R, exec, hyprctl reload"
    "$mod, RETURN, exec, $terminal"
    "$mod, SPACE, exec, $menu"
    "$mod SHIFT, X, exec, hyprlock"
    "$mod, F, fullscreen"
    "$mod SHIFT, E, exec, $fileManager"
    "$mod, E, togglesplit"
    "$mod, C, togglefloating"

    # Moving windows REQUIRES hy3 PLUGIN
    "$mod SHIFT, Q, hy3:killactive"
    "$mod, h, hy3:movefocus, l"
    "$mod, l, hy3:movefocus, r"
    "$mod, k, hy3:movefocus, u"
    "$mod, j, hy3:movefocus, d"
    "$mod SHIFT, h, hy3:movewindow, l"
    "$mod SHIFT, l, hy3:movewindow, r"
    "$mod SHIFT, k, hy3:movewindow, u"
    "$mod SHIFT, j, hy3:movewindow, d"

    # HY3
    "$mod, v, hy3:makegroup, v"
    "$mod, x, hy3:makegroup, h"
    "$mod, w, hy3:changegroup, toggletab"
    "$mod, a, hy3:changefocus, raise"
    "$mod SHIFT, a, hy3:changefocus, lower"
    "Alt, Tab, hy3:movefocus, right"
    "Alt SHIFT, Tab, hy3:movefocus, left"

    # Screenshots
    ''
      $mod SHIFT, S, exec, grimshot savecopy area "/home/nirlep5252/Pictures/Screenshots/$(date).png"''
    # "$mod, Tab, workspace, previous"

    "$mod, Tab, overview:toggle" # REQUIRES Hyprspace PLUGIN
    "$mod, Escape, hyprexpo:expo, toggle" # REQUIRES hyprexpo PLUGIN
    "$mod, M, exit"
  ] ++ (builtins.concatLists (builtins.genList (x:
    let ws = let c = (x + 1) / 10; in builtins.toString (x + 1 - (c * 10));
    in [
      "$mod, ${ws}, workspace, ${toString (x + 1)}"
      "$mod SHIFT, ${ws}, movetoworkspace, ${toString (x + 1)}"
    ]) 10));

  wayland.windowManager.hyprland.settings.bindm =
    [ "$mod, mouse:272, movewindow" "$mod, mouse:273, resizewindow" ];
}
