{ ... }: {
  wayland.windowManager.hyprland.settings.input = {
    kb_layout = "us";
    kb_variant = "";
    kb_model = "";
    kb_options = "";
    kb_rules = "";

    follow_mouse = 1;

    touchpad = { 
      natural_scroll = "yes";
    };

    sensitivity = -0.2; # -1.0 - 1.0, 0 means no modification.
    accel_profile = "flat";
    numlock_by_default = "yes";
  };
}
