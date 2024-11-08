{ inputs, pkgs, ... }:

{
  home.packages = [
    # code editors
    pkgs.vscode
    # pkgs.code-cursor
    pkgs.neovide
    # pkgs.lunarvim
    pkgs.eza
    pkgs.skim
    pkgs.postman

    pkgs.tor-browser

    # TODO: use this for theming stuff
    pkgs.catppuccin
    pkgs.catppuccinifier-cli

    # emoji picker
    pkgs.bemoji

    inputs.zen-browser.packages."${pkgs.system}".specific
    pkgs.google-chrome
    pkgs.playerctl

    pkgs.spotify
    pkgs.discord
    pkgs.yt-dlp

    pkgs.gammastep
    pkgs.wlogout
    pkgs.lazygit
    pkgs.lazydocker
    # pkgs.redisinsight
    # pkgs.grpcui
    pkgs.nodejs_22
    pkgs.btop
    pkgs.exercism
    pkgs.nixfmt-classic
    pkgs.pfetch-rs
    # pkgs.ungoogled-chromium
    pkgs.dconf
    pkgs.gcc
    pkgs.fastfetch
    pkgs.waybar
    pkgs.wl-clipboard
    pkgs.cliphist
    pkgs.unzip
    pkgs.grim
    pkgs.slurp
    pkgs.fzf
    pkgs.zoxide
    pkgs.xdg-desktop-portal-hyprland
    pkgs.tree
    # pkgs.xfce.thunar
    pkgs.lxde.lxsession
    pkgs.networkmanagerapplet
    # pkgs.swayimg
    pkgs.gnumake
    pkgs.cmake
    pkgs.ninja
    pkgs.glxinfo
    pkgs.libGL
    pkgs.libGLU
    pkgs.mesa
    pkgs.meson
    pkgs.hwdata
    pkgs.hyprcursor
    pkgs.bun
    pkgs.openssl
    pkgs.nemo
    pkgs.whitesur-cursors
    pkgs.apple-cursor
    pkgs.sway-contrib.grimshot
    # pkgs.zed-editor
    pkgs.xdg-utils
    pkgs.libsForQt5.qt5.qtwayland
    pkgs.geist-font
    pkgs.ripgrep
    pkgs.dig
    pkgs.gtk2
    pkgs.libstdcxx5
    pkgs.libclang
    pkgs.mpv
    pkgs.qt5.full
    pkgs.ffmpeg
    pkgs.pandoc
    pkgs.texliveTeTeX
    pkgs.llvmPackages_latest.llvm

    pkgs.lld
    pkgs.cppcheck

    pkgs.rustup

    pkgs.dust
    pkgs.nvidia-container-toolkit

    pkgs.python3
    pkgs.pkg-config

    (pkgs.nerdfonts.override { fonts = [ "FiraCode" "GeistMono" "Iosevka" "Recursive" ]; })
  ];
}
