{ config, pkgs, ... }: {
  xsession.windowManager.i3 = {
    enable = true;
    config = {
      modifier = "Mod4";
      colors = { };
      fonts = {
        names = [ "GeistMono Nerd Font" ];
        size = 11.0;
      };
      keybindings = let
        modifier = config.xsession.windowManager.i3.config.modifier;
        terminal = "kitty";
        launcher = "rofi -show drun";
        file-manager = "nemo";
        left = "h";
        down = "j";
        up = "k";
        right = "l";
      in {
        "${modifier}+Return" = "exec ${terminal}";
        "${modifier}+space" = "exec ${launcher}";
        "${modifier}+Shift+e" = "exec ${file-manager}";
        "${modifier}+Shift+q" = "kill";
        "${modifier}+Shift+x" = "exec betterlockscreen --lock";

        "${modifier}+${left}" = "focus left";
        "${modifier}+${down}" = "focus down";
        "${modifier}+${up}" = "focus up";
        "${modifier}+${right}" = "focus right";

        "${modifier}+Shift+${left}" = "move left";
        "${modifier}+Shift+${down}" = "move down";
        "${modifier}+Shift+${up}" = "move up";
        "${modifier}+Shift+${right}" = "move right";

        # splits
        "${modifier}+v" = "split v";
        "${modifier}+x" = "split h";

        # fullscreen
        "${modifier}+f" = "fullscreen toggle";

        # layouts
        "${modifier}+s" = "layout stacking";
        "${modifier}+w" = "layout tabbed";
        "${modifier}+e" = "layout toggle split";

        # floating
        "${modifier}+c" = "floating toggle";

        # focus parent and child
        "${modifier}+a" = "focus parent";
        "${modifier}+Shift+a" = "focus child";

        # reload or exit
        "${modifier}+Shift+c" = "reload";
        "${modifier}+Shift+r" = "restart";
        "${modifier}+m" = "exit";
      };
      menu = "${pkgs.fuzzel}/bin/fuzzel";
      terminal = "${pkgs.kitty}/bin/kitty";
      startup = [
        {
          command = "blueman-applet";
          always = true;
          notification = false;
        }
        {
          command = "nm-applet";
          always = true;
          notification = false;
        }
        {
          command = "lx-polkit";
          always = true;
          notification = false;
        }
      ];
    };
    extraConfig = ''
      set $mod Mod4

      # Define WS vars
      set $ws1 "1"
      set $ws2 "2"
      set $ws3 "3"
      set $ws4 "4"
      set $ws5 "5"
      set $ws6 "6"
      set $ws7 "7"
      set $ws8 "8"
      set $ws9 "9"
      set $ws10 "10"
      set $ws11 "11"
      set $ws12 "12"
      set $ws13 "13"
      set $ws14 "14"
      set $ws15 "15"
      set $ws16 "16"
      set $ws17 "17"
      set $ws18 "18"
      set $ws19 "19"

      # switch to workspace
      bindsym $mod+1 workspace $ws1
      bindsym $mod+2 workspace $ws2
      bindsym $mod+3 workspace $ws3 
      bindsym $mod+4 workspace $ws4 
      bindsym $mod+5 workspace $ws5 
      bindsym $mod+6 workspace $ws6 
      bindsym $mod+7 workspace $ws7 
      bindsym $mod+8 workspace $ws8 
      bindsym $mod+9 workspace $ws9 
      bindsym $mod+0 workspace $ws10

      # switch to workspace monitor2
      # bindsym Mod1+1 workspace $ws11
      # bindsym Mod1+2 workspace $ws12
      # bindsym Mod1+3 workspace $ws13
      # bindsym Mod1+4 workspace $ws14
      # bindsym Mod1+5 workspace $ws15
      # bindsym Mod1+6 workspace $ws16
      # bindsym Mod1+7 workspace $ws17
      # bindsym Mod1+8 workspace $ws18
      # bindsym Mod1+9 workspace $ws19

      # move focused container to workspace
      bindsym $mod+Shift+1 move container to workspace $ws1
      bindsym $mod+Shift+2 move container to workspace $ws2
      bindsym $mod+Shift+3 move container to workspace $ws3
      bindsym $mod+Shift+4 move container to workspace $ws4
      bindsym $mod+Shift+5 move container to workspace $ws5
      bindsym $mod+Shift+6 move container to workspace $ws6
      bindsym $mod+Shift+7 move container to workspace $ws7
      bindsym $mod+Shift+8 move container to workspace $ws8
      bindsym $mod+Shift+9 move container to workspace $ws9
      bindsym $mod+Shift+0 move container to workspace $ws10

      # move focused container to workspace
      bindsym Mod1+Shift+1 move container to workspace $ws11
      bindsym Mod1+Shift+2 move container to workspace $ws12
      bindsym Mod1+Shift+3 move container to workspace $ws13
      bindsym Mod1+Shift+4 move container to workspace $ws14
      bindsym Mod1+Shift+5 move container to workspace $ws15
      bindsym Mod1+Shift+6 move container to workspace $ws16
      bindsym Mod1+Shift+7 move container to workspace $ws17
      bindsym Mod1+Shift+8 move container to workspace $ws18
      bindsym Mod1+Shift+9 move container to workspace $ws19

      # resize window (you can also use the mouse for that)
      mode "resize" {
              # These bindings trigger as soon as you enter the resize mode

              # Pressing left will shrink the window’s width.
              # Pressing right will grow the window’s width.
              # Pressing up will shrink the window’s height.
              # Pressing down will grow the window’s height.
              bindsym $left resize shrink width 10 px or 10 ppt
              bindsym $down resize grow height 10 px or 10 ppt
              bindsym $up resize shrink height 10 px or 10 ppt
              bindsym $right resize grow width 10 px or 10 ppt

              # same bindings, but for the arrow keys
              bindsym Left resize shrink width 10 px or 10 ppt
              bindsym Down resize grow height 10 px or 10 ppt
              bindsym Up resize shrink height 10 px or 10 ppt
              bindsym Right resize grow width 10 px or 10 ppt

              # back to normal: Enter or Escape
              bindsym Return mode "default"
              bindsym Escape mode "default"
      }

      bindsym $mod+r mode "resize"

      # Pipewire-pulse
      bindsym XF86AudioMute exec pactl set-sink-mute 0 toggle
      bindsym XF86AudioMute --release exec pkill -RTMIN+1 i3blocks
      bindsym XF86AudioLowerVolume exec pactl set-sink-volume 0 -5%
      bindsym XF86AudioLowerVolume --release exec pkill -RTMIN+1 i3blocks
      bindsym XF86AudioRaiseVolume exec pactl set-sink-volume 0 +5%
      bindsym XF86AudioRaiseVolume --release exec pkill -RTMIN+1 i3blocks

      # Media player controls
      bindsym XF86AudioPlay exec playerctl play-pause
      bindsym XF86AudioPause exec playerctl play-pause
      bindsym XF86AudioNext exec playerctl next
      bindsym XF86AudioPrev exec playerctl previous

      # Zoomer boomer tsoding moment
      # bindsym $mod+Shift+z exec boomer

      # Screenshot uwu
      # bindsym $mod+Shift+s exec grimshot savecopy area "/home/nirlep5252/Pictures/Screenshots/$(date).png"

      exec_always xinput --set-prop "pointer:Logitech G304" "libinput Accel Speed" 0
      exec_always xinput --set-prop "pointer:DELL0B5E:00 04F3:317E Touchpad" "libinput Accel Speed" 0

      set $ctmVal 1.0
      exec_always xinput set-prop "pointer:Logitech G304" "Coordinate Transformation Matrix" 1, 0, 0, 0, 1, 0, 0, 0, $ctmVal
    '';
  };
}
