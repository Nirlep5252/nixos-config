{ pkgs, vars, ... }:

{
  home.username = vars.username;
  home.homeDirectory = "/home/${vars.username}";
  home.stateVersion = "24.05";

  fonts.fontconfig.enable = true;

  nixpkgs = { config = { allowUnfree = true; }; };

  imports = [ ./pkgs.nix ./cli/_import.nix ./apps/_import.nix ];
  programs.firefox.enable = true;

  xdg.mimeApps.enable = true;
  xdg.mimeApps.defaultApplications =
    let
      browser = "zen.desktop";
      image-viewer = "imv-dir.desktop";
    in
      {

      # Browser
      "text/html" = browser;
      "application/pdf" = browser;
      "x-scheme-handler/http" = browser;
      "x-scheme-handler/https" = browser;
      "x-scheme-handler/about" = browser;
      "x-scheme-handler/unknown" = browser;

      # Image viewer
      "image/png" = image-viewer;
      "image/jpeg" = image-viewer;

    };

  # Home Manager is pretty good at managing dotfiles. The primary way to manage
  # plain files is through 'home.file'.
  home.file = {
    ".icons/whitesur".source =
      "${pkgs.whitesur-cursors}/share/icons/WhiteSur-cursors";
    ".icons/macOS-BigSur".source = "${pkgs.apple-cursor}/share/icons/macOS";

    # scripts
    ".local/bin" = {
      source = ../scripts;
      recursive = true;
      executable = true;
    };
  };

  home.sessionVariables = {
    EDITOR = "nvim";
    BROWSER = "firefox";
    NIXOS_OZONE_WL = "1";
  };

  home.sessionPath = [ "$HOME/.local/bin" ];

  xsession.enable = true;
  xsession.numlock.enable = true;
  xsession.windowManager.i3.enable = true;

  gtk.enable = true;

  gtk.cursorTheme.package = pkgs.apple-cursor;
  gtk.cursorTheme.name = "macOS";
  gtk.cursorTheme.size = 32;

  gtk.theme.package = pkgs.catppuccin-gtk;
  gtk.theme.name = "catppuccin-frappe-blue-standard";

  gtk.iconTheme.package = pkgs.whitesur-icon-theme;
  gtk.iconTheme.name = "WhiteSur";

  qt.enable = true;
  qt.platformTheme.name = "gtk";

  # systemd.user.sessionVariables = config.home-manager.users.nirlep5252.home.sessionVariables;

  # programs.dconf.enable = true;
  dconf.settings = {
    "org/gnome/desktop/interface" = { color-schema = "prefer-dark"; };
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
