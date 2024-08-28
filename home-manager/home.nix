{ pkgs, ... }:

{
  # Home Manager needs a bit of information about you and the paths it should
  # manage.
  home.username = "nirlep5252";
  home.homeDirectory = "/home/nirlep5252";
  home.stateVersion = "24.05";

  fonts.fontconfig.enable = true;

  nixpkgs = {
    config = {
      allowUnfree = true;
      firefox.enableGnomeExtensions = true;
    };
  };

  imports = [ ./pkgs.nix ./cli/_import.nix ./apps/_import.nix ];
  programs.firefox.enable = true;

  xdg.mimeApps.enable = true;
  xdg.mimeApps.defaultApplications = {
    "text/html" = "firefox.desktop";
    "x-scheme-handler/http" = "firefox.desktop";
    "x-scheme-handler/https" = "firefox.desktop";
    "x-scheme-handler/about" = "firefox.desktop";
    "x-scheme-handler/unknown" = "firefox.desktop";
  };

  # Home Manager is pretty good at managing dotfiles. The primary way to manage
  # plain files is through 'home.file'.
  home.file = {
    ".icons/whitesur".source =
      "${pkgs.whitesur-cursors}/share/icons/WhiteSur-cursors";
    ".icons/rose-pine".source =
      "${pkgs.rose-pine-cursor}/share/icons/BreezeX-RosePine-Linux";
    ".icons/rose-pine-dawn".source =
      "${pkgs.rose-pine-cursor}/share/icons/BreezeX-RosePineDawn-Linux";
  };

  home.sessionVariables = {
    EDITOR = "nvim";
    BROWSER = "firefox";
    NIXOS_OZONE_WL = "1";

    # PRISMA_QUERY_ENGINE_LIBRARY = "${pkgs.prisma-engines}/lib/libquery_engine.node";
    # PRISMA_QUERY_ENGINE_BINARY = "${pkgs.prisma-engines}/bin/query-engine";
    # PRISMA_SCHEMA_ENGINE_BINARY = "${pkgs.prisma-engines}/bin/schema-engine";
  };

  home.sessionPath = [ "$HOME/.local/bin" ];

  xsession.enable = true;
  xsession.numlock.enable = true;
  xsession.windowManager.i3.enable = true;

  gtk.enable = true;

  gtk.cursorTheme.package = pkgs.whitesur-cursors;
  gtk.cursorTheme.name = "rose-pine";

  gtk.theme.package = pkgs.gnome-themes-extra;
  gtk.theme.name = "Adwaita-dark";

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
