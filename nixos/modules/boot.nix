{ pkgs, lib, ... }: {
  boot = {
    loader.systemd-boot.enable = lib.mkForce false;
    lanzaboote = {
      enable = true;
      pkiBundle = "/etc/secureboot";
    };
    loader.efi.canTouchEfiVariables = true;
    supportedFilesystems = [ "ntfs" ];

    plymouth = {
      enable = false;
      theme = "catppuccin-mocha";
      themePackages = [
        (pkgs.catppuccin-plymouth.override({
          variant = "mocha";
        }))
      ];
    };

    # consoleLogLevel = 0;
    # initrd.verbose = false;
    kernelParams = [
      # "quiet"
      # "udev.log_level=0"

      # https://github.com/judge0/judge0/issues/325
      # https://discourse.nixos.org/t/getting-refusing-to-run-under-cgroup-v1-at-boot-after-update/49924/6
      # "systemd.unified_cgroup_hierarchy=0"
      # "SYSTEMD_CGROUP_ENABLE_LEGACY_FORCE=1"
    ];
    loader.timeout = 10;
  };
}
