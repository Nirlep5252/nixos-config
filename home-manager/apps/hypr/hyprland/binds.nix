{ ... }: {
  wayland.windowManager.hyprland.settings.bind = [
      "$mod SHIFT, R, exec, hyprctl reload"
      "$mod, RETURN, exec, $terminal"
      "$mod SHIFT, Q, killactive"
      "$mod, SPACE, exec, $menu"
      "$mod SHIFT, X, exec, hyprlock"
      "$mod, F, fullscreen"
      "$mod SHIFT, E, exec, $fileManager"
      "$mod, E, togglesplit"
      "$mod, C, togglefloating"

      # Moving windows
      "$mod, h, movefocus, l"
      "$mod, l, movefocus, r"
      "$mod, k, movefocus, u"
      "$mod, j, movefocus, d"
      "$mod SHIFT, h, movewindow, l"
      "$mod SHIFT, l, movewindow, r"
      "$mod SHIFT, k, movewindow, u"
      "$mod SHIFT, j, movewindow, d"

      # Screenshots
      "$mod SHIFT, S, exec, grimshot savecopy area \"/home/nirlep5252/Pictures/Screenshots/$(date).png\""
      "$mod, Tab, workspace, previous"
      "$mod, M, exit"
  ]
  ++ (
  builtins.concatLists (builtins.genList (
    x: let
      ws = let
      c = (x + 1) / 10;
        in
      builtins.toString (x + 1 - (c * 10));
        in [
          "$mod, ${ws}, workspace, ${toString (x + 1)}"
          "$mod SHIFT, ${ws}, movetoworkspace, ${toString (x + 1)}"
        ]
      )
      10)
  );

  wayland.windowManager.hyprland.settings.bindm = [
    "$mod, mouse:272, movewindow"
    "$mod, mouse:273, resizewindow"
  ];
}
