{
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;

    oh-my-zsh = {
      enable = true;
      plugins = [ "git" ];
      # theme = "robbyrussell";
    };

    shellAliases = let flakePath = "~/nix";
    in {
      cd = "z";
      ls = "eza";
      rebuild = "sudo nixos-rebuild switch --flake ${flakePath}";
      hms = "home-manager switch --flake ${flakePath}";
      n = "nvim";
      myeyes = "gammastep -l 0:0 -o -t 6500:6500 -b";
    };

    initExtra = ''
      eval "$(zoxide init zsh)";
      fastfetch;
      echo "";
    '';
  };

  imports = [
    ./starship.nix
  ];
}
