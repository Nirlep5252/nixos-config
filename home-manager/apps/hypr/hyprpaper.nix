{ ... }: {
  services.hyprpaper.enable = true;
  services.hyprpaper.settings = {
    ipc = "on";
    splash = false;
    splash_offset = 2.0;

    preload = [
      "~/Pictures/Wallpapers/cat.png"
      "~/Pictures/Wallpapers/nezuko-kamado-4k.jpg"
    ];

    wallpaper = [
      ",~/Pictures/Wallpapers/nezuko-kamado-4k.jpg"
    ];
  };
}
