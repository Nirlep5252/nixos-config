{ pkgs, ... }: {
  virtualisation.docker.enable = true;
  hardware.nvidia-container-toolkit.enable = true;
  virtualisation.docker.rootless = {
    enable = true;
    setSocketVariable = false;
    daemon.settings = {
      runtimes.nvidia.path =
        "${pkgs.nvidia-docker}/bin/nvidia-container-runtime";
    };
  };
  virtualisation.docker.extraPackages =
    [ pkgs.nvidia-container-toolkit pkgs.nvidia-docker ];
}
