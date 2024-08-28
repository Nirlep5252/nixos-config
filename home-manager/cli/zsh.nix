{
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;

    oh-my-zsh = {
      enable = true;
      plugins = ["git"];
      theme = "robbyrussell";
    };

    shellAliases = let
        flakePath = "~/nix";
    in {
      cd = "z";
      rebuild = "sudo nixos-rebuild switch --flake ${flakePath}";
      hms = "home-manager switch --flake ${flakePath}";
      n = "nvim";
    };

    initExtra = ''
      eval "$(zoxide init zsh)";
      pfetch;
    '';
  };
}
