{ ... }: {
  programs.foot = {
    enable = true;
    server.enable = true;
    settings = { main = { font = "GeistMono Nerd Font:size=16"; }; };
  };
}
