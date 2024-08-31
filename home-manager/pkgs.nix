{ pkgs, ... }:

{
  home.packages = [
    # code editors
    pkgs.vscode
    pkgs.neovim
    pkgs.neovide

    # menus
    pkgs.wofi
    pkgs.rofi-wayland

    pkgs.spotify
    pkgs.discord
    pkgs.yt-dlp

    pkgs.nixfmt-classic
    pkgs.pfetch-rs
    pkgs.ungoogled-chromium
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
    pkgs.xfce.thunar
    pkgs.lxde.lxsession
    pkgs.networkmanagerapplet
    pkgs.swayimg
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
    pkgs.luajitPackages.luarocks
    pkgs.tesseract
    pkgs.sway-contrib.grimshot
    pkgs.zed-editor
    pkgs.xdg-utils
    pkgs.rose-pine-cursor
    pkgs.libsForQt5.qt5.qtwayland
    pkgs.geist-font
    pkgs.ripgrep
    pkgs.dig
    pkgs.ciscoPacketTracer8
    pkgs.dooit
    pkgs.gtk2
    pkgs.brave
    pkgs.libstdcxx5
    pkgs.poetry
    pkgs.libclang
    pkgs.mpv
    pkgs.qt5.full
    pkgs.ffmpeg
    pkgs.chatterino2
    pkgs.pandoc
    pkgs.texliveTeTeX
    pkgs.llvmPackages_latest.llvm

    pkgs.lld
    pkgs.cppcheck

    pkgs.cargo
    pkgs.rustc
    pkgs.rust-analyzer
    pkgs.rustfmt
    pkgs.clippy

    pkgs.flyctl
    pkgs.dust
    pkgs.nvidia-container-toolkit

    pkgs.python3
    pkgs.pkg-config

    (pkgs.nerdfonts.override { fonts = [ "FiraCode" "GeistMono" ]; })
  ];
}
