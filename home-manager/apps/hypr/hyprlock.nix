{ ... }: {
  programs.hyprlock.enable = true;
  programs.hyprlock.settings = {
    "$monitor" = "";
    general = { };

    background = {
      monitor = "$monitor";
      path = "~/Pictures/Wallpapers/cat.png";

      blur_passes = 3;
      blur_size = 4;
    };

    input-field = {
      monitor = "$monitor";
      size = "250, 60";
      outline_thickness = 2;
      dots_size = 0.2;
      dots_spacing = 0.35;
      dots_center = true;
      outer_color = "rgba(0, 0, 0, 0)";
      inner_color = "rgba(255, 255, 255, 0.2)";
      font_color = "rgb(ffffff)";
      fade_on_empty = false;
      placeholder_text =
        ''<i><span style="italic" color="##cdd6f4"></span></i>'';
      hide_input = false;
      rounding = -1;
      fail_color = "rgb(204, 34, 34)";
      fail_text = "<i>$FAIL <b>($ATTEMPTS)</b></i>";
      fail_transition = 300;

      position = "0, -50";
      halign = "center";
      valign = "center";
    };

    label = [
      # Date
      {
        monitor = "$monitor";
        text = ''cmd[update:1000] echo "$(date +"%A, %B %d")"'';
        color = "rgba(242, 243, 244, 0.75)";
        font_size = 22;
        font_family = "Geist Mono Nerd Font";
        position = "0, 200";
        halign = "center";
        valign = "center";
      }

      # Time
      {
        monitor = "$monitor";
        text = ''cmd[update:1000] echo "$(date +"%-I:%M")"'';
        color = "rgba(242, 243, 244, 0.75)";
        font_size = 95;
        font_family = "Geist Mono Nerd Font";
        position = "0, 210";
        halign = "center";
        valign = "center";
      }

      # Formality
      # {
      # monitor = "$monitor";
      # text = "Life is all about <i>Formality</i>...";
      # color = "rgba(200, 200, 200, 1.0)";
      # font_size = 25;
      # font_family = "GeistMono Nerd Font";

      # position = "0, 80";
      # halign = "center";
      # valign = "center";
      # }

      # User
      {
        monitor = "$monitor";
        text = "Hi there, $USER";
        color = "white";
        font_size = 14;
        font_family = "GeistMono Nerd Font";
        position = "0, 10";
        halign = "center";
        valign = "center";
      }

      {
        monitor = "$monitor";
        text = "Life is all about Formality";
        text_align = "center";
        color = "rgba(200, 200, 200, 1.0)";
        font_size = 15;
        font_family = "GeistMono Nerd Font";
        rotate = 0;
        position = "-50, 80";
        halign = "right";
        valign = "bottom";
      }

      {
        monitor = "$monitor";
        text = "$LAYOUT";
        text_align = "center";
        color = "rgba(200, 200, 200, 1.0)";
        font_size = 15;
        font_family = "GeistMono Nerd Font";
        rotate = 0;
        position = "-50, 60";
        halign = "right";
        valign = "bottom";
      }
    ];
  };
}
