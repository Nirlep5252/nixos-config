{ inputs, pkgs, system, ... }:

{
  home.packages = [
    # code editors
    pkgs.vscode
    pkgs.code-cursor
    # pkgs.neovim
    inputs.nixvim.packages."${system}".default
    pkgs.zellij
    pkgs.neovide
    pkgs.lunarvim

    inputs.zen-browser.packages."${pkgs.system}".specific
    pkgs.google-chrome

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
    # pkgs.xfce.thunar
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
    pkgs.apple-cursor
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
    # (pkgs.ciscoPacketTracer8.overrideAttrs {
    # src = pkgs.fetchurl {
    # url = "./pkg-files/CiscoPacketTracer822_amd64_signed.deb";
    # hash = pkgs.lib.fakeHash;
    # };
    # })
    pkgs.gtk2
    pkgs.libstdcxx5
    pkgs.poetry
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

    pkgs.flyctl
    pkgs.dust
    pkgs.nvidia-container-toolkit

    pkgs.python3
    pkgs.pkg-config

    (pkgs.nerdfonts.override { fonts = [ "FiraCode" "GeistMono" ]; })
  ];
}
